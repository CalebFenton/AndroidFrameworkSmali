.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$1;,
        Lcom/android/server/notification/NotificationManagerService$2;,
        Lcom/android/server/notification/NotificationManagerService$3;,
        Lcom/android/server/notification/NotificationManagerService$4;,
        Lcom/android/server/notification/NotificationManagerService$5;,
        Lcom/android/server/notification/NotificationManagerService$6;,
        Lcom/android/server/notification/NotificationManagerService$Archive;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationRankers;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 10.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
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

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mLastOverRateLogTime:J

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

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxPackageEnqueueRate:F

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

.field private mRankerServicePackageName:Ljava/lang/String;

.field private mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

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

.field private mSystemNotificationSound:Ljava/lang/String;

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

.field private mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;

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

.method static synthetic -get12(Lcom/android/server/notification/NotificationManagerService;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    #@2
    return v0
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

.method static synthetic -get15(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

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

.method static synthetic -get20(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@2
    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/notification/NotificationManagerService;)Landroid/view/WindowManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

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

.method static synthetic -get7(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

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

.method static synthetic -set3(Lcom/android/server/notification/NotificationManagerService;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

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

.method static synthetic -wrap10(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustmentLocked(Landroid/service/notification/Adjustment;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "sendDelete"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
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

.method static synthetic -wrap15(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17()V
    .locals 0

    #@0
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
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

.method static synthetic -wrap23(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "hints"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingSort()V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(I)Z
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    .locals 0
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->maybeAddAutobundleSummary(Landroid/service/notification/Adjustment;)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    #@3
    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
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

.method static synthetic -wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
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

.method static synthetic -wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(I)Ljava/lang/String;
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

.method static synthetic -wrap9(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
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

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 179
    const-string/jumbo v0, "NotificationService"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@a
    .line 181
    const-string/jumbo v0, "debug.child_notifs"

    #@d
    const/4 v1, 0x1

    #@e
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@11
    move-result v0

    #@12
    .line 180
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    #@14
    .line 200
    const/4 v0, 0x4

    #@15
    new-array v0, v0, [J

    #@17
    fill-array-data v0, :array_0

    #@1a
    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    #@1c
    .line 305
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1f
    move-result v0

    #@20
    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    #@22
    .line 306
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@25
    move-result v0

    #@26
    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    #@28
    .line 177
    return-void

    #@29
    .line 200
    nop

    #@2a
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
    .line 896
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 238
    new-instance v0, Landroid/os/Binder;

    #@6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    #@b
    .line 240
    new-instance v0, Landroid/os/HandlerThread;

    #@d
    const-string/jumbo v1, "ranker"

    #@10
    .line 241
    const/16 v2, 0xa

    #@12
    .line 240
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@15
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    #@17
    .line 261
    new-instance v0, Landroid/util/SparseArray;

    #@19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1c
    .line 260
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@1e
    .line 262
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    #@25
    .line 264
    iput v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@27
    .line 267
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    #@2a
    .line 268
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    #@2c
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 272
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@33
    .line 275
    new-instance v0, Landroid/util/ArrayMap;

    #@35
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@38
    .line 274
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@3a
    .line 276
    new-instance v0, Landroid/util/ArrayMap;

    #@3c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3f
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    #@41
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    #@43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@48
    .line 278
    new-instance v0, Landroid/util/ArrayMap;

    #@4a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@4d
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@4f
    .line 279
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@51
    const/4 v1, 0x0

    #@52
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V

    #@55
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@57
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    #@59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5c
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@5e
    .line 299
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@60
    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    #@63
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@65
    .line 309
    const/high16 v0, 0x41200000    # 10.0f

    #@67
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    #@69
    .line 488
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    #@6b
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@6e
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@70
    .line 679
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    #@72
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@75
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@77
    .line 762
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    #@79
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@7c
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@7e
    .line 873
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    #@80
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@83
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    #@85
    .line 1271
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    #@87
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@8a
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    #@8c
    .line 2488
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    #@8e
    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@91
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    #@93
    .line 895
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    #@0
    .prologue
    .line 1223
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@5
    move-result v1

    #@6
    if-gez v1, :cond_0

    #@8
    .line 1224
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@a
    new-instance v2, Landroid/util/ArraySet;

    #@c
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@f
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@12
    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/util/ArraySet;

    #@1a
    .line 1228
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1d
    .line 1222
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    #@0
    .prologue
    .line 1209
    and-int/lit8 v0, p2, 0x1

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1210
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@8
    .line 1213
    :cond_0
    and-int/lit8 v0, p2, 0x2

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1214
    const/4 v0, 0x2

    #@d
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@10
    .line 1217
    :cond_1
    and-int/lit8 v0, p2, 0x4

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 1218
    const/4 v0, 0x4

    #@15
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@18
    .line 1208
    :cond_2
    return-void
.end method

.method private applyAdjustmentLocked(Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2215
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->maybeClearAutobundleSummaryLocked(Landroid/service/notification/Adjustment;)V

    #@4
    .line 2216
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    #@10
    .line 2217
    .local v1, "n":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    #@12
    .line 2218
    return-void

    #@13
    .line 2220
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getImportance()I

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 2221
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getImportance()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getExplanation()Ljava/lang/CharSequence;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    #@24
    .line 2223
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@27
    move-result-object v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 2224
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@2d
    move-result-object v2

    #@2e
    const/4 v3, 0x1

    #@2f
    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@32
    .line 2225
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@35
    move-result-object v2

    #@36
    .line 2226
    const-string/jumbo v3, "group_key_override"

    #@39
    .line 2225
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 2227
    .local v0, "autoGroupKey":Ljava/lang/String;
    if-nez v0, :cond_3

    #@3f
    .line 2228
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    #@46
    .line 2232
    :goto_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@48
    invoke-virtual {v2, v0}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    #@4b
    .line 2214
    .end local v0    # "autoGroupKey":Ljava/lang/String;
    :cond_2
    return-void

    #@4c
    .line 2230
    .restart local v0    # "autoGroupKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    #@53
    goto :goto_0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3166
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    #@6
    move-result v1

    #@7
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    #@a
    .line 3167
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 3168
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@12
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->shouldSuppressWhenScreenOff()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 3169
    const/4 v1, 0x1

    #@19
    .line 3170
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->shouldSuppressWhenScreenOn()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 3171
    const/4 v2, 0x2

    #@22
    .line 3168
    :cond_0
    or-int v0, v1, v2

    #@24
    .line 3172
    .local v0, "suppressed":I
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    #@27
    .line 3165
    .end local v0    # "suppressed":I
    :cond_1
    return-void

    #@28
    :cond_2
    move v1, v2

    #@29
    .line 3169
    goto :goto_0
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2980
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2981
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
    .line 2984
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
    .line 2986
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@1d
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@20
    .line 2987
    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    #@22
    .line 2986
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
    .line 2983
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@2d
    return-object v0

    #@2e
    .line 2989
    :cond_2
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    #@30
    const/4 v1, -0x1

    #@31
    if-ne v0, v1, :cond_3

    #@33
    .line 2990
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@35
    return-object v0

    #@36
    .line 2992
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
    .line 2993
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@50
    return-object v0
.end method

.method private calculateHints()I
    .locals 5

    #@0
    .prologue
    .line 1232
    const/4 v1, 0x0

    #@1
    .line 1233
    .local v1, "hints":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v2, v4, -0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 1234
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v0

    #@11
    .line 1235
    .local v0, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/util/ArraySet;

    #@19
    .line 1237
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 1238
    or-int/2addr v1, v0

    #@20
    .line 1233
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@22
    goto :goto_0

    #@23
    .line 1242
    .end local v0    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_1
    return v1
.end method

.method private calculateSuppressedEffects()J
    .locals 6

    #@0
    .prologue
    .line 1246
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    #@3
    move-result v0

    #@4
    .line 1247
    .local v0, "hints":I
    const-wide/16 v2, 0x0

    #@6
    .line 1249
    .local v2, "suppressedEffects":J
    and-int/lit8 v1, v0, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1250
    const-wide/16 v2, 0x3

    #@c
    .line 1253
    :cond_0
    and-int/lit8 v1, v0, 0x2

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1254
    const-wide/16 v4, 0x1

    #@12
    or-long/2addr v2, v4

    #@13
    .line 1257
    :cond_1
    and-int/lit8 v1, v0, 0x4

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 1258
    const-wide/16 v4, 0x2

    #@19
    or-long/2addr v2, v4

    #@1a
    .line 1261
    :cond_2
    return-wide v2
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 3706
    packed-switch p0, :pswitch_data_0

    #@3
    .line 3710
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
    .line 3707
    :pswitch_0
    const-string/jumbo v0, "CALL_STATE_IDLE"

    #@1b
    return-object v0

    #@1c
    .line 3708
    :pswitch_1
    const-string/jumbo v0, "CALL_STATE_RINGING"

    #@1f
    return-object v0

    #@20
    .line 3709
    :pswitch_2
    const-string/jumbo v0, "CALL_STATE_OFFHOOK"

    #@23
    return-object v0

    #@24
    .line 3706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "sendDelete"    # Z

    #@0
    .prologue
    .line 3564
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@3
    move-result-object v17

    #@4
    .line 3565
    .local v17, "n":Landroid/app/Notification;
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->isGroupSummary()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 3566
    return-void

    #@b
    .line 3569
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@f
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 3570
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@16
    move-result v8

    #@17
    .line 3572
    .local v8, "userId":I
    if-nez v5, :cond_2

    #@19
    .line 3573
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@1b
    if-eqz v3, :cond_1

    #@1d
    const-string/jumbo v3, "NotificationService"

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "No package for group summary: "

    #@28
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 3574
    :cond_1
    return-void

    #@3c
    .line 3577
    :cond_2
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v13

    #@44
    .line 3578
    .local v13, "N":I
    add-int/lit8 v16, v13, -0x1

    #@46
    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_5

    #@48
    .line 3579
    move-object/from16 v0, p0

    #@4a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4c
    move/from16 v0, v16

    #@4e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v14

    #@52
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@54
    .line 3580
    .local v14, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v15, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@56
    .line 3581
    .local v15, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_3

    #@5c
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_4

    #@66
    .line 3578
    :cond_3
    :goto_1
    add-int/lit8 v16, v16, -0x1

    #@68
    goto :goto_0

    #@69
    .line 3582
    :cond_4
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v3

    #@75
    .line 3581
    if-eqz v3, :cond_3

    #@77
    .line 3583
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@7a
    move-result v6

    #@7b
    .line 3584
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    const/4 v9, 0x0

    #@80
    const/4 v10, 0x0

    #@81
    move/from16 v3, p2

    #@83
    move/from16 v4, p3

    #@85
    move/from16 v11, p5

    #@87
    move-object/from16 v12, p4

    #@89
    .line 3583
    invoke-static/range {v3 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    #@8c
    .line 3585
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@90
    move/from16 v0, v16

    #@92
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@95
    .line 3586
    move-object/from16 v0, p0

    #@97
    move/from16 v1, p6

    #@99
    move/from16 v2, p5

    #@9b
    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@9e
    goto :goto_1

    #@9f
    .line 3563
    .end local v14    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 3305
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@3
    .line 3308
    if-eqz p2, :cond_0

    #@5
    .line 3309
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@8
    move-result-object v13

    #@9
    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@b
    if-eqz v13, :cond_0

    #@d
    .line 3311
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@10
    move-result-object v13

    #@11
    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@13
    invoke-virtual {v13}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 3321
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    #@19
    move-result-object v13

    #@1a
    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@1d
    move-result-object v13

    #@1e
    if-eqz v13, :cond_1

    #@20
    .line 3322
    const/4 v13, 0x1

    #@21
    move-object/from16 v0, p1

    #@23
    iput-boolean v13, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    #@25
    .line 3323
    move-object/from16 v0, p0

    #@27
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@29
    move-object/from16 v0, p1

    #@2b
    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2d
    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    #@30
    .line 3326
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 3329
    .local v2, "canceledKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@36
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@38
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v13

    #@3c
    if-eqz v13, :cond_3

    #@3e
    .line 3330
    const/4 v13, 0x0

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@43
    .line 3331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@46
    move-result-wide v8

    #@47
    .line 3333
    .local v8, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    #@49
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@4b
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@4e
    move-result-object v7

    #@4f
    .line 3334
    .local v7, "player":Landroid/media/IRingtonePlayer;
    if-eqz v7, :cond_2

    #@51
    .line 3335
    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    .line 3339
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@57
    .line 3344
    .end local v7    # "player":Landroid/media/IRingtonePlayer;
    .end local v8    # "identity":J
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    #@59
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@5b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v13

    #@5f
    if-eqz v13, :cond_4

    #@61
    .line 3345
    const/4 v13, 0x0

    #@62
    move-object/from16 v0, p0

    #@64
    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@66
    .line 3346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@69
    move-result-wide v8

    #@6a
    .line 3348
    .restart local v8    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    #@6c
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@6e
    invoke-virtual {v13}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@71
    .line 3351
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@74
    .line 3356
    .end local v8    # "identity":J
    :cond_4
    move-object/from16 v0, p0

    #@76
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7b
    .line 3360
    packed-switch p3, :pswitch_data_0

    #@7e
    .line 3373
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    #@80
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@82
    move-object/from16 v0, p1

    #@84
    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@86
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@89
    move-result-object v14

    #@8a
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 3374
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    .line 3375
    .local v5, "groupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@93
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@95
    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v6

    #@99
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    #@9b
    .line 3376
    .local v6, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v6, :cond_5

    #@9d
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@a0
    move-result-object v13

    #@a1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@a4
    move-result-object v14

    #@a5
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v13

    #@a9
    if-eqz v13, :cond_5

    #@ab
    .line 3377
    move-object/from16 v0, p0

    #@ad
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@af
    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    .line 3379
    :cond_5
    move-object/from16 v0, p0

    #@b4
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    #@b6
    move-object/from16 v0, p1

    #@b8
    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@ba
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@bd
    move-result v14

    #@be
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c1
    move-result-object v14

    #@c2
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    move-result-object v12

    #@c6
    check-cast v12, Landroid/util/ArrayMap;

    #@c8
    .line 3380
    .local v12, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    #@ca
    move-object/from16 v0, p1

    #@cc
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@ce
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@d1
    move-result-object v13

    #@d2
    move-object/from16 v0, p1

    #@d4
    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@d6
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@d9
    move-result-object v14

    #@da
    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    move-result-object v14

    #@de
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result v13

    #@e2
    if-eqz v13, :cond_6

    #@e4
    .line 3381
    move-object/from16 v0, p1

    #@e6
    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@e8
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@eb
    move-result-object v13

    #@ec
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    .line 3385
    :cond_6
    move-object/from16 v0, p0

    #@f1
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@f3
    move-object/from16 v0, p1

    #@f5
    iget-object v14, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@f7
    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    #@fa
    .line 3387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@fd
    move-result-wide v10

    #@fe
    .line 3389
    .local v10, "now":J
    move-object/from16 v0, p1

    #@100
    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    #@103
    move-result v13

    #@104
    move-object/from16 v0, p1

    #@106
    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    #@109
    move-result v14

    #@10a
    move-object/from16 v0, p1

    #@10c
    invoke-virtual {v0, v10, v11}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    #@10f
    move-result v15

    #@110
    .line 3388
    move/from16 v0, p3

    #@112
    invoke-static {v2, v0, v13, v14, v15}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    #@115
    .line 3302
    return-void

    #@116
    .line 3312
    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v5    # "groupKey":Ljava/lang/String;
    .end local v6    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v10    # "now":J
    .end local v12    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    #@117
    .line 3315
    .local v4, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v13, "NotificationService"

    #@11a
    new-instance v14, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v15, "canceled PendingIntent for "

    #@122
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v14

    #@126
    move-object/from16 v0, p1

    #@128
    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@12a
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@12d
    move-result-object v15

    #@12e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v14

    #@132
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v14

    #@136
    invoke-static {v13, v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@139
    goto/16 :goto_0

    #@13b
    .line 3337
    .end local v4    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v8    # "identity":J
    :catch_1
    move-exception v3

    #@13c
    .line 3339
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13f
    goto/16 :goto_1

    #@141
    .line 3338
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v13

    #@142
    .line 3339
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@145
    .line 3338
    throw v13

    #@146
    .line 3350
    :catchall_1
    move-exception v13

    #@147
    .line 3351
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14a
    .line 3350
    throw v13

    #@14b
    .line 3365
    .end local v8    # "identity":J
    :pswitch_1
    move-object/from16 v0, p0

    #@14d
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@14f
    move-object/from16 v0, p1

    #@151
    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    #@154
    goto/16 :goto_2

    #@156
    .line 3369
    :pswitch_2
    move-object/from16 v0, p0

    #@158
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@15a
    move-object/from16 v0, p1

    #@15c
    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    #@15f
    goto/16 :goto_2

    #@161
    .line 3360
    nop

    #@162
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

.method private static checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 3691
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@7
    move-result-object v3

    #@8
    .line 3692
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v4

    #@c
    const/4 v5, 0x0

    #@d
    .line 3691
    invoke-interface {v3, p0, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v0

    #@11
    .line 3693
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    #@13
    .line 3694
    new-instance v3, Ljava/lang/SecurityException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "Unknown package "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 3700
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@2e
    .line 3701
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "Unknown package "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    const-string/jumbo v5, "\n"

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 3696
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@55
    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@58
    move-result v3

    #@59
    if-nez v3, :cond_1

    #@5b
    .line 3697
    new-instance v3, Ljava/lang/SecurityException;

    #@5d
    new-instance v4, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v5, "Calling uid "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    const-string/jumbo v5, " gave package"

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    .line 3698
    const-string/jumbo v5, " which is owned by uid "

    #@7b
    .line 3697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 3698
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@81
    .line 3697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@8d
    .line 3688
    :cond_1
    return-void
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    #@0
    .prologue
    .line 3675
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3676
    return-void

    #@7
    .line 3678
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
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3682
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3683
    return-void

    #@7
    .line 3685
    :cond_0
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    #@a
    .line 3681
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
    .line 447
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
    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 447
    :cond_0
    :goto_0
    return v0

    #@12
    .line 448
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    .line 3280
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

.method private clearLightsLocked()V
    .locals 1

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 676
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@8
    .line 673
    return-void
.end method

.method private clearSoundLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 650
    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@3
    .line 651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v2

    #@7
    .line 653
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@9
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@c
    move-result-object v1

    #@d
    .line 654
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_0

    #@f
    .line 655
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 659
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 649
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :goto_0
    return-void

    #@16
    .line 657
    :catch_0
    move-exception v0

    #@17
    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    goto :goto_0

    #@1b
    .line 658
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@1c
    .line 659
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 658
    throw v4
.end method

.method private clearVibrateLocked()V
    .locals 3

    #@0
    .prologue
    .line 664
    const/4 v2, 0x0

    #@1
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@3
    .line 665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v0

    #@7
    .line 667
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@9
    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f
    .line 663
    return-void

    #@10
    .line 668
    :catchall_0
    move-exception v2

    #@11
    .line 669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 668
    throw v2
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 2327
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2328
    const-string/jumbo v0, "booleanState"

    #@7
    return-object v0

    #@8
    .line 2330
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@a
    and-int/lit8 v0, v0, 0x1

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2331
    const-string/jumbo v0, "listenerHints"

    #@11
    return-object v0

    #@12
    .line 2333
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
    .line 2336
    :cond_2
    const/4 v0, 0x0

    #@1f
    return-object v0

    #@20
    .line 2334
    :cond_3
    const-string/jumbo v0, "callState"

    #@23
    return-object v0
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 2340
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 2342
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "service"

    #@8
    const-string/jumbo v3, "Notification Manager"

    #@b
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@e
    .line 2343
    const-string/jumbo v2, "bans"

    #@11
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@13
    invoke-virtual {v3, p2}, Lcom/android/server/notification/RankingHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1a
    .line 2344
    const-string/jumbo v2, "ranking"

    #@1d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@1f
    invoke-virtual {v3, p2}, Lcom/android/server/notification/RankingHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@26
    .line 2345
    const-string/jumbo v2, "stats"

    #@29
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@2b
    invoke-virtual {v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 2349
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@35
    .line 2339
    return-void

    #@36
    .line 2346
    :catch_0
    move-exception v1

    #@37
    .line 2347
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    #@3a
    goto :goto_0
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 3178
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
    .line 883
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@3
    move-result-object v0

    #@4
    .line 884
    .local v0, "ar":[I
    if-nez v0, :cond_0

    #@6
    .line 885
    return-object p3

    #@7
    .line 887
    :cond_0
    array-length v4, v0

    #@8
    if-le v4, p2, :cond_1

    #@a
    move v2, p2

    #@b
    .line 888
    .local v2, "len":I
    :goto_0
    new-array v3, v2, [J

    #@d
    .line 889
    .local v3, "out":[J
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@10
    .line 890
    aget v4, v0, v1

    #@12
    int-to-long v4, v4

    #@13
    aput-wide v4, v3, v1

    #@15
    .line 889
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_1

    #@18
    .line 887
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    #@19
    goto :goto_0

    #@1a
    .line 892
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_2
    return-object v3
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1176
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1177
    .local v3, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v5

    #@b
    add-int/lit8 v0, v5, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@f
    .line 1178
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/util/ArraySet;

    #@17
    .line 1180
    .local v4, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@27
    .line 1181
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@29
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_1

    #@2d
    .line 1177
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1185
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_1
    return-object v3
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    #@0
    .prologue
    .line 2755
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 2756
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@9
    move-result-object v10

    #@a
    .line 2757
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_4

    #@16
    .line 2763
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 2764
    .local v8, "group":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    #@1d
    move-result v9

    #@1e
    .line 2766
    .local v9, "isSummary":Z
    if-eqz p2, :cond_5

    #@20
    move-object/from16 v0, p2

    #@22
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@24
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@27
    move-result-object v13

    #@28
    .line 2767
    :goto_1
    if-eqz p2, :cond_6

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2e
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    .line 2768
    :goto_2
    if-eqz p2, :cond_7

    #@34
    invoke-virtual {v13}, Landroid/app/Notification;->isGroupSummary()Z

    #@37
    move-result v12

    #@38
    .line 2770
    .local v12, "oldIsSummary":Z
    :goto_3
    if-eqz v12, :cond_1

    #@3a
    .line 2771
    move-object/from16 v0, p0

    #@3c
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v15

    #@42
    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    #@44
    .line 2772
    .local v15, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    #@46
    if-eq v15, v0, :cond_1

    #@48
    .line 2774
    if-eqz v15, :cond_8

    #@4a
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@4d
    move-result-object v14

    #@4e
    .line 2775
    .local v14, "removedKey":Ljava/lang/String;
    :goto_4
    const-string/jumbo v1, "NotificationService"

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "Removed summary didn\'t match old notification: old="

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    .line 2776
    const-string/jumbo v3, ", removed="

    #@68
    .line 2775
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 2779
    .end local v14    # "removedKey":Ljava/lang/String;
    .end local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    if-eqz v9, :cond_2

    #@79
    .line 2780
    move-object/from16 v0, p0

    #@7b
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@7d
    move-object/from16 v0, p1

    #@7f
    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 2787
    :cond_2
    if-eqz v12, :cond_3

    #@84
    if-eqz v9, :cond_9

    #@86
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_9

    #@8c
    .line 2754
    :cond_3
    :goto_5
    return-void

    #@8d
    .line 2760
    .end local v8    # "group":Ljava/lang/String;
    .end local v9    # "isSummary":Z
    .end local v12    # "oldIsSummary":Z
    :cond_4
    iget v1, v10, Landroid/app/Notification;->flags:I

    #@8f
    and-int/lit16 v1, v1, -0x201

    #@91
    iput v1, v10, Landroid/app/Notification;->flags:I

    #@93
    goto :goto_0

    #@94
    .line 2766
    .restart local v8    # "group":Ljava/lang/String;
    .restart local v9    # "isSummary":Z
    :cond_5
    const/4 v13, 0x0

    #@95
    .local v13, "oldN":Landroid/app/Notification;
    goto :goto_1

    #@96
    .line 2767
    .end local v13    # "oldN":Landroid/app/Notification;
    :cond_6
    const/4 v11, 0x0

    #@97
    .local v11, "oldGroup":Ljava/lang/String;
    goto :goto_2

    #@98
    .line 2768
    .end local v11    # "oldGroup":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    #@99
    goto :goto_3

    #@9a
    .line 2774
    .restart local v12    # "oldIsSummary":Z
    .restart local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_8
    const-string/jumbo v14, "<null>"

    #@9d
    .restart local v14    # "removedKey":Ljava/lang/String;
    goto :goto_4

    #@9e
    .line 2788
    .end local v14    # "removedKey":Ljava/lang/String;
    .end local v15    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_9
    const/4 v5, 0x0

    #@9f
    .line 2789
    const/16 v6, 0xc

    #@a1
    const/4 v7, 0x0

    #@a2
    move-object/from16 v1, p0

    #@a4
    move-object/from16 v2, p2

    #@a6
    move/from16 v3, p3

    #@a8
    move/from16 v4, p4

    #@aa
    .line 2788
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    #@ad
    goto :goto_5
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    #@0
    .prologue
    .line 3208
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 3209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 3207
    return-void

    #@a
    .line 3208
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
    .line 3214
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 3215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 3213
    return-void

    #@a
    .line 3214
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3100
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    #@4
    if-nez v9, :cond_0

    #@6
    return-void

    #@7
    .line 3101
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    #@b
    .line 3102
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    #@e
    .line 3104
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@10
    monitor-enter v10

    #@11
    .line 3105
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
    .line 3106
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_1

    #@1f
    monitor-exit v10

    #@20
    .line 3107
    return-void

    #@21
    .line 3109
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    #@24
    move-result v2

    #@25
    .line 3110
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@28
    move-result v4

    #@29
    .line 3111
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@2c
    move-result v8

    #@2d
    .line 3112
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@30
    .line 3113
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    #@33
    .line 3114
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@35
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@3a
    .line 3115
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    #@3d
    move-result v1

    #@3e
    .line 3116
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@41
    move-result v3

    #@42
    .line 3117
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    move-result v7

    #@46
    .line 3118
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_2

    #@48
    if-eq v4, v3, :cond_5

    #@4a
    :cond_2
    const/4 v0, 0x1

    #@4b
    .line 3120
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
    .line 3124
    if-eqz v0, :cond_4

    #@52
    .line 3125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    #@55
    .line 3099
    :cond_4
    return-void

    #@56
    .line 3119
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
    .line 3121
    :cond_7
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    goto :goto_1

    #@60
    .line 3104
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

.method private handleRankingSort()V
    .locals 10

    #@0
    .prologue
    .line 3130
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v8

    #@3
    .line 3131
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 3132
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    #@b
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 3133
    .local v4, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 3134
    .local v1, "groupOverrideBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v6, v0, [I

    #@15
    .line 3135
    .local v6, "visibilities":[I
    new-array v3, v0, [I

    #@17
    .line 3136
    .local v3, "importances":[I
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@1a
    .line 3137
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@22
    .line 3138
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 3139
    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2b
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 3140
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@35
    move-result v7

    #@36
    aput v7, v6, v2

    #@38
    .line 3141
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@3b
    move-result v7

    #@3c
    aput v7, v3, v2

    #@3e
    .line 3142
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@40
    invoke-virtual {v7, v5}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    #@43
    .line 3136
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 3144
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@48
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v7, v9}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    #@4d
    .line 3145
    const/4 v2, 0x0

    #@4e
    :goto_1
    if-ge v2, v0, :cond_3

    #@50
    .line 3146
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v5

    #@56
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@58
    .line 3147
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v7

    #@5c
    check-cast v7, Ljava/lang/String;

    #@5e
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_1

    #@68
    .line 3148
    aget v7, v6, v2

    #@6a
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@6d
    move-result v9

    #@6e
    if-eq v7, v9, :cond_2

    #@70
    .line 3151
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    monitor-exit v8

    #@74
    .line 3152
    return-void

    #@75
    .line 3149
    :cond_2
    :try_start_1
    aget v7, v3, v2

    #@77
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@7a
    move-result v9

    #@7b
    if-ne v7, v9, :cond_1

    #@7d
    .line 3150
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@80
    move-result-object v7

    #@81
    check-cast v7, Ljava/lang/String;

    #@83
    iget-object v9, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@85
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    move-result v7

    #@8d
    if-eqz v7, :cond_1

    #@8f
    .line 3145
    add-int/lit8 v2, v2, 0x1

    #@91
    goto :goto_1

    #@92
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v8

    #@93
    .line 3129
    return-void

    #@94
    .line 3130
    .end local v0    # "N":I
    .end local v1    # "groupOverrideBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "importances":[I
    .end local v4    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "visibilities":[I
    :catchall_0
    move-exception v7

    #@95
    monitor-exit v8

    #@96
    throw v7
.end method

.method private handleSavePolicyFile()V
    .locals 5

    #@0
    .prologue
    .line 399
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
    .line 400
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@f
    monitor-enter v3

    #@10
    .line 403
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
    .line 410
    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    #@17
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    #@1a
    .line 411
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
    .line 417
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
    .line 398
    return-void

    #@2c
    .line 404
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@2d
    .line 405
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
    .line 406
    return-void

    #@38
    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@39
    .line 413
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "NotificationService"

    #@3c
    const-string/jumbo v4, "Failed to save policy file, restoring backup"

    #@3f
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 414
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@44
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 400
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
    .line 3189
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 3190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 3188
    return-void

    #@a
    .line 3189
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
    .line 3056
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
    .line 3057
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@2f
    monitor-enter v2

    #@30
    .line 3058
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@32
    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@34
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    #@37
    move-result v0

    #@38
    .line 3059
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@3a
    .line 3060
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    :cond_1
    monitor-exit v2

    #@3e
    .line 3054
    return-void

    #@3f
    .line 3057
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1
.end method

.method private static isCallerSystem()Z
    .locals 1

    #@0
    .prologue
    .line 3671
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

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 3782
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v2

    #@4
    .line 3784
    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 3787
    :catch_0
    move-exception v0

    #@e
    .line 3789
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    #@f
    return v3

    #@10
    .line 3785
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@11
    .line 3786
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    #@13
    const-string/jumbo v4, "Could not talk to package manager service"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3
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
    .line 3666
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v0

    #@6
    .line 3667
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
    .line 3774
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
    .line 3775
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 3778
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method private listenForCallState()V
    .locals 3

    #@0
    .prologue
    .line 3715
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$9;

    #@a
    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@d
    .line 3722
    const/16 v2, 0x20

    #@f
    .line 3715
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@12
    .line 3714
    return-void
.end method

.method private loadPolicyFile()V
    .locals 8

    #@0
    .prologue
    .line 372
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
    .line 373
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@f
    monitor-enter v6

    #@10
    .line 375
    const/4 v4, 0x0

    #@11
    .line 377
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@13
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@16
    move-result-object v4

    #@17
    .line 378
    .local v4, "infile":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    #@18
    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    .line 388
    :try_start_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .end local v4    # "infile":Ljava/io/FileInputStream;
    :goto_0
    monitor-exit v6

    #@1f
    .line 371
    return-void

    #@20
    .line 385
    :catch_0
    move-exception v3

    #@21
    .line 386
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v5, "NotificationService"

    #@24
    const-string/jumbo v7, "Unable to parse notification policy"

    #@27
    invoke-static {v5, v7, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    .line 388
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 373
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    #@2f
    monitor-exit v6

    #@30
    throw v5

    #@31
    .line 383
    :catch_1
    move-exception v2

    #@32
    .line 384
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v5, "NotificationService"

    #@35
    const-string/jumbo v7, "Unable to parse notification policy"

    #@38
    invoke-static {v5, v7, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3b
    .line 388
    :try_start_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 381
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    #@40
    .line 382
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v5, "NotificationService"

    #@43
    const-string/jumbo v7, "Unable to read notification policy"

    #@46
    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@49
    .line 388
    :try_start_7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4c
    goto :goto_0

    #@4d
    .line 379
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@4e
    .line 388
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@51
    goto :goto_0

    #@52
    .line 387
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    #@53
    .line 388
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@56
    .line 387
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 19
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 3732
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v11

    #@8
    .line 3733
    .local v11, "N":I
    new-instance v16, Ljava/util/ArrayList;

    #@a
    move-object/from16 v0, v16

    #@c
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 3734
    .local v16, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@11
    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 3735
    .local v14, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    #@16
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    .line 3736
    .local v13, "importance":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Landroid/os/Bundle;

    #@1b
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@1e
    .line 3737
    .local v9, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    #@20
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@23
    .line 3738
    .local v5, "visibilityOverrides":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    #@25
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    #@28
    .line 3739
    .local v6, "suppressedVisualEffects":Landroid/os/Bundle;
    new-instance v8, Landroid/os/Bundle;

    #@2a
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@2d
    .line 3740
    .local v8, "explanation":Landroid/os/Bundle;
    const/4 v12, 0x0

    #@2e
    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_4

    #@30
    .line 3741
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v17

    #@38
    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    #@3a
    .line 3742
    .local v17, "record":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v17

    #@3c
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3e
    move-object/from16 v0, p0

    #@40
    move-object/from16 v1, p1

    #@42
    invoke-direct {v0, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_0

    #@48
    .line 3740
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 3745
    :cond_0
    move-object/from16 v0, v17

    #@4d
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4f
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@52
    move-result-object v15

    #@53
    .line 3746
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    #@55
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 3747
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@5b
    move-result v2

    #@5c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    .line 3748
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    #@66
    move-result-object v2

    #@67
    if-eqz v2, :cond_1

    #@69
    .line 3749
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v8, v15, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@70
    .line 3751
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@73
    move-result v2

    #@74
    if-eqz v2, :cond_2

    #@76
    .line 3752
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@79
    .line 3755
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    #@7c
    move-result v2

    #@7d
    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@80
    .line 3756
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@83
    move-result v2

    #@84
    .line 3757
    const/16 v18, -0x3e8

    #@86
    .line 3756
    move/from16 v0, v18

    #@88
    if-eq v2, v0, :cond_3

    #@8a
    .line 3758
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    #@8d
    move-result v2

    #@8e
    invoke-virtual {v5, v15, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@91
    .line 3760
    :cond_3
    move-object/from16 v0, v17

    #@93
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@95
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v9, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9c
    goto :goto_1

    #@9d
    .line 3762
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v10

    #@a1
    .line 3763
    .local v10, "M":I
    new-array v2, v10, [Ljava/lang/String;

    #@a3
    move-object/from16 v0, v16

    #@a5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a8
    move-result-object v3

    #@a9
    check-cast v3, [Ljava/lang/String;

    #@ab
    .line 3764
    .local v3, "keysAr":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@ae
    move-result v2

    #@af
    new-array v2, v2, [Ljava/lang/String;

    #@b1
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b4
    move-result-object v4

    #@b5
    check-cast v4, [Ljava/lang/String;

    #@b7
    .line 3765
    .local v4, "interceptedKeysAr":[Ljava/lang/String;
    new-array v7, v10, [I

    #@b9
    .line 3766
    .local v7, "importanceAr":[I
    const/4 v12, 0x0

    #@ba
    :goto_2
    if-ge v12, v10, :cond_5

    #@bc
    .line 3767
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v2

    #@c0
    check-cast v2, Ljava/lang/Integer;

    #@c2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@c5
    move-result v2

    #@c6
    aput v2, v7, v12

    #@c8
    .line 3766
    add-int/lit8 v12, v12, 0x1

    #@ca
    goto :goto_2

    #@cb
    .line 3769
    :cond_5
    new-instance v2, Landroid/service/notification/NotificationRankingUpdate;

    #@cd
    invoke-direct/range {v2 .. v9}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@d0
    return-object v2
.end method

.method private maybeAddAutobundleSummary(Landroid/service/notification/Adjustment;)V
    .locals 29
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    #@0
    .prologue
    .line 2259
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@3
    move-result-object v4

    #@4
    if-eqz v4, :cond_4

    #@6
    .line 2260
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@9
    move-result-object v4

    #@a
    const/4 v5, 0x1

    #@b
    invoke-static {v4, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@e
    .line 2261
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, "autogroup_needed"

    #@15
    const/4 v7, 0x0

    #@16
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_4

    #@1c
    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, "group_key_override"

    #@23
    const/4 v7, 0x0

    #@24
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v17

    #@28
    .line 2264
    .local v17, "newAutoBundleKey":Ljava/lang/String;
    const/16 v27, -0x1

    #@2a
    .line 2265
    .local v27, "userId":I
    const/16 v25, 0x0

    #@2c
    .line 2266
    .local v25, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@30
    move-object/from16 v28, v0

    #@32
    monitor-enter v28

    #@33
    .line 2268
    :try_start_0
    move-object/from16 v0, p0

    #@35
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@37
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v23

    #@3f
    check-cast v23, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 2269
    .local v23, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v23, :cond_0

    #@43
    monitor-exit v28

    #@44
    .line 2272
    return-void

    #@45
    .line 2274
    :cond_0
    :try_start_1
    move-object/from16 v0, v23

    #@47
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@49
    move-object/from16 v20, v0

    #@4b
    .line 2275
    .local v20, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@52
    move-result v27

    #@53
    .line 2276
    move-object/from16 v0, p0

    #@55
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    #@57
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v24

    #@5f
    check-cast v24, Landroid/util/ArrayMap;

    #@61
    .line 2277
    .local v24, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v24, :cond_1

    #@63
    .line 2278
    new-instance v24, Landroid/util/ArrayMap;

    #@65
    .end local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    #@68
    .line 2280
    .restart local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    #@6a
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    #@6c
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v5

    #@70
    move-object/from16 v0, v24

    #@72
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 2281
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    move-object/from16 v0, v24

    #@7b
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7e
    move-result v4

    #@7f
    if-nez v4, :cond_3

    #@81
    .line 2282
    if-eqz v17, :cond_3

    #@83
    .line 2285
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@86
    move-result-object v4

    #@87
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@89
    .line 2286
    const-string/jumbo v5, "android.appInfo"

    #@8c
    .line 2285
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8f
    move-result-object v21

    #@90
    check-cast v21, Landroid/content/pm/ApplicationInfo;

    #@92
    .line 2287
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v22, Landroid/os/Bundle;

    #@94
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    #@97
    .line 2288
    .local v22, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "android.appInfo"

    #@9a
    move-object/from16 v0, v22

    #@9c
    move-object/from16 v1, v21

    #@9e
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@a1
    .line 2290
    new-instance v4, Landroid/app/Notification$Builder;

    #@a3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@a6
    move-result-object v5

    #@a7
    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@aa
    .line 2291
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@b1
    move-result-object v5

    #@b2
    .line 2290
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    #@b5
    move-result-object v4

    #@b6
    .line 2292
    const/4 v5, 0x1

    #@b7
    .line 2290
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    #@ba
    move-result-object v4

    #@bb
    move-object/from16 v0, v17

    #@bd
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@c0
    move-result-object v4

    #@c1
    .line 2294
    const/16 v5, 0x400

    #@c3
    const/4 v7, 0x1

    #@c4
    .line 2290
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@c7
    move-result-object v4

    #@c8
    .line 2295
    const/16 v5, 0x200

    #@ca
    const/4 v7, 0x1

    #@cb
    .line 2290
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@ce
    move-result-object v4

    #@cf
    .line 2296
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@d2
    move-result-object v5

    #@d3
    iget v5, v5, Landroid/app/Notification;->color:I

    #@d5
    .line 2290
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@d8
    move-result-object v4

    #@d9
    .line 2297
    const/4 v5, 0x1

    #@da
    .line 2290
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@e1
    move-result-object v15

    #@e2
    .line 2299
    .local v15, "summaryNotification":Landroid/app/Notification;
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@e4
    move-object/from16 v0, v22

    #@e6
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@e9
    .line 2300
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@ec
    move-result-object v4

    #@ed
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f0
    move-result-object v4

    #@f1
    .line 2301
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    #@f4
    move-result-object v5

    #@f5
    .line 2300
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@f8
    move-result-object v6

    #@f9
    .line 2302
    .local v6, "appIntent":Landroid/content/Intent;
    if-eqz v6, :cond_2

    #@fb
    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@fe
    move-result-object v4

    #@ff
    .line 2305
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@102
    move-result-object v9

    #@103
    .line 2304
    const/4 v5, 0x0

    #@104
    const/4 v7, 0x0

    #@105
    const/4 v8, 0x0

    #@106
    .line 2303
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@109
    move-result-object v4

    #@10a
    iput-object v4, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@10c
    .line 2308
    :cond_2
    new-instance v8, Landroid/service/notification/StatusBarNotification;

    #@10e
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@111
    move-result-object v9

    #@112
    .line 2309
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@115
    move-result-object v10

    #@116
    .line 2310
    const-string/jumbo v12, "group_key_override"

    #@119
    .line 2311
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@11c
    move-result v13

    #@11d
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    #@120
    move-result v14

    #@121
    .line 2312
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@124
    move-result-object v16

    #@125
    .line 2314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@128
    move-result-wide v18

    #@129
    .line 2310
    const v11, 0x7fffffff

    #@12c
    .line 2308
    invoke-direct/range {v8 .. v19}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    #@12f
    .line 2315
    .local v8, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v26, Lcom/android/server/notification/NotificationRecord;

    #@131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@134
    move-result-object v4

    #@135
    move-object/from16 v0, v26

    #@137
    invoke-direct {v0, v4, v8}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13a
    .line 2316
    .local v26, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    #@13d
    .end local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    move-result-object v4

    #@13e
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@141
    move-result-object v5

    #@142
    move-object/from16 v0, v24

    #@144
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@147
    move-object/from16 v25, v26

    #@149
    .end local v6    # "appIntent":Landroid/content/Intent;
    .end local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v15    # "summaryNotification":Landroid/app/Notification;
    .end local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v28

    #@14a
    .line 2319
    if-eqz v25, :cond_4

    #@14c
    .line 2320
    move-object/from16 v0, p0

    #@14e
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@150
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    #@152
    move-object/from16 v0, p0

    #@154
    move/from16 v1, v27

    #@156
    move-object/from16 v2, v25

    #@158
    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    #@15b
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15e
    .line 2258
    .end local v17    # "newAutoBundleKey":Ljava/lang/String;
    .end local v20    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v23    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "userId":I
    :cond_4
    return-void

    #@15f
    .line 2266
    .restart local v17    # "newAutoBundleKey":Ljava/lang/String;
    .restart local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v27    # "userId":I
    :catchall_0
    move-exception v4

    #@160
    .end local v25    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_0
    monitor-exit v28

    #@161
    throw v4

    #@162
    .restart local v6    # "appIntent":Landroid/content/Intent;
    .restart local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .restart local v15    # "summaryNotification":Landroid/app/Notification;
    .restart local v20    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v21    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "extras":Landroid/os/Bundle;
    .restart local v23    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v24    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_1
    move-exception v4

    #@163
    move-object/from16 v25, v26

    #@165
    .end local v26    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v25, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_0
.end method

.method private maybeClearAutobundleSummaryLocked(Landroid/service/notification/Adjustment;)V
    .locals 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2238
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@4
    move-result-object v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 2239
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x1

    #@c
    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@f
    .line 2240
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, "autogroup_needed"

    #@16
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 2241
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, "autogroup_needed"

    #@23
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 2237
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 2243
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getUser()I

    #@2f
    move-result v3

    #@30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroid/util/ArrayMap;

    #@3a
    .line 2244
    .local v1, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    #@3c
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_0

    #@46
    .line 2246
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@48
    .line 2247
    invoke-virtual {p1}, Landroid/service/notification/Adjustment;->getPackage()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v3

    #@50
    .line 2246
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    #@56
    .line 2248
    .local v0, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_0

    #@58
    .line 2249
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5d
    .line 2250
    const/16 v2, 0x10

    #@5f
    invoke-direct {p0, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@62
    goto :goto_0
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 437
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
    .line 439
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
    .line 440
    return v3

    #@26
    .line 442
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
    .line 3461
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3462
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
    .line 3461
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
    .line 3448
    if-eq p2, v2, :cond_0

    #@4
    .line 3450
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@7
    move-result v1

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 3446
    :cond_0
    :goto_0
    return v0

    #@b
    .line 3452
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
    .locals 3
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
    .line 362
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v0

    #@4
    .line 363
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@d
    .line 365
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 366
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@16
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@19
    .line 367
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@1b
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    #@1e
    goto :goto_0

    #@1f
    .line 361
    :cond_0
    return-void
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3160
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    #@d
    .line 3158
    :cond_0
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@0
    .prologue
    .line 1189
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    #@0
    .prologue
    .line 1193
    const/4 v3, 0x0

    #@1
    .line 1195
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v1, v4, -0x1

    #@9
    .end local v3    # "removed":Z
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@b
    .line 1196
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v0

    #@11
    .line 1198
    .local v0, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/util/ArraySet;

    #@19
    .line 1200
    .local v2, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    if-eqz p2, :cond_0

    #@1b
    and-int v4, v0, p2

    #@1d
    if-ne v4, v0, :cond_1

    #@1f
    .line 1201
    :cond_0
    if-nez v3, :cond_2

    #@21
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    .line 1195
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_0

    #@28
    .line 1201
    :cond_2
    const/4 v3, 0x1

    #@29
    .restart local v3    # "removed":Z
    goto :goto_1

    #@2a
    .line 1205
    .end local v0    # "hint":I
    .end local v2    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v3    # "removed":Z
    :cond_3
    return v3
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    .line 3200
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 3201
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@8
    .line 3204
    const/4 v1, 0x0

    #@9
    .line 3201
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 3199
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 3195
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 3196
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 3194
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 3182
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 3183
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 3184
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 3181
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@0
    .prologue
    .line 3048
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@5
    .line 3049
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v4, 0x2

    #@8
    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v2

    #@c
    .line 3050
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
    .line 3051
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@16
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@19
    .line 3046
    return-void

    #@1a
    .line 3050
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
    .line 1078
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Landroid/content/Intent;

    #@6
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 1079
    const/high16 v2, 0x40000000    # 2.0f

    #@b
    .line 1078
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@e
    move-result-object v1

    #@f
    .line 1079
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    const/4 v3, 0x0

    #@12
    .line 1078
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@15
    .line 1077
    return-void
.end method

.method private syncBlockDb()V
    .locals 21

    #@0
    .prologue
    .line 1086
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    #@3
    .line 1089
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@7
    move-object/from16 v17, v0

    #@9
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    #@c
    move-result-object v8

    #@d
    .line 1090
    .local v8, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v17

    #@11
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v5

    #@15
    .local v5, "ban$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v17

    #@19
    if-eqz v17, :cond_0

    #@1b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljava/util/Map$Entry;

    #@21
    .line 1091
    .local v4, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v17

    #@25
    check-cast v17, Ljava/lang/Integer;

    #@27
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v13

    #@2b
    .line 1092
    .local v13, "uid":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v11

    #@2f
    check-cast v11, Ljava/lang/String;

    #@31
    .line 1093
    .local v11, "packageName":Ljava/lang/String;
    const/16 v17, 0x0

    #@33
    move-object/from16 v0, p0

    #@35
    move/from16 v1, v17

    #@37
    invoke-virtual {v0, v11, v13, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    #@3a
    goto :goto_0

    #@3b
    .line 1097
    .end local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    :cond_0
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    #@3e
    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@41
    move-result-object v17

    #@42
    invoke-static/range {v17 .. v17}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@45
    move-result-object v17

    #@46
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@49
    move-result-object v17

    #@4a
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v15

    #@4e
    .local v15, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v17

    #@52
    if-eqz v17, :cond_3

    #@54
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v14

    #@58
    check-cast v14, Landroid/content/pm/UserInfo;

    #@5a
    .line 1099
    .local v14, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@5d
    move-result-object v17

    #@5e
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    #@61
    move-result v16

    #@62
    .line 1100
    .local v16, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@65
    move-result-object v17

    #@66
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@69
    move-result-object v10

    #@6a
    .line 1101
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    #@6c
    move/from16 v0, v17

    #@6e
    move/from16 v1, v16

    #@70
    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    #@73
    move-result-object v12

    #@74
    .line 1102
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@77
    move-result v9

    #@78
    .line 1103
    .local v9, "packageCount":I
    const/4 v7, 0x0

    #@79
    .local v7, "p":I
    :goto_1
    if-ge v7, v9, :cond_1

    #@7b
    .line 1104
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v17

    #@7f
    check-cast v17, Landroid/content/pm/PackageInfo;

    #@81
    move-object/from16 v0, v17

    #@83
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@85
    .line 1106
    .restart local v11    # "packageName":Ljava/lang/String;
    :try_start_0
    move/from16 v0, v16

    #@87
    invoke-virtual {v10, v11, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    #@8a
    move-result v13

    #@8b
    .line 1107
    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    #@8d
    invoke-direct {v0, v11, v13}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationOp(Ljava/lang/String;I)Z

    #@90
    move-result v17

    #@91
    if-nez v17, :cond_2

    #@93
    .line 1108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v17

    #@97
    move-object/from16 v0, v17

    #@99
    invoke-interface {v8, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9c
    .line 1103
    .end local v13    # "uid":I
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@9e
    goto :goto_1

    #@9f
    .line 1115
    .end local v7    # "p":I
    .end local v9    # "packageCount":I
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "userId":I
    :cond_3
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a2
    move-result-object v17

    #@a3
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a6
    move-result-object v5

    #@a7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@aa
    move-result v17

    #@ab
    if-eqz v17, :cond_4

    #@ad
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b0
    move-result-object v4

    #@b1
    check-cast v4, Ljava/util/Map$Entry;

    #@b3
    .line 1116
    .restart local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@b7
    move-object/from16 v19, v0

    #@b9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@bc
    move-result-object v17

    #@bd
    check-cast v17, Ljava/lang/String;

    #@bf
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c2
    move-result-object v18

    #@c3
    check-cast v18, Ljava/lang/Integer;

    #@c5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    #@c8
    move-result v18

    #@c9
    const/16 v20, 0x0

    #@cb
    move-object/from16 v0, v19

    #@cd
    move-object/from16 v1, v17

    #@cf
    move/from16 v2, v18

    #@d1
    move/from16 v3, v20

    #@d3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    #@d6
    goto :goto_3

    #@d7
    .line 1119
    .end local v4    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@da
    .line 1085
    return-void

    #@db
    .line 1110
    .restart local v7    # "p":I
    .restart local v9    # "packageCount":I
    .restart local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14    # "user":Landroid/content/pm/UserInfo;
    .restart local v16    # "userId":I
    :catch_0
    move-exception v6

    #@dc
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 6

    #@0
    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    #@3
    move-result-wide v2

    #@4
    .line 1167
    .local v2, "updatedSuppressedEffects":J
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@6
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    #@9
    move-result-wide v4

    #@a
    cmp-long v1, v2, v4

    #@c
    if-nez v1, :cond_0

    #@e
    return-void

    #@f
    .line 1168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    #@12
    move-result-object v0

    #@13
    .line 1169
    .local v0, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    #@15
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    #@18
    .line 1170
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    #@1a
    .line 1171
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    #@1f
    .line 1172
    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    #@22
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    #@25
    .line 1165
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    #@0
    .prologue
    .line 1265
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    #@5
    move-result v0

    #@6
    .line 1266
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    return-void

    #@b
    .line 1267
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@d
    .line 1268
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    #@10
    .line 1264
    return-void
.end method

.method private updateListenerHintsLocked()V
    .locals 3

    #@0
    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    #@3
    move-result v0

    #@4
    .line 1159
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    return-void

    #@9
    .line 1160
    :cond_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    #@d
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@10
    move-result v2

    #@11
    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    #@14
    .line 1161
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@16
    .line 1162
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    #@19
    .line 1157
    return-void
.end method

.method private updateNotificationPulse()V
    .locals 2

    #@0
    .prologue
    .line 3660
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 3661
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 3659
    return-void

    #@8
    .line 3660
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
    .line 421
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    #@4
    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@7
    .line 422
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@10
    .line 423
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@17
    .line 424
    const-string/jumbo v1, "notification-policy"

    #@1a
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 425
    const-string/jumbo v1, "version"

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 426
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@29
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@2c
    .line 427
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@2e
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@31
    .line 428
    const-string/jumbo v1, "notification-policy"

    #@34
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    .line 429
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@3a
    .line 420
    return-void
.end method


# virtual methods
.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 37
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 2795
    const/4 v14, 0x0

    #@1
    .line 2796
    .local v14, "buzz":Z
    const/4 v12, 0x0

    #@2
    .line 2797
    .local v12, "beep":Z
    const/4 v13, 0x0

    #@3
    .line 2799
    .local v13, "blink":Z
    move-object/from16 v0, p1

    #@5
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@7
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@a
    move-result-object v27

    #@b
    .line 2800
    .local v27, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@e
    move-result-object v23

    #@f
    .line 2803
    .local v23, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    #@12
    move-result v4

    #@13
    const/4 v5, 0x3

    #@14
    if-lt v4, v5, :cond_10

    #@16
    const/4 v10, 0x1

    #@17
    .line 2804
    .local v10, "aboveThreshold":Z
    :goto_0
    if-eqz v10, :cond_0

    #@19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_11

    #@1f
    :cond_0
    const/4 v15, 0x0

    #@20
    .line 2805
    .local v15, "canInterrupt":Z
    :goto_1
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@22
    if-nez v4, :cond_1

    #@24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 2806
    :cond_1
    const-string/jumbo v4, "NotificationService"

    #@2d
    .line 2807
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "pkg="

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    move-object/from16 v0, p1

    #@3b
    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@3d
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    const-string/jumbo v6, " canInterrupt="

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 2808
    const-string/jumbo v6, " intercept="

    #@53
    .line 2807
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 2808
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    #@5a
    move-result v6

    #@5b
    .line 2807
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    .line 2806
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 2812
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@69
    move-result-wide v30

    #@6a
    .line 2814
    .local v30, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    move-result v17

    #@6e
    .line 2816
    .local v17, "currentUser":I
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@71
    .line 2820
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    #@74
    move-result-object v18

    #@75
    .line 2821
    .local v18, "disableEffects":Ljava/lang/String;
    if-eqz v18, :cond_3

    #@77
    .line 2822
    move-object/from16 v0, p1

    #@79
    move-object/from16 v1, v18

    #@7b
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    #@7e
    .line 2826
    :cond_3
    if-eqz v23, :cond_12

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@84
    move-object/from16 v0, v23

    #@86
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v34

    #@8a
    .line 2827
    :goto_2
    if-eqz v23, :cond_13

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@90
    move-object/from16 v0, v23

    #@92
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v35

    #@96
    .line 2830
    :goto_3
    const/16 v22, 0x0

    #@98
    .line 2831
    .local v22, "hasValidVibrate":Z
    const/16 v21, 0x0

    #@9a
    .line 2832
    .local v21, "hasValidSound":Z
    if-nez v18, :cond_9

    #@9c
    .line 2833
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@9f
    move-result v4

    #@a0
    const/4 v5, -0x1

    #@a1
    if-eq v4, v5, :cond_4

    #@a3
    .line 2834
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@a6
    move-result v4

    #@a7
    move/from16 v0, v17

    #@a9
    if-ne v4, v0, :cond_14

    #@ab
    .line 2832
    :cond_4
    :goto_4
    if-eqz v15, :cond_9

    #@ad
    .line 2837
    move-object/from16 v0, p0

    #@af
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@b1
    .line 2832
    if-eqz v4, :cond_9

    #@b3
    .line 2838
    move-object/from16 v0, p0

    #@b5
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@b7
    if-eqz v4, :cond_9

    #@b9
    .line 2839
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@bb
    if-eqz v4, :cond_5

    #@bd
    const-string/jumbo v4, "NotificationService"

    #@c0
    const-string/jumbo v5, "Interrupting!"

    #@c3
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 2845
    :cond_5
    move-object/from16 v0, v27

    #@c8
    iget v4, v0, Landroid/app/Notification;->defaults:I

    #@ca
    and-int/lit8 v4, v4, 0x1

    #@cc
    if-nez v4, :cond_15

    #@ce
    .line 2846
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@d0
    .line 2847
    move-object/from16 v0, v27

    #@d2
    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@d4
    .line 2846
    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v32

    #@d8
    .line 2849
    .local v32, "useDefaultSound":Z
    :goto_5
    const/16 v29, 0x0

    #@da
    .line 2850
    .local v29, "soundUri":Landroid/net/Uri;
    if-eqz v32, :cond_17

    #@dc
    .line 2851
    sget-object v29, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@de
    .line 2854
    .local v29, "soundUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@e0
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    #@e2
    if-eqz v4, :cond_16

    #@e4
    const/16 v21, 0x1

    #@e6
    .line 2861
    .end local v29    # "soundUri":Landroid/net/Uri;
    :cond_6
    :goto_6
    move-object/from16 v0, v27

    #@e8
    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    #@ea
    if-eqz v4, :cond_19

    #@ec
    const/16 v20, 0x1

    #@ee
    .line 2866
    .local v20, "hasCustomVibrate":Z
    :goto_7
    if-nez v20, :cond_1b

    #@f0
    if-eqz v21, :cond_1b

    #@f2
    .line 2868
    move-object/from16 v0, p0

    #@f4
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@f6
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@f9
    move-result v4

    #@fa
    const/4 v5, 0x1

    #@fb
    if-ne v4, v5, :cond_1a

    #@fd
    const/16 v16, 0x1

    #@ff
    .line 2872
    .local v16, "convertSoundToVibration":Z
    :goto_8
    move-object/from16 v0, v27

    #@101
    iget v4, v0, Landroid/app/Notification;->defaults:I

    #@103
    and-int/lit8 v4, v4, 0x2

    #@105
    if-eqz v4, :cond_1c

    #@107
    const/16 v33, 0x1

    #@109
    .line 2874
    .local v33, "useDefaultVibrate":Z
    :goto_9
    if-nez v33, :cond_1d

    #@10b
    if-nez v16, :cond_1d

    #@10d
    .line 2875
    move/from16 v22, v20

    #@10f
    .line 2879
    .end local v22    # "hasValidVibrate":Z
    :goto_a
    move-object/from16 v0, p1

    #@111
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    #@113
    if-eqz v4, :cond_1f

    #@115
    .line 2880
    move-object/from16 v0, v27

    #@117
    iget v4, v0, Landroid/app/Notification;->flags:I

    #@119
    and-int/lit8 v4, v4, 0x8

    #@11b
    if-eqz v4, :cond_1e

    #@11d
    const/4 v4, 0x1

    #@11e
    .line 2879
    :goto_b
    if-nez v4, :cond_9

    #@120
    .line 2882
    move-object/from16 v0, p1

    #@122
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@124
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@127
    move-result-object v4

    #@128
    move-object/from16 v0, p0

    #@12a
    move-object/from16 v1, v27

    #@12c
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    #@12f
    .line 2884
    if-eqz v21, :cond_7

    #@131
    .line 2886
    move-object/from16 v0, v27

    #@133
    iget v4, v0, Landroid/app/Notification;->flags:I

    #@135
    and-int/lit8 v4, v4, 0x4

    #@137
    if-eqz v4, :cond_20

    #@139
    const/16 v26, 0x1

    #@13b
    .line 2887
    .local v26, "looping":Z
    :goto_c
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    #@13e
    move-result-object v11

    #@13f
    .line 2888
    .local v11, "audioAttributes":Landroid/media/AudioAttributes;
    move-object/from16 v0, v23

    #@141
    move-object/from16 v1, p0

    #@143
    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@145
    .line 2891
    move-object/from16 v0, p0

    #@147
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@149
    .line 2892
    invoke-static {v11}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@14c
    move-result v5

    #@14d
    .line 2891
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@150
    move-result v4

    #@151
    if-eqz v4, :cond_7

    #@153
    .line 2893
    move-object/from16 v0, p0

    #@155
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@157
    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    #@15a
    move-result v4

    #@15b
    if-eqz v4, :cond_21

    #@15d
    .line 2912
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v26    # "looping":Z
    :cond_7
    :goto_d
    if-eqz v22, :cond_9

    #@15f
    move-object/from16 v0, p0

    #@161
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@163
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@166
    move-result v4

    #@167
    if-eqz v4, :cond_9

    #@169
    .line 2914
    move-object/from16 v0, v23

    #@16b
    move-object/from16 v1, p0

    #@16d
    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@16f
    .line 2916
    if-nez v33, :cond_8

    #@171
    if-eqz v16, :cond_26

    #@173
    .line 2919
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@176
    move-result-wide v24

    #@177
    .line 2921
    .local v24, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@17b
    move-object/from16 v0, p1

    #@17d
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@17f
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@182
    move-result v5

    #@183
    move-object/from16 v0, p1

    #@185
    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@187
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@18a
    move-result-object v6

    #@18b
    .line 2922
    if-eqz v33, :cond_24

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    #@191
    .line 2924
    :goto_e
    move-object/from16 v0, v27

    #@193
    iget v8, v0, Landroid/app/Notification;->flags:I

    #@195
    and-int/lit8 v8, v8, 0x4

    #@197
    if-eqz v8, :cond_25

    #@199
    .line 2925
    const/4 v8, 0x0

    #@19a
    :goto_f
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    #@19d
    move-result-object v9

    #@19e
    .line 2921
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1a1
    .line 2926
    const/4 v14, 0x1

    #@1a2
    .line 2928
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a5
    .line 2945
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v24    # "identity":J
    .end local v32    # "useDefaultSound":Z
    .end local v33    # "useDefaultVibrate":Z
    :cond_9
    :goto_10
    if-eqz v34, :cond_a

    #@1a7
    if-eqz v21, :cond_28

    #@1a9
    .line 2948
    :cond_a
    :goto_11
    if-eqz v35, :cond_b

    #@1ab
    if-eqz v22, :cond_29

    #@1ad
    .line 2954
    :cond_b
    :goto_12
    move-object/from16 v0, p0

    #@1af
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@1b1
    move-object/from16 v0, v23

    #@1b3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1b6
    move-result v36

    #@1b7
    .line 2955
    .local v36, "wasShowLights":Z
    move-object/from16 v0, v27

    #@1b9
    iget v4, v0, Landroid/app/Notification;->flags:I

    #@1bb
    and-int/lit8 v4, v4, 0x1

    #@1bd
    if-eqz v4, :cond_2a

    #@1bf
    if-eqz v10, :cond_2a

    #@1c1
    .line 2956
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    #@1c4
    move-result v4

    #@1c5
    and-int/lit8 v4, v4, 0x1

    #@1c7
    if-nez v4, :cond_2a

    #@1c9
    .line 2958
    move-object/from16 v0, p0

    #@1cb
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@1cd
    move-object/from16 v0, v23

    #@1cf
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d2
    .line 2959
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@1d5
    .line 2960
    move-object/from16 v0, p0

    #@1d7
    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    #@1d9
    if-eqz v4, :cond_c

    #@1db
    .line 2961
    move-object/from16 v0, p0

    #@1dd
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    #@1df
    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    #@1e2
    .line 2963
    :cond_c
    const/4 v13, 0x1

    #@1e3
    .line 2967
    :cond_d
    :goto_13
    if-nez v14, :cond_e

    #@1e5
    if-nez v12, :cond_e

    #@1e7
    if-eqz v13, :cond_f

    #@1e9
    .line 2968
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    #@1ec
    move-result v4

    #@1ed
    and-int/lit8 v4, v4, 0x1

    #@1ef
    if-eqz v4, :cond_2b

    #@1f1
    .line 2970
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@1f3
    if-eqz v4, :cond_f

    #@1f5
    const-string/jumbo v4, "NotificationService"

    #@1f8
    const-string/jumbo v5, "Suppressed SystemUI from triggering screen on"

    #@1fb
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1fe
    .line 2794
    :cond_f
    :goto_14
    return-void

    #@1ff
    .line 2803
    .end local v10    # "aboveThreshold":Z
    .end local v15    # "canInterrupt":Z
    .end local v17    # "currentUser":I
    .end local v18    # "disableEffects":Ljava/lang/String;
    .end local v21    # "hasValidSound":Z
    .end local v30    # "token":J
    .end local v36    # "wasShowLights":Z
    :cond_10
    const/4 v10, 0x0

    #@200
    goto/16 :goto_0

    #@202
    .line 2804
    .restart local v10    # "aboveThreshold":Z
    :cond_11
    const/4 v15, 0x1

    #@203
    .restart local v15    # "canInterrupt":Z
    goto/16 :goto_1

    #@205
    .line 2815
    .restart local v30    # "token":J
    :catchall_0
    move-exception v4

    #@206
    .line 2816
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@209
    .line 2815
    throw v4

    #@20a
    .line 2826
    .restart local v17    # "currentUser":I
    .restart local v18    # "disableEffects":Ljava/lang/String;
    :cond_12
    const/16 v34, 0x0

    #@20c
    .local v34, "wasBeep":Z
    goto/16 :goto_2

    #@20e
    .line 2827
    .end local v34    # "wasBeep":Z
    :cond_13
    const/16 v35, 0x0

    #@210
    .local v35, "wasBuzz":Z
    goto/16 :goto_3

    #@212
    .line 2835
    .end local v35    # "wasBuzz":Z
    .restart local v21    # "hasValidSound":Z
    .restart local v22    # "hasValidVibrate":Z
    :cond_14
    move-object/from16 v0, p0

    #@214
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@216
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@219
    move-result v5

    #@21a
    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@21d
    move-result v4

    #@21e
    .line 2832
    if-eqz v4, :cond_9

    #@220
    goto/16 :goto_4

    #@222
    .line 2845
    :cond_15
    const/16 v32, 0x1

    #@224
    goto/16 :goto_5

    #@226
    .line 2854
    .restart local v29    # "soundUri":Landroid/net/Uri;
    .restart local v32    # "useDefaultSound":Z
    :cond_16
    const/16 v21, 0x0

    #@228
    goto/16 :goto_6

    #@22a
    .line 2855
    .local v29, "soundUri":Landroid/net/Uri;
    :cond_17
    move-object/from16 v0, v27

    #@22c
    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@22e
    if-eqz v4, :cond_6

    #@230
    .line 2856
    move-object/from16 v0, v27

    #@232
    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@234
    move-object/from16 v29, v0

    #@236
    .line 2857
    .local v29, "soundUri":Landroid/net/Uri;
    if-eqz v29, :cond_18

    #@238
    const/16 v21, 0x1

    #@23a
    goto/16 :goto_6

    #@23c
    :cond_18
    const/16 v21, 0x0

    #@23e
    goto/16 :goto_6

    #@240
    .line 2861
    .end local v29    # "soundUri":Landroid/net/Uri;
    :cond_19
    const/16 v20, 0x0

    #@242
    goto/16 :goto_7

    #@244
    .line 2868
    .restart local v20    # "hasCustomVibrate":Z
    :cond_1a
    const/16 v16, 0x0

    #@246
    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_8

    #@248
    .line 2866
    .end local v16    # "convertSoundToVibration":Z
    :cond_1b
    const/16 v16, 0x0

    #@24a
    .restart local v16    # "convertSoundToVibration":Z
    goto/16 :goto_8

    #@24c
    .line 2872
    :cond_1c
    const/16 v33, 0x0

    #@24e
    goto/16 :goto_9

    #@250
    .line 2874
    .restart local v33    # "useDefaultVibrate":Z
    :cond_1d
    const/16 v22, 0x1

    #@252
    goto/16 :goto_a

    #@254
    .line 2880
    .end local v22    # "hasValidVibrate":Z
    :cond_1e
    const/4 v4, 0x0

    #@255
    goto/16 :goto_b

    #@257
    .line 2879
    :cond_1f
    const/4 v4, 0x0

    #@258
    goto/16 :goto_b

    #@25a
    .line 2886
    :cond_20
    const/16 v26, 0x0

    #@25c
    .restart local v26    # "looping":Z
    goto/16 :goto_c

    #@25e
    .line 2894
    .restart local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@261
    move-result-wide v24

    #@262
    .line 2897
    .restart local v24    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    #@264
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@266
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@269
    move-result-object v28

    #@26a
    .line 2898
    .local v28, "player":Landroid/media/IRingtonePlayer;
    if-eqz v28, :cond_23

    #@26c
    .line 2899
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@26e
    if-eqz v4, :cond_22

    #@270
    const-string/jumbo v4, "NotificationService"

    #@273
    new-instance v5, Ljava/lang/StringBuilder;

    #@275
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@278
    const-string/jumbo v6, "Playing sound "

    #@27b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v5

    #@27f
    move-object/from16 v0, v29

    #@281
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v5

    #@285
    .line 2900
    const-string/jumbo v6, " with attributes "

    #@288
    .line 2899
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v5

    #@28c
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v5

    #@290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@293
    move-result-object v5

    #@294
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@297
    .line 2901
    :cond_22
    move-object/from16 v0, p1

    #@299
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@29b
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@29e
    move-result-object v4

    #@29f
    move-object/from16 v0, v28

    #@2a1
    move-object/from16 v1, v29

    #@2a3
    move/from16 v2, v26

    #@2a5
    invoke-interface {v0, v1, v4, v2, v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a8
    .line 2903
    const/4 v12, 0x1

    #@2a9
    .line 2907
    :cond_23
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2ac
    goto/16 :goto_d

    #@2ae
    .line 2905
    .end local v28    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v19

    #@2af
    .line 2907
    .local v19, "e":Landroid/os/RemoteException;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b2
    goto/16 :goto_d

    #@2b4
    .line 2906
    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@2b5
    .line 2907
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b8
    .line 2906
    throw v4

    #@2b9
    .line 2923
    .end local v11    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v26    # "looping":Z
    :cond_24
    :try_start_3
    move-object/from16 v0, p0

    #@2bb
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@2bd
    goto/16 :goto_e

    #@2bf
    .line 2925
    :cond_25
    const/4 v8, -0x1

    #@2c0
    goto/16 :goto_f

    #@2c2
    .line 2927
    :catchall_2
    move-exception v4

    #@2c3
    .line 2928
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c6
    .line 2927
    throw v4

    #@2c7
    .line 2930
    .end local v24    # "identity":J
    :cond_26
    move-object/from16 v0, v27

    #@2c9
    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    #@2cb
    array-length v4, v4

    #@2cc
    const/4 v5, 0x1

    #@2cd
    if-le v4, v5, :cond_9

    #@2cf
    .line 2933
    move-object/from16 v0, p0

    #@2d1
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@2d3
    move-object/from16 v0, p1

    #@2d5
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2d7
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@2da
    move-result v5

    #@2db
    move-object/from16 v0, p1

    #@2dd
    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2df
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@2e2
    move-result-object v6

    #@2e3
    .line 2934
    move-object/from16 v0, v27

    #@2e5
    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    #@2e7
    .line 2935
    move-object/from16 v0, v27

    #@2e9
    iget v8, v0, Landroid/app/Notification;->flags:I

    #@2eb
    and-int/lit8 v8, v8, 0x4

    #@2ed
    if-eqz v8, :cond_27

    #@2ef
    .line 2936
    const/4 v8, 0x0

    #@2f0
    :goto_15
    invoke-static/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    #@2f3
    move-result-object v9

    #@2f4
    .line 2933
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    #@2f7
    .line 2937
    const/4 v14, 0x1

    #@2f8
    goto/16 :goto_10

    #@2fa
    .line 2936
    :cond_27
    const/4 v8, -0x1

    #@2fb
    goto :goto_15

    #@2fc
    .line 2946
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v32    # "useDefaultSound":Z
    .end local v33    # "useDefaultVibrate":Z
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    #@2ff
    goto/16 :goto_11

    #@301
    .line 2949
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    #@304
    goto/16 :goto_12

    #@306
    .line 2964
    .restart local v36    # "wasShowLights":Z
    :cond_2a
    if-eqz v36, :cond_d

    #@308
    .line 2965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@30b
    goto/16 :goto_13

    #@30d
    .line 2973
    :cond_2b
    if-eqz v14, :cond_2c

    #@30f
    const/4 v4, 0x1

    #@310
    move v6, v4

    #@311
    :goto_16
    if-eqz v12, :cond_2d

    #@313
    const/4 v4, 0x1

    #@314
    move v5, v4

    #@315
    :goto_17
    if-eqz v13, :cond_2e

    #@317
    const/4 v4, 0x1

    #@318
    .line 2972
    :goto_18
    move-object/from16 v0, v23

    #@31a
    invoke-static {v0, v6, v5, v4}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    #@31d
    .line 2974
    move-object/from16 v0, p0

    #@31f
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@321
    move-object/from16 v0, p0

    #@323
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    #@325
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@328
    goto/16 :goto_14

    #@32a
    .line 2973
    :cond_2c
    const/4 v4, 0x0

    #@32b
    move v6, v4

    #@32c
    goto :goto_16

    #@32d
    :cond_2d
    const/4 v4, 0x0

    #@32e
    move v5, v4

    #@32f
    goto :goto_17

    #@330
    :cond_2e
    const/4 v4, 0x0

    #@331
    goto :goto_18
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 18
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    #@0
    .prologue
    .line 3524
    if-nez p5, :cond_1

    #@2
    const/4 v10, 0x0

    #@3
    .line 3526
    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    const/4 v8, 0x0

    #@6
    move/from16 v3, p1

    #@8
    move/from16 v4, p2

    #@a
    move/from16 v6, p3

    #@c
    move/from16 v9, p4

    #@e
    .line 3525
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    #@11
    .line 3528
    const/4 v15, 0x0

    #@12
    .line 3529
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v14

    #@1a
    .line 3530
    .local v14, "N":I
    add-int/lit8 v16, v14, -0x1

    #@1c
    .end local v15    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_5

    #@1e
    .line 3531
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@22
    move/from16 v0, v16

    #@24
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v17

    #@28
    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    #@2a
    .line 3532
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    #@2c
    .line 3533
    move-object/from16 v0, p0

    #@2e
    move-object/from16 v1, v17

    #@30
    move/from16 v2, p3

    #@32
    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_3

    #@38
    .line 3530
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 3524
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    #@3d
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@3f
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@42
    move-result-object v10

    #@43
    goto :goto_0

    #@44
    .line 3537
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move-object/from16 v0, p0

    #@46
    move-object/from16 v1, v17

    #@48
    move/from16 v2, p3

    #@4a
    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_0

    #@50
    .line 3542
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    #@53
    move-result v3

    #@54
    and-int/lit8 v3, v3, 0x22

    #@56
    if-nez v3, :cond_0

    #@58
    .line 3544
    move-object/from16 v0, p0

    #@5a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@5c
    move/from16 v0, v16

    #@5e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@61
    .line 3545
    const/4 v3, 0x1

    #@62
    move-object/from16 v0, p0

    #@64
    move-object/from16 v1, v17

    #@66
    move/from16 v2, p4

    #@68
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    #@6b
    .line 3547
    if-nez v15, :cond_4

    #@6d
    .line 3548
    new-instance v15, Ljava/util/ArrayList;

    #@6f
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@72
    .line 3550
    :cond_4
    move-object/from16 v0, v17

    #@74
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@77
    goto :goto_2

    #@78
    .line 3553
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v15, :cond_6

    #@7a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v13

    #@7e
    .line 3554
    .local v13, "M":I
    :goto_3
    const/16 v16, 0x0

    #@80
    :goto_4
    move/from16 v0, v16

    #@82
    if-ge v0, v13, :cond_7

    #@84
    .line 3555
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v7

    #@88
    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    #@8a
    .line 3556
    const/16 v11, 0xc

    #@8c
    const/4 v12, 0x0

    #@8d
    move-object/from16 v6, p0

    #@8f
    move/from16 v8, p1

    #@91
    move/from16 v9, p2

    #@93
    .line 3555
    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    #@96
    .line 3554
    add-int/lit8 v16, v16, 0x1

    #@98
    goto :goto_4

    #@99
    .line 3553
    .end local v13    # "M":I
    :cond_6
    const/4 v13, 0x0

    #@9a
    .restart local v13    # "M":I
    goto :goto_3

    #@9b
    .line 3558
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    #@9e
    .line 3523
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 18
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
    .line 3472
    if-nez p9, :cond_1

    #@2
    const/4 v10, 0x0

    #@3
    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    move/from16 v3, p1

    #@5
    move/from16 v4, p2

    #@7
    move-object/from16 v5, p3

    #@9
    move/from16 v6, p7

    #@b
    move/from16 v7, p4

    #@d
    move/from16 v8, p5

    #@f
    move/from16 v9, p8

    #@11
    .line 3473
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    #@14
    .line 3477
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@18
    monitor-enter v4

    #@19
    .line 3478
    :try_start_0
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v14

    #@21
    .line 3479
    .local v14, "N":I
    const/4 v15, 0x0

    #@22
    .line 3480
    .local v15, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v16, v14, -0x1

    #@24
    .end local v15    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_7

    #@26
    .line 3481
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2a
    move/from16 v0, v16

    #@2c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v17

    #@30
    check-cast v17, Lcom/android/server/notification/NotificationRecord;

    #@32
    .line 3482
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v17

    #@36
    move/from16 v2, p7

    #@38
    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_2

    #@3e
    .line 3480
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, -0x1

    #@40
    goto :goto_1

    #@41
    .line 3472
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    #@43
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@45
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    goto :goto_0

    #@4a
    .line 3486
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    .restart local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    #@4d
    move-result v3

    #@4e
    const/4 v5, -0x1

    #@4f
    if-ne v3, v5, :cond_3

    #@51
    if-eqz p3, :cond_0

    #@53
    .line 3489
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    #@56
    move-result v3

    #@57
    and-int v3, v3, p4

    #@59
    move/from16 v0, p4

    #@5b
    if-ne v3, v0, :cond_0

    #@5d
    .line 3492
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    #@60
    move-result v3

    #@61
    and-int v3, v3, p5

    #@63
    if-nez v3, :cond_0

    #@65
    .line 3495
    if-eqz p3, :cond_4

    #@67
    move-object/from16 v0, v17

    #@69
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@6b
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    move-object/from16 v0, p3

    #@71
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v3

    #@75
    if-eqz v3, :cond_0

    #@77
    .line 3498
    :cond_4
    if-nez v15, :cond_5

    #@79
    .line 3499
    new-instance v15, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@7e
    .line 3501
    :cond_5
    move-object/from16 v0, v17

    #@80
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 3502
    if-nez p6, :cond_6

    #@85
    .line 3503
    const/4 v3, 0x1

    #@86
    monitor-exit v4

    #@87
    return v3

    #@88
    .line 3505
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@8a
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8c
    move/from16 v0, v16

    #@8e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@91
    .line 3506
    const/4 v3, 0x0

    #@92
    move-object/from16 v0, p0

    #@94
    move-object/from16 v1, v17

    #@96
    move/from16 v2, p8

    #@98
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9b
    goto :goto_2

    #@9c
    .line 3477
    .end local v14    # "N":I
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    #@9d
    monitor-exit v4

    #@9e
    throw v3

    #@9f
    .line 3508
    .restart local v14    # "N":I
    .restart local v16    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    #@a1
    if-eqz v15, :cond_8

    #@a3
    .line 3509
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@a6
    move-result v13

    #@a7
    .line 3510
    .local v13, "M":I
    const/16 v16, 0x0

    #@a9
    :goto_3
    move/from16 v0, v16

    #@ab
    if-ge v0, v13, :cond_8

    #@ad
    .line 3511
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b0
    move-result-object v7

    #@b1
    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    #@b3
    .line 3512
    const/16 v11, 0xc

    #@b5
    const/4 v12, 0x0

    #@b6
    move-object/from16 v6, p0

    #@b8
    move/from16 v8, p1

    #@ba
    move/from16 v9, p2

    #@bc
    .line 3511
    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;IZ)V

    #@bf
    .line 3510
    add-int/lit8 v16, v16, 0x1

    #@c1
    goto :goto_3

    #@c2
    .line 3515
    .end local v13    # "M":I
    :cond_8
    if-eqz v15, :cond_9

    #@c4
    .line 3516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c7
    .line 3518
    :cond_9
    if-eqz v15, :cond_a

    #@c9
    const/4 v3, 0x1

    #@ca
    :goto_4
    monitor-exit v4

    #@cb
    return v3

    #@cc
    :cond_a
    const/4 v3, 0x0

    #@cd
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
    .line 3404
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8;

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
    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    #@1d
    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@20
    .line 3399
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3024
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@8
    .line 3026
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@a
    invoke-interface {v3}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3034
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@15
    .line 3035
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@17
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    #@19
    const/4 v5, 0x1

    #@1a
    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V

    #@1d
    .line 3037
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    #@1f
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    #@22
    .line 3038
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v3

    #@28
    if-lez v3, :cond_0

    #@2a
    .line 3042
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    #@2d
    .line 3023
    :cond_0
    return-void

    #@2e
    .line 3027
    .end local v1    # "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :catch_0
    move-exception v0

    #@2f
    .line 3028
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Object died trying to hide notification "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 3029
    const-string/jumbo v5, " in package "

    #@47
    .line 3028
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 3029
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@4d
    .line 3028
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    .line 2353
    const-string/jumbo v18, "Current Notification Manager state"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v18

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 2354
    move-object/from16 v0, p2

    #@c
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@e
    move/from16 v18, v0

    #@10
    if-eqz v18, :cond_0

    #@12
    .line 2355
    const-string/jumbo v18, " (filtered to "

    #@15
    move-object/from16 v0, p1

    #@17
    move-object/from16 v1, v18

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1f
    const-string/jumbo v18, ")"

    #@22
    move-object/from16 v0, p1

    #@24
    move-object/from16 v1, v18

    #@26
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 2357
    :cond_0
    const/16 v18, 0x3a

    #@2b
    move-object/from16 v0, p1

    #@2d
    move/from16 v1, v18

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    #@32
    .line 2359
    move-object/from16 v0, p2

    #@34
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@36
    move/from16 v18, v0

    #@38
    if-eqz v18, :cond_1

    #@3a
    move-object/from16 v0, p2

    #@3c
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    #@3e
    move/from16 v17, v0

    #@40
    .line 2361
    .local v17, "zenOnly":Z
    :goto_0
    if-nez v17, :cond_4

    #@42
    .line 2362
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@46
    move-object/from16 v19, v0

    #@48
    monitor-enter v19

    #@49
    .line 2363
    :try_start_0
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@4d
    move-object/from16 v18, v0

    #@4f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v4

    #@53
    .line 2364
    .local v4, "N":I
    if-lez v4, :cond_3

    #@55
    .line 2365
    const-string/jumbo v18, "  Toast Queue:"

    #@58
    move-object/from16 v0, p1

    #@5a
    move-object/from16 v1, v18

    #@5c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 2366
    const/4 v8, 0x0

    #@60
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    #@62
    .line 2367
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@66
    move-object/from16 v18, v0

    #@68
    move-object/from16 v0, v18

    #@6a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v18

    #@6e
    check-cast v18, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@70
    const-string/jumbo v20, "    "

    #@73
    move-object/from16 v0, v18

    #@75
    move-object/from16 v1, p1

    #@77
    move-object/from16 v2, v20

    #@79
    move-object/from16 v3, p2

    #@7b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@7e
    .line 2366
    add-int/lit8 v8, v8, 0x1

    #@80
    goto :goto_1

    #@81
    .line 2359
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v17    # "zenOnly":Z
    :cond_1
    const/16 v17, 0x0

    #@83
    goto :goto_0

    #@84
    .line 2369
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    .restart local v17    # "zenOnly":Z
    :cond_2
    const-string/jumbo v18, "  "

    #@87
    move-object/from16 v0, p1

    #@89
    move-object/from16 v1, v18

    #@8b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8e
    .end local v8    # "i":I
    :cond_3
    monitor-exit v19

    #@8f
    .line 2374
    .end local v4    # "N":I
    :cond_4
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@93
    move-object/from16 v19, v0

    #@95
    monitor-enter v19

    #@96
    .line 2375
    if-nez v17, :cond_f

    #@98
    .line 2376
    :try_start_1
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@9c
    move-object/from16 v18, v0

    #@9e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v4

    #@a2
    .line 2377
    .restart local v4    # "N":I
    if-lez v4, :cond_8

    #@a4
    .line 2378
    const-string/jumbo v18, "  Notification List:"

    #@a7
    move-object/from16 v0, p1

    #@a9
    move-object/from16 v1, v18

    #@ab
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    .line 2379
    const/4 v8, 0x0

    #@af
    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v4, :cond_7

    #@b1
    .line 2380
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@b5
    move-object/from16 v18, v0

    #@b7
    move-object/from16 v0, v18

    #@b9
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bc
    move-result-object v14

    #@bd
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    #@bf
    .line 2381
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    #@c1
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@c3
    move/from16 v18, v0

    #@c5
    if-eqz v18, :cond_5

    #@c7
    iget-object v0, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@c9
    move-object/from16 v18, v0

    #@cb
    move-object/from16 v0, p2

    #@cd
    move-object/from16 v1, v18

    #@cf
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    #@d2
    move-result v18

    #@d3
    if-eqz v18, :cond_6

    #@d5
    .line 2382
    :cond_5
    const-string/jumbo v18, "    "

    #@d8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@db
    move-result-object v20

    #@dc
    move-object/from16 v0, p2

    #@de
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    #@e0
    move/from16 v21, v0

    #@e2
    move-object/from16 v0, p1

    #@e4
    move-object/from16 v1, v18

    #@e6
    move-object/from16 v2, v20

    #@e8
    move/from16 v3, v21

    #@ea
    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@ed
    .line 2379
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@ef
    goto :goto_2

    #@f0
    .line 2362
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v18

    #@f1
    monitor-exit v19

    #@f2
    throw v18

    #@f3
    .line 2384
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_7
    :try_start_2
    const-string/jumbo v18, "  "

    #@f6
    move-object/from16 v0, p1

    #@f8
    move-object/from16 v1, v18

    #@fa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fd
    .line 2387
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p2

    #@ff
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@101
    move/from16 v18, v0

    #@103
    if-nez v18, :cond_c

    #@105
    .line 2388
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@109
    move-object/from16 v18, v0

    #@10b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@10e
    move-result v4

    #@10f
    .line 2389
    if-lez v4, :cond_b

    #@111
    .line 2390
    const-string/jumbo v18, "  Lights List:"

    #@114
    move-object/from16 v0, p1

    #@116
    move-object/from16 v1, v18

    #@118
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11b
    .line 2391
    const/4 v8, 0x0

    #@11c
    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_a

    #@11e
    .line 2392
    add-int/lit8 v18, v4, -0x1

    #@120
    move/from16 v0, v18

    #@122
    if-ne v8, v0, :cond_9

    #@124
    .line 2393
    const-string/jumbo v18, "  > "

    #@127
    move-object/from16 v0, p1

    #@129
    move-object/from16 v1, v18

    #@12b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    .line 2397
    :goto_4
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@132
    move-object/from16 v18, v0

    #@134
    move-object/from16 v0, v18

    #@136
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@139
    move-result-object v18

    #@13a
    check-cast v18, Ljava/lang/String;

    #@13c
    move-object/from16 v0, p1

    #@13e
    move-object/from16 v1, v18

    #@140
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 2391
    add-int/lit8 v8, v8, 0x1

    #@145
    goto :goto_3

    #@146
    .line 2395
    :cond_9
    const-string/jumbo v18, "    "

    #@149
    move-object/from16 v0, p1

    #@14b
    move-object/from16 v1, v18

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@150
    goto :goto_4

    #@151
    .line 2374
    .end local v4    # "N":I
    .end local v8    # "i":I
    :catchall_1
    move-exception v18

    #@152
    monitor-exit v19

    #@153
    throw v18

    #@154
    .line 2399
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    :cond_a
    :try_start_3
    const-string/jumbo v18, "  "

    #@157
    move-object/from16 v0, p1

    #@159
    move-object/from16 v1, v18

    #@15b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15e
    .line 2401
    .end local v8    # "i":I
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    #@160
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v20, "  mUseAttentionLight="

    #@166
    move-object/from16 v0, v18

    #@168
    move-object/from16 v1, v20

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v18

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    #@172
    move/from16 v20, v0

    #@174
    move-object/from16 v0, v18

    #@176
    move/from16 v1, v20

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v18

    #@17c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v18

    #@180
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, v18

    #@184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@187
    .line 2402
    new-instance v18, Ljava/lang/StringBuilder;

    #@189
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@18c
    const-string/jumbo v20, "  mNotificationPulseEnabled="

    #@18f
    move-object/from16 v0, v18

    #@191
    move-object/from16 v1, v20

    #@193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v18

    #@197
    move-object/from16 v0, p0

    #@199
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@19b
    move/from16 v20, v0

    #@19d
    move-object/from16 v0, v18

    #@19f
    move/from16 v1, v20

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v18

    #@1a5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v18

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    move-object/from16 v1, v18

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b0
    .line 2403
    new-instance v18, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v20, "  mSoundNotificationKey="

    #@1b8
    move-object/from16 v0, v18

    #@1ba
    move-object/from16 v1, v20

    #@1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v18

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    #@1c4
    move-object/from16 v20, v0

    #@1c6
    move-object/from16 v0, v18

    #@1c8
    move-object/from16 v1, v20

    #@1ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v18

    #@1ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v18

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    move-object/from16 v1, v18

    #@1d6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d9
    .line 2404
    new-instance v18, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v20, "  mVibrateNotificationKey="

    #@1e1
    move-object/from16 v0, v18

    #@1e3
    move-object/from16 v1, v20

    #@1e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v18

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    #@1ed
    move-object/from16 v20, v0

    #@1ef
    move-object/from16 v0, v18

    #@1f1
    move-object/from16 v1, v20

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v18

    #@1f7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v18

    #@1fb
    move-object/from16 v0, p1

    #@1fd
    move-object/from16 v1, v18

    #@1ff
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@202
    .line 2405
    new-instance v18, Ljava/lang/StringBuilder;

    #@204
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v20, "  mDisableNotificationEffects="

    #@20a
    move-object/from16 v0, v18

    #@20c
    move-object/from16 v1, v20

    #@20e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v18

    #@212
    move-object/from16 v0, p0

    #@214
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@216
    move/from16 v20, v0

    #@218
    move-object/from16 v0, v18

    #@21a
    move/from16 v1, v20

    #@21c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v18

    #@220
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v18

    #@224
    move-object/from16 v0, p1

    #@226
    move-object/from16 v1, v18

    #@228
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 2406
    new-instance v18, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v20, "  mCallState="

    #@233
    move-object/from16 v0, v18

    #@235
    move-object/from16 v1, v20

    #@237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v18

    #@23b
    move-object/from16 v0, p0

    #@23d
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    #@23f
    move/from16 v20, v0

    #@241
    invoke-static/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    #@244
    move-result-object v20

    #@245
    move-object/from16 v0, v18

    #@247
    move-object/from16 v1, v20

    #@249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v18

    #@24d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v18

    #@251
    move-object/from16 v0, p1

    #@253
    move-object/from16 v1, v18

    #@255
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@258
    .line 2407
    new-instance v18, Ljava/lang/StringBuilder;

    #@25a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@25d
    const-string/jumbo v20, "  mSystemReady="

    #@260
    move-object/from16 v0, v18

    #@262
    move-object/from16 v1, v20

    #@264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v18

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@26c
    move/from16 v20, v0

    #@26e
    move-object/from16 v0, v18

    #@270
    move/from16 v1, v20

    #@272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@275
    move-result-object v18

    #@276
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v18

    #@27a
    move-object/from16 v0, p1

    #@27c
    move-object/from16 v1, v18

    #@27e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@281
    .line 2408
    new-instance v18, Ljava/lang/StringBuilder;

    #@283
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@286
    const-string/jumbo v20, "  mMaxPackageEnqueueRate="

    #@289
    move-object/from16 v0, v18

    #@28b
    move-object/from16 v1, v20

    #@28d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v18

    #@291
    move-object/from16 v0, p0

    #@293
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    #@295
    move/from16 v20, v0

    #@297
    move-object/from16 v0, v18

    #@299
    move/from16 v1, v20

    #@29b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v18

    #@29f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a2
    move-result-object v18

    #@2a3
    move-object/from16 v0, p1

    #@2a5
    move-object/from16 v1, v18

    #@2a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2aa
    .line 2410
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    #@2ac
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2af
    const-string/jumbo v20, "  mArchive="

    #@2b2
    move-object/from16 v0, v18

    #@2b4
    move-object/from16 v1, v20

    #@2b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v18

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2be
    move-object/from16 v20, v0

    #@2c0
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    #@2c3
    move-result-object v20

    #@2c4
    move-object/from16 v0, v18

    #@2c6
    move-object/from16 v1, v20

    #@2c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v18

    #@2cc
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cf
    move-result-object v18

    #@2d0
    move-object/from16 v0, p1

    #@2d2
    move-object/from16 v1, v18

    #@2d4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d7
    .line 2411
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2db
    move-object/from16 v18, v0

    #@2dd
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    #@2e0
    move-result-object v9

    #@2e1
    .line 2412
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v8, 0x0

    #@2e2
    .line 2413
    .restart local v8    # "i":I
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2e5
    move-result v18

    #@2e6
    if-eqz v18, :cond_f

    #@2e8
    .line 2414
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2eb
    move-result-object v16

    #@2ec
    check-cast v16, Landroid/service/notification/StatusBarNotification;

    #@2ee
    .line 2415
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_e

    #@2f0
    move-object/from16 v0, p2

    #@2f2
    move-object/from16 v1, v16

    #@2f4
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    #@2f7
    move-result v18

    #@2f8
    if-eqz v18, :cond_d

    #@2fa
    .line 2416
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    #@2fc
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2ff
    const-string/jumbo v20, "    "

    #@302
    move-object/from16 v0, v18

    #@304
    move-object/from16 v1, v20

    #@306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v18

    #@30a
    move-object/from16 v0, v18

    #@30c
    move-object/from16 v1, v16

    #@30e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@311
    move-result-object v18

    #@312
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@315
    move-result-object v18

    #@316
    move-object/from16 v0, p1

    #@318
    move-object/from16 v1, v18

    #@31a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31d
    .line 2417
    add-int/lit8 v8, v8, 0x1

    #@31f
    const/16 v18, 0x5

    #@321
    move/from16 v0, v18

    #@323
    if-lt v8, v0, :cond_d

    #@325
    .line 2418
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@328
    move-result v18

    #@329
    if-eqz v18, :cond_f

    #@32b
    const-string/jumbo v18, "    ..."

    #@32e
    move-object/from16 v0, p1

    #@330
    move-object/from16 v1, v18

    #@332
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@335
    .line 2424
    .end local v4    # "N":I
    .end local v8    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    if-nez v17, :cond_10

    #@337
    .line 2425
    const-string/jumbo v18, "\n  Usage Stats:"

    #@33a
    move-object/from16 v0, p1

    #@33c
    move-object/from16 v1, v18

    #@33e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@341
    .line 2426
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@345
    move-object/from16 v18, v0

    #@347
    const-string/jumbo v20, "    "

    #@34a
    move-object/from16 v0, v18

    #@34c
    move-object/from16 v1, p1

    #@34e
    move-object/from16 v2, v20

    #@350
    move-object/from16 v3, p2

    #@352
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@355
    .line 2429
    :cond_10
    move-object/from16 v0, p2

    #@357
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    #@359
    move/from16 v18, v0

    #@35b
    if-eqz v18, :cond_11

    #@35d
    if-eqz v17, :cond_12

    #@35f
    .line 2430
    :cond_11
    const-string/jumbo v18, "\n  Zen Mode:"

    #@362
    move-object/from16 v0, p1

    #@364
    move-object/from16 v1, v18

    #@366
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@369
    .line 2431
    const-string/jumbo v18, "    mInterruptionFilter="

    #@36c
    move-object/from16 v0, p1

    #@36e
    move-object/from16 v1, v18

    #@370
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@373
    move-object/from16 v0, p0

    #@375
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@377
    move/from16 v18, v0

    #@379
    move-object/from16 v0, p1

    #@37b
    move/from16 v1, v18

    #@37d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@380
    .line 2432
    move-object/from16 v0, p0

    #@382
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@384
    move-object/from16 v18, v0

    #@386
    const-string/jumbo v20, "    "

    #@389
    move-object/from16 v0, v18

    #@38b
    move-object/from16 v1, p1

    #@38d
    move-object/from16 v2, v20

    #@38f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@392
    .line 2434
    const-string/jumbo v18, "\n  Zen Log:"

    #@395
    move-object/from16 v0, p1

    #@397
    move-object/from16 v1, v18

    #@399
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39c
    .line 2435
    const-string/jumbo v18, "    "

    #@39f
    move-object/from16 v0, p1

    #@3a1
    move-object/from16 v1, v18

    #@3a3
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@3a6
    .line 2438
    :cond_12
    if-nez v17, :cond_17

    #@3a8
    .line 2439
    const-string/jumbo v18, "\n  Ranking Config:"

    #@3ab
    move-object/from16 v0, p1

    #@3ad
    move-object/from16 v1, v18

    #@3af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b2
    .line 2440
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@3b6
    move-object/from16 v18, v0

    #@3b8
    const-string/jumbo v20, "    "

    #@3bb
    move-object/from16 v0, v18

    #@3bd
    move-object/from16 v1, p1

    #@3bf
    move-object/from16 v2, v20

    #@3c1
    move-object/from16 v3, p2

    #@3c3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3c6
    .line 2442
    const-string/jumbo v18, "\n  Notification listeners:"

    #@3c9
    move-object/from16 v0, p1

    #@3cb
    move-object/from16 v1, v18

    #@3cd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d0
    .line 2443
    move-object/from16 v0, p0

    #@3d2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@3d4
    move-object/from16 v18, v0

    #@3d6
    move-object/from16 v0, v18

    #@3d8
    move-object/from16 v1, p1

    #@3da
    move-object/from16 v2, p2

    #@3dc
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@3df
    .line 2444
    const-string/jumbo v18, "    mListenerHints: "

    #@3e2
    move-object/from16 v0, p1

    #@3e4
    move-object/from16 v1, v18

    #@3e6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    #@3ed
    move/from16 v18, v0

    #@3ef
    move-object/from16 v0, p1

    #@3f1
    move/from16 v1, v18

    #@3f3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@3f6
    .line 2445
    const-string/jumbo v18, "    mListenersDisablingEffects: ("

    #@3f9
    move-object/from16 v0, p1

    #@3fb
    move-object/from16 v1, v18

    #@3fd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@400
    .line 2446
    move-object/from16 v0, p0

    #@402
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@404
    move-object/from16 v18, v0

    #@406
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    #@409
    move-result v4

    #@40a
    .line 2447
    .restart local v4    # "N":I
    const/4 v8, 0x0

    #@40b
    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v4, :cond_16

    #@40d
    .line 2448
    move-object/from16 v0, p0

    #@40f
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@411
    move-object/from16 v18, v0

    #@413
    move-object/from16 v0, v18

    #@415
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@418
    move-result v7

    #@419
    .line 2449
    .local v7, "hint":I
    if-lez v8, :cond_13

    #@41b
    const/16 v18, 0x3b

    #@41d
    move-object/from16 v0, p1

    #@41f
    move/from16 v1, v18

    #@421
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@424
    .line 2450
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    #@426
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@429
    const-string/jumbo v20, "hint["

    #@42c
    move-object/from16 v0, v18

    #@42e
    move-object/from16 v1, v20

    #@430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v18

    #@434
    move-object/from16 v0, v18

    #@436
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@439
    move-result-object v18

    #@43a
    const-string/jumbo v20, "]:"

    #@43d
    move-object/from16 v0, v18

    #@43f
    move-object/from16 v1, v20

    #@441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@444
    move-result-object v18

    #@445
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@448
    move-result-object v18

    #@449
    move-object/from16 v0, p1

    #@44b
    move-object/from16 v1, v18

    #@44d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@450
    .line 2453
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    #@454
    move-object/from16 v18, v0

    #@456
    move-object/from16 v0, v18

    #@458
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@45b
    move-result-object v13

    #@45c
    check-cast v13, Landroid/util/ArraySet;

    #@45e
    .line 2454
    .local v13, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@461
    move-result v12

    #@462
    .line 2456
    .local v12, "listenerSize":I
    const/4 v10, 0x0

    #@463
    .local v10, "j":I
    :goto_6
    if-ge v10, v12, :cond_15

    #@465
    .line 2457
    if-lez v8, :cond_14

    #@467
    const/16 v18, 0x2c

    #@469
    move-object/from16 v0, p1

    #@46b
    move/from16 v1, v18

    #@46d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@470
    .line 2458
    :cond_14
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@473
    move-result-object v11

    #@474
    check-cast v11, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@476
    .line 2459
    .local v11, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, v11, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@478
    move-object/from16 v18, v0

    #@47a
    move-object/from16 v0, p1

    #@47c
    move-object/from16 v1, v18

    #@47e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@481
    .line 2456
    add-int/lit8 v10, v10, 0x1

    #@483
    goto :goto_6

    #@484
    .line 2447
    .end local v11    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_15
    add-int/lit8 v8, v8, 0x1

    #@486
    goto :goto_5

    #@487
    .line 2462
    .end local v7    # "hint":I
    .end local v10    # "j":I
    .end local v12    # "listenerSize":I
    .end local v13    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_16
    const/16 v18, 0x29

    #@489
    move-object/from16 v0, p1

    #@48b
    move/from16 v1, v18

    #@48d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    #@490
    .line 2463
    new-instance v18, Ljava/lang/StringBuilder;

    #@492
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@495
    const-string/jumbo v20, "\n  mRankerServicePackageName: "

    #@498
    move-object/from16 v0, v18

    #@49a
    move-object/from16 v1, v20

    #@49c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v18

    #@4a0
    move-object/from16 v0, p0

    #@4a2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    #@4a4
    move-object/from16 v20, v0

    #@4a6
    move-object/from16 v0, v18

    #@4a8
    move-object/from16 v1, v20

    #@4aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v18

    #@4ae
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b1
    move-result-object v18

    #@4b2
    move-object/from16 v0, p1

    #@4b4
    move-object/from16 v1, v18

    #@4b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b9
    .line 2464
    const-string/jumbo v18, "\n  Notification ranker services:"

    #@4bc
    move-object/from16 v0, p1

    #@4be
    move-object/from16 v1, v18

    #@4c0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c3
    .line 2465
    move-object/from16 v0, p0

    #@4c5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@4c7
    move-object/from16 v18, v0

    #@4c9
    move-object/from16 v0, v18

    #@4cb
    move-object/from16 v1, p1

    #@4cd
    move-object/from16 v2, p2

    #@4cf
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@4d2
    .line 2467
    .end local v4    # "N":I
    .end local v8    # "i":I
    :cond_17
    const-string/jumbo v18, "\n  Policy access:"

    #@4d5
    move-object/from16 v0, p1

    #@4d7
    move-object/from16 v1, v18

    #@4d9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4dc
    .line 2468
    const-string/jumbo v18, "    mPolicyAccess: "

    #@4df
    move-object/from16 v0, p1

    #@4e1
    move-object/from16 v1, v18

    #@4e3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e6
    move-object/from16 v0, p0

    #@4e8
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@4ea
    move-object/from16 v18, v0

    #@4ec
    move-object/from16 v0, p1

    #@4ee
    move-object/from16 v1, v18

    #@4f0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@4f3
    .line 2470
    const-string/jumbo v18, "\n  Condition providers:"

    #@4f6
    move-object/from16 v0, p1

    #@4f8
    move-object/from16 v1, v18

    #@4fa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4fd
    .line 2471
    move-object/from16 v0, p0

    #@4ff
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@501
    move-object/from16 v18, v0

    #@503
    move-object/from16 v0, v18

    #@505
    move-object/from16 v1, p1

    #@507
    move-object/from16 v2, p2

    #@509
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@50c
    .line 2473
    const-string/jumbo v18, "\n  Group summaries:"

    #@50f
    move-object/from16 v0, p1

    #@511
    move-object/from16 v1, v18

    #@513
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@516
    .line 2474
    move-object/from16 v0, p0

    #@518
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    #@51a
    move-object/from16 v18, v0

    #@51c
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@51f
    move-result-object v18

    #@520
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@523
    move-result-object v6

    #@524
    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@527
    move-result v18

    #@528
    if-eqz v18, :cond_19

    #@52a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52d
    move-result-object v5

    #@52e
    check-cast v5, Ljava/util/Map$Entry;

    #@530
    .line 2475
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@533
    move-result-object v15

    #@534
    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    #@536
    .line 2476
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v18, Ljava/lang/StringBuilder;

    #@538
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@53b
    const-string/jumbo v20, "    "

    #@53e
    move-object/from16 v0, v18

    #@540
    move-object/from16 v1, v20

    #@542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@545
    move-result-object v20

    #@546
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@549
    move-result-object v18

    #@54a
    check-cast v18, Ljava/lang/String;

    #@54c
    move-object/from16 v0, v20

    #@54e
    move-object/from16 v1, v18

    #@550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@553
    move-result-object v18

    #@554
    const-string/jumbo v20, " -> "

    #@557
    move-object/from16 v0, v18

    #@559
    move-object/from16 v1, v20

    #@55b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55e
    move-result-object v18

    #@55f
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@562
    move-result-object v20

    #@563
    move-object/from16 v0, v18

    #@565
    move-object/from16 v1, v20

    #@567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56a
    move-result-object v18

    #@56b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56e
    move-result-object v18

    #@56f
    move-object/from16 v0, p1

    #@571
    move-object/from16 v1, v18

    #@573
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@576
    .line 2477
    move-object/from16 v0, p0

    #@578
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@57a
    move-object/from16 v18, v0

    #@57c
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    #@57f
    move-result-object v20

    #@580
    move-object/from16 v0, v18

    #@582
    move-object/from16 v1, v20

    #@584
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@587
    move-result-object v18

    #@588
    move-object/from16 v0, v18

    #@58a
    if-eq v0, v15, :cond_18

    #@58c
    .line 2478
    const-string/jumbo v18, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    #@58f
    move-object/from16 v0, p1

    #@591
    move-object/from16 v1, v18

    #@593
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@596
    .line 2479
    const-string/jumbo v18, "      "

    #@599
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@59c
    move-result-object v20

    #@59d
    move-object/from16 v0, p2

    #@59f
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    #@5a1
    move/from16 v21, v0

    #@5a3
    move-object/from16 v0, p1

    #@5a5
    move-object/from16 v1, v18

    #@5a7
    move-object/from16 v2, v20

    #@5a9
    move/from16 v3, v21

    #@5ab
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5ae
    goto/16 :goto_7

    #@5b0
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_19
    monitor-exit v19

    #@5b1
    .line 2352
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 31
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
    .line 2524
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 2525
    const-string/jumbo v5, "NotificationService"

    #@7
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v7, "enqueueNotificationInternal: pkg="

    #@f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    const-string/jumbo v7, " id="

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    move/from16 v0, p6

    #@22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    .line 2526
    const-string/jumbo v7, " notification="

    #@29
    .line 2525
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    move-object/from16 v0, p7

    #@2f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 2528
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    #@3d
    .line 2529
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_2

    #@43
    const-string/jumbo v5, "android"

    #@46
    move-object/from16 v0, p1

    #@48
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v25

    #@4c
    .line 2530
    :goto_0
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@50
    move-object/from16 v0, p1

    #@52
    invoke-static {v5, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->-wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    #@55
    move-result v24

    #@56
    .line 2533
    .local v24, "isNotificationFromListener":Z
    const-string/jumbo v9, "enqueueNotification"

    #@59
    const/4 v7, 0x1

    #@5a
    const/4 v8, 0x0

    #@5b
    move/from16 v4, p4

    #@5d
    move/from16 v5, p3

    #@5f
    move/from16 v6, p9

    #@61
    move-object/from16 v10, p1

    #@63
    .line 2532
    invoke-static/range {v4 .. v10}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@66
    move-result v30

    #@67
    .line 2534
    .local v30, "userId":I
    new-instance v13, Landroid/os/UserHandle;

    #@69
    move/from16 v0, v30

    #@6b
    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@6e
    .line 2538
    .local v13, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@75
    move-result-object v6

    #@76
    .line 2540
    const/4 v5, -0x1

    #@77
    move/from16 v0, v30

    #@79
    if-ne v0, v5, :cond_3

    #@7b
    const/4 v5, 0x0

    #@7c
    .line 2539
    :goto_1
    const/high16 v7, 0x10000000

    #@7e
    .line 2538
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v6, v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@83
    move-result-object v15

    #@84
    .line 2541
    .local v15, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v30

    #@86
    move-object/from16 v1, p7

    #@88
    invoke-static {v15, v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    .line 2547
    move-object/from16 v0, p0

    #@8d
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@8f
    move-object/from16 v0, p1

    #@91
    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    #@94
    .line 2550
    if-eqz p1, :cond_1

    #@96
    if-nez p7, :cond_4

    #@98
    .line 2551
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@9a
    new-instance v6, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v7, "null not allowed: pkg="

    #@a2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v6

    #@ac
    .line 2552
    const-string/jumbo v7, " id="

    #@af
    .line 2551
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    move/from16 v0, p6

    #@b5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    .line 2552
    const-string/jumbo v7, " notification="

    #@bc
    .line 2551
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    move-object/from16 v0, p7

    #@c2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v5

    #@ce
    .line 2529
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "isNotificationFromListener":Z
    .end local v30    # "userId":I
    :cond_2
    const/16 v25, 0x1

    #@d0
    .local v25, "isSystemNotification":Z
    goto/16 :goto_0

    #@d2
    .end local v25    # "isSystemNotification":Z
    .restart local v13    # "user":Landroid/os/UserHandle;
    .restart local v24    # "isNotificationFromListener":Z
    .restart local v30    # "userId":I
    :cond_3
    move/from16 v5, v30

    #@d4
    .line 2540
    goto :goto_1

    #@d5
    .line 2542
    :catch_0
    move-exception v19

    #@d6
    .line 2543
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NotificationService"

    #@d9
    const-string/jumbo v6, "Cannot create a context for sending app"

    #@dc
    move-object/from16 v0, v19

    #@de
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e1
    .line 2544
    return-void

    #@e2
    .line 2554
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v4, Landroid/service/notification/StatusBarNotification;

    #@e4
    .line 2555
    const/4 v11, 0x0

    #@e5
    move-object/from16 v5, p1

    #@e7
    move-object/from16 v6, p2

    #@e9
    move/from16 v7, p6

    #@eb
    move-object/from16 v8, p5

    #@ed
    move/from16 v9, p3

    #@ef
    move/from16 v10, p4

    #@f1
    move-object/from16 v12, p7

    #@f3
    .line 2554
    invoke-direct/range {v4 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@f6
    .line 2560
    .local v4, "n":Landroid/service/notification/StatusBarNotification;
    if-nez v25, :cond_5

    #@f8
    if-eqz v24, :cond_7

    #@fa
    .line 2598
    :cond_5
    :goto_2
    move-object/from16 v0, p7

    #@fc
    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@fe
    if-eqz v5, :cond_d

    #@100
    .line 2599
    move-object/from16 v0, p7

    #@102
    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@104
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@107
    move-result v23

    #@108
    .line 2600
    .local v23, "intentCount":I
    if-lez v23, :cond_d

    #@10a
    .line 2602
    const-class v5, Landroid/app/ActivityManagerInternal;

    #@10c
    .line 2601
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@10f
    move-result-object v16

    #@110
    check-cast v16, Landroid/app/ActivityManagerInternal;

    #@112
    .line 2604
    .local v16, "am":Landroid/app/ActivityManagerInternal;
    const-class v5, Lcom/android/server/DeviceIdleController$LocalService;

    #@114
    .line 2603
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@117
    move-result-object v5

    #@118
    check-cast v5, Lcom/android/server/DeviceIdleController$LocalService;

    #@11a
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    #@11d
    move-result-wide v20

    #@11e
    .line 2605
    .local v20, "duration":J
    const/16 v22, 0x0

    #@120
    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    #@122
    move/from16 v1, v23

    #@124
    if-ge v0, v1, :cond_d

    #@126
    .line 2606
    move-object/from16 v0, p7

    #@128
    iget-object v5, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    #@12a
    move/from16 v0, v22

    #@12c
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12f
    move-result-object v28

    #@130
    check-cast v28, Landroid/app/PendingIntent;

    #@132
    .line 2607
    .local v28, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v28, :cond_6

    #@134
    .line 2608
    invoke-virtual/range {v28 .. v28}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@137
    move-result-object v5

    #@138
    move-object/from16 v0, v16

    #@13a
    move-wide/from16 v1, v20

    #@13c
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;J)V

    #@13f
    .line 2605
    :cond_6
    add-int/lit8 v22, v22, 0x1

    #@141
    goto :goto_3

    #@142
    .line 2561
    .end local v16    # "am":Landroid/app/ActivityManagerInternal;
    .end local v20    # "duration":J
    .end local v22    # "i":I
    .end local v23    # "intentCount":I
    .end local v28    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    #@144
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@146
    monitor-enter v6

    #@147
    .line 2562
    :try_start_1
    move-object/from16 v0, p0

    #@149
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@14b
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    #@14e
    move-result-object v7

    #@14f
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    move-result-object v5

    #@153
    if-eqz v5, :cond_9

    #@155
    .line 2564
    move-object/from16 v0, p0

    #@157
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@159
    move-object/from16 v0, p1

    #@15b
    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    #@15e
    move-result v17

    #@15f
    .line 2565
    .local v17, "appEnqueueRate":F
    move-object/from16 v0, p0

    #@161
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    #@163
    cmpl-float v5, v17, v5

    #@165
    if-lez v5, :cond_9

    #@167
    .line 2566
    move-object/from16 v0, p0

    #@169
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@16b
    move-object/from16 v0, p1

    #@16d
    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    #@170
    .line 2567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@173
    move-result-wide v26

    #@174
    .line 2568
    .local v26, "now":J
    move-object/from16 v0, p0

    #@176
    iget-wide v8, v0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    #@178
    sub-long v8, v26, v8

    #@17a
    const-wide/16 v10, 0x1388

    #@17c
    cmp-long v5, v8, v10

    #@17e
    if-lez v5, :cond_8

    #@180
    .line 2569
    const-string/jumbo v5, "NotificationService"

    #@183
    new-instance v7, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v8, "Package enqueue rate is "

    #@18b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v7

    #@18f
    move/from16 v0, v17

    #@191
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@194
    move-result-object v7

    #@195
    .line 2570
    const-string/jumbo v8, ". Shedding events. package="

    #@198
    .line 2569
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v7

    #@19c
    move-object/from16 v0, p1

    #@19e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v7

    #@1a2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v7

    #@1a6
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a9
    .line 2571
    move-wide/from16 v0, v26

    #@1ab
    move-object/from16 v2, p0

    #@1ad
    iput-wide v0, v2, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1af
    :cond_8
    monitor-exit v6

    #@1b0
    .line 2573
    return-void

    #@1b1
    .line 2577
    .end local v17    # "appEnqueueRate":F
    .end local v26    # "now":J
    :cond_9
    const/16 v18, 0x0

    #@1b3
    .line 2578
    .local v18, "count":I
    :try_start_2
    move-object/from16 v0, p0

    #@1b5
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1b7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1ba
    move-result v14

    #@1bb
    .line 2579
    .local v14, "N":I
    const/16 v22, 0x0

    #@1bd
    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    #@1bf
    if-ge v0, v14, :cond_a

    #@1c1
    .line 2580
    move-object/from16 v0, p0

    #@1c3
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@1c5
    move/from16 v0, v22

    #@1c7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ca
    move-result-object v29

    #@1cb
    check-cast v29, Lcom/android/server/notification/NotificationRecord;

    #@1cd
    .line 2581
    .local v29, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v29

    #@1cf
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1d1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@1d4
    move-result-object v5

    #@1d5
    move-object/from16 v0, p1

    #@1d7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1da
    move-result v5

    #@1db
    if-eqz v5, :cond_c

    #@1dd
    move-object/from16 v0, v29

    #@1df
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1e1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@1e4
    move-result v5

    #@1e5
    move/from16 v0, v30

    #@1e7
    if-ne v5, v0, :cond_c

    #@1e9
    .line 2582
    move-object/from16 v0, v29

    #@1eb
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1ed
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@1f0
    move-result v5

    #@1f1
    move/from16 v0, p6

    #@1f3
    if-ne v5, v0, :cond_b

    #@1f5
    move-object/from16 v0, v29

    #@1f7
    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@1f9
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@1fc
    move-result-object v5

    #@1fd
    move-object/from16 v0, p5

    #@1ff
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@202
    move-result v5

    #@203
    if-eqz v5, :cond_b

    #@205
    .end local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_a
    monitor-exit v6

    #@206
    goto/16 :goto_2

    #@208
    .line 2585
    .restart local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_b
    add-int/lit8 v18, v18, 0x1

    #@20a
    .line 2586
    const/16 v5, 0x32

    #@20c
    move/from16 v0, v18

    #@20e
    if-lt v0, v5, :cond_c

    #@210
    .line 2587
    :try_start_3
    move-object/from16 v0, p0

    #@212
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@214
    move-object/from16 v0, p1

    #@216
    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    #@219
    .line 2588
    const-string/jumbo v5, "NotificationService"

    #@21c
    new-instance v7, Ljava/lang/StringBuilder;

    #@21e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@221
    const-string/jumbo v8, "Package has already posted "

    #@224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v7

    #@228
    move/from16 v0, v18

    #@22a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v7

    #@22e
    .line 2589
    const-string/jumbo v8, " notifications.  Not showing more.  package="

    #@231
    .line 2588
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v7

    #@235
    move-object/from16 v0, p1

    #@237
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v7

    #@23b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23e
    move-result-object v7

    #@23f
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@242
    monitor-exit v6

    #@243
    .line 2590
    return-void

    #@244
    .line 2579
    :cond_c
    add-int/lit8 v22, v22, 0x1

    #@246
    goto/16 :goto_4

    #@248
    .line 2561
    .end local v14    # "N":I
    .end local v18    # "count":I
    .end local v22    # "i":I
    .end local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v5

    #@249
    monitor-exit v6

    #@24a
    throw v5

    #@24b
    .line 2615
    :cond_d
    move-object/from16 v0, p7

    #@24d
    iget v5, v0, Landroid/app/Notification;->priority:I

    #@24f
    const/4 v6, -0x2

    #@250
    .line 2616
    const/4 v7, 0x2

    #@251
    .line 2615
    invoke-static {v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    #@254
    move-result v5

    #@255
    move-object/from16 v0, p7

    #@257
    iput v5, v0, Landroid/app/Notification;->priority:I

    #@259
    .line 2619
    new-instance v29, Lcom/android/server/notification/NotificationRecord;

    #@25b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@25e
    move-result-object v5

    #@25f
    move-object/from16 v0, v29

    #@261
    invoke-direct {v0, v5, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    #@264
    .line 2620
    .restart local v29    # "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    #@266
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@268
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    #@26a
    move-object/from16 v0, p0

    #@26c
    move/from16 v1, v30

    #@26e
    move-object/from16 v2, v29

    #@270
    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    #@273
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@276
    .line 2622
    const/4 v5, 0x0

    #@277
    aput p6, p8, v5

    #@279
    .line 2523
    return-void
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3650
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 3651
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 3652
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
    .line 3653
    return v1

    #@1c
    .line 3651
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 3656
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
    .line 3636
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2
    .line 3637
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 3638
    .local v1, "len":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 3639
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    #@f
    .line 3640
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
    .line 3641
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
    .line 3640
    if-eqz v4, :cond_0

    #@29
    .line 3641
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
    .line 3640
    if-eqz v4, :cond_0

    #@35
    .line 3642
    return v0

    #@36
    .line 3638
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 3645
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
    .line 3068
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 3069
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@6
    .line 3070
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 3071
    .local v2, "len":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 3072
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@13
    .line 3073
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
    .line 3074
    return v1

    #@24
    .line 3071
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 3077
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v5, -0x1

    #@28
    return v5
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .locals 9
    .param p1, "pid"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3083
    const/4 v5, 0x0

    #@2
    .line 3084
    .local v5, "toastCount":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@4
    .line 3085
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 3086
    .local v0, "N":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 3087
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@11
    .line 3088
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v7, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    #@13
    if-ne v7, p1, :cond_0

    #@15
    .line 3089
    add-int/lit8 v5, v5, 0x1

    #@17
    .line 3086
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3093
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
    .line 3081
    :goto_1
    return-void

    #@25
    .line 3094
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
    .line 1124
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 1126
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@7
    .line 1129
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
    .line 1130
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
    .line 1131
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    #@22
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    #@28
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    #@2a
    .line 1132
    const-class v0, Landroid/view/WindowManagerInternal;

    #@2c
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/view/WindowManagerInternal;

    #@32
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@34
    .line 1133
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@36
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    #@39
    .line 1123
    :cond_0
    :goto_0
    return-void

    #@3a
    .line 1134
    :cond_1
    const/16 v0, 0x258

    #@3c
    if-ne p1, v0, :cond_0

    #@3e
    .line 1137
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@40
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    #@43
    .line 1138
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@45
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    #@48
    .line 1139
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@4a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onBootPhaseAppsCanStart()V

    #@4d
    .line 1140
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@4f
    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    #@52
    goto :goto_0
.end method

.method public onStart()V
    .locals 21

    #@0
    .prologue
    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v19

    #@8
    .line 928
    .local v19, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v1

    #@10
    .line 929
    const-string/jumbo v2, "max_notification_enqueue_rate"

    #@13
    .line 930
    const/high16 v3, 0x41200000    # 10.0f

    #@15
    .line 928
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@18
    move-result v1

    #@19
    move-object/from16 v0, p0

    #@1b
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    #@1d
    .line 932
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@20
    move-result-object v1

    #@21
    move-object/from16 v0, p0

    #@23
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    #@25
    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "appops"

    #@2c
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/app/AppOpsManager;

    #@32
    move-object/from16 v0, p0

    #@34
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@36
    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "vibrator"

    #@3d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/os/Vibrator;

    #@43
    move-object/from16 v0, p0

    #@45
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@47
    .line 935
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@49
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@4f
    move-object/from16 v0, p0

    #@51
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@53
    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    move-object/from16 v0, p0

    #@61
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServicePackageName:Ljava/lang/String;

    #@63
    .line 941
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    #@65
    const/4 v2, 0x0

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@6f
    .line 942
    move-object/from16 v0, p0

    #@71
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    #@73
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@76
    .line 945
    const v1, 0x1070039

    #@79
    :try_start_0
    move-object/from16 v0, v19

    #@7b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    move-result-object v16

    #@7f
    .line 949
    .local v16, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    #@81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@84
    move-result-object v2

    #@85
    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    #@88
    move-object/from16 v0, p0

    #@8a
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@8c
    .line 950
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    #@8e
    move-object/from16 v0, p0

    #@90
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    #@92
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@95
    move-result-object v2

    #@96
    move-object/from16 v0, p0

    #@98
    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    #@9f
    .line 951
    new-instance v1, Lcom/android/server/notification/RankingHelper;

    #@a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@a4
    move-result-object v2

    #@a5
    .line 952
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    #@a9
    .line 953
    move-object/from16 v0, p0

    #@ab
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    #@ad
    .line 951
    move-object/from16 v0, v16

    #@af
    invoke-direct {v1, v2, v3, v5, v0}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    #@b2
    move-object/from16 v0, p0

    #@b4
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    #@b6
    .line 955
    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    #@b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@bb
    move-result-object v2

    #@bc
    move-object/from16 v0, p0

    #@be
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@c4
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@cb
    .line 956
    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    #@cd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@d0
    move-result-object v2

    #@d1
    move-object/from16 v0, p0

    #@d3
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@d5
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@d8
    move-result-object v3

    #@d9
    move-object/from16 v0, p0

    #@db
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@dd
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    #@e0
    move-object/from16 v0, p0

    #@e2
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@e4
    .line 957
    move-object/from16 v0, p0

    #@e6
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@e8
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$7;

    #@ea
    move-object/from16 v0, p0

    #@ec
    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@ef
    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    #@f2
    .line 980
    new-instance v20, Ljava/io/File;

    #@f4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@f7
    move-result-object v1

    #@f8
    const-string/jumbo v2, "system"

    #@fb
    move-object/from16 v0, v20

    #@fd
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@100
    .line 981
    .local v20, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    #@102
    new-instance v2, Ljava/io/File;

    #@104
    const-string/jumbo v3, "notification_policy.xml"

    #@107
    move-object/from16 v0, v20

    #@109
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10c
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@10f
    move-object/from16 v0, p0

    #@111
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@113
    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->syncBlockDb()V

    #@116
    .line 986
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@118
    move-object/from16 v0, p0

    #@11a
    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@11d
    move-object/from16 v0, p0

    #@11f
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@121
    .line 989
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@123
    move-object/from16 v0, p0

    #@125
    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@128
    move-object/from16 v0, p0

    #@12a
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@12c
    .line 991
    move-object/from16 v0, p0

    #@12e
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankerServices:Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@130
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->registerRanker()V

    #@133
    .line 993
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@135
    move-object/from16 v0, p0

    #@137
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@13a
    move-result-object v1

    #@13b
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@13d
    move-object/from16 v0, p0

    #@13f
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@141
    .line 994
    move-object/from16 v0, p0

    #@143
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@145
    if-eqz v1, :cond_0

    #@147
    .line 995
    move-object/from16 v0, p0

    #@149
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    #@14f
    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    #@152
    .line 998
    :cond_0
    const-class v1, Lcom/android/server/lights/LightsManager;

    #@154
    move-object/from16 v0, p0

    #@156
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@159
    move-result-object v18

    #@15a
    check-cast v18, Lcom/android/server/lights/LightsManager;

    #@15c
    .line 999
    .local v18, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x4

    #@15d
    move-object/from16 v0, v18

    #@15f
    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@162
    move-result-object v1

    #@163
    move-object/from16 v0, p0

    #@165
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@167
    .line 1000
    const/4 v1, 0x5

    #@168
    move-object/from16 v0, v18

    #@16a
    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    #@16d
    move-result-object v1

    #@16e
    move-object/from16 v0, p0

    #@170
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    #@172
    .line 1003
    const v1, 0x1060108

    #@175
    .line 1002
    move-object/from16 v0, v19

    #@177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    #@17a
    move-result v1

    #@17b
    move-object/from16 v0, p0

    #@17d
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    #@17f
    .line 1005
    const v1, 0x10e0058

    #@182
    .line 1004
    move-object/from16 v0, v19

    #@184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@187
    move-result v1

    #@188
    move-object/from16 v0, p0

    #@18a
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    #@18c
    .line 1007
    const v1, 0x10e0059

    #@18f
    .line 1006
    move-object/from16 v0, v19

    #@191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@194
    move-result v1

    #@195
    move-object/from16 v0, p0

    #@197
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    #@199
    .line 1012
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    #@19b
    .line 1010
    const v2, 0x1070035

    #@19e
    .line 1011
    const/16 v3, 0x11

    #@1a0
    .line 1009
    move-object/from16 v0, v19

    #@1a2
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    #@1a5
    move-result-object v1

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    #@1aa
    .line 1017
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    #@1ac
    .line 1015
    const v2, 0x1070036

    #@1af
    .line 1016
    const/16 v3, 0x11

    #@1b1
    .line 1014
    move-object/from16 v0, v19

    #@1b3
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    #@1b6
    move-result-object v1

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    #@1bb
    .line 1019
    const v1, 0x1120025

    #@1be
    move-object/from16 v0, v19

    #@1c0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1c3
    move-result v1

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    #@1c8
    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@1cb
    move-result-object v1

    #@1cc
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1cf
    move-result-object v1

    #@1d0
    .line 1026
    const-string/jumbo v2, "device_provisioned"

    #@1d3
    const/4 v3, 0x0

    #@1d4
    .line 1025
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d7
    move-result v1

    #@1d8
    if-nez v1, :cond_1

    #@1da
    .line 1027
    const/4 v1, 0x1

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    #@1df
    .line 1029
    :cond_1
    move-object/from16 v0, p0

    #@1e1
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@1e3
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    #@1e6
    .line 1030
    move-object/from16 v0, p0

    #@1e8
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    #@1ea
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    #@1ed
    move-result v1

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    #@1f2
    .line 1032
    move-object/from16 v0, p0

    #@1f4
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@1f6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@1f9
    move-result-object v2

    #@1fa
    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    #@1fd
    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    #@200
    .line 1036
    new-instance v17, Landroid/content/IntentFilter;

    #@202
    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    #@205
    .line 1037
    .local v17, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@208
    move-object/from16 v0, v17

    #@20a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@20d
    .line 1038
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@210
    move-object/from16 v0, v17

    #@212
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@215
    .line 1039
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    #@218
    move-object/from16 v0, v17

    #@21a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@21d
    .line 1040
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    #@220
    move-object/from16 v0, v17

    #@222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@225
    .line 1041
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@228
    move-object/from16 v0, v17

    #@22a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@22d
    .line 1042
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@230
    move-object/from16 v0, v17

    #@232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@235
    .line 1043
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@238
    move-object/from16 v0, v17

    #@23a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23d
    .line 1044
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@240
    move-object/from16 v0, v17

    #@242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@245
    .line 1045
    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    #@248
    move-object/from16 v0, v17

    #@24a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@24d
    .line 1046
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    #@250
    move-object/from16 v0, v17

    #@252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@255
    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@258
    move-result-object v1

    #@259
    move-object/from16 v0, p0

    #@25b
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@25d
    move-object/from16 v0, v17

    #@25f
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@262
    .line 1049
    new-instance v4, Landroid/content/IntentFilter;

    #@264
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@267
    .line 1050
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@26a
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@26d
    .line 1051
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@270
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@273
    .line 1052
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@276
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@279
    .line 1053
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    #@27c
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@27f
    .line 1054
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@282
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@285
    .line 1055
    const-string/jumbo v1, "package"

    #@288
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@28b
    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@28e
    move-result-object v1

    #@28f
    move-object/from16 v0, p0

    #@291
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@293
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@295
    const/4 v5, 0x0

    #@296
    .line 1057
    const/4 v6, 0x0

    #@297
    .line 1056
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@29a
    .line 1059
    new-instance v8, Landroid/content/IntentFilter;

    #@29c
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@29f
    .line 1060
    .local v8, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGES_SUSPENDED"

    #@2a2
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2a5
    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@2a8
    move-result-object v5

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@2ad
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2af
    .line 1062
    const/4 v9, 0x0

    #@2b0
    const/4 v10, 0x0

    #@2b1
    .line 1061
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2b4
    .line 1064
    new-instance v12, Landroid/content/IntentFilter;

    #@2b6
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@2b9
    invoke-direct {v12, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2bc
    .line 1065
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@2bf
    move-result-object v9

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    #@2c4
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2c6
    const/4 v13, 0x0

    #@2c7
    .line 1066
    const/4 v14, 0x0

    #@2c8
    .line 1065
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2cb
    .line 1068
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@2d1
    move-object/from16 v0, p0

    #@2d3
    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    #@2d6
    move-object/from16 v0, p0

    #@2d8
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@2da
    .line 1070
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2dc
    .line 1071
    const v2, 0x10e005f

    #@2df
    .line 1070
    move-object/from16 v0, v19

    #@2e1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@2e4
    move-result v2

    #@2e5
    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2ec
    .line 1073
    const-string/jumbo v1, "notification"

    #@2ef
    move-object/from16 v0, p0

    #@2f1
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    #@2f3
    move-object/from16 v0, p0

    #@2f5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@2f8
    .line 1074
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    #@2fe
    move-object/from16 v0, p0

    #@300
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@303
    .line 925
    return-void

    #@304
    .line 946
    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v8    # "suspendedPkgFilter":Landroid/content/IntentFilter;
    .end local v12    # "sdFilter":Landroid/content/IntentFilter;
    .end local v16    # "extractorNames":[Ljava/lang/String;
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v20    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v15

    #@305
    .line 947
    .local v15, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    #@306
    new-array v0, v1, [Ljava/lang/String;

    #@308
    move-object/from16 v16, v0

    #@30a
    .restart local v16    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public savePolicyFile()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 394
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 395
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@b
    .line 393
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@7
    move-result-object v1

    #@8
    .line 3285
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 3286
    return-void

    #@f
    .line 3290
    :cond_0
    const/16 v3, 0x40

    #@11
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@14
    move-result-object v0

    #@15
    .line 3291
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@18
    .line 3292
    const-class v3, Landroid/app/Notification;

    #@1a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@21
    .line 3293
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    #@24
    .line 3294
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@26
    .line 3295
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 3296
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 3299
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@36
    .line 3283
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioMananger"    # Landroid/media/AudioManager;

    #@0
    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    #@2
    .line 900
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Landroid/os/Handler;

    #@2
    .line 915
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
    .line 1145
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
    .line 1147
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@27
    .line 1148
    if-eqz p3, :cond_1

    #@29
    move v0, v4

    #@2a
    .line 1147
    :goto_1
    const/16 v2, 0xb

    #@2c
    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    #@2f
    .line 1151
    if-eqz p3, :cond_2

    #@31
    .line 1144
    :goto_2
    return-void

    #@32
    .line 1145
    :cond_0
    const-string/jumbo v0, "dis"

    #@35
    goto :goto_0

    #@36
    :cond_1
    move v0, v6

    #@37
    .line 1148
    goto :goto_1

    #@38
    .line 1152
    :cond_2
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    #@3a
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    #@3c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@3f
    move-result v7

    #@40
    .line 1153
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
    .line 1152
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@48
    goto :goto_2
.end method

.method setSystemNotificationSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemNotificationSound"    # Ljava/lang/String;

    #@0
    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemNotificationSound:Ljava/lang/String;

    #@2
    .line 920
    return-void
.end method

.method setSystemReady(Z)V
    .locals 0
    .param p1, "systemReady"    # Z

    #@0
    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    #@2
    .line 910
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "vibrator"    # Landroid/os/Vibrator;

    #@0
    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    #@2
    .line 905
    return-void
.end method

.method showNextToastLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2998
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@9
    .line 2999
    :goto_0
    if-eqz v2, :cond_3

    #@b
    .line 3000
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
    .line 3002
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@3a
    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    #@3c
    invoke-interface {v3, v4}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    #@3f
    .line 3003
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 3004
    return-void

    #@43
    .line 3005
    :catch_0
    move-exception v0

    #@44
    .line 3006
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NotificationService"

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Object died trying to show notification "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 3007
    const-string/jumbo v5, " in package "

    #@5c
    .line 3006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 3007
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@62
    .line 3006
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 3009
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@72
    move-result v1

    #@73
    .line 3010
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@75
    .line 3011
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@7a
    .line 3013
    :cond_1
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    #@7c
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    #@7f
    .line 3014
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@84
    move-result v3

    #@85
    if-lez v3, :cond_2

    #@87
    .line 3015
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@89
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v2

    #@8d
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@8f
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    #@91
    .line 3017
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_2
    const/4 v2, 0x0

    #@92
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto/16 :goto_0

    #@94
    .line 2997
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
    .line 3595
    const/4 v1, 0x0

    #@1
    .line 3596
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
    if-eqz v6, :cond_4

    #@b
    .line 3606
    :cond_1
    if-eqz v1, :cond_2

    #@d
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    #@f
    if-nez v6, :cond_2

    #@11
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    #@13
    if-eqz v6, :cond_5

    #@15
    .line 3607
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@17
    invoke-virtual {v6}, Lcom/android/server/lights/Light;->turnOff()V

    #@1a
    .line 3608
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@1c
    if-eqz v6, :cond_3

    #@1e
    .line 3609
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@20
    invoke-interface {v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    #@23
    .line 3592
    :cond_3
    :goto_1
    return-void

    #@24
    .line 3597
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@26
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v7

    #@2c
    add-int/lit8 v7, v7, -0x1

    #@2e
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Ljava/lang/String;

    #@34
    .line 3598
    .local v5, "owner":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    #@3c
    .line 3599
    .local v1, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_0

    #@3e
    .line 3600
    const-string/jumbo v6, "NotificationService"

    #@41
    new-instance v7, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v8, "LED Notification does not exist: "

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-static {v6, v7}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 3601
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5d
    goto :goto_0

    #@5e
    .line 3612
    .end local v1    # "ledNotification":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "owner":Ljava/lang/String;
    :cond_5
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@60
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@63
    move-result-object v4

    #@64
    .line 3613
    .local v4, "ledno":Landroid/app/Notification;
    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    #@66
    .line 3614
    .local v0, "ledARGB":I
    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    #@68
    .line 3615
    .local v3, "ledOnMS":I
    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    #@6a
    .line 3616
    .local v2, "ledOffMS":I
    iget v6, v4, Landroid/app/Notification;->defaults:I

    #@6c
    and-int/lit8 v6, v6, 0x4

    #@6e
    if-eqz v6, :cond_6

    #@70
    .line 3617
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    #@72
    .line 3618
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    #@74
    .line 3619
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    #@76
    .line 3621
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    #@78
    if-eqz v6, :cond_7

    #@7a
    .line 3623
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    #@7c
    const/4 v7, 0x1

    #@7d
    invoke-virtual {v6, v0, v7, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    #@80
    .line 3626
    :cond_7
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@82
    if-eqz v6, :cond_3

    #@84
    .line 3628
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@86
    invoke-interface {v6, v0, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    #@89
    goto :goto_1
.end method

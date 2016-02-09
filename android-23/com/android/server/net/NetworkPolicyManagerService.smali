.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$1;,
        Lcom/android/server/net/NetworkPolicyManagerService$2;,
        Lcom/android/server/net/NetworkPolicyManagerService$3;,
        Lcom/android/server/net/NetworkPolicyManagerService$4;,
        Lcom/android/server/net/NetworkPolicyManagerService$5;,
        Lcom/android/server/net/NetworkPolicyManagerService$6;,
        Lcom/android/server/net/NetworkPolicyManagerService$7;,
        Lcom/android/server/net/NetworkPolicyManagerService$8;,
        Lcom/android/server/net/NetworkPolicyManagerService$9;,
        Lcom/android/server/net/NetworkPolicyManagerService$10;,
        Lcom/android/server/net/NetworkPolicyManagerService$11;,
        Lcom/android/server/net/NetworkPolicyManagerService$12;,
        Lcom/android/server/net/NetworkPolicyManagerService$13;,
        Lcom/android/server/net/NetworkPolicyManagerService$14;,
        Lcom/android/server/net/NetworkPolicyManagerService$15;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z

.field volatile mRestrictPower:Z

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    #@0
    .prologue
    .line 330
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@3
    move-result-object v6

    #@4
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    #@7
    move-result-object v7

    #@8
    const/4 v8, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    .line 329
    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    #@12
    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    #@3
    .line 263
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@a
    .line 274
    new-instance v1, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@11
    .line 276
    new-instance v1, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@18
    .line 279
    new-instance v1, Landroid/util/SparseIntArray;

    #@1a
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@1f
    .line 281
    new-instance v1, Landroid/util/SparseIntArray;

    #@21
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@26
    .line 283
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@28
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@2b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@2d
    .line 290
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@2f
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@32
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@34
    .line 297
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@36
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@39
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@3b
    .line 299
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@3d
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@40
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@42
    .line 302
    new-instance v1, Landroid/util/ArraySet;

    #@44
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@47
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@49
    .line 304
    new-instance v1, Landroid/util/ArraySet;

    #@4b
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@4e
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@50
    .line 307
    new-instance v1, Landroid/util/ArraySet;

    #@52
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@55
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@57
    .line 310
    new-instance v1, Landroid/util/SparseIntArray;

    #@59
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@5c
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5e
    .line 313
    new-instance v1, Landroid/os/RemoteCallbackList;

    #@60
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    #@63
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@65
    .line 532
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    #@67
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@6a
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    #@6c
    .line 546
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    #@6e
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@71
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    #@73
    .line 557
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$3;

    #@75
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@78
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    #@7a
    .line 568
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    #@7c
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@7f
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    #@81
    .line 577
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    #@83
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@86
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@88
    .line 597
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    #@8a
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@8d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@8f
    .line 615
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    #@91
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@94
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@96
    .line 644
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    #@98
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@9b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    #@9d
    .line 662
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    #@9f
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@a2
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    #@a4
    .line 676
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    #@a6
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@a9
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    #@ab
    .line 690
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    #@ad
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@b0
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    #@b2
    .line 717
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    #@b4
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@b7
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    #@b9
    .line 758
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    #@bb
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@be
    .line 757
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@c0
    .line 1049
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    #@c2
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@c5
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@c7
    .line 2326
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$15;

    #@c9
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@cc
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@ce
    .line 341
    const-string/jumbo v1, "missing context"

    #@d1
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    move-result-object v1

    #@d5
    check-cast v1, Landroid/content/Context;

    #@d7
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d9
    .line 342
    const-string/jumbo v1, "missing activityManager"

    #@dc
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    move-result-object v1

    #@e0
    check-cast v1, Landroid/app/IActivityManager;

    #@e2
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@e4
    .line 343
    const-string/jumbo v1, "missing powerManager"

    #@e7
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    move-result-object v1

    #@eb
    check-cast v1, Landroid/os/IPowerManager;

    #@ed
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    #@ef
    .line 344
    const-string/jumbo v1, "missing networkStats"

    #@f2
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    move-result-object v1

    #@f6
    check-cast v1, Landroid/net/INetworkStatsService;

    #@f8
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@fa
    .line 345
    const-string/jumbo v1, "missing networkManagement"

    #@fd
    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    move-result-object v1

    #@101
    check-cast v1, Landroid/os/INetworkManagementService;

    #@103
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@105
    .line 347
    const-string/jumbo v1, "deviceidle"

    #@108
    .line 346
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10b
    move-result-object v1

    #@10c
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@10f
    move-result-object v1

    #@110
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@112
    .line 348
    const-string/jumbo v1, "missing TrustedTime"

    #@115
    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@118
    move-result-object v1

    #@119
    check-cast v1, Landroid/util/TrustedTime;

    #@11b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@11d
    .line 349
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@11f
    const-string/jumbo v2, "user"

    #@122
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@125
    move-result-object v1

    #@126
    check-cast v1, Landroid/os/UserManager;

    #@128
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@12a
    .line 351
    new-instance v0, Landroid/os/HandlerThread;

    #@12c
    const-string/jumbo v1, "NetworkPolicy"

    #@12f
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@132
    .line 352
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@135
    .line 353
    new-instance v1, Landroid/os/Handler;

    #@137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@13a
    move-result-object v2

    #@13b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@13d
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@140
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@142
    .line 355
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    #@144
    .line 357
    new-instance v1, Landroid/util/AtomicFile;

    #@146
    new-instance v2, Ljava/io/File;

    #@148
    const-string/jumbo v3, "netpolicy.xml"

    #@14b
    invoke-direct {v2, p7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14e
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@151
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@153
    .line 359
    const-class v1, Landroid/app/AppOpsManager;

    #@155
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@158
    move-result-object v1

    #@159
    check-cast v1, Landroid/app/AppOpsManager;

    #@15b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@15d
    .line 340
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 2541
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 2551
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 2552
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    .line 2553
    const-string/jumbo v2, "com.android.systemui"

    #@a
    const-string/jumbo v3, "com.android.systemui.net.NetworkOverLimitActivity"

    #@d
    .line 2552
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 2554
    const/high16 v1, 0x10000000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 2555
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 2556
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetworkPolicy:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@e
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ":"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 2545
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.server.net.action.SNOOZE_WARNING"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2546
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 2547
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 2560
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 2561
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    .line 2562
    const-string/jumbo v2, "com.android.settings"

    #@a
    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    #@d
    .line 2561
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 2563
    const/high16 v1, 0x10000000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 2564
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 2565
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1037
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1038
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@8
    .line 1039
    const/4 v3, 0x0

    #@9
    const/4 v4, 0x0

    #@a
    .line 1038
    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1033
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    #@e
    .line 1040
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    #@0
    .prologue
    .line 2574
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v1

    #@4
    .line 2575
    .local v1, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 2576
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x1

    #@c
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@f
    .line 2575
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2573
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 2537
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@2
    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@a
    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    #@d
    move-result-wide v0

    #@e
    :goto_0
    return-wide v0

    #@f
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v0

    #@13
    goto :goto_0
.end method

.method private enableFirewallChainLocked(IZ)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 2488
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@5
    move-result v2

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 2489
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@d
    move-result v2

    #@e
    if-ne v2, p2, :cond_0

    #@10
    .line 2491
    return-void

    #@11
    .line 2493
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@16
    .line 2495
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@18
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 2487
    :goto_0
    return-void

    #@1c
    .line 2496
    :catch_0
    move-exception v1

    #@1d
    .line 2497
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@20
    const-string/jumbo v3, "problem enable firewall chain"

    #@23
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0

    #@27
    .line 2498
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@28
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 21
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    #@0
    .prologue
    .line 882
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 883
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@d
    .line 884
    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    #@e
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@11
    .line 885
    const-wide/16 v6, 0x0

    #@13
    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@16
    .line 886
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1a
    .line 887
    const v4, 0x1060059

    #@1d
    .line 886
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    #@20
    move-result v2

    #@21
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@24
    .line 889
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v15

    #@2c
    .line 890
    .local v15, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    #@2f
    .line 985
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 986
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    #@38
    new-array v8, v2, [I

    #@3a
    .line 987
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@3e
    .line 988
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@41
    move-result-object v7

    #@42
    const/4 v6, 0x0

    #@43
    .line 989
    const/4 v9, 0x0

    #@44
    move-object v4, v3

    #@45
    .line 987
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@48
    .line 990
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@4c
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 881
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    #@50
    .line 892
    :pswitch_0
    const v2, 0x1040486

    #@53
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@56
    move-result-object v19

    #@57
    .line 893
    .local v19, "title":Ljava/lang/CharSequence;
    const v2, 0x1040487

    #@5a
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    .line 895
    .local v10, "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    #@61
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@64
    .line 896
    move-object/from16 v0, v19

    #@66
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    .line 897
    move-object/from16 v0, v19

    #@6b
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6e
    .line 898
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@71
    .line 900
    move-object/from16 v0, p1

    #@73
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@75
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@78
    move-result-object v18

    #@79
    .line 902
    .local v18, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@7b
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7d
    const/4 v4, 0x0

    #@7e
    const/high16 v6, 0x8000000

    #@80
    .line 901
    move-object/from16 v0, v18

    #@82
    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@89
    .line 904
    move-object/from16 v0, p1

    #@8b
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@8d
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@90
    move-result-object v20

    #@91
    .line 906
    .local v20, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@93
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@95
    const/4 v4, 0x0

    #@96
    const/high16 v6, 0x8000000

    #@98
    .line 905
    move-object/from16 v0, v20

    #@9a
    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@a1
    goto :goto_0

    #@a2
    .line 911
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v18    # "snoozeIntent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, 0x104048c

    #@a5
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@a8
    move-result-object v10

    #@a9
    .line 914
    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v13, 0x1080638

    #@ac
    .line 915
    .local v13, "icon":I
    move-object/from16 v0, p1

    #@ae
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@b0
    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@b3
    move-result v2

    #@b4
    packed-switch v2, :pswitch_data_1

    #@b7
    .line 930
    const/16 v19, 0x0

    #@b9
    .line 934
    :goto_2
    const/4 v2, 0x1

    #@ba
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@bd
    .line 935
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@c0
    .line 936
    move-object/from16 v0, v19

    #@c2
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c5
    .line 937
    move-object/from16 v0, v19

    #@c7
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@ca
    .line 938
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@cd
    .line 940
    move-object/from16 v0, p1

    #@cf
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@d1
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@d4
    move-result-object v14

    #@d5
    .line 942
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d9
    const/4 v4, 0x0

    #@da
    const/high16 v6, 0x8000000

    #@dc
    .line 941
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@e3
    goto/16 :goto_0

    #@e5
    .line 917
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v2, 0x1040488

    #@e8
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@eb
    move-result-object v19

    #@ec
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@ed
    .line 920
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x1040489

    #@f0
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f3
    move-result-object v19

    #@f4
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@f5
    .line 923
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, 0x104048a

    #@f8
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@fb
    move-result-object v19

    #@fc
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@fd
    .line 926
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, 0x104048b

    #@100
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@103
    move-result-object v19

    #@104
    .line 927
    .restart local v19    # "title":Ljava/lang/CharSequence;
    const v13, 0x1080078

    #@107
    .line 928
    goto :goto_2

    #@108
    .line 946
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v13    # "icon":I
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    #@10a
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@10c
    sub-long v16, p3, v6

    #@10e
    .line 947
    .local v16, "overBytes":J
    const/4 v2, 0x1

    #@10f
    new-array v2, v2, [Ljava/lang/Object;

    #@111
    .line 948
    move-object/from16 v0, p0

    #@113
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@115
    move-wide/from16 v0, v16

    #@117
    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@11a
    move-result-object v4

    #@11b
    const/4 v6, 0x0

    #@11c
    aput-object v4, v2, v6

    #@11e
    .line 947
    const v4, 0x1040491

    #@121
    invoke-virtual {v15, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@124
    move-result-object v10

    #@125
    .line 951
    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@127
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@129
    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@12c
    move-result v2

    #@12d
    packed-switch v2, :pswitch_data_2

    #@130
    .line 965
    const/16 v19, 0x0

    #@132
    .line 969
    :goto_3
    const/4 v2, 0x1

    #@133
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@136
    .line 970
    const v2, 0x1080078

    #@139
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@13c
    .line 971
    move-object/from16 v0, v19

    #@13e
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@141
    .line 972
    move-object/from16 v0, v19

    #@143
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@146
    .line 973
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@149
    .line 975
    move-object/from16 v0, p1

    #@14b
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@14d
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@150
    move-result-object v14

    #@151
    .line 977
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@155
    const/4 v4, 0x0

    #@156
    const/high16 v6, 0x8000000

    #@158
    .line 976
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@15b
    move-result-object v2

    #@15c
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@15f
    goto/16 :goto_0

    #@161
    .line 953
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v2, 0x104048d

    #@164
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@167
    move-result-object v19

    #@168
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@169
    .line 956
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, 0x104048e

    #@16c
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@16f
    move-result-object v19

    #@170
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@171
    .line 959
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, 0x104048f

    #@174
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@177
    move-result-object v19

    #@178
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@179
    .line 962
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, 0x1040490

    #@17c
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@17f
    move-result-object v19

    #@180
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@181
    .line 991
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v19    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v12

    #@182
    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@184
    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    #@18e
    .line 915
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    #@19a
    .line 951
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 14
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1001
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v12

    #@8
    .line 1002
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    #@a
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@c
    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@f
    .line 1004
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, 0x1040492

    #@12
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@15
    move-result-object v13

    #@16
    .line 1005
    .local v13, "title":Ljava/lang/CharSequence;
    const v0, 0x1040493

    #@19
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    .line 1007
    .local v8, "body":Ljava/lang/CharSequence;
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@20
    .line 1008
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@23
    .line 1009
    const v0, 0x1080078

    #@26
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@29
    .line 1010
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2c
    .line 1011
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2f
    .line 1012
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@32
    .line 1013
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@34
    .line 1014
    const v2, 0x1060059

    #@37
    .line 1013
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    #@3a
    move-result v0

    #@3b
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@3e
    .line 1016
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    #@41
    move-result-object v11

    #@42
    .line 1018
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@44
    const/high16 v2, 0x8000000

    #@46
    invoke-static {v0, v3, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@49
    move-result-object v0

    #@4a
    .line 1017
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@4d
    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 1024
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    #@54
    new-array v6, v0, [I

    #@56
    .line 1025
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@58
    .line 1026
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@5b
    move-result-object v5

    #@5c
    const/4 v4, 0x0

    #@5d
    const/4 v7, 0x0

    #@5e
    move-object v2, v1

    #@5f
    move-object v3, p1

    #@60
    .line 1025
    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@63
    .line 1027
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@65
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    .line 1000
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    #@69
    .line 1028
    :catch_0
    move-exception v10

    #@6a
    .local v10, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 7

    #@0
    .prologue
    .line 1277
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    return-void

    #@5
    .line 1279
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@a
    move-result-object v4

    #@b
    .line 1280
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@10
    move-result-object v0

    #@11
    .line 1282
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@14
    move-result-object v2

    #@15
    .line 1283
    .local v2, "subIds":[I
    const/4 v5, 0x0

    #@16
    array-length v6, v2

    #@17
    :goto_0
    if-ge v5, v6, :cond_1

    #@19
    aget v1, v2, v5

    #@1b
    .line 1284
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1285
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    #@22
    .line 1283
    add-int/lit8 v5, v5, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1275
    .end local v1    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 20
    .param p1, "subscriberId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1291
    new-instance v2, Landroid/net/NetworkIdentity;

    #@2
    const/4 v3, 0x0

    #@3
    .line 1292
    const/4 v4, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v7, 0x0

    #@6
    move-object/from16 v5, p1

    #@8
    .line 1291
    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    #@b
    .line 1293
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@12
    move-result v3

    #@13
    add-int/lit8 v18, v3, -0x1

    #@15
    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_1

    #@17
    .line 1294
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1b
    move/from16 v0, v18

    #@1d
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroid/net/NetworkTemplate;

    #@23
    .line 1295
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 1300
    return-void

    #@2a
    .line 1293
    :cond_0
    add-int/lit8 v18, v18, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1304
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    const-string/jumbo v3, "NetworkPolicy"

    #@30
    new-instance v10, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v11, "No policy for subscriber "

    #@38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v11

    #@40
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    .line 1305
    const-string/jumbo v11, "; generating default policy"

    #@47
    .line 1304
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 1308
    move-object/from16 v0, p0

    #@54
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@56
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@59
    move-result-object v3

    #@5a
    .line 1309
    const v10, 0x10e007d

    #@5d
    .line 1308
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    #@60
    move-result v3

    #@61
    int-to-long v10, v3

    #@62
    .line 1309
    const-wide/32 v12, 0x100000

    #@65
    .line 1308
    mul-long v8, v10, v12

    #@67
    .line 1311
    .local v8, "warningBytes":J
    new-instance v19, Landroid/text/format/Time;

    #@69
    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    #@6c
    .line 1312
    .local v19, "time":Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    #@6f
    .line 1314
    move-object/from16 v0, v19

    #@71
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    #@73
    .line 1315
    .local v6, "cycleDay":I
    move-object/from16 v0, v19

    #@75
    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@77
    .line 1317
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@7a
    move-result-object v5

    #@7b
    .line 1318
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    #@7d
    .line 1319
    const-wide/16 v10, -0x1

    #@7f
    const-wide/16 v12, -0x1

    #@81
    const-wide/16 v14, -0x1

    #@83
    const/16 v16, 0x1

    #@85
    const/16 v17, 0x1

    #@87
    .line 1318
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@8a
    .line 1320
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@8c
    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    #@8f
    .line 1289
    return-void
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 1815
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 1816
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/net/NetworkPolicy;

    #@12
    .line 1817
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@14
    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1818
    return-object v1

    #@1b
    .line 1815
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1821
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v2, 0x0

    #@1f
    return-object v2
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 1839
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@9
    move-result-object v8

    #@a
    .line 1842
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1843
    :try_start_0
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v18

    #@15
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v2

    #@16
    .line 1846
    if-eqz v18, :cond_0

    #@18
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 1851
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@21
    move-result-wide v16

    #@22
    .line 1854
    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@25
    move-result-wide v4

    #@26
    .line 1855
    .local v4, "start":J
    move-wide/from16 v6, v16

    #@28
    .line 1856
    .local v6, "end":J
    move-object/from16 v0, v18

    #@2a
    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2c
    move-object/from16 v2, p0

    #@2e
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@31
    move-result-wide v10

    #@32
    .line 1859
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    #@34
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@36
    const-wide/16 v20, -0x1

    #@38
    cmp-long v2, v2, v20

    #@3a
    if-eqz v2, :cond_1

    #@3c
    move-object/from16 v0, v18

    #@3e
    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@40
    .line 1861
    .local v12, "softLimitBytes":J
    :goto_0
    move-object/from16 v0, v18

    #@42
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@44
    const-wide/16 v20, -0x1

    #@46
    cmp-long v2, v2, v20

    #@48
    if-eqz v2, :cond_2

    #@4a
    move-object/from16 v0, v18

    #@4c
    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@4e
    .line 1864
    .local v14, "hardLimitBytes":J
    :goto_1
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    #@50
    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    #@53
    return-object v9

    #@54
    .line 1842
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v10    # "totalBytes":J
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    .end local v16    # "currentTime":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    #@55
    monitor-exit v2

    #@56
    throw v3

    #@57
    .line 1848
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v2, 0x0

    #@58
    return-object v2

    #@59
    .line 1860
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "totalBytes":J
    .restart local v16    # "currentTime":J
    :cond_1
    const-wide/16 v12, -0x1

    #@5b
    .restart local v12    # "softLimitBytes":J
    goto :goto_0

    #@5c
    .line 1862
    :cond_2
    const-wide/16 v14, -0x1

    #@5e
    .restart local v14    # "hardLimitBytes":J
    goto :goto_1
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 334
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "system"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 2505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@4
    move-object v1, p1

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-wide v0

    #@b
    return-wide v0

    #@c
    .line 2509
    :catch_0
    move-exception v6

    #@d
    .line 2511
    .local v6, "e":Landroid/os/RemoteException;
    return-wide v8

    #@e
    .line 2506
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    #@f
    .line 2507
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "NetworkPolicy"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "problem reading network stats: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 2508
    return-wide v8
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 2516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2518
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@6
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    .line 2523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 2518
    return v1

    #@e
    .line 2519
    :catch_0
    move-exception v0

    #@f
    .line 2521
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    .line 2523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 2521
    return v1

    #@14
    .line 2522
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@15
    .line 2523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 2522
    throw v1
.end method

.method static isProcStateAllowedWhileIdle(I)Z
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 2086
    const/4 v0, 0x4

    #@1
    if-gt p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 834
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 835
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v9

    #@e
    .line 836
    .local v9, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@13
    move-result-object v6

    #@14
    .line 839
    .local v6, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@17
    move-result-object v8

    #@18
    .line 840
    .local v8, "subIds":[I
    array-length v11, v8

    #@19
    move v10, v1

    #@1a
    :goto_0
    if-ge v10, v11, :cond_1

    #@1c
    aget v7, v8, v10

    #@1e
    .line 841
    .local v7, "subId":I
    invoke-virtual {v9, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 842
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    #@24
    .line 843
    const/4 v4, 0x0

    #@25
    move v2, v1

    #@26
    move v5, v1

    #@27
    .line 842
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    #@2a
    .line 844
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 845
    return v12

    #@31
    .line 840
    :cond_0
    add-int/lit8 v2, v10, 0x1

    #@33
    move v10, v2

    #@34
    goto :goto_0

    #@35
    .line 848
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v7    # "subId":I
    :cond_1
    return v1

    #@36
    .line 850
    .end local v6    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v8    # "subIds":[I
    .end local v9    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    return v12
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2220
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 2221
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@e
    move-result v2

    #@f
    .line 2223
    .local v2, "userId":I
    array-length v5, v1

    #@10
    move v3, v4

    #@11
    :goto_0
    if-ge v3, v5, :cond_1

    #@13
    aget-object v0, v1, v3

    #@15
    .line 2224
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@17
    invoke-virtual {v6, v0, v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;I)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    .line 2225
    return v4

    #@1e
    .line 2223
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2228
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    #@22
    return v3
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 2211
    const/16 v0, 0x3f5

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/16 v0, 0x3fb

    #@6
    if-ne p0, v0, :cond_1

    #@8
    .line 2213
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2212
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    #@d
    move-result v0

    #@e
    .line 2211
    if-nez v0, :cond_0

    #@10
    .line 2216
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    #@0
    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    #@d
    .line 1706
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1711
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v3

    #@7
    .line 1712
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1714
    .local v1, "merged":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    #@10
    .line 1715
    array-length v5, p1

    #@11
    :goto_0
    if-ge v4, v5, :cond_3

    #@13
    aget-object v2, p1, v4

    #@15
    .line 1718
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@17
    invoke-static {v6, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@1a
    move-result-object v6

    #@1b
    iput-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@1d
    .line 1719
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1f
    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@21
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/net/NetworkPolicy;

    #@27
    .line 1720
    .local v0, "existing":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    #@29
    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    #@2c
    move-result v6

    #@2d
    if-lez v6, :cond_2

    #@2f
    .line 1721
    :cond_0
    if-eqz v0, :cond_1

    #@31
    .line 1722
    const-string/jumbo v6, "NetworkPolicy"

    #@34
    new-instance v7, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v8, "Normalization replaced "

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    const-string/jumbo v8, " with "

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 1724
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@58
    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@5a
    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 1715
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1710
    .end local v0    # "existing":Landroid/net/NetworkPolicy;
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 860
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@11
    .line 861
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@16
    .line 858
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    .line 865
    return-void
.end method

.method private readPolicyLocked()V
    .locals 34

    #@0
    .prologue
    .line 1327
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@7
    .line 1328
    move-object/from16 v0, p0

    #@9
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    #@e
    .line 1330
    const/16 v22, 0x0

    #@10
    .line 1332
    .local v22, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@14
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@17
    move-result-object v22

    #@18
    .line 1333
    .local v22, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v23

    #@1c
    .line 1334
    .local v23, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1e
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    move-object/from16 v0, v23

    #@24
    move-object/from16 v1, v22

    #@26
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@29
    .line 1337
    const/16 v31, 0x1

    #@2b
    .line 1338
    .local v31, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2e
    move-result v29

    #@2f
    .local v29, "type":I
    const/4 v4, 0x1

    #@30
    move/from16 v0, v29

    #@32
    if-eq v0, v4, :cond_e

    #@34
    .line 1339
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@37
    move-result-object v28

    #@38
    .line 1340
    .local v28, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    #@39
    move/from16 v0, v29

    #@3b
    if-ne v0, v4, :cond_0

    #@3d
    .line 1341
    const-string/jumbo v4, "policy-list"

    #@40
    move-object/from16 v0, v28

    #@42
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_2

    #@48
    .line 1342
    const-string/jumbo v4, "version"

    #@4b
    move-object/from16 v0, v23

    #@4d
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@50
    move-result v31

    #@51
    .line 1343
    const/4 v4, 0x3

    #@52
    move/from16 v0, v31

    #@54
    if-lt v0, v4, :cond_1

    #@56
    .line 1345
    const-string/jumbo v4, "restrictBackground"

    #@59
    .line 1344
    move-object/from16 v0, v23

    #@5b
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@5e
    move-result v4

    #@5f
    move-object/from16 v0, p0

    #@61
    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 1433
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "tag":Ljava/lang/String;
    .end local v29    # "type":I
    .end local v31    # "version":I
    :catch_0
    move-exception v19

    #@65
    .line 1435
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 1441
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6b
    .line 1323
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    #@6c
    .line 1347
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "tag":Ljava/lang/String;
    .restart local v29    # "type":I
    .restart local v31    # "version":I
    :cond_1
    const/4 v4, 0x0

    #@6d
    :try_start_2
    move-object/from16 v0, p0

    #@6f
    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 1436
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "tag":Ljava/lang/String;
    .end local v29    # "type":I
    .end local v31    # "version":I
    :catch_1
    move-exception v20

    #@73
    .line 1437
    .local v20, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "NetworkPolicy"

    #@76
    const-string/jumbo v32, "problem reading network policy"

    #@79
    move-object/from16 v0, v32

    #@7b
    move-object/from16 v1, v20

    #@7d
    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    .line 1441
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@83
    goto :goto_1

    #@84
    .line 1350
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "tag":Ljava/lang/String;
    .restart local v29    # "type":I
    .restart local v31    # "version":I
    :cond_2
    :try_start_4
    const-string/jumbo v4, "network-policy"

    #@87
    move-object/from16 v0, v28

    #@89
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_a

    #@8f
    .line 1351
    const-string/jumbo v4, "networkTemplate"

    #@92
    move-object/from16 v0, v23

    #@94
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@97
    move-result v25

    #@98
    .line 1352
    .local v25, "networkTemplate":I
    const-string/jumbo v4, "subscriberId"

    #@9b
    const/16 v32, 0x0

    #@9d
    move-object/from16 v0, v23

    #@9f
    move-object/from16 v1, v32

    #@a1
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v27

    #@a5
    .line 1354
    .local v27, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    #@a7
    move/from16 v0, v31

    #@a9
    if-lt v0, v4, :cond_3

    #@ab
    .line 1355
    const-string/jumbo v4, "networkId"

    #@ae
    const/16 v32, 0x0

    #@b0
    move-object/from16 v0, v23

    #@b2
    move-object/from16 v1, v32

    #@b4
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b7
    move-result-object v24

    #@b8
    .line 1359
    :goto_2
    const-string/jumbo v4, "cycleDay"

    #@bb
    move-object/from16 v0, v23

    #@bd
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@c0
    move-result v6

    #@c1
    .line 1361
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    #@c2
    move/from16 v0, v31

    #@c4
    if-lt v0, v4, :cond_4

    #@c6
    .line 1362
    const-string/jumbo v4, "cycleTimezone"

    #@c9
    const/16 v32, 0x0

    #@cb
    move-object/from16 v0, v23

    #@cd
    move-object/from16 v1, v32

    #@cf
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d2
    move-result-object v7

    #@d3
    .line 1366
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_3
    const-string/jumbo v4, "warningBytes"

    #@d6
    move-object/from16 v0, v23

    #@d8
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@db
    move-result-wide v8

    #@dc
    .line 1367
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    #@df
    move-object/from16 v0, v23

    #@e1
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@e4
    move-result-wide v10

    #@e5
    .line 1369
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    #@e6
    move/from16 v0, v31

    #@e8
    if-lt v0, v4, :cond_5

    #@ea
    .line 1370
    const-string/jumbo v4, "lastLimitSnooze"

    #@ed
    move-object/from16 v0, v23

    #@ef
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@f2
    move-result-wide v14

    #@f3
    .line 1377
    .local v14, "lastLimitSnooze":J
    :goto_4
    const/4 v4, 0x4

    #@f4
    move/from16 v0, v31

    #@f6
    if-lt v0, v4, :cond_7

    #@f8
    .line 1378
    const-string/jumbo v4, "metered"

    #@fb
    move-object/from16 v0, v23

    #@fd
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@100
    move-result v16

    #@101
    .line 1391
    :goto_5
    const/4 v4, 0x5

    #@102
    move/from16 v0, v31

    #@104
    if-lt v0, v4, :cond_8

    #@106
    .line 1392
    const-string/jumbo v4, "lastWarningSnooze"

    #@109
    move-object/from16 v0, v23

    #@10b
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@10e
    move-result-wide v12

    #@10f
    .line 1397
    .local v12, "lastWarningSnooze":J
    :goto_6
    const/4 v4, 0x7

    #@110
    move/from16 v0, v31

    #@112
    if-lt v0, v4, :cond_9

    #@114
    .line 1398
    const-string/jumbo v4, "inferred"

    #@117
    move-object/from16 v0, v23

    #@119
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@11c
    move-result v17

    #@11d
    .line 1403
    :goto_7
    new-instance v5, Landroid/net/NetworkTemplate;

    #@11f
    move/from16 v0, v25

    #@121
    move-object/from16 v1, v27

    #@123
    move-object/from16 v2, v24

    #@125
    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@128
    .line 1405
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@12c
    move-object/from16 v32, v0

    #@12e
    new-instance v4, Landroid/net/NetworkPolicy;

    #@130
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@133
    move-object/from16 v0, v32

    #@135
    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@138
    goto/16 :goto_0

    #@13a
    .line 1438
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "networkTemplate":I
    .end local v27    # "subscriberId":Ljava/lang/String;
    .end local v28    # "tag":Ljava/lang/String;
    .end local v29    # "type":I
    .end local v31    # "version":I
    :catch_2
    move-exception v21

    #@13b
    .line 1439
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string/jumbo v4, "NetworkPolicy"

    #@13e
    const-string/jumbo v32, "problem reading network policy"

    #@141
    move-object/from16 v0, v32

    #@143
    move-object/from16 v1, v21

    #@145
    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@148
    .line 1441
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14b
    goto/16 :goto_1

    #@14d
    .line 1357
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "networkTemplate":I
    .restart local v27    # "subscriberId":Ljava/lang/String;
    .restart local v28    # "tag":Ljava/lang/String;
    .restart local v29    # "type":I
    .restart local v31    # "version":I
    :cond_3
    const/16 v24, 0x0

    #@14f
    .local v24, "networkId":Ljava/lang/String;
    goto/16 :goto_2

    #@151
    .line 1364
    .end local v24    # "networkId":Ljava/lang/String;
    .restart local v6    # "cycleDay":I
    :cond_4
    :try_start_6
    const-string/jumbo v7, "UTC"

    #@154
    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_3

    #@156
    .line 1371
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_5
    const/4 v4, 0x2

    #@157
    move/from16 v0, v31

    #@159
    if-lt v0, v4, :cond_6

    #@15b
    .line 1372
    const-string/jumbo v4, "lastSnooze"

    #@15e
    move-object/from16 v0, v23

    #@160
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@163
    move-result-wide v14

    #@164
    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    #@165
    .line 1374
    .end local v14    # "lastLimitSnooze":J
    :cond_6
    const-wide/16 v14, -0x1

    #@167
    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    #@168
    .line 1380
    :cond_7
    packed-switch v25, :pswitch_data_0

    #@16b
    .line 1387
    const/16 v16, 0x0

    #@16d
    .local v16, "metered":Z
    goto :goto_5

    #@16e
    .line 1384
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    #@170
    .line 1385
    .restart local v16    # "metered":Z
    goto :goto_5

    #@171
    .line 1394
    .end local v16    # "metered":Z
    :cond_8
    const-wide/16 v12, -0x1

    #@173
    .restart local v12    # "lastWarningSnooze":J
    goto :goto_6

    #@174
    .line 1400
    :cond_9
    const/16 v17, 0x0

    #@176
    .local v17, "inferred":Z
    goto :goto_7

    #@177
    .line 1409
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v17    # "inferred":Z
    .end local v25    # "networkTemplate":I
    .end local v27    # "subscriberId":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "uid-policy"

    #@17a
    move-object/from16 v0, v28

    #@17c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v4

    #@180
    if-eqz v4, :cond_c

    #@182
    .line 1410
    const-string/jumbo v4, "uid"

    #@185
    move-object/from16 v0, v23

    #@187
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@18a
    move-result v30

    #@18b
    .line 1411
    .local v30, "uid":I
    const-string/jumbo v4, "policy"

    #@18e
    move-object/from16 v0, v23

    #@190
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@193
    move-result v26

    #@194
    .line 1413
    .local v26, "policy":I
    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->isApp(I)Z

    #@197
    move-result v4

    #@198
    if-eqz v4, :cond_b

    #@19a
    .line 1414
    const/4 v4, 0x0

    #@19b
    move-object/from16 v0, p0

    #@19d
    move/from16 v1, v30

    #@19f
    move/from16 v2, v26

    #@1a1
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1a4
    goto/16 :goto_0

    #@1a6
    .line 1440
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "policy":I
    .end local v28    # "tag":Ljava/lang/String;
    .end local v29    # "type":I
    .end local v30    # "uid":I
    .end local v31    # "version":I
    :catchall_0
    move-exception v4

    #@1a7
    .line 1441
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1aa
    .line 1440
    throw v4

    #@1ab
    .line 1416
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "policy":I
    .restart local v28    # "tag":Ljava/lang/String;
    .restart local v29    # "type":I
    .restart local v30    # "uid":I
    .restart local v31    # "version":I
    :cond_b
    :try_start_7
    const-string/jumbo v4, "NetworkPolicy"

    #@1ae
    new-instance v32, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v33, "unable to apply policy to UID "

    #@1b6
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v32

    #@1ba
    move-object/from16 v0, v32

    #@1bc
    move/from16 v1, v30

    #@1be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v32

    #@1c2
    const-string/jumbo v33, "; ignoring"

    #@1c5
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v32

    #@1c9
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v32

    #@1cd
    move-object/from16 v0, v32

    #@1cf
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d2
    goto/16 :goto_0

    #@1d4
    .line 1418
    .end local v26    # "policy":I
    .end local v30    # "uid":I
    :cond_c
    const-string/jumbo v4, "app-policy"

    #@1d7
    move-object/from16 v0, v28

    #@1d9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1dc
    move-result v4

    #@1dd
    if-eqz v4, :cond_0

    #@1df
    .line 1419
    const-string/jumbo v4, "appId"

    #@1e2
    move-object/from16 v0, v23

    #@1e4
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1e7
    move-result v18

    #@1e8
    .line 1420
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    #@1eb
    move-object/from16 v0, v23

    #@1ed
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1f0
    move-result v26

    #@1f1
    .line 1423
    .restart local v26    # "policy":I
    const/4 v4, 0x0

    #@1f2
    move/from16 v0, v18

    #@1f4
    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@1f7
    move-result v30

    #@1f8
    .line 1424
    .restart local v30    # "uid":I
    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->isApp(I)Z

    #@1fb
    move-result v4

    #@1fc
    if-eqz v4, :cond_d

    #@1fe
    .line 1425
    const/4 v4, 0x0

    #@1ff
    move-object/from16 v0, p0

    #@201
    move/from16 v1, v30

    #@203
    move/from16 v2, v26

    #@205
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    #@208
    goto/16 :goto_0

    #@20a
    .line 1427
    :cond_d
    const-string/jumbo v4, "NetworkPolicy"

    #@20d
    new-instance v32, Ljava/lang/StringBuilder;

    #@20f
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@212
    const-string/jumbo v33, "unable to apply policy to UID "

    #@215
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v32

    #@219
    move-object/from16 v0, v32

    #@21b
    move/from16 v1, v30

    #@21d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@220
    move-result-object v32

    #@221
    const-string/jumbo v33, "; ignoring"

    #@224
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v32

    #@228
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22b
    move-result-object v32

    #@22c
    move-object/from16 v0, v32

    #@22e
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@231
    goto/16 :goto_0

    #@233
    .line 1441
    .end local v18    # "appId":I
    .end local v26    # "policy":I
    .end local v28    # "tag":Ljava/lang/String;
    .end local v30    # "uid":I
    :cond_e
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@236
    goto/16 :goto_1

    #@238
    .line 1380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2431
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 2429
    :goto_0
    return-void

    #@6
    .line 2432
    :catch_0
    move-exception v1

    #@7
    .line 2433
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem removing interface quota"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 2434
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    #@0
    .prologue
    .line 2421
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 2419
    :goto_0
    return-void

    #@6
    .line 2422
    :catch_0
    move-exception v1

    #@7
    .line 2423
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem setting interface quota"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 2424
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1102
    return-void
.end method

.method private setUidFirewallRule(III)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 2476
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 2474
    :goto_0
    return-void

    #@6
    .line 2477
    :catch_0
    move-exception v1

    #@7
    .line 2478
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem setting firewall uid rules"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 2479
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 2456
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v4

    #@4
    .line 2457
    .local v4, "size":I
    new-array v5, v4, [I

    #@6
    .line 2458
    .local v5, "uids":[I
    new-array v3, v4, [I

    #@8
    .line 2459
    .local v3, "rules":[I
    add-int/lit8 v2, v4, -0x1

    #@a
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    #@c
    .line 2460
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@f
    move-result v6

    #@10
    aput v6, v5, v2

    #@12
    .line 2461
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@15
    move-result v6

    #@16
    aput v6, v3, v2

    #@18
    .line 2459
    add-int/lit8 v2, v2, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2463
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@1d
    invoke-interface {v6, p1, v5, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    .line 2454
    .end local v2    # "index":I
    .end local v3    # "rules":[I
    .end local v4    # "size":I
    .end local v5    # "uids":[I
    :goto_1
    return-void

    #@21
    .line 2464
    :catch_0
    move-exception v1

    #@22
    .line 2465
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "NetworkPolicy"

    #@25
    const-string/jumbo v7, "problem setting firewall uid rules"

    #@28
    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_1

    #@2c
    .line 2466
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidNetworkRules(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    #@0
    .prologue
    .line 2441
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 2439
    :goto_0
    return-void

    #@6
    .line 2442
    :catch_0
    move-exception v1

    #@7
    .line 2443
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem setting uid rules"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 2444
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    #@0
    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@5
    .line 1586
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@8
    .line 1587
    if-eqz p3, :cond_0

    #@a
    .line 1588
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@d
    .line 1582
    :cond_0
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    #@0
    .prologue
    .line 2076
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@5
    move-result v1

    #@6
    .line 2077
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 2078
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e
    move-result v3

    #@f
    const/4 v4, 0x2

    #@10
    if-gt v3, v4, :cond_0

    #@12
    .line 2079
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@17
    move-result v2

    #@18
    .line 2080
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@1b
    .line 2077
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2074
    :cond_1
    return-void
.end method

.method private updateScreenOn()V
    .locals 3

    #@0
    .prologue
    .line 2061
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2063
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    #@5
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z

    #@8
    move-result v1

    #@9
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 2067
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 2060
    return-void

    #@10
    .line 2061
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 2064
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1451
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v3, "background_data"

    #@a
    .line 1450
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-eq v2, v1, :cond_1

    #@10
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@12
    .line 1454
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1455
    new-instance v0, Landroid/content/Intent;

    #@18
    .line 1456
    const-string/jumbo v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    #@1b
    .line 1455
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 1457
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@22
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@25
    .line 1449
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    #@26
    .line 1450
    :cond_1
    const/4 v1, 0x0

    #@27
    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    #@0
    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@d
    .line 2569
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 1675
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@9
    move-result-object v0

    #@a
    .line 1676
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    #@c
    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    #@12
    .line 1677
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@15
    .line 1674
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1550
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v3, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1552
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1553
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "cannot apply policy to UID "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 1556
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 1557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 1558
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    #@36
    .line 1559
    if-eq v0, p2, :cond_1

    #@38
    .line 1560
    const/4 v1, 0x1

    #@39
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    :cond_1
    monitor-exit v2

    #@3d
    .line 1549
    return-void

    #@3e
    .line 1556
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v2

    #@40
    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    #@0
    .prologue
    .line 363
    const-string/jumbo v0, "missing IConnectivityManager"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/net/IConnectivityManager;

    #@9
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    #@b
    .line 362
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    #@0
    .prologue
    .line 367
    const-string/jumbo v0, "missing INotificationManager"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/INotificationManager;

    #@9
    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@b
    .line 366
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1894
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v12, "android.permission.DUMP"

    #@5
    const-string/jumbo v13, "NetworkPolicy"

    #@8
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1896
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v11, "  "

    #@10
    move-object/from16 v0, p2

    #@12
    invoke-direct {v3, v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@15
    .line 1898
    .local v3, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    #@17
    move-object/from16 v0, p3

    #@19
    array-length v11, v0

    #@1a
    invoke-direct {v2, v11}, Landroid/util/ArraySet;-><init>(I)V

    #@1d
    .line 1899
    .local v2, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@1e
    move-object/from16 v0, p3

    #@20
    array-length v12, v0

    #@21
    :goto_0
    if-ge v11, v12, :cond_0

    #@23
    aget-object v1, p3, v11

    #@25
    .line 1900
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    .line 1899
    add-int/lit8 v11, v11, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1903
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v12

    #@2e
    .line 1904
    :try_start_0
    const-string/jumbo v11, "--unsnooze"

    #@31
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v11

    #@35
    if-eqz v11, :cond_2

    #@37
    .line 1905
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@3c
    move-result v11

    #@3d
    add-int/lit8 v4, v11, -0x1

    #@3f
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    #@41
    .line 1906
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@43
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v11

    #@47
    check-cast v11, Landroid/net/NetworkPolicy;

    #@49
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->clearSnooze()V

    #@4c
    .line 1905
    add-int/lit8 v4, v4, -0x1

    #@4e
    goto :goto_1

    #@4f
    .line 1909
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@52
    .line 1910
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@55
    .line 1911
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@58
    .line 1912
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@5b
    .line 1913
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@5e
    .line 1915
    const-string/jumbo v11, "Cleared snooze timestamps"

    #@61
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    monitor-exit v12

    #@65
    .line 1916
    return-void

    #@66
    .line 1919
    .end local v4    # "i":I
    :cond_2
    :try_start_1
    const-string/jumbo v11, "System ready: "

    #@69
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@6c
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@6e
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@71
    .line 1920
    const-string/jumbo v11, "Restrict background: "

    #@74
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@77
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@79
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@7c
    .line 1921
    const-string/jumbo v11, "Restrict power: "

    #@7f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@82
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@84
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@87
    .line 1922
    const-string/jumbo v11, "Device idle: "

    #@8a
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@8d
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@8f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@92
    .line 1923
    const-string/jumbo v11, "Network policies:"

    #@95
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 1924
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9b
    .line 1925
    const/4 v4, 0x0

    #@9c
    .restart local v4    # "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@9e
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@a1
    move-result v11

    #@a2
    if-ge v4, v11, :cond_3

    #@a4
    .line 1926
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@a6
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a9
    move-result-object v11

    #@aa
    check-cast v11, Landroid/net/NetworkPolicy;

    #@ac
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    #@af
    move-result-object v11

    #@b0
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b3
    .line 1925
    add-int/lit8 v4, v4, 0x1

    #@b5
    goto :goto_2

    #@b6
    .line 1928
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@b9
    .line 1930
    const-string/jumbo v11, "Metered ifaces: "

    #@bc
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@bf
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@c1
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@c4
    move-result-object v11

    #@c5
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@c8
    .line 1932
    const-string/jumbo v11, "Policy for UIDs:"

    #@cb
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ce
    .line 1933
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@d1
    .line 1934
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d3
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    #@d6
    move-result v8

    #@d7
    .line 1935
    .local v8, "size":I
    const/4 v4, 0x0

    #@d8
    :goto_3
    if-ge v4, v8, :cond_4

    #@da
    .line 1936
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@dc
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@df
    move-result v10

    #@e0
    .line 1937
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@e2
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e5
    move-result v6

    #@e6
    .line 1938
    .local v6, "policy":I
    const-string/jumbo v11, "UID="

    #@e9
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@ec
    .line 1939
    invoke-virtual {v3, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@ef
    .line 1940
    const-string/jumbo v11, " policy="

    #@f2
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f5
    .line 1941
    invoke-static {v3, v6}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    #@f8
    .line 1942
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@fb
    .line 1935
    add-int/lit8 v4, v4, 0x1

    #@fd
    goto :goto_3

    #@fe
    .line 1944
    .end local v6    # "policy":I
    .end local v10    # "uid":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@101
    .line 1946
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@103
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@106
    move-result v8

    #@107
    .line 1947
    if-lez v8, :cond_6

    #@109
    .line 1948
    const-string/jumbo v11, "Power save whitelist (except idle) app ids:"

    #@10c
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@10f
    .line 1949
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@112
    .line 1950
    const/4 v4, 0x0

    #@113
    :goto_4
    if-ge v4, v8, :cond_5

    #@115
    .line 1951
    const-string/jumbo v11, "UID="

    #@118
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@11b
    .line 1952
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@11d
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@120
    move-result v11

    #@121
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@124
    .line 1953
    const-string/jumbo v11, ": "

    #@127
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@12a
    .line 1954
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@12c
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@12f
    move-result v11

    #@130
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    #@133
    .line 1955
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@136
    .line 1950
    add-int/lit8 v4, v4, 0x1

    #@138
    goto :goto_4

    #@139
    .line 1957
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@13c
    .line 1960
    :cond_6
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@13e
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@141
    move-result v8

    #@142
    .line 1961
    if-lez v8, :cond_8

    #@144
    .line 1962
    const-string/jumbo v11, "Power save whitelist app ids:"

    #@147
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@14a
    .line 1963
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@14d
    .line 1964
    const/4 v4, 0x0

    #@14e
    :goto_5
    if-ge v4, v8, :cond_7

    #@150
    .line 1965
    const-string/jumbo v11, "UID="

    #@153
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@156
    .line 1966
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@158
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@15b
    move-result v11

    #@15c
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@15f
    .line 1967
    const-string/jumbo v11, ": "

    #@162
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@165
    .line 1968
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@167
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@16a
    move-result v11

    #@16b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    #@16e
    .line 1969
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@171
    .line 1964
    add-int/lit8 v4, v4, 0x1

    #@173
    goto :goto_5

    #@174
    .line 1971
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@177
    .line 1974
    :cond_8
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@179
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@17c
    .line 1975
    .local v5, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@17e
    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    #@181
    .line 1976
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@183
    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    #@186
    .line 1978
    const-string/jumbo v11, "Status for known UIDs:"

    #@189
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@18c
    .line 1979
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@18f
    .line 1980
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@192
    move-result v8

    #@193
    .line 1981
    const/4 v4, 0x0

    #@194
    :goto_6
    if-ge v4, v8, :cond_b

    #@196
    .line 1982
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@199
    move-result v10

    #@19a
    .line 1983
    .restart local v10    # "uid":I
    const-string/jumbo v11, "UID="

    #@19d
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1a0
    .line 1984
    invoke-virtual {v3, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1a3
    .line 1986
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@1a5
    const/16 v13, 0x10

    #@1a7
    invoke-virtual {v11, v10, v13}, Landroid/util/SparseIntArray;->get(II)I

    #@1aa
    move-result v9

    #@1ab
    .line 1987
    .local v9, "state":I
    const-string/jumbo v11, " state="

    #@1ae
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1b1
    .line 1988
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1b4
    .line 1989
    const/4 v11, 0x2

    #@1b5
    if-gt v9, v11, :cond_9

    #@1b7
    const-string/jumbo v11, " (fg)"

    #@1ba
    :goto_7
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1bd
    .line 1991
    const-string/jumbo v11, " rules="

    #@1c0
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1c3
    .line 1992
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@1c5
    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@1c8
    move-result v7

    #@1c9
    .line 1993
    .local v7, "rulesIndex":I
    if-gez v7, :cond_a

    #@1cb
    .line 1994
    const-string/jumbo v11, "UNKNOWN"

    #@1ce
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 1999
    :goto_8
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1d4
    .line 1981
    add-int/lit8 v4, v4, 0x1

    #@1d6
    goto :goto_6

    #@1d7
    .line 1989
    .end local v7    # "rulesIndex":I
    :cond_9
    const-string/jumbo v11, " (bg)"

    #@1da
    goto :goto_7

    #@1db
    .line 1996
    .restart local v7    # "rulesIndex":I
    :cond_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@1dd
    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@1e0
    move-result v11

    #@1e1
    invoke-static {v3, v11}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e4
    goto :goto_8

    #@1e5
    .line 1903
    .end local v4    # "i":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v7    # "rulesIndex":I
    .end local v8    # "size":I
    .end local v9    # "state":I
    .end local v10    # "uid":I
    :catchall_0
    move-exception v11

    #@1e6
    monitor-exit v12

    #@1e7
    throw v11

    #@1e8
    .line 2001
    .restart local v4    # "i":I
    .restart local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v8    # "size":I
    :cond_b
    :try_start_2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1eb
    monitor-exit v12

    #@1ec
    .line 1893
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2582
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v7, "NetworkPolicy"

    #@9
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2584
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@e
    const-string/jumbo v6, "no_network_reset"

    #@11
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 2585
    return-void

    #@18
    .line 2589
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    #@21
    move-result-object v0

    #@22
    .line 2590
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@25
    move-result-object v2

    #@26
    .line 2591
    .local v2, "template":Landroid/net/NetworkTemplate;
    array-length v6, v0

    #@27
    move v4, v5

    #@28
    :goto_0
    if-ge v4, v6, :cond_2

    #@2a
    aget-object v1, v0, v4

    #@2c
    .line 2592
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2e
    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_1

    #@34
    .line 2593
    const-wide/16 v8, -0x1

    #@36
    iput-wide v8, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    #@38
    .line 2594
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    #@3a
    .line 2595
    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    #@3d
    .line 2591
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 2598
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@43
    .line 2601
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    #@46
    .line 2603
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@48
    const-string/jumbo v6, "no_control_apps"

    #@4b
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@4e
    move-result v4

    #@4f
    if-nez v4, :cond_3

    #@51
    .line 2605
    const/4 v4, 0x1

    #@52
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    #@55
    move-result-object v6

    #@56
    array-length v7, v6

    #@57
    move v4, v5

    #@58
    :goto_1
    if-ge v4, v7, :cond_3

    #@5a
    aget v3, v6, v4

    #@5c
    .line 2606
    .local v3, "uid":I
    invoke-virtual {p0, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    #@5f
    .line 2605
    add-int/lit8 v4, v4, 0x1

    #@61
    goto :goto_1

    #@62
    .line 2581
    .end local v3    # "uid":I
    :cond_3
    return-void
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1682
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    #@6
    const-string/jumbo v6, "NetworkPolicy"

    #@9
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1684
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@11
    const-string/jumbo v6, "NetworkPolicy"

    #@14
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1696
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@19
    monitor-enter v5

    #@1a
    .line 1697
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v3

    #@20
    .line 1698
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    #@22
    .line 1699
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@25
    .line 1700
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/net/NetworkPolicy;

    #@2d
    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 1699
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1687
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    #@33
    .line 1688
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@35
    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    #@38
    const-string/jumbo v6, "NetworkPolicy"

    #@3b
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 1690
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@43
    move-result v5

    #@44
    const/16 v6, 0x33

    #@46
    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_0

    #@4c
    .line 1692
    new-array v4, v7, [Landroid/net/NetworkPolicy;

    #@4e
    return-object v4

    #@4f
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "i":I
    .restart local v2    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v3    # "size":I
    :cond_1
    monitor-exit v5

    #@50
    .line 1702
    return-object v2

    #@51
    .line 1696
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@52
    monitor-exit v5

    #@53
    throw v4
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 1826
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 1832
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v2

    #@13
    .line 1834
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1832
    return-object v2

    #@17
    .line 1833
    :catchall_0
    move-exception v2

    #@18
    .line 1834
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1833
    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    #@0
    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1790
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 1791
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v0

    #@11
    return v1

    #@12
    .line 1790
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1596
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1597
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 1596
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    #@0
    .prologue
    .line 1603
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v6, "NetworkPolicy"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1605
    const/4 v4, 0x0

    #@c
    new-array v3, v4, [I

    #@e
    .line 1606
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@10
    monitor-enter v5

    #@11
    .line 1607
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@17
    move-result v4

    #@18
    if-ge v0, v4, :cond_1

    #@1a
    .line 1608
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1f
    move-result v1

    #@20
    .line 1609
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@22
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@25
    move-result v2

    #@26
    .line 1610
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    #@28
    .line 1611
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v3

    #@2c
    .line 1607
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    #@30
    .line 1615
    return-object v3

    #@31
    .line 1606
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1869
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@6
    move-result-object v0

    #@7
    .line 1872
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 1873
    return v4

    #@e
    .line 1877
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@10
    monitor-enter v3

    #@11
    .line 1878
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3

    #@16
    .line 1881
    if-eqz v1, :cond_1

    #@18
    .line 1882
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    #@1a
    return v3

    #@1b
    .line 1877
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    #@1c
    monitor-exit v3

    #@1d
    throw v4

    #@1e
    .line 1884
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@20
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    #@23
    move-result v2

    #@24
    .line 1885
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_2

    #@2a
    const/4 v3, 0x6

    #@2b
    if-ne v2, v3, :cond_3

    #@2d
    .line 1886
    :cond_2
    return v4

    #@2e
    .line 1888
    :cond_3
    const/4 v3, 0x0

    #@2f
    return v3
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2009
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 2010
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    monitor-exit v0

    #@13
    return v1

    #@14
    .line 2009
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method isUidForegroundLocked(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2016
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@7
    const/16 v2, 0x10

    #@9
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@c
    move-result v1

    #@d
    .line 2017
    const/4 v2, 0x2

    #@e
    .line 2016
    if-gt v1, v2, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    #@0
    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@2
    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    #@5
    move-result-wide v0

    #@6
    const-wide/32 v2, 0x5265c00

    #@9
    cmp-long v0, v0, v2

    #@b
    if-lez v0, :cond_0

    #@d
    .line 2532
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@f
    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@12
    .line 2530
    :cond_0
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@3
    .line 1743
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 1744
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 1746
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/net/NetworkPolicy;

    #@12
    .line 1747
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    #@14
    .line 1748
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "unable to find policy for "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1744
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 1751
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@34
    .line 1759
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v5, "unexpected type"

    #@39
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 1753
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@3f
    .line 1762
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@42
    .line 1763
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@45
    .line 1764
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@48
    .line 1765
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@4b
    .line 1766
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit v4

    #@4f
    .line 1741
    return-void

    #@50
    .line 1756
    :pswitch_1
    :try_start_2
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 1751
    nop

    #@54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistLocked()V
    .locals 3

    #@0
    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    #@5
    move-result v0

    #@6
    .line 413
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 414
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 415
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@14
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    #@17
    .line 413
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 411
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1647
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@10
    .line 1643
    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1625
    new-array v2, v3, [I

    #@3
    .line 1626
    .local v2, "uids":[I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@6
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@9
    move-result v4

    #@a
    if-ge v0, v4, :cond_1

    #@c
    .line 1627
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@e
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@11
    move-result v1

    #@12
    .line 1628
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@15
    move-result v4

    #@16
    if-ne v4, p1, :cond_0

    #@18
    .line 1629
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@1b
    move-result-object v2

    #@1c
    .line 1626
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1633
    .end local v1    # "uid":I
    :cond_1
    array-length v4, v2

    #@20
    if-lez v4, :cond_3

    #@22
    .line 1634
    array-length v4, v2

    #@23
    :goto_1
    if-ge v3, v4, :cond_2

    #@25
    aget v1, v2, v3

    #@27
    .line 1635
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@29
    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->delete(I)V

    #@2c
    .line 1636
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@2f
    .line 1634
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_1

    #@32
    .line 1638
    .end local v1    # "uid":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@35
    .line 1622
    :cond_3
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1567
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v3, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1569
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1570
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "cannot apply policy to UID "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 1573
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 1574
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 1575
    .local v0, "oldPolicy":I
    not-int v1, p2

    #@36
    and-int p2, v0, v1

    #@38
    .line 1576
    if-eq v0, p2, :cond_1

    #@3a
    .line 1577
    const/4 v1, 0x1

    #@3b
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    :cond_1
    monitor-exit v2

    #@3f
    .line 1566
    return-void

    #@40
    .line 1573
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method removeUidStateLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 2038
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@4
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@7
    move-result v0

    #@8
    .line 2039
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@a
    .line 2040
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@f
    move-result v1

    #@10
    .line 2041
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@12
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@15
    .line 2042
    if-eq v1, v3, :cond_0

    #@17
    .line 2043
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    #@1a
    .line 2045
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2046
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    #@21
    .line 2037
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1799
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1800
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 1801
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@14
    .line 1802
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 1803
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    #@1b
    .line 1805
    :cond_0
    if-eqz p1, :cond_2

    #@1d
    .line 1806
    const-string/jumbo v0, "net"

    #@20
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_1
    :goto_0
    monitor-exit v1

    #@24
    .line 1796
    return-void

    #@25
    .line 1808
    :cond_2
    :try_start_1
    const-string/jumbo v0, "net"

    #@28
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 1799
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1664
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@e
    .line 1665
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1666
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    #@14
    .line 1667
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@17
    .line 1668
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@1a
    .line 1669
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@1d
    .line 1670
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v1

    #@21
    .line 1661
    return-void

    #@22
    .line 1665
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public setRestrictBackground(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1772
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    #@7
    const-string/jumbo v4, "NetworkPolicy"

    #@a
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1774
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@10
    .line 1775
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@12
    monitor-enter v2

    #@13
    .line 1776
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@15
    .line 1777
    const/4 v3, 0x1

    #@16
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    #@19
    .line 1778
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@1c
    .line 1779
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    .line 1782
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@22
    if-eqz p1, :cond_0

    #@24
    :goto_0
    const/4 v3, 0x6

    #@25
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@2c
    .line 1771
    return-void

    #@2d
    .line 1775
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v2

    #@2f
    throw v0

    #@30
    :cond_0
    move v0, v1

    #@31
    .line 1782
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1529
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1531
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "cannot apply policy to UID "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 1535
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v4

    #@2e
    .line 1536
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    move-result-wide v2

    #@32
    .line 1538
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@34
    const/4 v5, 0x0

    #@35
    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    #@38
    move-result v0

    #@39
    .line 1539
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    #@3b
    .line 1540
    const/4 v1, 0x1

    #@3c
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 1543
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    monitor-exit v4

    #@43
    .line 1528
    return-void

    #@44
    .line 1542
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@45
    .line 1543
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1542
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    .line 1535
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    #@4a
    monitor-exit v4

    #@4b
    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 1731
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 1735
    .local v0, "token":J
    const/4 v2, 0x2

    #@10
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1730
    return-void

    #@17
    .line 1736
    :catchall_0
    move-exception v2

    #@18
    .line 1737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1736
    throw v2
.end method

.method public systemReady()V
    .locals 22

    #@0
    .prologue
    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    #@3
    move-result v17

    #@4
    if-nez v17, :cond_0

    #@6
    .line 422
    const-string/jumbo v17, "NetworkPolicy"

    #@9
    const-string/jumbo v18, "bandwidth controls disabled, unable to enforce policy"

    #@c
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 423
    return-void

    #@10
    .line 426
    :cond_0
    const-class v17, Landroid/app/usage/UsageStatsManagerInternal;

    #@12
    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@15
    move-result-object v17

    #@16
    check-cast v17, Landroid/app/usage/UsageStatsManagerInternal;

    #@18
    move-object/from16 v0, v17

    #@1a
    move-object/from16 v1, p0

    #@1c
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@1e
    .line 428
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@22
    move-object/from16 v18, v0

    #@24
    monitor-enter v18

    #@25
    .line 429
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    #@28
    .line 430
    const-class v17, Landroid/os/PowerManagerInternal;

    #@2a
    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2d
    move-result-object v17

    #@2e
    check-cast v17, Landroid/os/PowerManagerInternal;

    #@30
    move-object/from16 v0, v17

    #@32
    move-object/from16 v1, p0

    #@34
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@36
    .line 431
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@3a
    move-object/from16 v17, v0

    #@3c
    .line 432
    new-instance v19, Lcom/android/server/net/NetworkPolicyManagerService$16;

    #@3e
    move-object/from16 v0, v19

    #@40
    move-object/from16 v1, p0

    #@42
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@45
    .line 431
    move-object/from16 v0, v17

    #@47
    move-object/from16 v1, v19

    #@49
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    #@4c
    .line 443
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@50
    move-object/from16 v17, v0

    #@52
    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    #@55
    move-result v17

    #@56
    move/from16 v0, v17

    #@58
    move-object/from16 v1, p0

    #@5a
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@5c
    .line 444
    const/16 v17, 0x1

    #@5e
    move/from16 v0, v17

    #@60
    move-object/from16 v1, p0

    #@62
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@64
    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    #@67
    .line 449
    move-object/from16 v0, p0

    #@69
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@6b
    move/from16 v17, v0

    #@6d
    if-nez v17, :cond_1

    #@6f
    move-object/from16 v0, p0

    #@71
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@73
    move/from16 v17, v0

    #@75
    if-nez v17, :cond_1

    #@77
    move-object/from16 v0, p0

    #@79
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@7b
    move/from16 v17, v0

    #@7d
    if-eqz v17, :cond_2

    #@7f
    .line 450
    :cond_1
    const/16 v17, 0x0

    #@81
    move-object/from16 v0, p0

    #@83
    move/from16 v1, v17

    #@85
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    #@88
    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8b
    :goto_0
    monitor-exit v18

    #@8c
    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    #@8f
    .line 462
    :try_start_1
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@93
    move-object/from16 v17, v0

    #@95
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    #@99
    move-object/from16 v18, v0

    #@9b
    invoke-interface/range {v17 .. v18}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;)V

    #@9e
    .line 463
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@a2
    move-object/from16 v17, v0

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@a8
    move-object/from16 v18, v0

    #@aa
    invoke-interface/range {v17 .. v18}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@ad
    .line 471
    :goto_1
    new-instance v10, Landroid/content/IntentFilter;

    #@af
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    #@b2
    .line 472
    .local v10, "screenFilter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.SCREEN_ON"

    #@b5
    move-object/from16 v0, v17

    #@b7
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ba
    .line 473
    const-string/jumbo v17, "android.intent.action.SCREEN_OFF"

    #@bd
    move-object/from16 v0, v17

    #@bf
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c2
    .line 474
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@c6
    move-object/from16 v17, v0

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    #@cc
    move-object/from16 v18, v0

    #@ce
    move-object/from16 v0, v17

    #@d0
    move-object/from16 v1, v18

    #@d2
    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@d5
    .line 477
    new-instance v14, Landroid/content/IntentFilter;

    #@d7
    .line 478
    const-string/jumbo v17, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    #@da
    .line 477
    move-object/from16 v0, v17

    #@dc
    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@df
    .line 479
    .local v14, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@e3
    move-object/from16 v17, v0

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    #@e9
    move-object/from16 v18, v0

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@ef
    move-object/from16 v19, v0

    #@f1
    const/16 v20, 0x0

    #@f3
    move-object/from16 v0, v17

    #@f5
    move-object/from16 v1, v18

    #@f7
    move-object/from16 v2, v20

    #@f9
    move-object/from16 v3, v19

    #@fb
    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@fe
    .line 482
    const-class v17, Lcom/android/server/DeviceIdleController$LocalService;

    #@100
    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@103
    move-result-object v7

    #@104
    check-cast v7, Lcom/android/server/DeviceIdleController$LocalService;

    #@106
    .line 483
    .local v7, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    #@10a
    move-object/from16 v17, v0

    #@10c
    move-object/from16 v0, v17

    #@10e
    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    #@111
    .line 486
    new-instance v6, Landroid/content/IntentFilter;

    #@113
    const-string/jumbo v17, "android.net.conn.CONNECTIVITY_CHANGE"

    #@116
    move-object/from16 v0, v17

    #@118
    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@11b
    .line 487
    .local v6, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@11f
    move-object/from16 v17, v0

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@125
    move-object/from16 v18, v0

    #@127
    const-string/jumbo v19, "android.permission.CONNECTIVITY_INTERNAL"

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@12e
    move-object/from16 v20, v0

    #@130
    move-object/from16 v0, v17

    #@132
    move-object/from16 v1, v18

    #@134
    move-object/from16 v2, v19

    #@136
    move-object/from16 v3, v20

    #@138
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@13b
    .line 490
    new-instance v9, Landroid/content/IntentFilter;

    #@13d
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    #@140
    .line 491
    .local v9, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.PACKAGE_ADDED"

    #@143
    move-object/from16 v0, v17

    #@145
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@148
    .line 492
    const-string/jumbo v17, "package"

    #@14b
    move-object/from16 v0, v17

    #@14d
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@150
    .line 493
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@154
    move-object/from16 v17, v0

    #@156
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@15a
    move-object/from16 v18, v0

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@160
    move-object/from16 v19, v0

    #@162
    const/16 v20, 0x0

    #@164
    move-object/from16 v0, v17

    #@166
    move-object/from16 v1, v18

    #@168
    move-object/from16 v2, v20

    #@16a
    move-object/from16 v3, v19

    #@16c
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@16f
    .line 496
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@173
    move-object/from16 v17, v0

    #@175
    .line 497
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@179
    move-object/from16 v18, v0

    #@17b
    new-instance v19, Landroid/content/IntentFilter;

    #@17d
    const-string/jumbo v20, "android.intent.action.UID_REMOVED"

    #@180
    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@183
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@187
    move-object/from16 v20, v0

    #@189
    const/16 v21, 0x0

    #@18b
    .line 496
    move-object/from16 v0, v17

    #@18d
    move-object/from16 v1, v18

    #@18f
    move-object/from16 v2, v19

    #@191
    move-object/from16 v3, v21

    #@193
    move-object/from16 v4, v20

    #@195
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@198
    .line 500
    new-instance v13, Landroid/content/IntentFilter;

    #@19a
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    #@19d
    .line 501
    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.USER_ADDED"

    #@1a0
    move-object/from16 v0, v17

    #@1a2
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1a5
    .line 502
    const-string/jumbo v17, "android.intent.action.USER_REMOVED"

    #@1a8
    move-object/from16 v0, v17

    #@1aa
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1ad
    .line 503
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1b1
    move-object/from16 v17, v0

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@1b7
    move-object/from16 v18, v0

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1bd
    move-object/from16 v19, v0

    #@1bf
    const/16 v20, 0x0

    #@1c1
    move-object/from16 v0, v17

    #@1c3
    move-object/from16 v1, v18

    #@1c5
    move-object/from16 v2, v20

    #@1c7
    move-object/from16 v3, v19

    #@1c9
    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1cc
    .line 506
    new-instance v12, Landroid/content/IntentFilter;

    #@1ce
    const-string/jumbo v17, "com.android.server.action.NETWORK_STATS_UPDATED"

    #@1d1
    move-object/from16 v0, v17

    #@1d3
    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1d6
    .line 507
    .local v12, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1da
    move-object/from16 v17, v0

    #@1dc
    .line 508
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    #@1e0
    move-object/from16 v18, v0

    #@1e2
    const-string/jumbo v19, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1e9
    move-object/from16 v20, v0

    #@1eb
    .line 507
    move-object/from16 v0, v17

    #@1ed
    move-object/from16 v1, v18

    #@1ef
    move-object/from16 v2, v19

    #@1f1
    move-object/from16 v3, v20

    #@1f3
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1f6
    .line 511
    new-instance v5, Landroid/content/IntentFilter;

    #@1f8
    const-string/jumbo v17, "com.android.server.net.action.ALLOW_BACKGROUND"

    #@1fb
    move-object/from16 v0, v17

    #@1fd
    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@200
    .line 512
    .local v5, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@204
    move-object/from16 v17, v0

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    #@20a
    move-object/from16 v18, v0

    #@20c
    const-string/jumbo v19, "android.permission.MANAGE_NETWORK_POLICY"

    #@20f
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@213
    move-object/from16 v20, v0

    #@215
    move-object/from16 v0, v17

    #@217
    move-object/from16 v1, v18

    #@219
    move-object/from16 v2, v19

    #@21b
    move-object/from16 v3, v20

    #@21d
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@220
    .line 515
    new-instance v11, Landroid/content/IntentFilter;

    #@222
    const-string/jumbo v17, "com.android.server.net.action.SNOOZE_WARNING"

    #@225
    move-object/from16 v0, v17

    #@227
    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@22a
    .line 516
    .local v11, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@22e
    move-object/from16 v17, v0

    #@230
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    #@234
    move-object/from16 v18, v0

    #@236
    .line 517
    const-string/jumbo v19, "android.permission.MANAGE_NETWORK_POLICY"

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@23d
    move-object/from16 v20, v0

    #@23f
    .line 516
    move-object/from16 v0, v17

    #@241
    move-object/from16 v1, v18

    #@243
    move-object/from16 v2, v19

    #@245
    move-object/from16 v3, v20

    #@247
    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@24a
    .line 520
    new-instance v15, Landroid/content/IntentFilter;

    #@24c
    const-string/jumbo v17, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@24f
    move-object/from16 v0, v17

    #@251
    invoke-direct {v15, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@254
    .line 521
    .local v15, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@256
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@258
    move-object/from16 v17, v0

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    #@25e
    move-object/from16 v18, v0

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@264
    move-object/from16 v19, v0

    #@266
    const/16 v20, 0x0

    #@268
    move-object/from16 v0, v17

    #@26a
    move-object/from16 v1, v18

    #@26c
    move-object/from16 v2, v20

    #@26e
    move-object/from16 v3, v19

    #@270
    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@273
    .line 524
    new-instance v16, Landroid/content/IntentFilter;

    #@275
    .line 525
    const-string/jumbo v17, "android.net.wifi.STATE_CHANGE"

    #@278
    .line 524
    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@27b
    .line 526
    .local v16, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@27f
    move-object/from16 v17, v0

    #@281
    move-object/from16 v0, p0

    #@283
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    #@285
    move-object/from16 v18, v0

    #@287
    move-object/from16 v0, p0

    #@289
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@28b
    move-object/from16 v19, v0

    #@28d
    const/16 v20, 0x0

    #@28f
    move-object/from16 v0, v17

    #@291
    move-object/from16 v1, v18

    #@293
    move-object/from16 v2, v16

    #@295
    move-object/from16 v3, v20

    #@297
    move-object/from16 v4, v19

    #@299
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@29c
    .line 528
    move-object/from16 v0, p0

    #@29e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@2a0
    move-object/from16 v17, v0

    #@2a2
    new-instance v18, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    #@2a4
    const/16 v19, 0x0

    #@2a6
    move-object/from16 v0, v18

    #@2a8
    move-object/from16 v1, p0

    #@2aa
    move-object/from16 v2, v19

    #@2ac
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V

    #@2af
    invoke-virtual/range {v17 .. v18}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@2b2
    .line 420
    return-void

    #@2b3
    .line 455
    .end local v5    # "allowFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v9    # "packageFilter":Landroid/content/IntentFilter;
    .end local v10    # "screenFilter":Landroid/content/IntentFilter;
    .end local v11    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v12    # "statsFilter":Landroid/content/IntentFilter;
    .end local v13    # "userFilter":Landroid/content/IntentFilter;
    .end local v14    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v15    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v16    # "wifiStateFilter":Landroid/content/IntentFilter;
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b6
    goto/16 :goto_0

    #@2b8
    .line 428
    :catchall_0
    move-exception v17

    #@2b9
    monitor-exit v18

    #@2ba
    throw v17

    #@2bb
    .line 464
    :catch_0
    move-exception v8

    #@2bc
    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1657
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@10
    .line 1653
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 18

    #@0
    .prologue
    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@3
    move-result-wide v8

    #@4
    .line 1077
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    #@6
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v10, v2, -0x1

    #@e
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_4

    #@10
    .line 1078
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v13

    #@18
    check-cast v13, Landroid/net/NetworkPolicy;

    #@1a
    .line 1080
    .local v13, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->limitBytes:J

    #@1c
    const-wide/16 v16, -0x1

    #@1e
    cmp-long v2, v2, v16

    #@20
    if-eqz v2, :cond_0

    #@22
    invoke-virtual {v13}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 1085
    invoke-static {v8, v9, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@2b
    move-result-wide v4

    #@2c
    .line 1086
    .local v4, "start":J
    move-wide v6, v8

    #@2d
    .line 1087
    .local v6, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2f
    move-object/from16 v2, p0

    #@31
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@34
    move-result-wide v14

    #@35
    .line 1090
    .local v14, "totalBytes":J
    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 1091
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@3d
    cmp-long v2, v2, v4

    #@3f
    if-gez v2, :cond_1

    #@41
    const/4 v12, 0x1

    #@42
    .line 1092
    .local v12, "overLimitWithoutSnooze":Z
    :goto_1
    if-eqz v12, :cond_3

    #@44
    const/4 v11, 0x0

    #@45
    .line 1094
    .local v11, "networkEnabled":Z
    :goto_2
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@47
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v2, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    #@4c
    .line 1077
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v14    # "totalBytes":J
    :goto_3
    add-int/lit8 v10, v10, -0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1081
    :cond_0
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@51
    const/4 v3, 0x1

    #@52
    move-object/from16 v0, p0

    #@54
    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    #@57
    goto :goto_3

    #@58
    .line 1091
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v14    # "totalBytes":J
    :cond_1
    const/4 v12, 0x0

    #@59
    .restart local v12    # "overLimitWithoutSnooze":Z
    goto :goto_1

    #@5a
    .line 1090
    .end local v12    # "overLimitWithoutSnooze":Z
    :cond_2
    const/4 v12, 0x0

    #@5b
    .restart local v12    # "overLimitWithoutSnooze":Z
    goto :goto_1

    #@5c
    .line 1092
    :cond_3
    const/4 v11, 0x1

    #@5d
    .restart local v11    # "networkEnabled":Z
    goto :goto_2

    #@5e
    .line 1070
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    :cond_4
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 42

    #@0
    .prologue
    .line 1117
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    #@4
    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v36

    #@8
    .line 1128
    .local v36, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    #@a
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@c
    if-eqz v4, :cond_0

    #@e
    move-object/from16 v0, p0

    #@10
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@12
    if-eqz v4, :cond_3

    #@14
    :cond_0
    const/16 v28, 0x0

    #@16
    .line 1132
    .local v28, "powerSave":Z
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    #@18
    move-object/from16 v0, v36

    #@1a
    array-length v4, v0

    #@1b
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    .line 1133
    .local v11, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v12, Landroid/util/ArraySet;

    #@20
    move-object/from16 v0, v36

    #@22
    array-length v4, v0

    #@23
    invoke-direct {v12, v4}, Landroid/util/ArraySet;-><init>(I)V

    #@26
    .line 1134
    .local v12, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@27
    move-object/from16 v0, v36

    #@29
    array-length v5, v0

    #@2a
    :goto_1
    if-ge v4, v5, :cond_5

    #@2c
    aget-object v35, v36, v4

    #@2e
    .line 1135
    .local v35, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v35

    #@30
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@32
    move-object/from16 v37, v0

    #@34
    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkInfo;->isConnected()Z

    #@37
    move-result v37

    #@38
    if-eqz v37, :cond_4

    #@3a
    .line 1136
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3e
    move-object/from16 v37, v0

    #@40
    move-object/from16 v0, v37

    #@42
    move-object/from16 v1, v35

    #@44
    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@47
    move-result-object v17

    #@48
    .line 1138
    .local v17, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v35

    #@4a
    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@4c
    move-object/from16 v37, v0

    #@4e
    invoke-virtual/range {v37 .. v37}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@51
    move-result-object v10

    #@52
    .line 1139
    .local v10, "baseIface":Ljava/lang/String;
    if-eqz v10, :cond_1

    #@54
    .line 1140
    move-object/from16 v0, v17

    #@56
    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@59
    move-result-object v37

    #@5a
    move-object/from16 v0, v37

    #@5c
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 1141
    if-eqz v28, :cond_1

    #@61
    .line 1142
    invoke-virtual {v12, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@64
    .line 1148
    :cond_1
    move-object/from16 v0, v35

    #@66
    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@68
    move-object/from16 v37, v0

    #@6a
    invoke-virtual/range {v37 .. v37}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@6d
    move-result-object v34

    #@6e
    .line 1149
    .local v34, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v33

    #@72
    .local v33, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v37

    #@76
    if-eqz v37, :cond_4

    #@78
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v32

    #@7c
    check-cast v32, Landroid/net/LinkProperties;

    #@7e
    .line 1150
    .local v32, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@81
    move-result-object v29

    #@82
    .line 1151
    .local v29, "stackedIface":Ljava/lang/String;
    if-eqz v29, :cond_2

    #@84
    .line 1152
    move-object/from16 v0, v29

    #@86
    move-object/from16 v1, v17

    #@88
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@8b
    move-result-object v37

    #@8c
    move-object/from16 v0, v37

    #@8e
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@91
    .line 1153
    if-eqz v28, :cond_2

    #@93
    .line 1154
    move-object/from16 v0, v29

    #@95
    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@98
    goto :goto_2

    #@99
    .line 1118
    .end local v10    # "baseIface":Ljava/lang/String;
    .end local v11    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v12    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "ident":Landroid/net/NetworkIdentity;
    .end local v28    # "powerSave":Z
    .end local v29    # "stackedIface":Ljava/lang/String;
    .end local v32    # "stackedLink":Landroid/net/LinkProperties;
    .end local v33    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v34    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v35    # "state":Landroid/net/NetworkState;
    .end local v36    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v13

    #@9a
    .line 1120
    .local v13, "e":Landroid/os/RemoteException;
    return-void

    #@9b
    .line 1128
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v36    # "states":[Landroid/net/NetworkState;
    :cond_3
    const/16 v28, 0x1

    #@9d
    .restart local v28    # "powerSave":Z
    goto/16 :goto_0

    #@9f
    .line 1134
    .restart local v11    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v12    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "state":Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@a1
    goto :goto_1

    #@a2
    .line 1162
    .end local v35    # "state":Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@a6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@a9
    .line 1163
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@ac
    move-result-object v20

    #@ad
    .line 1164
    .local v20, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@af
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@b1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@b4
    move-result v4

    #@b5
    add-int/lit8 v16, v4, -0x1

    #@b7
    .local v16, "i":I
    :goto_3
    if-ltz v16, :cond_9

    #@b9
    .line 1165
    move-object/from16 v0, p0

    #@bb
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@bd
    move/from16 v0, v16

    #@bf
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c2
    move-result-object v27

    #@c3
    check-cast v27, Landroid/net/NetworkPolicy;

    #@c5
    .line 1167
    .local v27, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    #@c8
    .line 1168
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@cb
    move-result v4

    #@cc
    add-int/lit8 v22, v4, -0x1

    #@ce
    .local v22, "j":I
    :goto_4
    if-ltz v22, :cond_7

    #@d0
    .line 1169
    move/from16 v0, v22

    #@d2
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d5
    move-result-object v18

    #@d6
    check-cast v18, Landroid/util/Pair;

    #@d8
    .line 1170
    .local v18, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v27

    #@da
    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@dc
    move-object/from16 v0, v18

    #@de
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@e0
    check-cast v4, Landroid/net/NetworkIdentity;

    #@e2
    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@e5
    move-result v4

    #@e6
    if-eqz v4, :cond_6

    #@e8
    .line 1171
    move-object/from16 v0, v18

    #@ea
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@ec
    check-cast v4, Ljava/lang/String;

    #@ee
    move-object/from16 v0, v20

    #@f0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f3
    .line 1168
    :cond_6
    add-int/lit8 v22, v22, -0x1

    #@f5
    goto :goto_4

    #@f6
    .line 1175
    .end local v18    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@f9
    move-result v4

    #@fa
    if-lez v4, :cond_8

    #@fc
    .line 1176
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@ff
    move-result v4

    #@100
    new-array v4, v4, [Ljava/lang/String;

    #@102
    move-object/from16 v0, v20

    #@104
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@107
    move-result-object v21

    #@108
    check-cast v21, [Ljava/lang/String;

    #@10a
    .line 1177
    .local v21, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@10c
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@10e
    move-object/from16 v0, v27

    #@110
    move-object/from16 v1, v21

    #@112
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    .line 1164
    .end local v21    # "ifaces":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v16, v16, -0x1

    #@117
    goto :goto_3

    #@118
    .line 1181
    .end local v22    # "j":I
    .end local v27    # "policy":Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v24, 0x7fffffffffffffffL

    #@11d
    .line 1182
    .local v24, "lowestRule":J
    new-instance v26, Landroid/util/ArraySet;

    #@11f
    move-object/from16 v0, v36

    #@121
    array-length v4, v0

    #@122
    move-object/from16 v0, v26

    #@124
    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    #@127
    .line 1186
    .local v26, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@12a
    move-result-wide v8

    #@12b
    .line 1187
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    #@12d
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@12f
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@132
    move-result v4

    #@133
    add-int/lit8 v16, v4, -0x1

    #@135
    :goto_5
    if-ltz v16, :cond_15

    #@137
    .line 1188
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@13b
    move/from16 v0, v16

    #@13d
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@140
    move-result-object v27

    #@141
    check-cast v27, Landroid/net/NetworkPolicy;

    #@143
    .line 1189
    .restart local v27    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@145
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@147
    move/from16 v0, v16

    #@149
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@14c
    move-result-object v21

    #@14d
    check-cast v21, [Ljava/lang/String;

    #@14f
    .line 1193
    .restart local v21    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@152
    move-result v4

    #@153
    if-eqz v4, :cond_d

    #@155
    .line 1194
    move-object/from16 v0, v27

    #@157
    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@15a
    move-result-wide v6

    #@15b
    .line 1195
    .local v6, "start":J
    move-object/from16 v0, v27

    #@15d
    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@15f
    move-object/from16 v4, p0

    #@161
    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@164
    move-result-wide v38

    #@165
    .line 1206
    .local v38, "totalBytes":J
    :goto_6
    move-object/from16 v0, v27

    #@167
    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@169
    const-wide/16 v40, -0x1

    #@16b
    cmp-long v4, v4, v40

    #@16d
    if-eqz v4, :cond_e

    #@16f
    const/4 v15, 0x1

    #@170
    .line 1207
    .local v15, "hasWarning":Z
    :goto_7
    move-object/from16 v0, v27

    #@172
    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@174
    const-wide/16 v40, -0x1

    #@176
    cmp-long v4, v4, v40

    #@178
    if-eqz v4, :cond_f

    #@17a
    const/4 v14, 0x1

    #@17b
    .line 1208
    .local v14, "hasLimit":Z
    :goto_8
    if-nez v14, :cond_a

    #@17d
    move-object/from16 v0, v27

    #@17f
    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    #@181
    if-eqz v4, :cond_12

    #@183
    .line 1210
    :cond_a
    if-nez v14, :cond_10

    #@185
    .line 1213
    const-wide v30, 0x7fffffffffffffffL

    #@18a
    .line 1225
    .local v30, "quotaBytes":J
    :goto_9
    move-object/from16 v0, v21

    #@18c
    array-length v4, v0

    #@18d
    const/4 v5, 0x1

    #@18e
    if-le v4, v5, :cond_b

    #@190
    .line 1227
    const-string/jumbo v4, "NetworkPolicy"

    #@193
    const-string/jumbo v5, "shared quota unsupported; generating rule for each iface"

    #@196
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@199
    .line 1230
    :cond_b
    const/4 v4, 0x0

    #@19a
    move-object/from16 v0, v21

    #@19c
    array-length v5, v0

    #@19d
    :goto_a
    if-ge v4, v5, :cond_12

    #@19f
    aget-object v19, v21, v4

    #@1a1
    .line 1231
    .local v19, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a3
    move-object/from16 v1, v19

    #@1a5
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    #@1a8
    .line 1232
    move-object/from16 v0, p0

    #@1aa
    move-object/from16 v1, v19

    #@1ac
    move-wide/from16 v2, v30

    #@1ae
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    #@1b1
    .line 1233
    move-object/from16 v0, v26

    #@1b3
    move-object/from16 v1, v19

    #@1b5
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1b8
    .line 1234
    if-eqz v28, :cond_c

    #@1ba
    .line 1235
    move-object/from16 v0, v19

    #@1bc
    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@1bf
    .line 1230
    :cond_c
    add-int/lit8 v4, v4, 0x1

    #@1c1
    goto :goto_a

    #@1c2
    .line 1197
    .end local v6    # "start":J
    .end local v14    # "hasLimit":Z
    .end local v15    # "hasWarning":Z
    .end local v19    # "iface":Ljava/lang/String;
    .end local v30    # "quotaBytes":J
    .end local v38    # "totalBytes":J
    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    #@1c7
    .line 1198
    .restart local v6    # "start":J
    const-wide/16 v38, 0x0

    #@1c9
    .restart local v38    # "totalBytes":J
    goto :goto_6

    #@1ca
    .line 1206
    :cond_e
    const/4 v15, 0x0

    #@1cb
    .restart local v15    # "hasWarning":Z
    goto :goto_7

    #@1cc
    .line 1207
    :cond_f
    const/4 v14, 0x0

    #@1cd
    .restart local v14    # "hasLimit":Z
    goto :goto_8

    #@1ce
    .line 1214
    :cond_10
    move-object/from16 v0, v27

    #@1d0
    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@1d2
    cmp-long v4, v4, v6

    #@1d4
    if-ltz v4, :cond_11

    #@1d6
    .line 1217
    const-wide v30, 0x7fffffffffffffffL

    #@1db
    .restart local v30    # "quotaBytes":J
    goto :goto_9

    #@1dc
    .line 1222
    .end local v30    # "quotaBytes":J
    :cond_11
    const-wide/16 v4, 0x1

    #@1de
    move-object/from16 v0, v27

    #@1e0
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@1e2
    move-wide/from16 v40, v0

    #@1e4
    sub-long v40, v40, v38

    #@1e6
    move-wide/from16 v0, v40

    #@1e8
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@1eb
    move-result-wide v30

    #@1ec
    .restart local v30    # "quotaBytes":J
    goto :goto_9

    #@1ed
    .line 1241
    .end local v30    # "quotaBytes":J
    :cond_12
    if-eqz v15, :cond_13

    #@1ef
    move-object/from16 v0, v27

    #@1f1
    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@1f3
    cmp-long v4, v4, v24

    #@1f5
    if-gez v4, :cond_13

    #@1f7
    .line 1242
    move-object/from16 v0, v27

    #@1f9
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@1fb
    move-wide/from16 v24, v0

    #@1fd
    .line 1244
    :cond_13
    if-eqz v14, :cond_14

    #@1ff
    move-object/from16 v0, v27

    #@201
    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@203
    cmp-long v4, v4, v24

    #@205
    if-gez v4, :cond_14

    #@207
    .line 1245
    move-object/from16 v0, v27

    #@209
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@20b
    move-wide/from16 v24, v0

    #@20d
    .line 1187
    :cond_14
    add-int/lit8 v16, v16, -0x1

    #@20f
    goto/16 :goto_5

    #@211
    .line 1249
    .end local v6    # "start":J
    .end local v14    # "hasLimit":Z
    .end local v15    # "hasWarning":Z
    .end local v21    # "ifaces":[Ljava/lang/String;
    .end local v27    # "policy":Landroid/net/NetworkPolicy;
    .end local v38    # "totalBytes":J
    :cond_15
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    #@214
    move-result v4

    #@215
    add-int/lit8 v16, v4, -0x1

    #@217
    :goto_b
    if-ltz v16, :cond_16

    #@219
    .line 1250
    move/from16 v0, v16

    #@21b
    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@21e
    move-result-object v19

    #@21f
    check-cast v19, Ljava/lang/String;

    #@221
    .line 1251
    .restart local v19    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@223
    move-object/from16 v1, v19

    #@225
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    #@228
    .line 1252
    const-wide v4, 0x7fffffffffffffffL

    #@22d
    move-object/from16 v0, p0

    #@22f
    move-object/from16 v1, v19

    #@231
    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    #@234
    .line 1253
    move-object/from16 v0, v26

    #@236
    move-object/from16 v1, v19

    #@238
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@23b
    .line 1249
    add-int/lit8 v16, v16, -0x1

    #@23d
    goto :goto_b

    #@23e
    .line 1256
    .end local v19    # "iface":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    #@240
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@242
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@245
    move-result-object v5

    #@246
    const/16 v37, 0x7

    #@248
    move/from16 v0, v37

    #@24a
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@24d
    move-result-object v4

    #@24e
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@251
    .line 1259
    move-object/from16 v0, p0

    #@253
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@255
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@258
    move-result v4

    #@259
    add-int/lit8 v16, v4, -0x1

    #@25b
    :goto_c
    if-ltz v16, :cond_18

    #@25d
    .line 1260
    move-object/from16 v0, p0

    #@25f
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@261
    move/from16 v0, v16

    #@263
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@266
    move-result-object v19

    #@267
    check-cast v19, Ljava/lang/String;

    #@269
    .line 1261
    .restart local v19    # "iface":Ljava/lang/String;
    move-object/from16 v0, v26

    #@26b
    move-object/from16 v1, v19

    #@26d
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@270
    move-result v4

    #@271
    if-nez v4, :cond_17

    #@273
    .line 1262
    move-object/from16 v0, p0

    #@275
    move-object/from16 v1, v19

    #@277
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    #@27a
    .line 1259
    :cond_17
    add-int/lit8 v16, v16, -0x1

    #@27c
    goto :goto_c

    #@27d
    .line 1265
    .end local v19    # "iface":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v26

    #@27f
    move-object/from16 v1, p0

    #@281
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@283
    .line 1267
    move-object/from16 v0, p0

    #@285
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@287
    move-object/from16 v0, p0

    #@289
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@28b
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@28e
    move-result v5

    #@28f
    new-array v5, v5, [Ljava/lang/String;

    #@291
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@294
    move-result-object v23

    #@295
    check-cast v23, [Ljava/lang/String;

    #@297
    .line 1268
    .local v23, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@299
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@29b
    const/4 v5, 0x2

    #@29c
    move-object/from16 v0, v23

    #@29e
    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a1
    move-result-object v4

    #@2a2
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@2a5
    .line 1112
    return-void
.end method

.method updateNotificationsLocked()V
    .locals 14

    #@0
    .prologue
    .line 778
    new-instance v6, Landroid/util/ArraySet;

    #@2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@4
    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@7
    .line 779
    .local v6, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@9
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@c
    .line 785
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@f
    move-result-wide v8

    #@10
    .line 786
    .local v8, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v0

    #@16
    add-int/lit8 v7, v0, -0x1

    #@18
    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    #@1a
    .line 787
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v10

    #@20
    check-cast v10, Landroid/net/NetworkPolicy;

    #@22
    .line 789
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 786
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 790
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 792
    invoke-static {v8, v9, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@36
    move-result-wide v2

    #@37
    .line 793
    .local v2, "start":J
    move-wide v4, v8

    #@38
    .line 794
    .local v4, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@3a
    move-object v0, p0

    #@3b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@3e
    move-result-wide v12

    #@3f
    .line 796
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 797
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@47
    cmp-long v0, v0, v2

    #@49
    if-ltz v0, :cond_2

    #@4b
    .line 798
    const/4 v0, 0x3

    #@4c
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@4f
    goto :goto_1

    #@50
    .line 800
    :cond_2
    const/4 v0, 0x2

    #@51
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@54
    .line 801
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@56
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    #@59
    goto :goto_1

    #@5a
    .line 805
    :cond_3
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@5c
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    #@5f
    .line 807
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_0

    #@65
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@67
    cmp-long v0, v0, v2

    #@69
    if-gez v0, :cond_0

    #@6b
    .line 808
    const/4 v0, 0x1

    #@6c
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@6f
    goto :goto_1

    #@70
    .line 814
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@72
    if-eqz v0, :cond_5

    #@74
    .line 815
    const-string/jumbo v0, "NetworkPolicy:allowBackground"

    #@77
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    #@7a
    .line 819
    :cond_5
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@7d
    move-result v0

    #@7e
    add-int/lit8 v7, v0, -0x1

    #@80
    :goto_2
    if-ltz v7, :cond_7

    #@82
    .line 820
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@85
    move-result-object v11

    #@86
    check-cast v11, Ljava/lang/String;

    #@88
    .line 821
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@8a
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@8d
    move-result v0

    #@8e
    if-nez v0, :cond_6

    #@90
    .line 822
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    #@93
    .line 819
    :cond_6
    add-int/lit8 v7, v7, -0x1

    #@95
    goto :goto_2

    #@96
    .line 774
    .end local v11    # "tag":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 393
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@6
    move-result v0

    #@7
    .line 394
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 395
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@c
    const/4 v7, 0x0

    #@d
    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    #@10
    .line 394
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 398
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@15
    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    #@18
    move-result-object v4

    #@19
    .line 399
    .local v4, "whitelist":[I
    if-eqz v4, :cond_1

    #@1b
    .line 400
    array-length v6, v4

    #@1c
    :goto_1
    if-ge v5, v6, :cond_1

    #@1e
    aget v3, v4, v5

    #@20
    .line 401
    .local v3, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@22
    const/4 v8, 0x1

    #@23
    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 400
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_1

    #@29
    .line 404
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v1

    #@2a
    .line 390
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 372
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@3
    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    #@6
    move-result-object v2

    #@7
    .line 373
    .local v2, "whitelist":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@9
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    #@c
    .line 374
    if-eqz v2, :cond_0

    #@e
    .line 375
    array-length v5, v2

    #@f
    move v4, v3

    #@10
    :goto_0
    if-ge v4, v5, :cond_0

    #@12
    aget v1, v2, v4

    #@14
    .line 376
    .local v1, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@16
    const/4 v7, 0x1

    #@17
    invoke-virtual {v6, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1a
    .line 375
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 379
    .end local v1    # "uid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@1f
    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    #@22
    move-result-object v2

    #@23
    .line 380
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@25
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    #@28
    .line 381
    if-eqz v2, :cond_1

    #@2a
    .line 382
    array-length v4, v2

    #@2b
    :goto_1
    if-ge v3, v4, :cond_1

    #@2d
    aget v1, v2, v3

    #@2f
    .line 383
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@31
    const/4 v6, 0x1

    #@32
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 382
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1

    #@38
    .line 386
    .end local v1    # "uid":I
    .end local v2    # "whitelist":[I
    :catch_0
    move-exception v0

    #@39
    .line 370
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 2149
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 2151
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v0

    #@c
    .line 2152
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2153
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@1d
    .line 2148
    :goto_0
    return-void

    #@1e
    .line 2155
    :cond_1
    const/4 v1, 0x0

    #@1f
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@22
    goto :goto_0
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2121
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 2122
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@8
    move-result v0

    #@9
    .line 2123
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 2124
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@1b
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@1e
    move-result v1

    #@1f
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    #@22
    move-result v1

    #@23
    .line 2123
    if-eqz v1, :cond_2

    #@25
    .line 2125
    :cond_0
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@28
    .line 2120
    .end local v0    # "appId":I
    :cond_1
    :goto_0
    return-void

    #@29
    .line 2127
    .restart local v0    # "appId":I
    :cond_2
    const/4 v1, 0x0

    #@2a
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@2d
    goto :goto_0
.end method

.method updateRulesForAppIdleLocked()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 2134
    new-instance v3, Landroid/util/SparseIntArray;

    #@4
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    #@7
    .line 2135
    .local v3, "uidRules":Landroid/util/SparseIntArray;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@9
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@c
    move-result-object v5

    #@d
    .line 2136
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@10
    move-result v6

    #@11
    add-int/lit8 v1, v6, -0x1

    #@13
    .local v1, "ui":I
    :goto_0
    if-ltz v1, :cond_2

    #@15
    .line 2137
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/content/pm/UserInfo;

    #@1b
    .line 2138
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@1d
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@1f
    invoke-virtual {v6, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    #@22
    move-result-object v0

    #@23
    .line 2139
    .local v0, "idleUids":[I
    array-length v8, v0

    #@24
    move v6, v7

    #@25
    :goto_1
    if-ge v6, v8, :cond_1

    #@27
    aget v2, v0, v6

    #@29
    .line 2140
    .local v2, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2b
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@2e
    move-result v10

    #@2f
    invoke-virtual {v9, v10, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@32
    move-result v9

    #@33
    if-nez v9, :cond_0

    #@35
    .line 2141
    invoke-virtual {v3, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    #@38
    .line 2139
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 2136
    .end local v2    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2145
    .end local v0    # "idleUids":[I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v11, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    #@41
    .line 2132
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 2

    #@0
    .prologue
    .line 2160
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@2
    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    .line 2161
    .local v0, "enableChain":Z
    :goto_0
    const/4 v1, 0x2

    #@a
    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    #@d
    .line 2159
    return-void

    #@e
    .line 2160
    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x1

    #@f
    .restart local v0    # "enableChain":Z
    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 2090
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@3
    if-eqz v7, :cond_6

    #@5
    .line 2093
    new-instance v4, Landroid/util/SparseIntArray;

    #@7
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    #@a
    .line 2094
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@c
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    .line 2095
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@13
    move-result v7

    #@14
    add-int/lit8 v2, v7, -0x1

    #@16
    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    #@18
    .line 2096
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, Landroid/content/pm/UserInfo;

    #@1e
    .line 2097
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@20
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    #@23
    move-result v7

    #@24
    add-int/lit8 v1, v7, -0x1

    #@26
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@28
    .line 2098
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2a
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_0

    #@30
    .line 2099
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@32
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@35
    move-result v0

    #@36
    .line 2100
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@38
    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@3b
    move-result v3

    #@3c
    .line 2101
    .local v3, "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@3f
    .line 2097
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@41
    goto :goto_1

    #@42
    .line 2104
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@44
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    #@47
    move-result v7

    #@48
    add-int/lit8 v1, v7, -0x1

    #@4a
    :goto_2
    if-ltz v1, :cond_2

    #@4c
    .line 2105
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@4e
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@51
    move-result v0

    #@52
    .line 2106
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@54
    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@57
    move-result v3

    #@58
    .line 2107
    .restart local v3    # "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@5b
    .line 2104
    add-int/lit8 v1, v1, -0x1

    #@5d
    goto :goto_2

    #@5e
    .line 2095
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@60
    goto :goto_0

    #@61
    .line 2110
    .end local v1    # "i":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@63
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    #@66
    move-result v7

    #@67
    add-int/lit8 v1, v7, -0x1

    #@69
    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    #@6b
    .line 2111
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@6d
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@70
    move-result v7

    #@71
    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    #@74
    move-result v7

    #@75
    if-eqz v7, :cond_4

    #@77
    .line 2112
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@79
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@7c
    move-result v7

    #@7d
    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@80
    .line 2110
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@82
    goto :goto_3

    #@83
    .line 2115
    :cond_5
    invoke-direct {p0, v8, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    #@86
    .line 2117
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@88
    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    #@8b
    .line 2089
    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .locals 10
    .param p1, "restrictedNetworksChanged"    # Z

    #@0
    .prologue
    .line 2169
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    .line 2171
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    #@9
    .line 2172
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    #@c
    .line 2175
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@e
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@11
    move-result-object v7

    #@12
    .line 2177
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v8, 0x2200

    #@14
    .line 2176
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    .line 2179
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v6

    #@1c
    .local v6, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_1

    #@22
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Landroid/content/pm/UserInfo;

    #@28
    .line 2180
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_0

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@38
    .line 2181
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    #@3a
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3c
    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    #@3f
    move-result v4

    #@40
    .line 2182
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@43
    goto :goto_0

    #@44
    .line 2187
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "uid":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v8, 0x3f5

    #@46
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@49
    .line 2188
    const/16 v8, 0x3fb

    #@4b
    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@4e
    .line 2191
    if-eqz p1, :cond_2

    #@50
    .line 2192
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@53
    .line 2193
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@56
    .line 2168
    :cond_2
    return-void
.end method

.method updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    #@0
    .prologue
    .line 2198
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v5

    #@6
    .line 2199
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v4

    #@a
    .local v4, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/content/pm/UserInfo;

    #@16
    .line 2200
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@18
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@1b
    move-result v6

    #@1c
    add-int/lit8 v1, v6, -0x1

    #@1e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@20
    .line 2201
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@22
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@25
    move-result v0

    #@26
    .line 2202
    .local v0, "appId":I
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    #@28
    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@2b
    move-result v2

    #@2c
    .line 2203
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    #@2f
    .line 2204
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    #@32
    .line 2200
    add-int/lit8 v1, v1, -0x1

    #@34
    goto :goto_0

    #@35
    .line 2197
    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v2    # "uid":I
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method updateRulesForUidLocked(I)V
    .locals 12
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2236
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    #@4
    move-result v10

    #@5
    if-nez v10, :cond_0

    #@7
    return-void

    #@8
    .line 2240
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@b
    move-result-object v2

    #@c
    .line 2242
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v10, "android.permission.INTERNET"

    #@f
    invoke-interface {v2, v10, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v10

    #@13
    if-eqz v10, :cond_1

    #@15
    .line 2244
    return-void

    #@16
    .line 2246
    :catch_0
    move-exception v1

    #@17
    .line 2249
    :cond_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    #@1c
    move-result v7

    #@1d
    .line 2250
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    #@20
    move-result v6

    #@21
    .line 2254
    .local v6, "uidForeground":Z
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@24
    move-result v0

    #@25
    .line 2255
    .local v0, "appId":I
    const/4 v8, 0x0

    #@26
    .line 2256
    .local v8, "uidRules":I
    if-nez v6, :cond_5

    #@28
    and-int/lit8 v10, v7, 0x1

    #@2a
    if-eqz v10, :cond_5

    #@2c
    .line 2258
    const/4 v8, 0x1

    #@2d
    .line 2276
    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@32
    move-result v4

    #@33
    .line 2278
    .local v4, "oldRules":I
    if-nez v8, :cond_8

    #@35
    .line 2279
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@37
    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@3a
    .line 2285
    :goto_1
    and-int/lit8 v10, v4, 0x1

    #@3c
    if-eqz v10, :cond_9

    #@3e
    const/4 v3, 0x1

    #@3f
    .line 2286
    .local v3, "oldRejectMetered":Z
    :goto_2
    and-int/lit8 v10, v8, 0x1

    #@41
    if-eqz v10, :cond_a

    #@43
    const/4 v5, 0x1

    #@44
    .line 2287
    .local v5, "rejectMetered":Z
    :goto_3
    if-eq v3, v5, :cond_3

    #@46
    .line 2288
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    #@49
    .line 2292
    :cond_3
    if-eq v4, v8, :cond_4

    #@4b
    .line 2293
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@4d
    const/4 v11, 0x1

    #@4e
    invoke-virtual {v10, v11, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    #@55
    .line 2298
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@57
    invoke-interface {v10, p1, v6}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@5a
    .line 2235
    :goto_4
    return-void

    #@5b
    .line 2259
    .end local v3    # "oldRejectMetered":Z
    .end local v4    # "oldRules":I
    .end local v5    # "rejectMetered":Z
    :cond_5
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@5d
    if-eqz v10, :cond_6

    #@5f
    .line 2260
    if-nez v6, :cond_2

    #@61
    .line 2262
    const/4 v8, 0x1

    #@62
    goto :goto_0

    #@63
    .line 2264
    :cond_6
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@65
    if-eqz v10, :cond_2

    #@67
    .line 2265
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@69
    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@6c
    move-result v10

    #@6d
    if-nez v10, :cond_7

    #@6f
    .line 2266
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@71
    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@74
    move-result v9

    #@75
    .line 2267
    :goto_5
    if-nez v9, :cond_2

    #@77
    if-nez v6, :cond_2

    #@79
    .line 2268
    and-int/lit8 v10, v7, 0x2

    #@7b
    if-nez v10, :cond_2

    #@7d
    .line 2272
    const/4 v8, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 2265
    :cond_7
    const/4 v9, 0x1

    #@80
    .local v9, "whitelisted":Z
    goto :goto_5

    #@81
    .line 2281
    .end local v9    # "whitelisted":Z
    .restart local v4    # "oldRules":I
    :cond_8
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@83
    invoke-virtual {v10, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@86
    goto :goto_1

    #@87
    .line 2285
    :cond_9
    const/4 v3, 0x0

    #@88
    .restart local v3    # "oldRejectMetered":Z
    goto :goto_2

    #@89
    .line 2286
    :cond_a
    const/4 v5, 0x0

    #@8a
    .restart local v5    # "rejectMetered":Z
    goto :goto_3

    #@8b
    .line 2299
    :catch_1
    move-exception v1

    #@8c
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method updateRulesForUidStateChangeLocked(III)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 2053
    if-gt p2, v2, :cond_1

    #@3
    const/4 v1, 0x1

    #@4
    .line 2054
    .local v1, "oldForeground":Z
    :goto_0
    if-gt p3, v2, :cond_2

    #@6
    const/4 v0, 0x1

    #@7
    .line 2055
    .local v0, "newForeground":Z
    :goto_1
    if-eq v1, v0, :cond_0

    #@9
    .line 2056
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    #@c
    .line 2052
    :cond_0
    return-void

    #@d
    .line 2053
    .end local v0    # "newForeground":Z
    .end local v1    # "oldForeground":Z
    :cond_1
    const/4 v1, 0x0

    #@e
    .restart local v1    # "oldForeground":Z
    goto :goto_0

    #@f
    .line 2054
    :cond_2
    const/4 v0, 0x0

    #@10
    .restart local v0    # "newForeground":Z
    goto :goto_1
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    #@0
    .prologue
    .line 2025
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2026
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    #@a
    .line 2028
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    .line 2029
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    #@12
    .line 2030
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    #@19
    move-result v1

    #@1a
    .line 2031
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    #@1d
    move-result v2

    #@1e
    .line 2030
    if-eq v1, v2, :cond_0

    #@20
    .line 2032
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    #@23
    .line 2024
    :cond_0
    return-void
.end method

.method writePolicyLocked()V
    .locals 14

    #@0
    .prologue
    .line 1464
    const/4 v1, 0x0

    #@1
    .line 1466
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v1

    #@7
    .line 1468
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 1469
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v10

    #@12
    invoke-interface {v4, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 1470
    const/4 v10, 0x1

    #@16
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v10

    #@1a
    const/4 v11, 0x0

    #@1b
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1e
    .line 1472
    const-string/jumbo v10, "policy-list"

    #@21
    const/4 v11, 0x0

    #@22
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1473
    const-string/jumbo v10, "version"

    #@28
    const/16 v11, 0xa

    #@2a
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2d
    .line 1474
    const-string/jumbo v10, "restrictBackground"

    #@30
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@32
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@35
    .line 1477
    const/4 v2, 0x0

    #@36
    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v10

    #@3c
    if-ge v2, v10, :cond_2

    #@3e
    .line 1478
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Landroid/net/NetworkPolicy;

    #@46
    .line 1479
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v8, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@48
    .line 1481
    .local v8, "template":Landroid/net/NetworkTemplate;
    const-string/jumbo v10, "network-policy"

    #@4b
    const/4 v11, 0x0

    #@4c
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4f
    .line 1482
    const-string/jumbo v10, "networkTemplate"

    #@52
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@55
    move-result v11

    #@56
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@59
    .line 1483
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    .line 1484
    .local v7, "subscriberId":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@5f
    .line 1485
    const-string/jumbo v10, "subscriberId"

    #@62
    const/4 v11, 0x0

    #@63
    invoke-interface {v4, v11, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@66
    .line 1487
    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    .line 1488
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@6c
    .line 1489
    const-string/jumbo v10, "networkId"

    #@6f
    const/4 v11, 0x0

    #@70
    invoke-interface {v4, v11, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@73
    .line 1491
    :cond_1
    const-string/jumbo v10, "cycleDay"

    #@76
    iget v11, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    #@78
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@7b
    .line 1492
    const-string/jumbo v10, "cycleTimezone"

    #@7e
    iget-object v11, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@80
    const/4 v12, 0x0

    #@81
    invoke-interface {v4, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@84
    .line 1493
    const-string/jumbo v10, "warningBytes"

    #@87
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    #@89
    invoke-static {v4, v10, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@8c
    .line 1494
    const-string/jumbo v10, "limitBytes"

    #@8f
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    #@91
    invoke-static {v4, v10, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@94
    .line 1495
    const-string/jumbo v10, "lastWarningSnooze"

    #@97
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@99
    invoke-static {v4, v10, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@9c
    .line 1496
    const-string/jumbo v10, "lastLimitSnooze"

    #@9f
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@a1
    invoke-static {v4, v10, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@a4
    .line 1497
    const-string/jumbo v10, "metered"

    #@a7
    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->metered:Z

    #@a9
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@ac
    .line 1498
    const-string/jumbo v10, "inferred"

    #@af
    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->inferred:Z

    #@b1
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@b4
    .line 1499
    const-string/jumbo v10, "network-policy"

    #@b7
    const/4 v11, 0x0

    #@b8
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bb
    .line 1477
    add-int/lit8 v2, v2, 0x1

    #@bd
    goto/16 :goto_0

    #@bf
    .line 1503
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .end local v7    # "subscriberId":Ljava/lang/String;
    .end local v8    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const/4 v2, 0x0

    #@c0
    :goto_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@c2
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    #@c5
    move-result v10

    #@c6
    if-ge v2, v10, :cond_5

    #@c8
    .line 1504
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@ca
    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@cd
    move-result v9

    #@ce
    .line 1505
    .local v9, "uid":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d0
    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@d3
    move-result v5

    #@d4
    .line 1508
    .local v5, "policy":I
    if-nez v5, :cond_3

    #@d6
    .line 1503
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@d8
    goto :goto_1

    #@d9
    .line 1510
    :cond_3
    const-string/jumbo v10, "uid-policy"

    #@dc
    const/4 v11, 0x0

    #@dd
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e0
    .line 1511
    const-string/jumbo v10, "uid"

    #@e3
    invoke-static {v4, v10, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@e6
    .line 1512
    const-string/jumbo v10, "policy"

    #@e9
    invoke-static {v4, v10, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@ec
    .line 1513
    const-string/jumbo v10, "uid-policy"

    #@ef
    const/4 v11, 0x0

    #@f0
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f3
    goto :goto_2

    #@f4
    .line 1520
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v9    # "uid":I
    :catch_0
    move-exception v0

    #@f5
    .line 1521
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    #@f7
    .line 1522
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@f9
    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@fc
    .line 1461
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    #@fd
    .line 1516
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    :try_start_1
    const-string/jumbo v10, "policy-list"

    #@100
    const/4 v11, 0x0

    #@101
    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@104
    .line 1517
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@107
    .line 1519
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@109
    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@10c
    goto :goto_3
.end method

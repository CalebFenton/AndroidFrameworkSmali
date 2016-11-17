.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$10;,
        Lcom/android/server/net/NetworkPolicyManagerService$11;,
        Lcom/android/server/net/NetworkPolicyManagerService$12;,
        Lcom/android/server/net/NetworkPolicyManagerService$13;,
        Lcom/android/server/net/NetworkPolicyManagerService$14;,
        Lcom/android/server/net/NetworkPolicyManagerService$15;,
        Lcom/android/server/net/NetworkPolicyManagerService$1;,
        Lcom/android/server/net/NetworkPolicyManagerService$2;,
        Lcom/android/server/net/NetworkPolicyManagerService$3;,
        Lcom/android/server/net/NetworkPolicyManagerService$4;,
        Lcom/android/server/net/NetworkPolicyManagerService$5;,
        Lcom/android/server/net/NetworkPolicyManagerService$6;,
        Lcom/android/server/net/NetworkPolicyManagerService$7;,
        Lcom/android/server/net/NetworkPolicyManagerService$8;,
        Lcom/android/server/net/NetworkPolicyManagerService$9;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
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

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESTRICT_BACKGROUND_BLACKLIST_CHANGED:I = 0xc

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RESTRICT_BACKGROUND_WHITELIST_CHANGED:I = 0x9

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

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

.field private mConnectivityListener:Landroid/net/INetworkPolicyListener;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

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

.field private final mPackageMonitor:Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

.field private final mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

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

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

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
.method static synthetic -get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsLocked(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkPolicyManagerService;IZZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "restrictedNetworksChanged"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateLocked(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

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
    .line 382
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
    .line 381
    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    #@12
    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 389
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    #@4
    .line 285
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@b
    .line 296
    new-instance v1, Landroid/util/ArrayMap;

    #@d
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@12
    .line 298
    new-instance v1, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@19
    .line 301
    new-instance v1, Landroid/util/SparseIntArray;

    #@1b
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@20
    .line 303
    new-instance v1, Landroid/util/SparseIntArray;

    #@22
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@27
    .line 305
    new-instance v1, Landroid/util/SparseIntArray;

    #@29
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@2c
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@2e
    .line 306
    new-instance v1, Landroid/util/SparseIntArray;

    #@30
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@33
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@35
    .line 307
    new-instance v1, Landroid/util/SparseIntArray;

    #@37
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@3a
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@3c
    .line 310
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@3e
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@41
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@43
    .line 317
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@45
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@48
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@4a
    .line 324
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@4c
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@4f
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@51
    .line 326
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@53
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@56
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@58
    .line 331
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@5a
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@5d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@5f
    .line 337
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@61
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@64
    .line 336
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@66
    .line 344
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@68
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@6b
    .line 343
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@6d
    .line 347
    new-instance v1, Landroid/util/ArraySet;

    #@6f
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@72
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@74
    .line 349
    new-instance v1, Landroid/util/ArraySet;

    #@76
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@79
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@7b
    .line 352
    new-instance v1, Landroid/util/ArraySet;

    #@7d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@80
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@82
    .line 355
    new-instance v1, Landroid/util/SparseIntArray;

    #@84
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@87
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@89
    .line 361
    new-instance v1, Landroid/os/RemoteCallbackList;

    #@8b
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    #@8e
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@90
    .line 651
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    #@92
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@95
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    #@97
    .line 671
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    #@99
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@9c
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    #@9e
    .line 682
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$3;

    #@a0
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@a3
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    #@a5
    .line 693
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    #@a7
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@aa
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    #@ac
    .line 702
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    #@ae
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@b1
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@b3
    .line 722
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    #@b5
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@b8
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@ba
    .line 740
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    #@bc
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@bf
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@c1
    .line 773
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    #@c3
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@c6
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    #@c8
    .line 791
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    #@ca
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@cd
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    #@cf
    .line 805
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    #@d1
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@d4
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    #@d6
    .line 819
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    #@d8
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@db
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    #@dd
    .line 846
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    #@df
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@e2
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    #@e4
    .line 891
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    #@e6
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@e9
    .line 890
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@eb
    .line 1138
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    #@ed
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@f0
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@f2
    .line 3116
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$15;

    #@f4
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@f7
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@f9
    .line 393
    const-string/jumbo v1, "missing context"

    #@fc
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    move-result-object v1

    #@100
    check-cast v1, Landroid/content/Context;

    #@102
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@104
    .line 394
    const-string/jumbo v1, "missing activityManager"

    #@107
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    move-result-object v1

    #@10b
    check-cast v1, Landroid/app/IActivityManager;

    #@10d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@10f
    .line 395
    const-string/jumbo v1, "missing powerManager"

    #@112
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    move-result-object v1

    #@116
    check-cast v1, Landroid/os/IPowerManager;

    #@118
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    #@11a
    .line 396
    const-string/jumbo v1, "missing networkStats"

    #@11d
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@120
    move-result-object v1

    #@121
    check-cast v1, Landroid/net/INetworkStatsService;

    #@123
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@125
    .line 397
    const-string/jumbo v1, "missing networkManagement"

    #@128
    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    move-result-object v1

    #@12c
    check-cast v1, Landroid/os/INetworkManagementService;

    #@12e
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@130
    .line 399
    const-string/jumbo v1, "deviceidle"

    #@133
    .line 398
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@136
    move-result-object v1

    #@137
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@13a
    move-result-object v1

    #@13b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@13d
    .line 400
    const-string/jumbo v1, "missing TrustedTime"

    #@140
    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@143
    move-result-object v1

    #@144
    check-cast v1, Landroid/util/TrustedTime;

    #@146
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@148
    .line 401
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@14a
    const-string/jumbo v2, "user"

    #@14d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@150
    move-result-object v1

    #@151
    check-cast v1, Landroid/os/UserManager;

    #@153
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@155
    .line 402
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@158
    move-result-object v1

    #@159
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    #@15b
    .line 404
    new-instance v0, Landroid/os/HandlerThread;

    #@15d
    const-string/jumbo v1, "NetworkPolicy"

    #@160
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@163
    .line 405
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@166
    .line 406
    new-instance v1, Landroid/os/Handler;

    #@168
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@16b
    move-result-object v2

    #@16c
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@16e
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@171
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@173
    .line 408
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    #@175
    .line 410
    new-instance v1, Landroid/util/AtomicFile;

    #@177
    new-instance v2, Ljava/io/File;

    #@179
    const-string/jumbo v3, "netpolicy.xml"

    #@17c
    invoke-direct {v2, p7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@17f
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@182
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@184
    .line 412
    const-class v1, Landroid/app/AppOpsManager;

    #@186
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@189
    move-result-object v1

    #@18a
    check-cast v1, Landroid/app/AppOpsManager;

    #@18c
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@18e
    .line 414
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

    #@190
    invoke-direct {v1, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;)V

    #@193
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageMonitor:Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

    #@195
    .line 417
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    #@197
    .line 418
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    #@199
    invoke-direct {v2, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    #@19c
    .line 417
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@19f
    .line 392
    return-void
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsLocked(I)Z
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 468
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@4
    move-result-object v7

    #@5
    .line 469
    .local v7, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v6

    #@b
    .line 470
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    #@e
    move-result-object v0

    #@f
    .line 471
    .local v0, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@10
    .line 472
    .local v2, "changed":Z
    const/4 v4, 0x0

    #@11
    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@14
    move-result v9

    #@15
    if-ge v4, v9, :cond_2

    #@17
    .line 473
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Ljava/lang/String;

    #@1d
    .line 479
    .local v5, "pkg":Ljava/lang/String;
    const/high16 v9, 0x100000

    #@1f
    :try_start_0
    invoke-virtual {v6, v5, v9, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v1

    #@23
    .line 485
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    #@26
    move-result v9

    #@27
    if-nez v9, :cond_1

    #@29
    .line 486
    const-string/jumbo v9, "NetworkPolicy"

    #@2c
    new-instance v10, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v11, "pm.getApplicationInfoAsUser() returned non-privileged app: "

    #@34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v10

    #@40
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 472
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@45
    goto :goto_0

    #@46
    .line 480
    :catch_0
    move-exception v3

    #@47
    .line 482
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "NetworkPolicy"

    #@4a
    new-instance v10, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v11, "No ApplicationInfo for package "

    #@52
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    goto :goto_1

    #@62
    .line 489
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@64
    invoke-static {p1, v9}, Landroid/os/UserHandle;->getUid(II)I

    #@67
    move-result v8

    #@68
    .line 490
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@6a
    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@6d
    .line 495
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@6f
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@72
    move-result v9

    #@73
    if-nez v9, :cond_0

    #@75
    .line 496
    const-string/jumbo v9, "NetworkPolicy"

    #@78
    new-instance v10, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v11, "adding default package "

    #@80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    const-string/jumbo v11, " (uid "

    #@8b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v10

    #@8f
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v10

    #@93
    const-string/jumbo v11, " for user "

    #@96
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v10

    #@9a
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v10

    #@9e
    .line 497
    const-string/jumbo v11, ") to restrict background whitelist"

    #@a1
    .line 496
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v10

    #@a5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v10

    #@a9
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    .line 498
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@ae
    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@b1
    .line 499
    const/4 v2, 0x1

    #@b2
    goto :goto_1

    #@b3
    .line 502
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_2
    return v2
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 3412
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
    .line 3422
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 3423
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    .line 3424
    const-string/jumbo v2, "com.android.systemui"

    #@a
    const-string/jumbo v3, "com.android.systemui.net.NetworkOverLimitActivity"

    #@d
    .line 3423
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 3425
    const/high16 v1, 0x10000000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 3426
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 3427
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1002
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
    .line 3416
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.server.net.action.SNOOZE_WARNING"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3417
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 3418
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 3431
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 3432
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    .line 3433
    const-string/jumbo v2, "com.android.settings"

    #@a
    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    #@d
    .line 3432
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 3434
    const/high16 v1, 0x10000000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 3435
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 3436
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1126
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1127
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@8
    .line 1128
    const/4 v3, 0x0

    #@9
    const/4 v4, -0x1

    #@a
    .line 1127
    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1123
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    #@e
    .line 1129
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
    .line 3445
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v1

    #@4
    .line 3446
    .local v1, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 3447
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x1

    #@c
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@f
    .line 3446
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3444
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 3408
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

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3078
    if-eqz p1, :cond_0

    #@2
    .line 3080
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3077
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3081
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    #@0
    .prologue
    .line 3108
    if-eqz p1, :cond_0

    #@2
    .line 3110
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundBlacklistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3107
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3111
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    #@0
    .prologue
    .line 3088
    if-eqz p1, :cond_0

    #@2
    .line 3090
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3087
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3091
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    #@0
    .prologue
    .line 3098
    if-eqz p1, :cond_0

    #@2
    .line 3100
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundWhitelistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3097
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3101
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    #@0
    .prologue
    .line 3068
    if-eqz p1, :cond_0

    #@2
    .line 3070
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3067
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3071
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enableFirewallChainLocked(IZ)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 3359
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@5
    move-result v2

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 3360
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@d
    move-result v2

    #@e
    if-ne v2, p2, :cond_0

    #@10
    .line 3362
    return-void

    #@11
    .line 3364
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@16
    .line 3366
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@18
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 3358
    :goto_0
    return-void

    #@1c
    .line 3367
    :catch_0
    move-exception v1

    #@1d
    .line 3368
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@20
    const-string/jumbo v3, "problem enable firewall chain"

    #@23
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0

    #@27
    .line 3369
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
    .line 1010
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 1011
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@d
    .line 1012
    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    #@e
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@11
    .line 1013
    const-wide/16 v6, 0x0

    #@13
    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@16
    .line 1014
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1a
    .line 1015
    const v4, 0x1060059

    #@1d
    .line 1014
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    #@20
    move-result v2

    #@21
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@24
    .line 1017
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v15

    #@2c
    .line 1018
    .local v15, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    #@2f
    .line 1112
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
    .line 1113
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    #@38
    new-array v8, v2, [I

    #@3a
    .line 1114
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@3e
    .line 1115
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@41
    move-result-object v7

    #@42
    const/4 v6, 0x0

    #@43
    .line 1116
    const/4 v9, -0x1

    #@44
    move-object v4, v3

    #@45
    .line 1114
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@48
    .line 1117
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@4c
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 1009
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    #@50
    .line 1020
    :pswitch_0
    const v2, 0x10404c2

    #@53
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@56
    move-result-object v19

    #@57
    .line 1021
    .local v19, "title":Ljava/lang/CharSequence;
    const v2, 0x10404c3

    #@5a
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    .line 1023
    .local v10, "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    #@61
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@64
    .line 1024
    move-object/from16 v0, v19

    #@66
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    .line 1025
    move-object/from16 v0, v19

    #@6b
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6e
    .line 1026
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@71
    .line 1028
    move-object/from16 v0, p1

    #@73
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@75
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@78
    move-result-object v18

    #@79
    .line 1030
    .local v18, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@7b
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7d
    const/4 v4, 0x0

    #@7e
    const/high16 v6, 0x8000000

    #@80
    .line 1029
    move-object/from16 v0, v18

    #@82
    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@89
    .line 1032
    move-object/from16 v0, p1

    #@8b
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@8d
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@90
    move-result-object v20

    #@91
    .line 1034
    .local v20, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@93
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@95
    const/4 v4, 0x0

    #@96
    const/high16 v6, 0x8000000

    #@98
    .line 1033
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
    .line 1039
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v18    # "snoozeIntent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, 0x10404c8

    #@a5
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@a8
    move-result-object v10

    #@a9
    .line 1042
    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v13, 0x10806b5

    #@ac
    .line 1043
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
    .line 1058
    const/16 v19, 0x0

    #@b9
    .line 1062
    :goto_2
    const/4 v2, 0x1

    #@ba
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@bd
    .line 1063
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@c0
    .line 1064
    move-object/from16 v0, v19

    #@c2
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c5
    .line 1065
    move-object/from16 v0, v19

    #@c7
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@ca
    .line 1066
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@cd
    .line 1068
    move-object/from16 v0, p1

    #@cf
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@d1
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@d4
    move-result-object v14

    #@d5
    .line 1070
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d9
    const/4 v4, 0x0

    #@da
    const/high16 v6, 0x8000000

    #@dc
    .line 1069
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@e3
    goto/16 :goto_0

    #@e5
    .line 1045
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v2, 0x10404c4

    #@e8
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@eb
    move-result-object v19

    #@ec
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@ed
    .line 1048
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x10404c5

    #@f0
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f3
    move-result-object v19

    #@f4
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@f5
    .line 1051
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, 0x10404c6

    #@f8
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@fb
    move-result-object v19

    #@fc
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@fd
    .line 1054
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, 0x10404c7

    #@100
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@103
    move-result-object v19

    #@104
    .line 1055
    .restart local v19    # "title":Ljava/lang/CharSequence;
    const v13, 0x1080078

    #@107
    .line 1056
    goto :goto_2

    #@108
    .line 1074
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
    .line 1075
    .local v16, "overBytes":J
    const/4 v2, 0x1

    #@10f
    new-array v2, v2, [Ljava/lang/Object;

    #@111
    .line 1076
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
    .line 1075
    const v4, 0x10404cd

    #@121
    invoke-virtual {v15, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@124
    move-result-object v10

    #@125
    .line 1079
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
    .line 1093
    const/16 v19, 0x0

    #@132
    .line 1097
    :goto_3
    const/4 v2, 0x1

    #@133
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@136
    .line 1098
    const v2, 0x1080078

    #@139
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@13c
    .line 1099
    move-object/from16 v0, v19

    #@13e
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@141
    .line 1100
    move-object/from16 v0, v19

    #@143
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@146
    .line 1101
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@149
    .line 1103
    move-object/from16 v0, p1

    #@14b
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@14d
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@150
    move-result-object v14

    #@151
    .line 1105
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@155
    const/4 v4, 0x0

    #@156
    const/high16 v6, 0x8000000

    #@158
    .line 1104
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@15b
    move-result-object v2

    #@15c
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@15f
    goto/16 :goto_0

    #@161
    .line 1081
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v2, 0x10404c9

    #@164
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@167
    move-result-object v19

    #@168
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@169
    .line 1084
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, 0x10404ca

    #@16c
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@16f
    move-result-object v19

    #@170
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@171
    .line 1087
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, 0x10404cb

    #@174
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@177
    move-result-object v19

    #@178
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@179
    .line 1090
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, 0x10404cc

    #@17c
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@17f
    move-result-object v19

    #@180
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@181
    .line 1118
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v19    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v12

    #@182
    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@184
    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    #@18e
    .line 1043
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    #@19a
    .line 1079
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 7

    #@0
    .prologue
    .line 1354
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    return-void

    #@5
    .line 1356
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@a
    move-result-object v4

    #@b
    .line 1357
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@10
    move-result-object v0

    #@11
    .line 1359
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@14
    move-result-object v2

    #@15
    .line 1360
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
    .line 1361
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1362
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    #@22
    .line 1360
    add-int/lit8 v5, v5, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1352
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
    .line 1368
    new-instance v2, Landroid/net/NetworkIdentity;

    #@2
    const/4 v3, 0x0

    #@3
    .line 1369
    const/4 v4, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v7, 0x0

    #@6
    const/4 v8, 0x1

    #@7
    move-object/from16 v5, p1

    #@9
    .line 1368
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@c
    .line 1370
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@13
    move-result v3

    #@14
    add-int/lit8 v18, v3, -0x1

    #@16
    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_1

    #@18
    .line 1371
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    move/from16 v0, v18

    #@1e
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/net/NetworkTemplate;

    #@24
    .line 1372
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 1377
    return-void

    #@2b
    .line 1370
    :cond_0
    add-int/lit8 v18, v18, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1381
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    const-string/jumbo v3, "NetworkPolicy"

    #@31
    new-instance v10, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v11, "No policy for subscriber "

    #@39
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v10

    #@3d
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v11

    #@41
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v10

    #@45
    .line 1382
    const-string/jumbo v11, "; generating default policy"

    #@48
    .line 1381
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v10

    #@4c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1385
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5a
    move-result-object v3

    #@5b
    .line 1386
    const v10, 0x10e007f

    #@5e
    .line 1385
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    #@61
    move-result v3

    #@62
    int-to-long v10, v3

    #@63
    .line 1386
    const-wide/32 v12, 0x100000

    #@66
    .line 1385
    mul-long v8, v10, v12

    #@68
    .line 1388
    .local v8, "warningBytes":J
    new-instance v19, Landroid/text/format/Time;

    #@6a
    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    #@6d
    .line 1389
    .local v19, "time":Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    #@70
    .line 1391
    move-object/from16 v0, v19

    #@72
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    #@74
    .line 1392
    .local v6, "cycleDay":I
    move-object/from16 v0, v19

    #@76
    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@78
    .line 1394
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@7b
    move-result-object v5

    #@7c
    .line 1395
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    #@7e
    .line 1396
    const-wide/16 v10, -0x1

    #@80
    const-wide/16 v12, -0x1

    #@82
    const-wide/16 v14, -0x1

    #@84
    const/16 v16, 0x1

    #@86
    const/16 v17, 0x1

    #@88
    .line 1395
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@8b
    .line 1397
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@8d
    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    #@90
    .line 1366
    return-void
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 2167
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
    .line 2168
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/net/NetworkPolicy;

    #@12
    .line 2169
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@14
    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 2170
    return-object v1

    #@1b
    .line 2167
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2173
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
    .line 2191
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
    .line 2194
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 2195
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
    .line 2198
    if-eqz v18, :cond_0

    #@18
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2203
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@21
    move-result-wide v6

    #@22
    .line 2206
    .local v6, "currentTime":J
    move-object/from16 v0, v18

    #@24
    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@27
    move-result-wide v4

    #@28
    .line 2207
    .local v4, "start":J
    move-wide/from16 v16, v6

    #@2a
    .line 2208
    .local v16, "end":J
    move-object/from16 v0, v18

    #@2c
    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2e
    move-object/from16 v2, p0

    #@30
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@33
    move-result-wide v10

    #@34
    .line 2211
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    #@36
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@38
    const-wide/16 v20, -0x1

    #@3a
    cmp-long v2, v2, v20

    #@3c
    if-eqz v2, :cond_1

    #@3e
    move-object/from16 v0, v18

    #@40
    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@42
    .line 2213
    .local v12, "softLimitBytes":J
    :goto_0
    move-object/from16 v0, v18

    #@44
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@46
    const-wide/16 v20, -0x1

    #@48
    cmp-long v2, v2, v20

    #@4a
    if-eqz v2, :cond_2

    #@4c
    move-object/from16 v0, v18

    #@4e
    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@50
    .line 2216
    .local v14, "hardLimitBytes":J
    :goto_1
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    #@52
    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    #@55
    return-object v9

    #@56
    .line 2194
    .end local v4    # "start":J
    .end local v6    # "currentTime":J
    .end local v10    # "totalBytes":J
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    .end local v16    # "end":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    #@57
    monitor-exit v2

    #@58
    throw v3

    #@59
    .line 2200
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v2, 0x0

    #@5a
    return-object v2

    #@5b
    .line 2212
    .restart local v4    # "start":J
    .restart local v6    # "currentTime":J
    .restart local v10    # "totalBytes":J
    .restart local v16    # "end":J
    :cond_1
    const-wide/16 v12, -0x1

    #@5d
    .restart local v12    # "softLimitBytes":J
    goto :goto_0

    #@5e
    .line 2214
    :cond_2
    const-wide/16 v14, -0x1

    #@60
    .restart local v14    # "hardLimitBytes":J
    goto :goto_1
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 386
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
    .line 3376
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
    .line 3380
    :catch_0
    move-exception v6

    #@d
    .line 3382
    .local v6, "e":Landroid/os/RemoteException;
    return-wide v8

    #@e
    .line 3377
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    #@f
    .line 3378
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
    .line 3379
    return-wide v8
.end method

.method private hasInternetPermissions(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2768
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    #@3
    const-string/jumbo v2, "android.permission.INTERNET"

    #@6
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2770
    return v3

    #@d
    .line 2772
    :catch_0
    move-exception v0

    #@e
    .line 2774
    :cond_0
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 3387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3389
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
    .line 3394
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3389
    return v1

    #@e
    .line 3390
    :catch_0
    move-exception v0

    #@f
    .line 3392
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    .line 3394
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 3392
    return v1

    #@14
    .line 3393
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@15
    .line 3394
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 3393
    throw v1
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 2541
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

.method static isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 2545
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
    const/4 v6, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 962
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 963
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v10

    #@e
    .line 964
    .local v10, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@13
    move-result-object v7

    #@14
    .line 967
    .local v7, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@17
    move-result-object v9

    #@18
    .line 968
    .local v9, "subIds":[I
    array-length v12, v9

    #@19
    move v11, v1

    #@1a
    :goto_0
    if-ge v11, v12, :cond_1

    #@1c
    aget v8, v9, v11

    #@1e
    .line 969
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 970
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    #@24
    .line 971
    const/4 v4, 0x0

    #@25
    move v2, v1

    #@26
    move v5, v1

    #@27
    .line 970
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@2a
    .line 972
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 973
    return v6

    #@31
    .line 968
    :cond_0
    add-int/lit8 v2, v11, 0x1

    #@33
    move v11, v2

    #@34
    goto :goto_0

    #@35
    .line 976
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_1
    return v1

    #@36
    .line 978
    .end local v7    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v9    # "subIds":[I
    .end local v10    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    return v6
.end method

.method private isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2428
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundLocked(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isUidForegroundOnRestrictBackgroundLocked(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2433
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2434
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private isUidForegroundOnRestrictPowerLocked(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2438
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2439
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2748
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
    .line 2749
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@e
    move-result v2

    #@f
    .line 2751
    .local v2, "userId":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 2752
    array-length v5, v1

    #@16
    move v3, v4

    #@17
    :goto_0
    if-ge v3, v5, :cond_1

    #@19
    aget-object v0, v1, v3

    #@1b
    .line 2753
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@1d
    invoke-virtual {v6, v0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_0

    #@23
    .line 2754
    return v4

    #@24
    .line 2752
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2758
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    #@28
    return v3
.end method

.method private isUidStateForegroundLocked(I)Z
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2444
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v1, 0x2

    #@6
    if-gt p1, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2735
    const/16 v0, 0x3f5

    #@2
    if-eq p1, v0, :cond_0

    #@4
    const/16 v0, 0x3fb

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 2737
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2736
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    #@13
    move-result v0

    #@14
    .line 2735
    if-nez v0, :cond_0

    #@16
    .line 2740
    :cond_2
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2744
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private isWhitelistedBatterySaverLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2607
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@3
    move-result v0

    #@4
    .line 2608
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@6
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x1

    #@14
    goto :goto_0
.end method

.method static newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;
    .locals 14
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "metered"    # Z

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 882
    new-instance v0, Landroid/net/NetworkPolicy;

    #@4
    const-string/jumbo v3, "UTC"

    #@7
    const/4 v2, -0x1

    #@8
    .line 884
    const/4 v13, 0x1

    #@9
    move-object v1, p0

    #@a
    move-wide v6, v4

    #@b
    move-wide v8, v4

    #@c
    move-wide v10, v4

    #@d
    move v12, p1

    #@e
    .line 882
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@11
    return-object v0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    #@0
    .prologue
    .line 1893
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
    .line 1892
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1897
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v3

    #@7
    .line 1898
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1900
    .local v1, "merged":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    #@10
    .line 1901
    array-length v5, p1

    #@11
    :goto_0
    if-ge v4, v5, :cond_3

    #@13
    aget-object v2, p1, v4

    #@15
    .line 1904
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@17
    invoke-static {v6, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@1a
    move-result-object v6

    #@1b
    iput-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@1d
    .line 1905
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
    .line 1906
    .local v0, "existing":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    #@29
    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    #@2c
    move-result v6

    #@2d
    if-lez v6, :cond_2

    #@2f
    .line 1907
    :cond_0
    if-eqz v0, :cond_1

    #@31
    .line 1908
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
    .line 1910
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@58
    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@5a
    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 1901
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1896
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
    .line 987
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 988
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@11
    .line 989
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@16
    .line 986
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    .line 993
    return-void
.end method

.method private readPolicyLocked()V
    .locals 37

    #@0
    .prologue
    .line 1404
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@7
    .line 1405
    move-object/from16 v0, p0

    #@9
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    #@e
    .line 1407
    const/16 v22, 0x0

    #@10
    .line 1409
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
    .line 1410
    .local v22, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v23

    #@1c
    .line 1411
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
    .line 1414
    const/16 v33, 0x1

    #@2b
    .line 1415
    .local v33, "version":I
    const/16 v24, 0x0

    #@2d
    .line 1416
    .local v24, "insideWhitelist":Z
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@30
    move-result v31

    #@31
    .local v31, "type":I
    const/4 v4, 0x1

    #@32
    move/from16 v0, v31

    #@34
    if-eq v0, v4, :cond_13

    #@36
    .line 1417
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v30

    #@3a
    .line 1418
    .local v30, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    #@3b
    move/from16 v0, v31

    #@3d
    if-ne v0, v4, :cond_12

    #@3f
    .line 1419
    const-string/jumbo v4, "policy-list"

    #@42
    move-object/from16 v0, v30

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 1420
    move-object/from16 v0, p0

    #@4c
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@4e
    move/from16 v27, v0

    #@50
    .line 1421
    .local v27, "oldValue":Z
    const-string/jumbo v4, "version"

    #@53
    move-object/from16 v0, v23

    #@55
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@58
    move-result v33

    #@59
    .line 1422
    const/4 v4, 0x3

    #@5a
    move/from16 v0, v33

    #@5c
    if-lt v0, v4, :cond_1

    #@5e
    .line 1424
    const-string/jumbo v4, "restrictBackground"

    #@61
    .line 1423
    move-object/from16 v0, v23

    #@63
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@66
    move-result v4

    #@67
    move-object/from16 v0, p0

    #@69
    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@6b
    .line 1428
    :goto_1
    move-object/from16 v0, p0

    #@6d
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@6f
    move/from16 v0, v27

    #@71
    if-eq v4, v0, :cond_0

    #@73
    .line 1431
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@77
    move-object/from16 v34, v0

    #@79
    .line 1432
    move-object/from16 v0, p0

    #@7b
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@7d
    if-eqz v4, :cond_2

    #@7f
    const/4 v4, 0x1

    #@80
    .line 1431
    :goto_2
    const/16 v35, 0x6

    #@82
    .line 1432
    const/16 v36, 0x0

    #@84
    .line 1431
    move-object/from16 v0, v34

    #@86
    move/from16 v1, v35

    #@88
    move/from16 v2, v36

    #@8a
    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    goto :goto_0

    #@92
    .line 1534
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v27    # "oldValue":Z
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_0
    move-exception v19

    #@93
    .line 1536
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    .line 1542
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@99
    .line 1400
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    #@9a
    .line 1426
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v27    # "oldValue":Z
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_1
    const/4 v4, 0x0

    #@9b
    :try_start_2
    move-object/from16 v0, p0

    #@9d
    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9f
    goto :goto_1

    #@a0
    .line 1537
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v27    # "oldValue":Z
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_1
    move-exception v20

    #@a1
    .line 1538
    .local v20, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "NetworkPolicy"

    #@a4
    const-string/jumbo v34, "problem reading network policy"

    #@a7
    move-object/from16 v0, v34

    #@a9
    move-object/from16 v1, v20

    #@ab
    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    .line 1542
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b1
    goto :goto_3

    #@b2
    .line 1432
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v27    # "oldValue":Z
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_2
    const/4 v4, 0x0

    #@b3
    goto :goto_2

    #@b4
    .line 1435
    .end local v27    # "oldValue":Z
    :cond_3
    :try_start_4
    const-string/jumbo v4, "network-policy"

    #@b7
    move-object/from16 v0, v30

    #@b9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_b

    #@bf
    .line 1436
    const-string/jumbo v4, "networkTemplate"

    #@c2
    move-object/from16 v0, v23

    #@c4
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@c7
    move-result v26

    #@c8
    .line 1437
    .local v26, "networkTemplate":I
    const-string/jumbo v4, "subscriberId"

    #@cb
    const/16 v34, 0x0

    #@cd
    move-object/from16 v0, v23

    #@cf
    move-object/from16 v1, v34

    #@d1
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d4
    move-result-object v29

    #@d5
    .line 1439
    .local v29, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    #@d7
    move/from16 v0, v33

    #@d9
    if-lt v0, v4, :cond_4

    #@db
    .line 1440
    const-string/jumbo v4, "networkId"

    #@de
    const/16 v34, 0x0

    #@e0
    move-object/from16 v0, v23

    #@e2
    move-object/from16 v1, v34

    #@e4
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e7
    move-result-object v25

    #@e8
    .line 1444
    :goto_4
    const-string/jumbo v4, "cycleDay"

    #@eb
    move-object/from16 v0, v23

    #@ed
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@f0
    move-result v6

    #@f1
    .line 1446
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    #@f2
    move/from16 v0, v33

    #@f4
    if-lt v0, v4, :cond_5

    #@f6
    .line 1447
    const-string/jumbo v4, "cycleTimezone"

    #@f9
    const/16 v34, 0x0

    #@fb
    move-object/from16 v0, v23

    #@fd
    move-object/from16 v1, v34

    #@ff
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    .line 1451
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "warningBytes"

    #@106
    move-object/from16 v0, v23

    #@108
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@10b
    move-result-wide v8

    #@10c
    .line 1452
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    #@10f
    move-object/from16 v0, v23

    #@111
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@114
    move-result-wide v10

    #@115
    .line 1454
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    #@116
    move/from16 v0, v33

    #@118
    if-lt v0, v4, :cond_6

    #@11a
    .line 1455
    const-string/jumbo v4, "lastLimitSnooze"

    #@11d
    move-object/from16 v0, v23

    #@11f
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@122
    move-result-wide v14

    #@123
    .line 1462
    .local v14, "lastLimitSnooze":J
    :goto_6
    const/4 v4, 0x4

    #@124
    move/from16 v0, v33

    #@126
    if-lt v0, v4, :cond_8

    #@128
    .line 1463
    const-string/jumbo v4, "metered"

    #@12b
    move-object/from16 v0, v23

    #@12d
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@130
    move-result v16

    #@131
    .line 1476
    :goto_7
    const/4 v4, 0x5

    #@132
    move/from16 v0, v33

    #@134
    if-lt v0, v4, :cond_9

    #@136
    .line 1477
    const-string/jumbo v4, "lastWarningSnooze"

    #@139
    move-object/from16 v0, v23

    #@13b
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@13e
    move-result-wide v12

    #@13f
    .line 1482
    .local v12, "lastWarningSnooze":J
    :goto_8
    const/4 v4, 0x7

    #@140
    move/from16 v0, v33

    #@142
    if-lt v0, v4, :cond_a

    #@144
    .line 1483
    const-string/jumbo v4, "inferred"

    #@147
    move-object/from16 v0, v23

    #@149
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@14c
    move-result v17

    #@14d
    .line 1488
    :goto_9
    new-instance v5, Landroid/net/NetworkTemplate;

    #@14f
    move/from16 v0, v26

    #@151
    move-object/from16 v1, v29

    #@153
    move-object/from16 v2, v25

    #@155
    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@158
    .line 1490
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->isPersistable()Z

    #@15b
    move-result v4

    #@15c
    if-eqz v4, :cond_0

    #@15e
    .line 1491
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@162
    move-object/from16 v34, v0

    #@164
    new-instance v4, Landroid/net/NetworkPolicy;

    #@166
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@169
    move-object/from16 v0, v34

    #@16b
    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@16e
    goto/16 :goto_0

    #@170
    .line 1539
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v26    # "networkTemplate":I
    .end local v29    # "subscriberId":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_2
    move-exception v21

    #@171
    .line 1540
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string/jumbo v4, "NetworkPolicy"

    #@174
    const-string/jumbo v34, "problem reading network policy"

    #@177
    move-object/from16 v0, v34

    #@179
    move-object/from16 v1, v21

    #@17b
    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@17e
    .line 1542
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@181
    goto/16 :goto_3

    #@183
    .line 1442
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v26    # "networkTemplate":I
    .restart local v29    # "subscriberId":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_4
    const/16 v25, 0x0

    #@185
    .local v25, "networkId":Ljava/lang/String;
    goto/16 :goto_4

    #@187
    .line 1449
    .end local v25    # "networkId":Ljava/lang/String;
    .restart local v6    # "cycleDay":I
    :cond_5
    :try_start_6
    const-string/jumbo v7, "UTC"

    #@18a
    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_5

    #@18c
    .line 1456
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_6
    const/4 v4, 0x2

    #@18d
    move/from16 v0, v33

    #@18f
    if-lt v0, v4, :cond_7

    #@191
    .line 1457
    const-string/jumbo v4, "lastSnooze"

    #@194
    move-object/from16 v0, v23

    #@196
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@199
    move-result-wide v14

    #@19a
    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    #@19b
    .line 1459
    .end local v14    # "lastLimitSnooze":J
    :cond_7
    const-wide/16 v14, -0x1

    #@19d
    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    #@19e
    .line 1465
    :cond_8
    packed-switch v26, :pswitch_data_0

    #@1a1
    .line 1472
    const/16 v16, 0x0

    #@1a3
    .local v16, "metered":Z
    goto :goto_7

    #@1a4
    .line 1469
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    #@1a6
    .line 1470
    .restart local v16    # "metered":Z
    goto :goto_7

    #@1a7
    .line 1479
    .end local v16    # "metered":Z
    :cond_9
    const-wide/16 v12, -0x1

    #@1a9
    .restart local v12    # "lastWarningSnooze":J
    goto :goto_8

    #@1aa
    .line 1485
    :cond_a
    const/16 v17, 0x0

    #@1ac
    .local v17, "inferred":Z
    goto :goto_9

    #@1ad
    .line 1496
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v17    # "inferred":Z
    .end local v26    # "networkTemplate":I
    .end local v29    # "subscriberId":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "uid-policy"

    #@1b0
    move-object/from16 v0, v30

    #@1b2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b5
    move-result v4

    #@1b6
    if-eqz v4, :cond_d

    #@1b8
    .line 1497
    const-string/jumbo v4, "uid"

    #@1bb
    move-object/from16 v0, v23

    #@1bd
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1c0
    move-result v32

    #@1c1
    .line 1498
    .local v32, "uid":I
    const-string/jumbo v4, "policy"

    #@1c4
    move-object/from16 v0, v23

    #@1c6
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1c9
    move-result v28

    #@1ca
    .line 1500
    .local v28, "policy":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    #@1cd
    move-result v4

    #@1ce
    if-eqz v4, :cond_c

    #@1d0
    .line 1501
    const/4 v4, 0x0

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    move/from16 v1, v32

    #@1d5
    move/from16 v2, v28

    #@1d7
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 1541
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v28    # "policy":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v32    # "uid":I
    .end local v33    # "version":I
    :catchall_0
    move-exception v4

    #@1dd
    .line 1542
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e0
    .line 1541
    throw v4

    #@1e1
    .line 1503
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v28    # "policy":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v32    # "uid":I
    .restart local v33    # "version":I
    :cond_c
    :try_start_7
    const-string/jumbo v4, "NetworkPolicy"

    #@1e4
    new-instance v34, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v35, "unable to apply policy to UID "

    #@1ec
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v34

    #@1f0
    move-object/from16 v0, v34

    #@1f2
    move/from16 v1, v32

    #@1f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v34

    #@1f8
    const-string/jumbo v35, "; ignoring"

    #@1fb
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v34

    #@1ff
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v34

    #@203
    move-object/from16 v0, v34

    #@205
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@208
    goto/16 :goto_0

    #@20a
    .line 1505
    .end local v28    # "policy":I
    .end local v32    # "uid":I
    :cond_d
    const-string/jumbo v4, "app-policy"

    #@20d
    move-object/from16 v0, v30

    #@20f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@212
    move-result v4

    #@213
    if-eqz v4, :cond_f

    #@215
    .line 1506
    const-string/jumbo v4, "appId"

    #@218
    move-object/from16 v0, v23

    #@21a
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@21d
    move-result v18

    #@21e
    .line 1507
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    #@221
    move-object/from16 v0, v23

    #@223
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@226
    move-result v28

    #@227
    .line 1511
    .restart local v28    # "policy":I
    const/4 v4, 0x0

    #@228
    move/from16 v0, v18

    #@22a
    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@22d
    move-result v32

    #@22e
    .line 1512
    .restart local v32    # "uid":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    #@231
    move-result v4

    #@232
    if-eqz v4, :cond_e

    #@234
    .line 1513
    const/4 v4, 0x0

    #@235
    move-object/from16 v0, p0

    #@237
    move/from16 v1, v32

    #@239
    move/from16 v2, v28

    #@23b
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    #@23e
    goto/16 :goto_0

    #@240
    .line 1515
    :cond_e
    const-string/jumbo v4, "NetworkPolicy"

    #@243
    new-instance v34, Ljava/lang/StringBuilder;

    #@245
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@248
    const-string/jumbo v35, "unable to apply policy to UID "

    #@24b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v34

    #@24f
    move-object/from16 v0, v34

    #@251
    move/from16 v1, v32

    #@253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@256
    move-result-object v34

    #@257
    const-string/jumbo v35, "; ignoring"

    #@25a
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v34

    #@25e
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v34

    #@262
    move-object/from16 v0, v34

    #@264
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@267
    goto/16 :goto_0

    #@269
    .line 1517
    .end local v18    # "appId":I
    .end local v28    # "policy":I
    .end local v32    # "uid":I
    :cond_f
    const-string/jumbo v4, "whitelist"

    #@26c
    move-object/from16 v0, v30

    #@26e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@271
    move-result v4

    #@272
    if-eqz v4, :cond_10

    #@274
    .line 1518
    const/16 v24, 0x1

    #@276
    goto/16 :goto_0

    #@278
    .line 1519
    :cond_10
    const-string/jumbo v4, "restrict-background"

    #@27b
    move-object/from16 v0, v30

    #@27d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@280
    move-result v4

    #@281
    if-eqz v4, :cond_11

    #@283
    if-eqz v24, :cond_11

    #@285
    .line 1520
    const-string/jumbo v4, "uid"

    #@288
    move-object/from16 v0, v23

    #@28a
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@28d
    move-result v32

    #@28e
    .line 1521
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    #@290
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@292
    const/16 v34, 0x1

    #@294
    move/from16 v0, v32

    #@296
    move/from16 v1, v34

    #@298
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@29b
    goto/16 :goto_0

    #@29d
    .line 1522
    .end local v32    # "uid":I
    :cond_11
    const-string/jumbo v4, "revoked-restrict-background"

    #@2a0
    move-object/from16 v0, v30

    #@2a2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a5
    move-result v4

    #@2a6
    if-eqz v4, :cond_0

    #@2a8
    if-eqz v24, :cond_0

    #@2aa
    .line 1523
    const-string/jumbo v4, "uid"

    #@2ad
    move-object/from16 v0, v23

    #@2af
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@2b2
    move-result v32

    #@2b3
    .line 1524
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    #@2b5
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@2b7
    const/16 v34, 0x1

    #@2b9
    move/from16 v0, v32

    #@2bb
    move/from16 v1, v34

    #@2bd
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@2c0
    goto/16 :goto_0

    #@2c2
    .line 1526
    .end local v32    # "uid":I
    :cond_12
    const/4 v4, 0x3

    #@2c3
    move/from16 v0, v31

    #@2c5
    if-ne v0, v4, :cond_0

    #@2c7
    .line 1527
    const-string/jumbo v4, "whitelist"

    #@2ca
    move-object/from16 v0, v30

    #@2cc
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@2cf
    move-result v4

    #@2d0
    if-eqz v4, :cond_0

    #@2d2
    .line 1528
    const/16 v24, 0x0

    #@2d4
    goto/16 :goto_0

    #@2d6
    .line 1542
    .end local v30    # "tag":Ljava/lang/String;
    :cond_13
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2d9
    goto/16 :goto_3

    #@2db
    .line 1465
    nop

    #@2dc
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
    .line 3282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3280
    :goto_0
    return-void

    #@6
    .line 3283
    :catch_0
    move-exception v1

    #@7
    .line 3284
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem removing interface quota"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 3285
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2063
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@6
    move-result v1

    #@7
    .line 2064
    .local v1, "oldStatus":Z
    if-nez v1, :cond_0

    #@9
    if-eqz p2, :cond_5

    #@b
    .line 2068
    :cond_0
    if-nez p2, :cond_6

    #@d
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    #@10
    move-result v0

    #@11
    .line 2069
    :goto_0
    if-eqz v1, :cond_1

    #@13
    .line 2070
    const-string/jumbo v3, "NetworkPolicy"

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "removing uid "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " from restrict background whitelist"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 2071
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@36
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@39
    .line 2073
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@3b
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 2074
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@43
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_7

    #@49
    .line 2079
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    #@4b
    .line 2081
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(IZ)V

    #@4e
    .line 2083
    :cond_3
    if-eqz p3, :cond_4

    #@50
    .line 2085
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@53
    .line 2089
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@55
    if-eqz v3, :cond_8

    #@57
    :goto_2
    return v0

    #@58
    .line 2066
    :cond_5
    return v2

    #@59
    .line 2068
    :cond_6
    const/4 v0, 0x1

    #@5a
    .local v0, "needFirewallRules":Z
    goto :goto_0

    #@5b
    .line 2077
    .end local v0    # "needFirewallRules":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@5d
    const/4 v4, 0x1

    #@5e
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@61
    goto :goto_1

    #@62
    :cond_8
    move v0, v2

    #@63
    .line 2089
    goto :goto_2
.end method

.method private removeUidStateLocked(I)V
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    const/4 v3, 0x0

    #@3
    .line 2476
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    .line 2477
    .local v0, "index":I
    if-ltz v0, :cond_2

    #@b
    .line 2478
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@10
    move-result v1

    #@11
    .line 2479
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@16
    .line 2480
    if-eq v1, v4, :cond_2

    #@18
    .line 2481
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedLocked(III)V

    #@1b
    .line 2483
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 2484
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    #@22
    .line 2486
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 2487
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    #@29
    .line 2489
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    #@2c
    .line 2490
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    #@2f
    .line 2475
    .end local v1    # "oldUidState":I
    :cond_2
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    #@0
    .prologue
    .line 3272
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3270
    :goto_0
    return-void

    #@6
    .line 3273
    :catch_0
    move-exception v1

    #@7
    .line 3274
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem setting interface quota"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 3275
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 3293
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3290
    :goto_0
    return-void

    #@6
    .line 3294
    :catch_0
    move-exception v1

    #@7
    .line 3295
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "problem setting blacklist ("

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, ") rules for "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0

    #@2d
    .line 3296
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 3304
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3301
    :goto_0
    return-void

    #@6
    .line 3305
    :catch_0
    move-exception v1

    #@7
    .line 3306
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "problem setting whitelist ("

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, ") rules for "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0

    #@2d
    .line 3307
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1191
    return-void
.end method

.method private setRestrictBackgroundLocked(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 1992
    const-string/jumbo v2, "NetworkPolicy"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "setRestrictBackgroundLocked(): "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1993
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@1c
    .line 1994
    .local v1, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@1e
    .line 1998
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    #@21
    .line 2000
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@23
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@25
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_0

    #@2b
    .line 2001
    const-string/jumbo v2, "NetworkPolicy"

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Could not change Data Saver Mode on NMS to "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2002
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 2005
    return-void

    #@4a
    .line 2007
    :catch_0
    move-exception v0

    #@4b
    .line 2010
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@4e
    .line 2011
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@51
    .line 1991
    return-void
.end method

.method private setUidFirewallRule(III)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 3338
    const/4 v2, 0x1

    #@1
    if-ne p1, v2, :cond_1

    #@3
    .line 3339
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 3347
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@a
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@d
    .line 3337
    :goto_1
    return-void

    #@e
    .line 3340
    :cond_1
    const/4 v2, 0x2

    #@f
    if-ne p1, v2, :cond_2

    #@11
    .line 3341
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@16
    goto :goto_0

    #@17
    .line 3342
    :cond_2
    const/4 v2, 0x3

    #@18
    if-ne p1, v2, :cond_0

    #@1a
    .line 3343
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@1f
    goto :goto_0

    #@20
    .line 3348
    :catch_0
    move-exception v1

    #@21
    .line 3349
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@24
    const-string/jumbo v3, "problem setting firewall uid rules"

    #@27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_1

    #@2b
    .line 3350
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 3319
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v4

    #@4
    .line 3320
    .local v4, "size":I
    new-array v5, v4, [I

    #@6
    .line 3321
    .local v5, "uids":[I
    new-array v3, v4, [I

    #@8
    .line 3322
    .local v3, "rules":[I
    add-int/lit8 v2, v4, -0x1

    #@a
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    #@c
    .line 3323
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@f
    move-result v6

    #@10
    aput v6, v5, v2

    #@12
    .line 3324
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@15
    move-result v6

    #@16
    aput v6, v3, v2

    #@18
    .line 3322
    add-int/lit8 v2, v2, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3326
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@1d
    invoke-interface {v6, p1, v5, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    .line 3317
    .end local v2    # "index":I
    .end local v3    # "rules":[I
    .end local v4    # "size":I
    .end local v5    # "uids":[I
    :goto_1
    return-void

    #@21
    .line 3327
    :catch_0
    move-exception v1

    #@22
    .line 3328
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "NetworkPolicy"

    #@25
    const-string/jumbo v7, "problem setting firewall uid rules"

    #@28
    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_1

    #@2c
    .line 3329
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidPolicyUncheckedLocked(IIIZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1709
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    #@5
    .line 1711
    if-ne p3, v3, :cond_4

    #@7
    const/4 v0, 0x1

    #@8
    .line 1712
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@a
    .line 1713
    if-eqz v0, :cond_0

    #@c
    move v2, v3

    #@d
    .line 1712
    :cond_0
    const/16 v5, 0xc

    #@f
    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 1715
    if-ne p2, v3, :cond_5

    #@18
    const/4 v1, 0x1

    #@19
    .line 1717
    .local v1, "wasBlacklisted":Z
    :goto_1
    if-nez p2, :cond_1

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 1718
    :cond_1
    if-eqz v1, :cond_3

    #@1f
    if-nez p3, :cond_3

    #@21
    .line 1719
    :cond_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@23
    const/16 v4, 0x9

    #@25
    const/4 v5, 0x0

    #@26
    invoke-virtual {v2, v4, p1, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@2d
    .line 1708
    :cond_3
    return-void

    #@2e
    .line 1711
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "wasBlacklisted":Z
    :cond_4
    const/4 v0, 0x0

    #@2f
    .restart local v0    # "isBlacklisted":Z
    goto :goto_0

    #@30
    .line 1715
    :cond_5
    const/4 v1, 0x0

    #@31
    .restart local v1    # "wasBlacklisted":Z
    goto :goto_1
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    #@0
    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@5
    .line 1728
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    #@8
    .line 1729
    if-eqz p3, :cond_0

    #@a
    .line 1730
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@d
    .line 1724
    :cond_0
    return-void
.end method

.method private updateNetworkStats(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    #@0
    .prologue
    .line 2498
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2496
    :goto_0
    return-void

    #@6
    .line 2499
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedLocked(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    #@0
    .prologue
    .line 2507
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z

    #@3
    move-result v1

    #@4
    .line 2509
    .local v1, "oldForeground":Z
    invoke-static {p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z

    #@7
    move-result v0

    #@8
    .line 2510
    .local v0, "newForeground":Z
    if-eq v1, v0, :cond_0

    #@a
    .line 2511
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    #@d
    .line 2505
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidLocked(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2792
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    #@3
    .line 2793
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    #@6
    .line 2794
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    #@9
    .line 2797
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    #@c
    .line 2800
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    #@f
    .line 2790
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2843
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(IZ)V

    #@4
    .line 2842
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsLocked(IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2851
    if-nez p2, :cond_0

    #@4
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    #@7
    move-result v9

    #@8
    if-eqz v9, :cond_5

    #@a
    .line 2856
    :cond_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v9, p1, v10}, Landroid/util/SparseIntArray;->get(II)I

    #@f
    move-result v8

    #@10
    .line 2857
    .local v8, "uidPolicy":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@12
    invoke-virtual {v9, p1, v10}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v7

    #@16
    .line 2858
    .local v7, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundLocked(I)Z

    #@19
    move-result v2

    #@1a
    .line 2860
    .local v2, "isForeground":Z
    and-int/lit8 v9, v8, 0x1

    #@1c
    if-eqz v9, :cond_6

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 2861
    .local v1, "isBlacklisted":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@21
    invoke-virtual {v9, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@24
    move-result v3

    #@25
    .line 2862
    .local v3, "isWhitelisted":Z
    and-int/lit8 v6, v7, 0xf

    #@27
    .line 2863
    .local v6, "oldRule":I
    const/4 v4, 0x0

    #@28
    .line 2866
    .local v4, "newRule":I
    if-eqz v2, :cond_8

    #@2a
    .line 2867
    if-nez v1, :cond_7

    #@2c
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@2e
    if-eqz v9, :cond_1

    #@30
    if-eqz v3, :cond_7

    #@32
    .line 2869
    :cond_1
    if-eqz v3, :cond_2

    #@34
    .line 2870
    const/4 v4, 0x1

    #@35
    .line 2879
    :cond_2
    :goto_1
    and-int/lit16 v9, v7, 0xf0

    #@37
    or-int v5, v4, v9

    #@39
    .line 2892
    .local v5, "newUidRules":I
    if-nez v5, :cond_a

    #@3b
    .line 2893
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@3d
    invoke-virtual {v9, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@40
    .line 2898
    :goto_2
    const/4 v0, 0x0

    #@41
    .line 2901
    .local v0, "changed":Z
    if-eq v4, v6, :cond_4

    #@43
    .line 2902
    const/4 v0, 0x1

    #@44
    .line 2904
    and-int/lit8 v9, v4, 0x2

    #@46
    if-eqz v9, :cond_b

    #@48
    .line 2908
    invoke-direct {p0, p1, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@4b
    .line 2912
    if-eqz v1, :cond_3

    #@4d
    .line 2913
    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    #@50
    .line 2953
    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@52
    invoke-virtual {v9, v12, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@59
    .line 2850
    :cond_4
    return-void

    #@5a
    .line 2853
    .end local v0    # "changed":Z
    .end local v1    # "isBlacklisted":Z
    .end local v2    # "isForeground":Z
    .end local v3    # "isWhitelisted":Z
    .end local v4    # "newRule":I
    .end local v5    # "newUidRules":I
    .end local v6    # "oldRule":I
    .end local v7    # "oldUidRules":I
    .end local v8    # "uidPolicy":I
    :cond_5
    return-void

    #@5b
    .line 2860
    .restart local v2    # "isForeground":Z
    .restart local v7    # "oldUidRules":I
    .restart local v8    # "uidPolicy":I
    :cond_6
    const/4 v1, 0x0

    #@5c
    .restart local v1    # "isBlacklisted":Z
    goto :goto_0

    #@5d
    .line 2868
    .restart local v3    # "isWhitelisted":Z
    .restart local v4    # "newRule":I
    .restart local v6    # "oldRule":I
    :cond_7
    const/4 v4, 0x2

    #@5e
    .line 2867
    goto :goto_1

    #@5f
    .line 2873
    :cond_8
    if-eqz v1, :cond_9

    #@61
    .line 2874
    const/4 v4, 0x4

    #@62
    goto :goto_1

    #@63
    .line 2875
    :cond_9
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@65
    if-eqz v9, :cond_2

    #@67
    if-eqz v3, :cond_2

    #@69
    .line 2876
    const/4 v4, 0x1

    #@6a
    goto :goto_1

    #@6b
    .line 2895
    .restart local v5    # "newUidRules":I
    :cond_a
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@6d
    invoke-virtual {v9, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@70
    goto :goto_2

    #@71
    .line 2915
    .restart local v0    # "changed":Z
    :cond_b
    and-int/lit8 v9, v6, 0x2

    #@73
    if-eqz v9, :cond_d

    #@75
    .line 2922
    if-nez v3, :cond_c

    #@77
    .line 2923
    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@7a
    .line 2925
    :cond_c
    if-eqz v1, :cond_3

    #@7c
    .line 2926
    invoke-direct {p0, p1, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    #@7f
    goto :goto_3

    #@80
    .line 2928
    :cond_d
    and-int/lit8 v9, v4, 0x4

    #@82
    if-nez v9, :cond_e

    #@84
    .line 2929
    and-int/lit8 v9, v6, 0x4

    #@86
    if-eqz v9, :cond_f

    #@88
    .line 2931
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    #@8b
    .line 2932
    and-int/lit8 v9, v6, 0x4

    #@8d
    if-eqz v9, :cond_3

    #@8f
    if-eqz v3, :cond_3

    #@91
    .line 2936
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@94
    goto :goto_3

    #@95
    .line 2938
    :cond_f
    and-int/lit8 v9, v4, 0x1

    #@97
    if-nez v9, :cond_10

    #@99
    .line 2939
    and-int/lit8 v9, v6, 0x1

    #@9b
    if-eqz v9, :cond_11

    #@9d
    .line 2941
    :cond_10
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@a0
    goto :goto_3

    #@a1
    .line 2944
    :cond_11
    const-string/jumbo v9, "NetworkPolicy"

    #@a4
    new-instance v10, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v11, "Unexpected change of metered UID state for "

    #@ac
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v10

    #@b0
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v10

    #@b4
    .line 2945
    const-string/jumbo v11, ": foreground="

    #@b7
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@be
    move-result-object v10

    #@bf
    .line 2946
    const-string/jumbo v11, ", whitelisted="

    #@c2
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v10

    #@ca
    .line 2947
    const-string/jumbo v11, ", blacklisted="

    #@cd
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v10

    #@d1
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v10

    #@d5
    .line 2948
    const-string/jumbo v11, ", newRule="

    #@d8
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v10

    #@dc
    .line 2948
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@df
    move-result-object v11

    #@e0
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v10

    #@e4
    .line 2949
    const-string/jumbo v11, ", oldRule="

    #@e7
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v10

    #@eb
    .line 2949
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@ee
    move-result-object v11

    #@ef
    .line 2944
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v10

    #@f3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v10

    #@f7
    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    goto/16 :goto_3
.end method

.method private updateRulesForGlobalChangeLocked(Z)V
    .locals 1
    .param p1, "restrictedNetworksChanged"    # Z

    #@0
    .prologue
    .line 2673
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    #@3
    .line 2674
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    #@6
    .line 2675
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    #@9
    .line 2676
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    #@c
    .line 2677
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundLocked(Z)V

    #@11
    .line 2680
    if-eqz p1, :cond_0

    #@13
    .line 2681
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@16
    .line 2682
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@19
    .line 2669
    :cond_0
    return-void
.end method

.method private updateRulesForNonMeteredNetworksLocked()V
    .locals 0

    #@0
    .prologue
    .line 2602
    return-void
.end method

.method private updateRulesForPowerRestrictionsLocked(I)V
    .locals 12
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2976
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    #@4
    move-result v9

    #@5
    if-nez v9, :cond_0

    #@7
    .line 2978
    return-void

    #@8
    .line 2981
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    #@b
    move-result v1

    #@c
    .line 2982
    .local v1, "isIdle":Z
    if-nez v1, :cond_4

    #@e
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@10
    if-nez v9, :cond_4

    #@12
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@14
    .line 2983
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@16
    invoke-virtual {v9, p1, v10}, Landroid/util/SparseIntArray;->get(II)I

    #@19
    move-result v8

    #@1a
    .line 2984
    .local v8, "uidPolicy":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v9, p1, v10}, Landroid/util/SparseIntArray;->get(II)I

    #@1f
    move-result v6

    #@20
    .line 2985
    .local v6, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerLocked(I)Z

    #@23
    move-result v0

    #@24
    .line 2987
    .local v0, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverLocked(I)Z

    #@27
    move-result v2

    #@28
    .line 2988
    .local v2, "isWhitelisted":Z
    and-int/lit16 v5, v6, 0xf0

    #@2a
    .line 2989
    .local v5, "oldRule":I
    const/4 v3, 0x0

    #@2b
    .line 2995
    .local v3, "newRule":I
    if-eqz v0, :cond_5

    #@2d
    .line 2996
    if-eqz v7, :cond_1

    #@2f
    .line 2997
    const/16 v3, 0x20

    #@31
    .line 3003
    :cond_1
    :goto_1
    and-int/lit8 v9, v6, 0xf

    #@33
    or-int v4, v9, v3

    #@35
    .line 3018
    .local v4, "newUidRules":I
    if-nez v4, :cond_7

    #@37
    .line 3019
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@39
    invoke-virtual {v9, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@3c
    .line 3025
    :goto_2
    if-eq v3, v5, :cond_3

    #@3e
    .line 3026
    if-eqz v3, :cond_2

    #@40
    and-int/lit8 v9, v3, 0x20

    #@42
    if-eqz v9, :cond_8

    #@44
    .line 3038
    :cond_2
    :goto_3
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@46
    const/4 v10, 0x1

    #@47
    invoke-virtual {v9, v10, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@4e
    .line 2975
    :cond_3
    return-void

    #@4f
    .line 2982
    .end local v0    # "isForeground":Z
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "newRule":I
    .end local v4    # "newUidRules":I
    .end local v5    # "oldRule":I
    .end local v6    # "oldUidRules":I
    .end local v8    # "uidPolicy":I
    :cond_4
    const/4 v7, 0x1

    #@50
    .local v7, "restrictMode":Z
    goto :goto_0

    #@51
    .line 2999
    .end local v7    # "restrictMode":Z
    .restart local v0    # "isForeground":Z
    .restart local v2    # "isWhitelisted":Z
    .restart local v3    # "newRule":I
    .restart local v5    # "oldRule":I
    .restart local v6    # "oldUidRules":I
    .restart local v8    # "uidPolicy":I
    :cond_5
    if-eqz v7, :cond_1

    #@53
    .line 3000
    if-eqz v2, :cond_6

    #@55
    const/16 v3, 0x20

    #@57
    goto :goto_1

    #@58
    :cond_6
    const/16 v3, 0x40

    #@5a
    goto :goto_1

    #@5b
    .line 3021
    .restart local v4    # "newUidRules":I
    :cond_7
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@5d
    invoke-virtual {v9, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@60
    goto :goto_2

    #@61
    .line 3028
    :cond_8
    and-int/lit8 v9, v3, 0x40

    #@63
    if-nez v9, :cond_2

    #@65
    .line 3032
    const-string/jumbo v9, "NetworkPolicy"

    #@68
    new-instance v10, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v11, "Unexpected change of non-metered UID state for "

    #@70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    .line 3033
    const-string/jumbo v11, ": foreground="

    #@7b
    .line 3032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    .line 3034
    const-string/jumbo v11, ", whitelisted="

    #@86
    .line 3032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v10

    #@8a
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v10

    #@8e
    .line 3035
    const-string/jumbo v11, ", newRule="

    #@91
    .line 3032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v10

    #@95
    .line 3035
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@98
    move-result-object v11

    #@99
    .line 3032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    .line 3036
    const-string/jumbo v11, ", oldRule="

    #@a0
    .line 3032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v10

    #@a4
    .line 3036
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    .line 3032
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v10

    #@b0
    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto :goto_3
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 12

    #@0
    .prologue
    .line 2692
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v5

    #@6
    .line 2695
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@8
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@b
    move-result-object v8

    #@c
    .line 2697
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const v10, 0xc2200

    #@f
    .line 2696
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    .line 2701
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@16
    move-result v9

    #@17
    .line 2702
    .local v9, "usersSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    .line 2703
    .local v2, "appsSize":I
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_1

    #@1e
    .line 2704
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v7

    #@22
    check-cast v7, Landroid/content/pm/UserInfo;

    #@24
    .line 2705
    .local v7, "user":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    #@25
    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    #@27
    .line 2706
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@2d
    .line 2707
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    #@2f
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@31
    invoke-static {v10, v11}, Landroid/os/UserHandle;->getUid(II)I

    #@34
    move-result v6

    #@35
    .line 2708
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    #@38
    .line 2709
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    #@3b
    .line 2705
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 2703
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "uid":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_0

    #@41
    .line 2691
    .end local v4    # "j":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    #@0
    .prologue
    .line 2531
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@5
    move-result v1

    #@6
    .line 2532
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 2533
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e
    move-result v3

    #@f
    const/4 v4, 0x4

    #@10
    if-gt v3, v4, :cond_0

    #@12
    .line 2534
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@17
    move-result v2

    #@18
    .line 2535
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidLocked(I)V

    #@1b
    .line 2532
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2529
    :cond_1
    return-void
.end method

.method private updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    #@0
    .prologue
    .line 2715
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v5

    #@6
    .line 2716
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a
    move-result v6

    #@b
    if-ge v1, v6, :cond_1

    #@d
    .line 2717
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/content/pm/UserInfo;

    #@13
    .line 2718
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@15
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@18
    move-result v6

    #@19
    add-int/lit8 v2, v6, -0x1

    #@1b
    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    #@1d
    .line 2719
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@1f
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@22
    move-result v0

    #@23
    .line 2720
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    #@25
    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@28
    move-result v3

    #@29
    .line 2722
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    #@2c
    .line 2723
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    #@2f
    .line 2724
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    #@32
    .line 2726
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    #@35
    .line 2718
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_1

    #@38
    .line 2716
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 2714
    .end local v2    # "j":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveLocked(IZI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    #@0
    .prologue
    .line 2614
    if-eqz p2, :cond_1

    #@2
    .line 2615
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverLocked(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2616
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@a
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@d
    move-result v0

    #@e
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@11
    move-result v0

    #@12
    .line 2615
    if-eqz v0, :cond_2

    #@14
    .line 2617
    :cond_0
    const/4 v0, 0x1

    #@15
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@18
    .line 2613
    :cond_1
    :goto_0
    return-void

    #@19
    .line 2619
    :cond_2
    const/4 v0, 0x0

    #@1a
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@1d
    goto :goto_0
.end method

.method private updateRulesForWhitelistedPowerSaveLocked(ZILandroid/util/SparseIntArray;)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 2570
    if-eqz p1, :cond_6

    #@3
    .line 2573
    move-object v4, p3

    #@4
    .line 2574
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    #@7
    .line 2575
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@9
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@c
    move-result-object v6

    #@d
    .line 2576
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@10
    move-result v7

    #@11
    add-int/lit8 v2, v7, -0x1

    #@13
    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    #@15
    .line 2577
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/content/pm/UserInfo;

    #@1b
    .line 2578
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@1d
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    #@20
    move-result v7

    #@21
    add-int/lit8 v1, v7, -0x1

    #@23
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@25
    .line 2579
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@27
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 2580
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2f
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@32
    move-result v0

    #@33
    .line 2581
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@35
    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@38
    move-result v3

    #@39
    .line 2582
    .local v3, "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@3c
    .line 2578
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 2585
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@41
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    #@44
    move-result v7

    #@45
    add-int/lit8 v1, v7, -0x1

    #@47
    :goto_2
    if-ltz v1, :cond_2

    #@49
    .line 2586
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@4b
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@4e
    move-result v0

    #@4f
    .line 2587
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@51
    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@54
    move-result v3

    #@55
    .line 2588
    .restart local v3    # "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@58
    .line 2585
    add-int/lit8 v1, v1, -0x1

    #@5a
    goto :goto_2

    #@5b
    .line 2576
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@5d
    goto :goto_0

    #@5e
    .line 2591
    .end local v1    # "i":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@60
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    #@63
    move-result v7

    #@64
    add-int/lit8 v1, v7, -0x1

    #@66
    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    #@68
    .line 2592
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@6a
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@6d
    move-result v7

    #@6e
    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@71
    move-result v7

    #@72
    if-eqz v7, :cond_4

    #@74
    .line 2593
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@76
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@79
    move-result v7

    #@7a
    invoke-virtual {p3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@7d
    .line 2591
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@7f
    goto :goto_3

    #@80
    .line 2596
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    #@83
    .line 2599
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    #@86
    .line 2569
    return-void
.end method

.method private updateScreenOn()V
    .locals 3

    #@0
    .prologue
    .line 2516
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2518
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
    .line 2522
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 2515
    return-void

    #@10
    .line 2516
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 2519
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    #@0
    .prologue
    .line 2453
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2454
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_4

    #@a
    .line 2456
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    .line 2457
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedLocked(III)V

    #@12
    .line 2458
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@15
    move-result v1

    #@16
    .line 2459
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@19
    move-result v2

    #@1a
    .line 2458
    if-eq v1, v2, :cond_3

    #@1c
    .line 2460
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 2461
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    #@25
    .line 2463
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 2464
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    #@2c
    .line 2466
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2467
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    #@33
    .line 2469
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    #@36
    .line 2471
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundLocked(I)Z

    #@39
    move-result v1

    #@3a
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    #@3d
    .line 2452
    :cond_4
    return-void
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1552
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v3, "background_data"

    #@a
    .line 1551
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-eq v2, v1, :cond_1

    #@10
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@12
    .line 1555
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1556
    new-instance v0, Landroid/content/Intent;

    #@18
    .line 1557
    const-string/jumbo v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    #@1b
    .line 1556
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 1558
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@22
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@25
    .line 1550
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    #@26
    .line 1551
    :cond_1
    const/4 v1, 0x0

    #@27
    goto :goto_0
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsLocked()Z
    .locals 6

    #@0
    .prologue
    .line 456
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    .line 457
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    .line 459
    .local v2, "numberUsers":I
    const/4 v0, 0x0

    #@b
    .line 460
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 461
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/content/pm/UserInfo;

    #@14
    .line 462
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    #@16
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsLocked(I)Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_0

    #@1c
    .line 460
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 462
    :cond_0
    const/4 v0, 0x1

    #@20
    goto :goto_1

    #@21
    .line 464
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    #@0
    .prologue
    .line 3441
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
    .line 3440
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 1861
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
    .line 1862
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
    .line 1863
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@15
    .line 1860
    return-void
.end method

.method public addRestrictBackgroundWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2016
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2019
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 2020
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v2

    #@14
    .line 2021
    .local v2, "oldStatus":Z
    if-eqz v2, :cond_0

    #@16
    monitor-exit v4

    #@17
    .line 2023
    return-void

    #@18
    .line 2025
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    #@1b
    move-result v1

    #@1c
    .line 2026
    .local v1, "needFirewallRules":Z
    const-string/jumbo v3, "NetworkPolicy"

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "adding uid "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    const-string/jumbo v6, " to restrict background whitelist"

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 2027
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@3f
    const/4 v5, 0x1

    #@40
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@43
    .line 2028
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@45
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 2029
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@4d
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@50
    move-result v3

    #@51
    .line 2028
    if-eqz v3, :cond_1

    #@53
    .line 2032
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@55
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@58
    .line 2034
    :cond_1
    if-eqz v1, :cond_2

    #@5a
    .line 2036
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    #@5d
    .line 2039
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    monitor-exit v4

    #@61
    .line 2041
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@63
    if-eqz v3, :cond_3

    #@65
    if-eqz v2, :cond_4

    #@67
    :cond_3
    const/4 v0, 0x0

    #@68
    .line 2042
    .local v0, "changed":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@6a
    .line 2043
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@6c
    .line 2042
    const/16 v5, 0x9

    #@6e
    invoke-virtual {v3, v5, p1, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@75
    .line 2015
    return-void

    #@76
    .line 2019
    .end local v0    # "changed":I
    .end local v1    # "needFirewallRules":Z
    .end local v2    # "oldStatus":Z
    :catchall_0
    move-exception v3

    #@77
    monitor-exit v4

    #@78
    throw v3

    #@79
    .line 2041
    .restart local v1    # "needFirewallRules":Z
    .restart local v2    # "oldStatus":Z
    :cond_4
    if-eqz v1, :cond_3

    #@7b
    const/4 v0, 0x1

    #@7c
    .restart local v0    # "changed":I
    goto :goto_0
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1676
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v3, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1678
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1679
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
    .line 1682
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 1684
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    #@36
    .line 1685
    if-eq v0, p2, :cond_1

    #@38
    .line 1686
    const/4 v1, 0x1

    #@39
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    :cond_1
    monitor-exit v2

    #@3d
    .line 1675
    return-void

    #@3e
    .line 1682
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
    .line 422
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
    .line 421
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    #@0
    .prologue
    .line 426
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
    .line 425
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2250
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v12, "android.permission.DUMP"

    #@5
    const-string/jumbo v13, "NetworkPolicy"

    #@8
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2252
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v11, "  "

    #@10
    move-object/from16 v0, p2

    #@12
    invoke-direct {v3, v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@15
    .line 2254
    .local v3, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    #@17
    move-object/from16 v0, p3

    #@19
    array-length v11, v0

    #@1a
    invoke-direct {v2, v11}, Landroid/util/ArraySet;-><init>(I)V

    #@1d
    .line 2255
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
    .line 2256
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    .line 2255
    add-int/lit8 v11, v11, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2259
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v12

    #@2e
    .line 2260
    :try_start_0
    const-string/jumbo v11, "--unsnooze"

    #@31
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v11

    #@35
    if-eqz v11, :cond_2

    #@37
    .line 2261
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
    .line 2262
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
    .line 2261
    add-int/lit8 v4, v4, -0x1

    #@4e
    goto :goto_1

    #@4f
    .line 2265
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@52
    .line 2266
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@55
    .line 2267
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@58
    .line 2268
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@5b
    .line 2269
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@5e
    .line 2271
    const-string/jumbo v11, "Cleared snooze timestamps"

    #@61
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    monitor-exit v12

    #@65
    .line 2272
    return-void

    #@66
    .line 2275
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
    .line 2276
    const-string/jumbo v11, "Restrict background: "

    #@74
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@77
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@79
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@7c
    .line 2277
    const-string/jumbo v11, "Restrict power: "

    #@7f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@82
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@84
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@87
    .line 2278
    const-string/jumbo v11, "Device idle: "

    #@8a
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@8d
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@8f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@92
    .line 2279
    const-string/jumbo v11, "Network policies:"

    #@95
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 2280
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9b
    .line 2281
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
    .line 2282
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
    .line 2281
    add-int/lit8 v4, v4, 0x1

    #@b5
    goto :goto_2

    #@b6
    .line 2284
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@b9
    .line 2286
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
    .line 2288
    const-string/jumbo v11, "Policy for UIDs:"

    #@cb
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ce
    .line 2289
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@d1
    .line 2290
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d3
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    #@d6
    move-result v7

    #@d7
    .line 2291
    .local v7, "size":I
    const/4 v4, 0x0

    #@d8
    :goto_3
    if-ge v4, v7, :cond_4

    #@da
    .line 2292
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@dc
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@df
    move-result v9

    #@e0
    .line 2293
    .local v9, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@e2
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e5
    move-result v6

    #@e6
    .line 2294
    .local v6, "policy":I
    const-string/jumbo v11, "UID="

    #@e9
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@ec
    .line 2295
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@ef
    .line 2296
    const-string/jumbo v11, " policy="

    #@f2
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f5
    .line 2297
    const-class v11, Landroid/net/NetworkPolicyManager;

    #@f7
    const-string/jumbo v13, "POLICY_"

    #@fa
    invoke-static {v11, v13, v6}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@fd
    move-result-object v11

    #@fe
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@101
    .line 2298
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@104
    .line 2291
    add-int/lit8 v4, v4, 0x1

    #@106
    goto :goto_3

    #@107
    .line 2300
    .end local v6    # "policy":I
    .end local v9    # "uid":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@10a
    .line 2302
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@10c
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@10f
    move-result v7

    #@110
    .line 2303
    if-lez v7, :cond_6

    #@112
    .line 2304
    const-string/jumbo v11, "Power save whitelist (except idle) app ids:"

    #@115
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 2305
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@11b
    .line 2306
    const/4 v4, 0x0

    #@11c
    :goto_4
    if-ge v4, v7, :cond_5

    #@11e
    .line 2307
    const-string/jumbo v11, "UID="

    #@121
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@124
    .line 2308
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@126
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@129
    move-result v11

    #@12a
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@12d
    .line 2309
    const-string/jumbo v11, ": "

    #@130
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@133
    .line 2310
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@135
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@138
    move-result v11

    #@139
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    #@13c
    .line 2311
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@13f
    .line 2306
    add-int/lit8 v4, v4, 0x1

    #@141
    goto :goto_4

    #@142
    .line 2313
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@145
    .line 2316
    :cond_6
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@147
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@14a
    move-result v7

    #@14b
    .line 2317
    if-lez v7, :cond_8

    #@14d
    .line 2318
    const-string/jumbo v11, "Power save whitelist app ids:"

    #@150
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@153
    .line 2319
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@156
    .line 2320
    const/4 v4, 0x0

    #@157
    :goto_5
    if-ge v4, v7, :cond_7

    #@159
    .line 2321
    const-string/jumbo v11, "UID="

    #@15c
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@15f
    .line 2322
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@161
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@164
    move-result v11

    #@165
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@168
    .line 2323
    const-string/jumbo v11, ": "

    #@16b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@16e
    .line 2324
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@170
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@173
    move-result v11

    #@174
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    #@177
    .line 2325
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@17a
    .line 2320
    add-int/lit8 v4, v4, 0x1

    #@17c
    goto :goto_5

    #@17d
    .line 2327
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@180
    .line 2330
    :cond_8
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@182
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@185
    move-result v7

    #@186
    .line 2331
    if-lez v7, :cond_a

    #@188
    .line 2332
    const-string/jumbo v11, "Restrict background whitelist uids:"

    #@18b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@18e
    .line 2333
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@191
    .line 2334
    const/4 v4, 0x0

    #@192
    :goto_6
    if-ge v4, v7, :cond_9

    #@194
    .line 2335
    const-string/jumbo v11, "UID="

    #@197
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@19a
    .line 2336
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@19c
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@19f
    move-result v11

    #@1a0
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1a3
    .line 2337
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1a6
    .line 2334
    add-int/lit8 v4, v4, 0x1

    #@1a8
    goto :goto_6

    #@1a9
    .line 2339
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1ac
    .line 2342
    :cond_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@1ae
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@1b1
    move-result v7

    #@1b2
    .line 2343
    if-lez v7, :cond_c

    #@1b4
    .line 2344
    const-string/jumbo v11, "Default restrict background whitelist uids:"

    #@1b7
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1ba
    .line 2345
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1bd
    .line 2346
    const/4 v4, 0x0

    #@1be
    :goto_7
    if-ge v4, v7, :cond_b

    #@1c0
    .line 2347
    const-string/jumbo v11, "UID="

    #@1c3
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    .line 2348
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@1c8
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1cb
    move-result v11

    #@1cc
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1cf
    .line 2349
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1d2
    .line 2346
    add-int/lit8 v4, v4, 0x1

    #@1d4
    goto :goto_7

    #@1d5
    .line 2351
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1d8
    .line 2354
    :cond_c
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@1da
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@1dd
    move-result v7

    #@1de
    .line 2355
    if-lez v7, :cond_e

    #@1e0
    .line 2356
    const-string/jumbo v11, "Default restrict background whitelist uids revoked by users:"

    #@1e3
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1e6
    .line 2357
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1e9
    .line 2358
    const/4 v4, 0x0

    #@1ea
    :goto_8
    if-ge v4, v7, :cond_d

    #@1ec
    .line 2359
    const-string/jumbo v11, "UID="

    #@1ef
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1f2
    .line 2360
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@1f4
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1f7
    move-result v11

    #@1f8
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1fb
    .line 2361
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1fe
    .line 2358
    add-int/lit8 v4, v4, 0x1

    #@200
    goto :goto_8

    #@201
    .line 2363
    :cond_d
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@204
    .line 2366
    :cond_e
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@206
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@209
    .line 2367
    .local v5, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@20b
    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    #@20e
    .line 2368
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@210
    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    #@213
    .line 2370
    const-string/jumbo v11, "Status for all known UIDs:"

    #@216
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@219
    .line 2371
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@21c
    .line 2372
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@21f
    move-result v7

    #@220
    .line 2373
    const/4 v4, 0x0

    #@221
    :goto_9
    if-ge v4, v7, :cond_11

    #@223
    .line 2374
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@226
    move-result v9

    #@227
    .line 2375
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    #@22a
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@22d
    .line 2376
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@230
    .line 2378
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@232
    const/16 v13, 0x10

    #@234
    invoke-virtual {v11, v9, v13}, Landroid/util/SparseIntArray;->get(II)I

    #@237
    move-result v8

    #@238
    .line 2379
    .local v8, "state":I
    const-string/jumbo v11, " state="

    #@23b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@23e
    .line 2380
    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@241
    .line 2381
    const/4 v11, 0x2

    #@242
    if-gt v8, v11, :cond_f

    #@244
    .line 2382
    const-string/jumbo v11, " (fg)"

    #@247
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@24a
    .line 2388
    :goto_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@24c
    const/4 v13, 0x0

    #@24d
    invoke-virtual {v11, v9, v13}, Landroid/util/SparseIntArray;->get(II)I

    #@250
    move-result v10

    #@251
    .line 2389
    .local v10, "uidRules":I
    const-string/jumbo v11, " rules="

    #@254
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@257
    .line 2390
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@25a
    move-result-object v11

    #@25b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@25e
    .line 2391
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@261
    .line 2373
    add-int/lit8 v4, v4, 0x1

    #@263
    goto :goto_9

    #@264
    .line 2384
    .end local v10    # "uidRules":I
    :cond_f
    const/4 v11, 0x4

    #@265
    if-gt v8, v11, :cond_10

    #@267
    .line 2385
    const-string/jumbo v11, " (fg svc)"

    #@26a
    .line 2384
    :goto_b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26d
    goto :goto_a

    #@26e
    .line 2259
    .end local v4    # "i":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v7    # "size":I
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :catchall_0
    move-exception v11

    #@26f
    monitor-exit v12

    #@270
    throw v11

    #@271
    .line 2385
    .restart local v4    # "i":I
    .restart local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v7    # "size":I
    .restart local v8    # "state":I
    .restart local v9    # "uid":I
    :cond_10
    :try_start_2
    const-string/jumbo v11, " (bg)"

    #@274
    goto :goto_b

    #@275
    .line 2393
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@278
    .line 2395
    const-string/jumbo v11, "Status for just UIDs with rules:"

    #@27b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@27e
    .line 2396
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@281
    .line 2397
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@283
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    #@286
    move-result v7

    #@287
    .line 2398
    const/4 v4, 0x0

    #@288
    :goto_c
    if-ge v4, v7, :cond_12

    #@28a
    .line 2399
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@28c
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@28f
    move-result v9

    #@290
    .line 2400
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    #@293
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@296
    .line 2401
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@299
    .line 2402
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@29b
    const/4 v13, 0x0

    #@29c
    invoke-virtual {v11, v9, v13}, Landroid/util/SparseIntArray;->get(II)I

    #@29f
    move-result v10

    #@2a0
    .line 2403
    .restart local v10    # "uidRules":I
    const-string/jumbo v11, " rules="

    #@2a3
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@2a6
    .line 2404
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@2a9
    move-result-object v11

    #@2aa
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@2ad
    .line 2405
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2b0
    .line 2398
    add-int/lit8 v4, v4, 0x1

    #@2b2
    goto :goto_c

    #@2b3
    .line 2407
    .end local v9    # "uid":I
    .end local v10    # "uidRules":I
    :cond_12
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b6
    monitor-exit v12

    #@2b7
    .line 2249
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3453
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v7, "NetworkPolicy"

    #@9
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 3455
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
    .line 3456
    return-void

    #@18
    .line 3460
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
    .line 3461
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@25
    move-result-object v2

    #@26
    .line 3462
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
    .line 3463
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2e
    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_1

    #@34
    .line 3464
    const-wide/16 v8, -0x1

    #@36
    iput-wide v8, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    #@38
    .line 3465
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    #@3a
    .line 3466
    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    #@3d
    .line 3462
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 3469
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@43
    .line 3472
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    #@46
    .line 3474
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
    .line 3476
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
    .line 3477
    .local v3, "uid":I
    invoke-virtual {p0, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    #@5f
    .line 3476
    add-int/lit8 v4, v4, 0x1

    #@61
    goto :goto_1

    #@62
    .line 3452
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
    .line 1868
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    #@6
    const-string/jumbo v6, "NetworkPolicy"

    #@9
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1870
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
    .line 1882
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@19
    monitor-enter v5

    #@1a
    .line 1883
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v3

    #@20
    .line 1884
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    #@22
    .line 1885
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@25
    .line 1886
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
    .line 1885
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1873
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    #@33
    .line 1874
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@35
    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    #@38
    const-string/jumbo v6, "NetworkPolicy"

    #@3b
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 1876
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
    .line 1878
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
    .line 1888
    return-object v2

    #@51
    .line 1882
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
    .line 2178
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 2184
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v2

    #@13
    .line 2186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 2184
    return-object v2

    #@17
    .line 2185
    :catchall_0
    move-exception v2

    #@18
    .line 2186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 2185
    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    #@0
    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2140
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 2141
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v0

    #@11
    return v1

    #@12
    .line 2140
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v8, 0x1

    #@2
    .line 2111
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    #@7
    const-string/jumbo v7, "NetworkPolicy"

    #@a
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v1

    #@11
    .line 2114
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@13
    monitor-enter v5

    #@14
    .line 2116
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    move-result-wide v2

    #@18
    .line 2119
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result v0

    #@1c
    .line 2121
    .local v0, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 2123
    if-ne v0, v8, :cond_0

    #@21
    monitor-exit v5

    #@22
    .line 2125
    return v4

    #@23
    .line 2120
    .end local v0    # "policy":I
    :catchall_0
    move-exception v4

    #@24
    .line 2121
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 2120
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 2114
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    #@29
    monitor-exit v5

    #@2a
    throw v4

    #@2b
    .line 2127
    .restart local v0    # "policy":I
    .restart local v2    # "token":J
    :cond_0
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2d
    if-nez v6, :cond_1

    #@2f
    monitor-exit v5

    #@30
    .line 2128
    return v8

    #@31
    .line 2130
    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@33
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_2

    #@39
    .line 2131
    const/4 v4, 0x2

    #@3a
    :cond_2
    monitor-exit v5

    #@3b
    .line 2130
    return v4
.end method

.method public getRestrictBackgroundWhitelistedUids()[I
    .locals 6

    #@0
    .prologue
    .line 2094
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2095
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 2096
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    #@13
    move-result v1

    #@14
    .line 2097
    .local v1, "size":I
    new-array v2, v1, [I

    #@16
    .line 2098
    .local v2, "whitelist":[I
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@19
    .line 2099
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@1b
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1e
    move-result v3

    #@1f
    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 2098
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    :cond_0
    monitor-exit v4

    #@25
    .line 2105
    return-object v2

    #@26
    .line 2095
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "whitelist":[I
    :catchall_0
    move-exception v3

    #@27
    monitor-exit v4

    #@28
    throw v3
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1738
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1739
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
    .line 1738
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
    .line 1745
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v6, "NetworkPolicy"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1747
    const/4 v4, 0x0

    #@c
    new-array v3, v4, [I

    #@e
    .line 1748
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@10
    monitor-enter v5

    #@11
    .line 1749
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
    .line 1750
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1f
    move-result v1

    #@20
    .line 1751
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@22
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@25
    move-result v2

    #@26
    .line 1752
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    #@28
    .line 1753
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v3

    #@2c
    .line 1749
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
    .line 1757
    return-object v3

    #@31
    .line 1748
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2221
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2222
    return v4

    #@7
    .line 2225
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@c
    move-result-object v0

    #@d
    .line 2228
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 2229
    return v5

    #@14
    .line 2233
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 2234
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3

    #@1c
    .line 2237
    if-eqz v1, :cond_2

    #@1e
    .line 2238
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    #@20
    return v3

    #@21
    .line 2233
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    #@22
    monitor-exit v3

    #@23
    throw v4

    #@24
    .line 2240
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@26
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    #@29
    move-result v2

    #@2a
    .line 2241
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_3

    #@30
    const/4 v3, 0x6

    #@31
    if-ne v2, v3, :cond_4

    #@33
    .line 2242
    :cond_3
    return v5

    #@34
    .line 2244
    :cond_4
    return v4
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2420
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2422
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 2423
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    monitor-exit v0

    #@13
    return v1

    #@14
    .line 2422
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    #@0
    .prologue
    .line 3402
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
    .line 3403
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@f
    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@12
    .line 3401
    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2414
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    #@7
    move-object v1, p0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    move-object v5, p4

    #@c
    move-object v6, p5

    #@d
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@10
    .line 2413
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    #@0
    .prologue
    .line 1960
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1961
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 1962
    const-string/jumbo v0, "NetworkPolicy"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Tethering on ("

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, "); disable Data Saver"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1963
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v1

    #@2f
    .line 1957
    return-void

    #@30
    .line 1960
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1928
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@3
    .line 1929
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 1930
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 1932
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/net/NetworkPolicy;

    #@12
    .line 1933
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    #@14
    .line 1934
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
    .line 1930
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 1937
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@34
    .line 1945
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@36
    const-string/jumbo v5, "unexpected type"

    #@39
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 1939
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@3f
    .line 1948
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    #@42
    .line 1949
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@45
    .line 1950
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@48
    .line 1951
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@4b
    .line 1952
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit v4

    #@4f
    .line 1927
    return-void

    #@50
    .line 1942
    :pswitch_1
    :try_start_2
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 1937
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
    .line 527
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    #@5
    move-result v0

    #@6
    .line 528
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 529
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 530
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@14
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    #@17
    .line 528
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 526
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1831
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@10
    .line 1828
    return-void
.end method

.method public removeRestrictBackgroundWhitelistedUid(I)V
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2048
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@7
    const-string/jumbo v5, "NetworkPolicy"

    #@a
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2050
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 2051
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x1

    #@12
    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    .local v0, "changed":Z
    monitor-exit v3

    #@17
    .line 2053
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 2054
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1d
    .line 2053
    const/16 v4, 0x9

    #@1f
    invoke-virtual {v3, v4, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@26
    .line 2047
    return-void

    #@27
    .line 2050
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v3

    #@29
    throw v1

    #@2a
    .restart local v0    # "changed":Z
    :cond_0
    move v1, v2

    #@2b
    .line 2053
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1693
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v3, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1695
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1696
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
    .line 1699
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 1700
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 1701
    .local v0, "oldPolicy":I
    not-int v1, p2

    #@36
    and-int p2, v0, v1

    #@38
    .line 1702
    if-eq v0, p2, :cond_1

    #@3a
    .line 1703
    const/4 v1, 0x1

    #@3b
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    :cond_1
    monitor-exit v2

    #@3f
    .line 1692
    return-void

    #@40
    .line 1699
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method removeUserStateLocked(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1767
    const/4 v0, 0x0

    #@2
    .line 1770
    .local v0, "changed":Z
    new-array v4, v5, [I

    #@4
    .line 1771
    .local v4, "wlUids":[I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@7
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@a
    move-result v6

    #@b
    if-ge v1, v6, :cond_1

    #@d
    .line 1772
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@f
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@12
    move-result v2

    #@13
    .line 1773
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v6

    #@17
    if-ne v6, p1, :cond_0

    #@19
    .line 1774
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@1c
    move-result-object v4

    #@1d
    .line 1771
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1778
    .end local v2    # "uid":I
    :cond_1
    array-length v6, v4

    #@21
    if-lez v6, :cond_3

    #@23
    .line 1779
    array-length v7, v4

    #@24
    move v6, v5

    #@25
    :goto_1
    if-ge v6, v7, :cond_2

    #@27
    aget v2, v4, v6

    #@29
    .line 1780
    .restart local v2    # "uid":I
    invoke-direct {p0, v2, v5, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z

    #@2c
    .line 1779
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1782
    .end local v2    # "uid":I
    :cond_2
    const/4 v0, 0x1

    #@30
    .line 1786
    :cond_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@32
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@35
    move-result v6

    #@36
    add-int/lit8 v1, v6, -0x1

    #@38
    :goto_2
    if-ltz v1, :cond_5

    #@3a
    .line 1787
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@3c
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@3f
    move-result v2

    #@40
    .line 1788
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@43
    move-result v6

    #@44
    if-ne v6, p1, :cond_4

    #@46
    .line 1789
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@48
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    #@4b
    .line 1790
    const/4 v0, 0x1

    #@4c
    .line 1786
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@4e
    goto :goto_2

    #@4f
    .line 1795
    .end local v2    # "uid":I
    :cond_5
    new-array v3, v5, [I

    #@51
    .line 1796
    .local v3, "uids":[I
    const/4 v1, 0x0

    #@52
    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@54
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    #@57
    move-result v6

    #@58
    if-ge v1, v6, :cond_7

    #@5a
    .line 1797
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@5c
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@5f
    move-result v2

    #@60
    .line 1798
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@63
    move-result v6

    #@64
    if-ne v6, p1, :cond_6

    #@66
    .line 1799
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@69
    move-result-object v3

    #@6a
    .line 1796
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@6c
    goto :goto_3

    #@6d
    .line 1803
    .end local v2    # "uid":I
    :cond_7
    array-length v6, v3

    #@6e
    if-lez v6, :cond_9

    #@70
    .line 1804
    array-length v6, v3

    #@71
    :goto_4
    if-ge v5, v6, :cond_8

    #@73
    aget v2, v3, v5

    #@75
    .line 1805
    .restart local v2    # "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@77
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->delete(I)V

    #@7a
    .line 1804
    add-int/lit8 v5, v5, 0x1

    #@7c
    goto :goto_4

    #@7d
    .line 1807
    .end local v2    # "uid":I
    :cond_8
    const/4 v0, 0x1

    #@7e
    .line 1810
    :cond_9
    const/4 v5, 0x1

    #@7f
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    #@82
    .line 1812
    if-eqz p2, :cond_a

    #@84
    if-eqz v0, :cond_a

    #@86
    .line 1813
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@89
    .line 1815
    :cond_a
    return v0
.end method

.method public setConnectivityListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1821
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1822
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Connectivity listener already registered"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1824
    :cond_0
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    #@1a
    .line 1819
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2149
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 2150
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 2151
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@14
    .line 2152
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 2155
    const/4 v0, 0x0

    #@19
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    #@1c
    .line 2157
    :cond_0
    if-eqz p1, :cond_2

    #@1e
    .line 2158
    const-string/jumbo v0, "net"

    #@21
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_1
    :goto_0
    monitor-exit v1

    #@25
    .line 2146
    return-void

    #@26
    .line 2160
    :cond_2
    :try_start_1
    const-string/jumbo v0, "net"

    #@29
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 2149
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 1843
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1845
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 1847
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@12
    .line 1848
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@14
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 1849
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    #@18
    .line 1850
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    #@1b
    .line 1851
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    #@1e
    .line 1852
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    #@21
    .line 1853
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    .line 1856
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1842
    return-void

    #@29
    .line 1848
    :catchall_0
    move-exception v2

    #@2a
    :try_start_3
    monitor-exit v3

    #@2b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c
    .line 1855
    :catchall_1
    move-exception v2

    #@2d
    .line 1856
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1855
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1970
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@6
    const-string/jumbo v5, "NetworkPolicy"

    #@9
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 1973
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@13
    .line 1974
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@15
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    .line 1975
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@18
    if-ne p1, v2, :cond_0

    #@1a
    .line 1977
    const-string/jumbo v2, "NetworkPolicy"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "setRestrictBackground: already "

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 1984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1978
    return-void

    #@39
    .line 1980
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    .line 1984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1987
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@42
    if-eqz p1, :cond_1

    #@44
    const/4 v2, 0x1

    #@45
    :goto_0
    const/4 v5, 0x6

    #@46
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@4d
    .line 1969
    return-void

    #@4e
    .line 1974
    :catchall_0
    move-exception v2

    #@4f
    :try_start_5
    monitor-exit v4

    #@50
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@51
    .line 1983
    :catchall_1
    move-exception v2

    #@52
    .line 1984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 1983
    throw v2

    #@56
    :cond_1
    move v2, v3

    #@57
    .line 1987
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1655
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1657
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1658
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
    .line 1661
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@2d
    monitor-enter v4

    #@2e
    .line 1662
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    move-result-wide v2

    #@32
    .line 1664
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
    .line 1665
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    #@3b
    .line 1666
    const/4 v1, 0x1

    #@3c
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 1669
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    monitor-exit v4

    #@43
    .line 1654
    return-void

    #@44
    .line 1668
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@45
    .line 1669
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1668
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    .line 1661
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
    .line 1917
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 1921
    .local v0, "token":J
    const/4 v2, 0x2

    #@10
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1916
    return-void

    #@17
    .line 1922
    :catchall_0
    move-exception v2

    #@18
    .line 1923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1922
    throw v2
.end method

.method public systemReady()V
    .locals 22

    #@0
    .prologue
    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    #@3
    move-result v17

    #@4
    if-nez v17, :cond_0

    #@6
    .line 537
    const-string/jumbo v17, "NetworkPolicy"

    #@9
    const-string/jumbo v18, "bandwidth controls disabled, unable to enforce policy"

    #@c
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 538
    return-void

    #@10
    .line 541
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
    .line 543
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageMonitor:Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

    #@22
    move-object/from16 v17, v0

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@28
    move-object/from16 v18, v0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@2e
    move-object/from16 v19, v0

    #@30
    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@33
    move-result-object v19

    #@34
    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@36
    const/16 v21, 0x1

    #@38
    invoke-virtual/range {v17 .. v21}, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@3b
    .line 545
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    #@3f
    move-object/from16 v18, v0

    #@41
    monitor-enter v18

    #@42
    .line 546
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    #@45
    .line 547
    const-class v17, Landroid/os/PowerManagerInternal;

    #@47
    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4a
    move-result-object v17

    #@4b
    check-cast v17, Landroid/os/PowerManagerInternal;

    #@4d
    move-object/from16 v0, v17

    #@4f
    move-object/from16 v1, p0

    #@51
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@53
    .line 548
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@57
    move-object/from16 v17, v0

    #@59
    .line 549
    new-instance v19, Lcom/android/server/net/NetworkPolicyManagerService$16;

    #@5b
    move-object/from16 v0, v19

    #@5d
    move-object/from16 v1, p0

    #@5f
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@62
    .line 548
    move-object/from16 v0, v17

    #@64
    move-object/from16 v1, v19

    #@66
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    #@69
    .line 562
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@6d
    move-object/from16 v17, v0

    #@6f
    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    #@72
    move-result v17

    #@73
    move/from16 v0, v17

    #@75
    move-object/from16 v1, p0

    #@77
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@79
    .line 564
    const/16 v17, 0x1

    #@7b
    move/from16 v0, v17

    #@7d
    move-object/from16 v1, p0

    #@7f
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@81
    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    #@84
    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsLocked()Z

    #@87
    move-result v17

    #@88
    if-eqz v17, :cond_1

    #@8a
    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    #@8d
    .line 573
    :cond_1
    const/16 v17, 0x0

    #@8f
    move-object/from16 v0, p0

    #@91
    move/from16 v1, v17

    #@93
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    #@96
    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@99
    monitor-exit v18

    #@9a
    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    #@9d
    .line 580
    :try_start_1
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@a1
    move-object/from16 v17, v0

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    #@a7
    move-object/from16 v18, v0

    #@a9
    .line 581
    const/16 v19, 0x3

    #@ab
    .line 580
    invoke-interface/range {v17 .. v19}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V

    #@ae
    .line 582
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@b2
    move-object/from16 v17, v0

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@b8
    move-object/from16 v18, v0

    #@ba
    invoke-interface/range {v17 .. v18}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@bd
    .line 590
    :goto_0
    new-instance v10, Landroid/content/IntentFilter;

    #@bf
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    #@c2
    .line 591
    .local v10, "screenFilter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.SCREEN_ON"

    #@c5
    move-object/from16 v0, v17

    #@c7
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ca
    .line 592
    const-string/jumbo v17, "android.intent.action.SCREEN_OFF"

    #@cd
    move-object/from16 v0, v17

    #@cf
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@d2
    .line 593
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d6
    move-object/from16 v17, v0

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    #@dc
    move-object/from16 v18, v0

    #@de
    move-object/from16 v0, v17

    #@e0
    move-object/from16 v1, v18

    #@e2
    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e5
    .line 596
    new-instance v14, Landroid/content/IntentFilter;

    #@e7
    .line 597
    const-string/jumbo v17, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    #@ea
    .line 596
    move-object/from16 v0, v17

    #@ec
    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@ef
    .line 598
    .local v14, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@f3
    move-object/from16 v17, v0

    #@f5
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    #@f9
    move-object/from16 v18, v0

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@ff
    move-object/from16 v19, v0

    #@101
    const/16 v20, 0x0

    #@103
    move-object/from16 v0, v17

    #@105
    move-object/from16 v1, v18

    #@107
    move-object/from16 v2, v20

    #@109
    move-object/from16 v3, v19

    #@10b
    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@10e
    .line 601
    const-class v17, Lcom/android/server/DeviceIdleController$LocalService;

    #@110
    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@113
    move-result-object v7

    #@114
    check-cast v7, Lcom/android/server/DeviceIdleController$LocalService;

    #@116
    .line 602
    .local v7, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    #@11a
    move-object/from16 v17, v0

    #@11c
    move-object/from16 v0, v17

    #@11e
    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    #@121
    .line 605
    new-instance v6, Landroid/content/IntentFilter;

    #@123
    const-string/jumbo v17, "android.net.conn.CONNECTIVITY_CHANGE"

    #@126
    move-object/from16 v0, v17

    #@128
    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@12b
    .line 606
    .local v6, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@12f
    move-object/from16 v17, v0

    #@131
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@135
    move-object/from16 v18, v0

    #@137
    const-string/jumbo v19, "android.permission.CONNECTIVITY_INTERNAL"

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@13e
    move-object/from16 v20, v0

    #@140
    move-object/from16 v0, v17

    #@142
    move-object/from16 v1, v18

    #@144
    move-object/from16 v2, v19

    #@146
    move-object/from16 v3, v20

    #@148
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@14b
    .line 609
    new-instance v9, Landroid/content/IntentFilter;

    #@14d
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    #@150
    .line 610
    .local v9, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.PACKAGE_ADDED"

    #@153
    move-object/from16 v0, v17

    #@155
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@158
    .line 611
    const-string/jumbo v17, "package"

    #@15b
    move-object/from16 v0, v17

    #@15d
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@160
    .line 612
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@164
    move-object/from16 v17, v0

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@16a
    move-object/from16 v18, v0

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@170
    move-object/from16 v19, v0

    #@172
    const/16 v20, 0x0

    #@174
    move-object/from16 v0, v17

    #@176
    move-object/from16 v1, v18

    #@178
    move-object/from16 v2, v20

    #@17a
    move-object/from16 v3, v19

    #@17c
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@17f
    .line 615
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@183
    move-object/from16 v17, v0

    #@185
    .line 616
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@189
    move-object/from16 v18, v0

    #@18b
    new-instance v19, Landroid/content/IntentFilter;

    #@18d
    const-string/jumbo v20, "android.intent.action.UID_REMOVED"

    #@190
    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@193
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@197
    move-object/from16 v20, v0

    #@199
    const/16 v21, 0x0

    #@19b
    .line 615
    move-object/from16 v0, v17

    #@19d
    move-object/from16 v1, v18

    #@19f
    move-object/from16 v2, v19

    #@1a1
    move-object/from16 v3, v21

    #@1a3
    move-object/from16 v4, v20

    #@1a5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1a8
    .line 619
    new-instance v13, Landroid/content/IntentFilter;

    #@1aa
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    #@1ad
    .line 620
    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v17, "android.intent.action.USER_ADDED"

    #@1b0
    move-object/from16 v0, v17

    #@1b2
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1b5
    .line 621
    const-string/jumbo v17, "android.intent.action.USER_REMOVED"

    #@1b8
    move-object/from16 v0, v17

    #@1ba
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1bd
    .line 622
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1c1
    move-object/from16 v17, v0

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@1c7
    move-object/from16 v18, v0

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1cd
    move-object/from16 v19, v0

    #@1cf
    const/16 v20, 0x0

    #@1d1
    move-object/from16 v0, v17

    #@1d3
    move-object/from16 v1, v18

    #@1d5
    move-object/from16 v2, v20

    #@1d7
    move-object/from16 v3, v19

    #@1d9
    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1dc
    .line 625
    new-instance v12, Landroid/content/IntentFilter;

    #@1de
    const-string/jumbo v17, "com.android.server.action.NETWORK_STATS_UPDATED"

    #@1e1
    move-object/from16 v0, v17

    #@1e3
    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1e6
    .line 626
    .local v12, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1ea
    move-object/from16 v17, v0

    #@1ec
    .line 627
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    #@1f0
    move-object/from16 v18, v0

    #@1f2
    const-string/jumbo v19, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1f9
    move-object/from16 v20, v0

    #@1fb
    .line 626
    move-object/from16 v0, v17

    #@1fd
    move-object/from16 v1, v18

    #@1ff
    move-object/from16 v2, v19

    #@201
    move-object/from16 v3, v20

    #@203
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@206
    .line 630
    new-instance v5, Landroid/content/IntentFilter;

    #@208
    const-string/jumbo v17, "com.android.server.net.action.ALLOW_BACKGROUND"

    #@20b
    move-object/from16 v0, v17

    #@20d
    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@210
    .line 631
    .local v5, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@214
    move-object/from16 v17, v0

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    #@21a
    move-object/from16 v18, v0

    #@21c
    const-string/jumbo v19, "android.permission.MANAGE_NETWORK_POLICY"

    #@21f
    move-object/from16 v0, p0

    #@221
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@223
    move-object/from16 v20, v0

    #@225
    move-object/from16 v0, v17

    #@227
    move-object/from16 v1, v18

    #@229
    move-object/from16 v2, v19

    #@22b
    move-object/from16 v3, v20

    #@22d
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@230
    .line 634
    new-instance v11, Landroid/content/IntentFilter;

    #@232
    const-string/jumbo v17, "com.android.server.net.action.SNOOZE_WARNING"

    #@235
    move-object/from16 v0, v17

    #@237
    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@23a
    .line 635
    .local v11, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@23e
    move-object/from16 v17, v0

    #@240
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    #@244
    move-object/from16 v18, v0

    #@246
    .line 636
    const-string/jumbo v19, "android.permission.MANAGE_NETWORK_POLICY"

    #@249
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@24d
    move-object/from16 v20, v0

    #@24f
    .line 635
    move-object/from16 v0, v17

    #@251
    move-object/from16 v1, v18

    #@253
    move-object/from16 v2, v19

    #@255
    move-object/from16 v3, v20

    #@257
    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@25a
    .line 639
    new-instance v15, Landroid/content/IntentFilter;

    #@25c
    const-string/jumbo v17, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@25f
    move-object/from16 v0, v17

    #@261
    invoke-direct {v15, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@264
    .line 640
    .local v15, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@268
    move-object/from16 v17, v0

    #@26a
    move-object/from16 v0, p0

    #@26c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    #@26e
    move-object/from16 v18, v0

    #@270
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@274
    move-object/from16 v19, v0

    #@276
    const/16 v20, 0x0

    #@278
    move-object/from16 v0, v17

    #@27a
    move-object/from16 v1, v18

    #@27c
    move-object/from16 v2, v20

    #@27e
    move-object/from16 v3, v19

    #@280
    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@283
    .line 643
    new-instance v16, Landroid/content/IntentFilter;

    #@285
    .line 644
    const-string/jumbo v17, "android.net.wifi.STATE_CHANGE"

    #@288
    .line 643
    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@28b
    .line 645
    .local v16, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@28f
    move-object/from16 v17, v0

    #@291
    move-object/from16 v0, p0

    #@293
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    #@295
    move-object/from16 v18, v0

    #@297
    move-object/from16 v0, p0

    #@299
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@29b
    move-object/from16 v19, v0

    #@29d
    const/16 v20, 0x0

    #@29f
    move-object/from16 v0, v17

    #@2a1
    move-object/from16 v1, v18

    #@2a3
    move-object/from16 v2, v16

    #@2a5
    move-object/from16 v3, v20

    #@2a7
    move-object/from16 v4, v19

    #@2a9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2ac
    .line 647
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@2b0
    move-object/from16 v17, v0

    #@2b2
    new-instance v18, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    #@2b4
    const/16 v19, 0x0

    #@2b6
    move-object/from16 v0, v18

    #@2b8
    move-object/from16 v1, p0

    #@2ba
    move-object/from16 v2, v19

    #@2bc
    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V

    #@2bf
    invoke-virtual/range {v17 .. v18}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@2c2
    .line 535
    return-void

    #@2c3
    .line 545
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
    :catchall_0
    move-exception v17

    #@2c4
    monitor-exit v18

    #@2c5
    throw v17

    #@2c6
    .line 583
    :catch_0
    move-exception v8

    #@2c7
    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1838
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@10
    .line 1835
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 18

    #@0
    .prologue
    .line 1165
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 1166
    .local v6, "currentTime":J
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
    .line 1167
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
    .line 1169
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
    .line 1174
    invoke-static {v6, v7, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@2b
    move-result-wide v4

    #@2c
    .line 1175
    .local v4, "start":J
    move-wide v8, v6

    #@2d
    .line 1176
    .local v8, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2f
    move-object/from16 v2, p0

    #@31
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@34
    move-result-wide v14

    #@35
    .line 1179
    .local v14, "totalBytes":J
    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 1180
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@3d
    cmp-long v2, v2, v4

    #@3f
    if-gez v2, :cond_1

    #@41
    const/4 v12, 0x1

    #@42
    .line 1181
    .local v12, "overLimitWithoutSnooze":Z
    :goto_1
    if-eqz v12, :cond_3

    #@44
    const/4 v11, 0x0

    #@45
    .line 1183
    .local v11, "networkEnabled":Z
    :goto_2
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@47
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v2, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    #@4c
    .line 1166
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v14    # "totalBytes":J
    :goto_3
    add-int/lit8 v10, v10, -0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1170
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
    .line 1180
    .restart local v4    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "totalBytes":J
    :cond_1
    const/4 v12, 0x0

    #@59
    goto :goto_1

    #@5a
    .line 1179
    :cond_2
    const/4 v12, 0x0

    #@5b
    goto :goto_1

    #@5c
    .line 1181
    .restart local v12    # "overLimitWithoutSnooze":Z
    :cond_3
    const/4 v11, 0x1

    #@5d
    .restart local v11    # "networkEnabled":Z
    goto :goto_2

    #@5e
    .line 1159
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    :cond_4
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 44

    #@0
    .prologue
    .line 1206
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    #@4
    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v37

    #@8
    .line 1214
    .local v37, "states":[Landroid/net/NetworkState;
    new-instance v13, Ljava/util/ArrayList;

    #@a
    move-object/from16 v0, v37

    #@c
    array-length v6, v0

    #@d
    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    .line 1215
    .local v13, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v14, Landroid/util/ArraySet;

    #@12
    move-object/from16 v0, v37

    #@14
    array-length v6, v0

    #@15
    invoke-direct {v14, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@18
    .line 1216
    .local v14, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@19
    move-object/from16 v0, v37

    #@1b
    array-length v7, v0

    #@1c
    :goto_0
    if-ge v6, v7, :cond_3

    #@1e
    aget-object v36, v37, v6

    #@20
    .line 1217
    .local v36, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v36

    #@22
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@24
    move-object/from16 v40, v0

    #@26
    if-eqz v40, :cond_2

    #@28
    move-object/from16 v0, v36

    #@2a
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2c
    move-object/from16 v40, v0

    #@2e
    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isConnected()Z

    #@31
    move-result v40

    #@32
    if-eqz v40, :cond_2

    #@34
    .line 1218
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@38
    move-object/from16 v40, v0

    #@3a
    move-object/from16 v0, v40

    #@3c
    move-object/from16 v1, v36

    #@3e
    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@41
    move-result-object v19

    #@42
    .line 1220
    .local v19, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v36

    #@44
    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@46
    move-object/from16 v40, v0

    #@48
    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@4b
    move-result-object v12

    #@4c
    .line 1221
    .local v12, "baseIface":Ljava/lang/String;
    if-eqz v12, :cond_0

    #@4e
    .line 1222
    move-object/from16 v0, v19

    #@50
    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@53
    move-result-object v40

    #@54
    move-object/from16 v0, v40

    #@56
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 1227
    :cond_0
    move-object/from16 v0, v36

    #@5b
    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@5d
    move-object/from16 v40, v0

    #@5f
    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    #@62
    move-result-object v35

    #@63
    .line 1228
    .local v35, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v34

    #@67
    .local v34, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v40

    #@6b
    if-eqz v40, :cond_2

    #@6d
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v33

    #@71
    check-cast v33, Landroid/net/LinkProperties;

    #@73
    .line 1229
    .local v33, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v33 .. v33}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@76
    move-result-object v32

    #@77
    .line 1230
    .local v32, "stackedIface":Ljava/lang/String;
    if-eqz v32, :cond_1

    #@79
    .line 1231
    move-object/from16 v0, v32

    #@7b
    move-object/from16 v1, v19

    #@7d
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@80
    move-result-object v40

    #@81
    move-object/from16 v0, v40

    #@83
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@86
    goto :goto_1

    #@87
    .line 1207
    .end local v12    # "baseIface":Ljava/lang/String;
    .end local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "ident":Landroid/net/NetworkIdentity;
    .end local v32    # "stackedIface":Ljava/lang/String;
    .end local v33    # "stackedLink":Landroid/net/LinkProperties;
    .end local v34    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v35    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v36    # "state":Landroid/net/NetworkState;
    .end local v37    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v15

    #@88
    .line 1209
    .local v15, "e":Landroid/os/RemoteException;
    return-void

    #@89
    .line 1216
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "state":Landroid/net/NetworkState;
    .restart local v37    # "states":[Landroid/net/NetworkState;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@8b
    goto :goto_0

    #@8c
    .line 1238
    .end local v36    # "state":Landroid/net/NetworkState;
    :cond_3
    move-object/from16 v0, p0

    #@8e
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@90
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@93
    .line 1239
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@96
    move-result-object v22

    #@97
    .line 1240
    .local v22, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@99
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@9b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@9e
    move-result v6

    #@9f
    add-int/lit8 v18, v6, -0x1

    #@a1
    .local v18, "i":I
    :goto_2
    if-ltz v18, :cond_7

    #@a3
    .line 1241
    move-object/from16 v0, p0

    #@a5
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@a7
    move/from16 v0, v18

    #@a9
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ac
    move-result-object v29

    #@ad
    check-cast v29, Landroid/net/NetworkPolicy;

    #@af
    .line 1243
    .local v29, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    #@b2
    .line 1244
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@b5
    move-result v6

    #@b6
    add-int/lit8 v24, v6, -0x1

    #@b8
    .local v24, "j":I
    :goto_3
    if-ltz v24, :cond_5

    #@ba
    .line 1245
    move/from16 v0, v24

    #@bc
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v20

    #@c0
    check-cast v20, Landroid/util/Pair;

    #@c2
    .line 1246
    .local v20, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v29

    #@c4
    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@c6
    move-object/from16 v0, v20

    #@c8
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@ca
    check-cast v6, Landroid/net/NetworkIdentity;

    #@cc
    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@cf
    move-result v6

    #@d0
    if-eqz v6, :cond_4

    #@d2
    .line 1247
    move-object/from16 v0, v20

    #@d4
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@d6
    check-cast v6, Ljava/lang/String;

    #@d8
    move-object/from16 v0, v22

    #@da
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dd
    .line 1244
    :cond_4
    add-int/lit8 v24, v24, -0x1

    #@df
    goto :goto_3

    #@e0
    .line 1251
    .end local v20    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v6

    #@e4
    if-lez v6, :cond_6

    #@e6
    .line 1252
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@e9
    move-result v6

    #@ea
    new-array v6, v6, [Ljava/lang/String;

    #@ec
    move-object/from16 v0, v22

    #@ee
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f1
    move-result-object v23

    #@f2
    check-cast v23, [Ljava/lang/String;

    #@f4
    .line 1253
    .local v23, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@f6
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@f8
    move-object/from16 v0, v29

    #@fa
    move-object/from16 v1, v23

    #@fc
    invoke-virtual {v6, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    .line 1240
    .end local v23    # "ifaces":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v18, v18, -0x1

    #@101
    goto :goto_2

    #@102
    .line 1257
    .end local v24    # "j":I
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    :cond_7
    const-wide v26, 0x7fffffffffffffffL

    #@107
    .line 1258
    .local v26, "lowestRule":J
    new-instance v28, Landroid/util/ArraySet;

    #@109
    move-object/from16 v0, v37

    #@10b
    array-length v6, v0

    #@10c
    move-object/from16 v0, v28

    #@10e
    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@111
    .line 1262
    .local v28, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@114
    move-result-wide v10

    #@115
    .line 1263
    .local v10, "currentTime":J
    move-object/from16 v0, p0

    #@117
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@119
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@11c
    move-result v6

    #@11d
    add-int/lit8 v18, v6, -0x1

    #@11f
    :goto_4
    if-ltz v18, :cond_12

    #@121
    .line 1264
    move-object/from16 v0, p0

    #@123
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@125
    move/from16 v0, v18

    #@127
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@12a
    move-result-object v29

    #@12b
    check-cast v29, Landroid/net/NetworkPolicy;

    #@12d
    .line 1265
    .restart local v29    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@12f
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@131
    move/from16 v0, v18

    #@133
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@136
    move-result-object v23

    #@137
    check-cast v23, [Ljava/lang/String;

    #@139
    .line 1269
    .restart local v23    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@13c
    move-result v6

    #@13d
    if-eqz v6, :cond_a

    #@13f
    .line 1270
    move-object/from16 v0, v29

    #@141
    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@144
    move-result-wide v8

    #@145
    .line 1271
    .local v8, "start":J
    move-object/from16 v0, v29

    #@147
    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@149
    move-object/from16 v6, p0

    #@14b
    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@14e
    move-result-wide v38

    #@14f
    .line 1281
    .local v38, "totalBytes":J
    :goto_5
    move-object/from16 v0, v29

    #@151
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@153
    const-wide/16 v40, -0x1

    #@155
    cmp-long v6, v6, v40

    #@157
    if-eqz v6, :cond_b

    #@159
    const/16 v17, 0x1

    #@15b
    .line 1282
    .local v17, "hasWarning":Z
    :goto_6
    move-object/from16 v0, v29

    #@15d
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@15f
    const-wide/16 v40, -0x1

    #@161
    cmp-long v6, v6, v40

    #@163
    if-eqz v6, :cond_c

    #@165
    const/16 v16, 0x1

    #@167
    .line 1283
    .local v16, "hasLimit":Z
    :goto_7
    if-nez v16, :cond_8

    #@169
    move-object/from16 v0, v29

    #@16b
    iget-boolean v6, v0, Landroid/net/NetworkPolicy;->metered:Z

    #@16d
    if-eqz v6, :cond_f

    #@16f
    .line 1285
    :cond_8
    if-nez v16, :cond_d

    #@171
    .line 1288
    const-wide v30, 0x7fffffffffffffffL

    #@176
    .line 1300
    .local v30, "quotaBytes":J
    :goto_8
    move-object/from16 v0, v23

    #@178
    array-length v6, v0

    #@179
    const/4 v7, 0x1

    #@17a
    if-le v6, v7, :cond_9

    #@17c
    .line 1302
    const-string/jumbo v6, "NetworkPolicy"

    #@17f
    const-string/jumbo v7, "shared quota unsupported; generating rule for each iface"

    #@182
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@185
    .line 1305
    :cond_9
    const/4 v6, 0x0

    #@186
    move-object/from16 v0, v23

    #@188
    array-length v7, v0

    #@189
    :goto_9
    if-ge v6, v7, :cond_f

    #@18b
    aget-object v21, v23, v6

    #@18d
    .line 1307
    .local v21, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@191
    move-object/from16 v40, v0

    #@193
    .line 1308
    const/16 v41, 0x20

    #@195
    shr-long v42, v30, v41

    #@197
    move-wide/from16 v0, v42

    #@199
    long-to-int v0, v0

    #@19a
    move/from16 v41, v0

    #@19c
    const-wide/16 v42, -0x1

    #@19e
    and-long v42, v42, v30

    #@1a0
    move-wide/from16 v0, v42

    #@1a2
    long-to-int v0, v0

    #@1a3
    move/from16 v42, v0

    #@1a5
    .line 1307
    const/16 v43, 0xa

    #@1a7
    move-object/from16 v0, v40

    #@1a9
    move/from16 v1, v43

    #@1ab
    move/from16 v2, v41

    #@1ad
    move/from16 v3, v42

    #@1af
    move-object/from16 v4, v21

    #@1b1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1b4
    move-result-object v40

    #@1b5
    invoke-virtual/range {v40 .. v40}, Landroid/os/Message;->sendToTarget()V

    #@1b8
    .line 1310
    move-object/from16 v0, v28

    #@1ba
    move-object/from16 v1, v21

    #@1bc
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1bf
    .line 1305
    add-int/lit8 v6, v6, 0x1

    #@1c1
    goto :goto_9

    #@1c2
    .line 1273
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v21    # "iface":Ljava/lang/String;
    .end local v30    # "quotaBytes":J
    .end local v38    # "totalBytes":J
    :cond_a
    const-wide v8, 0x7fffffffffffffffL

    #@1c7
    .line 1274
    .restart local v8    # "start":J
    const-wide/16 v38, 0x0

    #@1c9
    .restart local v38    # "totalBytes":J
    goto :goto_5

    #@1ca
    .line 1281
    :cond_b
    const/16 v17, 0x0

    #@1cc
    .restart local v17    # "hasWarning":Z
    goto :goto_6

    #@1cd
    .line 1282
    :cond_c
    const/16 v16, 0x0

    #@1cf
    goto :goto_7

    #@1d0
    .line 1289
    .restart local v16    # "hasLimit":Z
    :cond_d
    move-object/from16 v0, v29

    #@1d2
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@1d4
    cmp-long v6, v6, v8

    #@1d6
    if-ltz v6, :cond_e

    #@1d8
    .line 1292
    const-wide v30, 0x7fffffffffffffffL

    #@1dd
    .restart local v30    # "quotaBytes":J
    goto :goto_8

    #@1de
    .line 1297
    .end local v30    # "quotaBytes":J
    :cond_e
    const-wide/16 v6, 0x1

    #@1e0
    move-object/from16 v0, v29

    #@1e2
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@1e4
    move-wide/from16 v40, v0

    #@1e6
    sub-long v40, v40, v38

    #@1e8
    move-wide/from16 v0, v40

    #@1ea
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@1ed
    move-result-wide v30

    #@1ee
    .restart local v30    # "quotaBytes":J
    goto :goto_8

    #@1ef
    .line 1315
    .end local v30    # "quotaBytes":J
    :cond_f
    if-eqz v17, :cond_10

    #@1f1
    move-object/from16 v0, v29

    #@1f3
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@1f5
    cmp-long v6, v6, v26

    #@1f7
    if-gez v6, :cond_10

    #@1f9
    .line 1316
    move-object/from16 v0, v29

    #@1fb
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@1fd
    move-wide/from16 v26, v0

    #@1ff
    .line 1318
    :cond_10
    if-eqz v16, :cond_11

    #@201
    move-object/from16 v0, v29

    #@203
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@205
    cmp-long v6, v6, v26

    #@207
    if-gez v6, :cond_11

    #@209
    .line 1319
    move-object/from16 v0, v29

    #@20b
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@20d
    move-wide/from16 v26, v0

    #@20f
    .line 1263
    :cond_11
    add-int/lit8 v18, v18, -0x1

    #@211
    goto/16 :goto_4

    #@213
    .line 1323
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v23    # "ifaces":[Ljava/lang/String;
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    .end local v38    # "totalBytes":J
    :cond_12
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    #@216
    move-result v6

    #@217
    add-int/lit8 v18, v6, -0x1

    #@219
    :goto_a
    if-ltz v18, :cond_13

    #@21b
    .line 1324
    move/from16 v0, v18

    #@21d
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@220
    move-result-object v21

    #@221
    check-cast v21, Ljava/lang/String;

    #@223
    .line 1326
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@225
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@227
    const/16 v7, 0xa

    #@229
    .line 1327
    const v40, 0x7fffffff

    #@22c
    const/16 v41, -0x1

    #@22e
    .line 1326
    move/from16 v0, v40

    #@230
    move/from16 v1, v41

    #@232
    move-object/from16 v2, v21

    #@234
    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@237
    move-result-object v6

    #@238
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@23b
    .line 1329
    move-object/from16 v0, v28

    #@23d
    move-object/from16 v1, v21

    #@23f
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@242
    .line 1323
    add-int/lit8 v18, v18, -0x1

    #@244
    goto :goto_a

    #@245
    .line 1332
    .end local v21    # "iface":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    #@247
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@249
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24c
    move-result-object v7

    #@24d
    const/16 v40, 0x7

    #@24f
    move/from16 v0, v40

    #@251
    invoke-virtual {v6, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@254
    move-result-object v6

    #@255
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@258
    .line 1335
    move-object/from16 v0, p0

    #@25a
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@25c
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@25f
    move-result v6

    #@260
    add-int/lit8 v18, v6, -0x1

    #@262
    :goto_b
    if-ltz v18, :cond_15

    #@264
    .line 1336
    move-object/from16 v0, p0

    #@266
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@268
    move/from16 v0, v18

    #@26a
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@26d
    move-result-object v21

    #@26e
    check-cast v21, Ljava/lang/String;

    #@270
    .line 1337
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, v28

    #@272
    move-object/from16 v1, v21

    #@274
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@277
    move-result v6

    #@278
    if-nez v6, :cond_14

    #@27a
    .line 1338
    move-object/from16 v0, p0

    #@27c
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@27e
    const/16 v7, 0xb

    #@280
    move-object/from16 v0, v21

    #@282
    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@285
    move-result-object v6

    #@286
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@289
    .line 1335
    :cond_14
    add-int/lit8 v18, v18, -0x1

    #@28b
    goto :goto_b

    #@28c
    .line 1342
    .end local v21    # "iface":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v28

    #@28e
    move-object/from16 v1, p0

    #@290
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@292
    .line 1344
    move-object/from16 v0, p0

    #@294
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@296
    move-object/from16 v0, p0

    #@298
    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@29a
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@29d
    move-result v7

    #@29e
    new-array v7, v7, [Ljava/lang/String;

    #@2a0
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a3
    move-result-object v25

    #@2a4
    check-cast v25, [Ljava/lang/String;

    #@2a6
    .line 1345
    .local v25, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a8
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@2aa
    const/4 v7, 0x2

    #@2ab
    move-object/from16 v0, v25

    #@2ad
    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2b0
    move-result-object v6

    #@2b1
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@2b4
    .line 1201
    return-void
.end method

.method updateNotificationsLocked()V
    .locals 14

    #@0
    .prologue
    .line 911
    new-instance v6, Landroid/util/ArraySet;

    #@2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@4
    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@7
    .line 912
    .local v6, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@9
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@c
    .line 918
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@f
    move-result-wide v4

    #@10
    .line 919
    .local v4, "currentTime":J
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
    .line 920
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v10

    #@20
    check-cast v10, Landroid/net/NetworkPolicy;

    #@22
    .line 922
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 919
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 923
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 925
    invoke-static {v4, v5, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@36
    move-result-wide v2

    #@37
    .line 926
    .local v2, "start":J
    move-wide v8, v4

    #@38
    .line 927
    .local v8, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@3a
    move-object v0, p0

    #@3b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@3e
    move-result-wide v12

    #@3f
    .line 929
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 930
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@47
    cmp-long v0, v0, v2

    #@49
    if-ltz v0, :cond_2

    #@4b
    .line 931
    const/4 v0, 0x3

    #@4c
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@4f
    goto :goto_1

    #@50
    .line 933
    :cond_2
    const/4 v0, 0x2

    #@51
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@54
    .line 934
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@56
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    #@59
    goto :goto_1

    #@5a
    .line 938
    :cond_3
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@5c
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    #@5f
    .line 940
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
    .line 941
    const/4 v0, 0x1

    #@6c
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@6f
    goto :goto_1

    #@70
    .line 947
    .end local v2    # "start":J
    .end local v8    # "end":J
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@73
    move-result v0

    #@74
    add-int/lit8 v7, v0, -0x1

    #@76
    :goto_2
    if-ltz v7, :cond_6

    #@78
    .line 948
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@7b
    move-result-object v11

    #@7c
    check-cast v11, Ljava/lang/String;

    #@7e
    .line 949
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@80
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@83
    move-result v0

    #@84
    if-nez v0, :cond_5

    #@86
    .line 950
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    #@89
    .line 947
    :cond_5
    add-int/lit8 v7, v7, -0x1

    #@8b
    goto :goto_2

    #@8c
    .line 907
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 508
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@6
    move-result v0

    #@7
    .line 509
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 510
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@c
    const/4 v7, 0x0

    #@d
    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    #@10
    .line 509
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 513
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@15
    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    #@18
    move-result-object v4

    #@19
    .line 514
    .local v4, "whitelist":[I
    if-eqz v4, :cond_1

    #@1b
    .line 515
    array-length v6, v4

    #@1c
    :goto_1
    if-ge v5, v6, :cond_1

    #@1e
    aget v3, v4, v5

    #@20
    .line 516
    .local v3, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@22
    const/4 v8, 0x1

    #@23
    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 515
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_1

    #@29
    .line 519
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v1

    #@2a
    .line 505
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 431
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@3
    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    #@6
    move-result-object v2

    #@7
    .line 432
    .local v2, "whitelist":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@9
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    #@c
    .line 433
    if-eqz v2, :cond_0

    #@e
    .line 434
    array-length v5, v2

    #@f
    move v4, v3

    #@10
    :goto_0
    if-ge v4, v5, :cond_0

    #@12
    aget v1, v2, v4

    #@14
    .line 435
    .local v1, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@16
    const/4 v7, 0x1

    #@17
    invoke-virtual {v6, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1a
    .line 434
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 438
    .end local v1    # "uid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@1f
    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    #@22
    move-result-object v2

    #@23
    .line 439
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@25
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    #@28
    .line 440
    if-eqz v2, :cond_1

    #@2a
    .line 441
    array-length v4, v2

    #@2b
    :goto_1
    if-ge v3, v4, :cond_1

    #@2d
    aget v1, v2, v3

    #@2f
    .line 442
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@31
    const/4 v6, 0x1

    #@32
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 441
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1

    #@38
    .line 445
    .end local v1    # "uid":I
    .end local v2    # "whitelist":[I
    :catch_0
    move-exception v0

    #@39
    .line 429
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
    .line 2649
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 2651
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v0

    #@c
    .line 2652
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
    .line 2653
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerLocked(I)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 2656
    :cond_1
    const/4 v1, 0x0

    #@21
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@24
    .line 2648
    :goto_0
    return-void

    #@25
    .line 2654
    :cond_2
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@28
    goto :goto_0
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(IZI)V

    #@6
    .line 2562
    return-void
.end method

.method updateRuleForRestrictPowerLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2554
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(IZI)V

    #@6
    .line 2553
    return-void
.end method

.method updateRulesForAppIdleLocked()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 2625
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@4
    .line 2626
    .local v3, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    #@7
    .line 2629
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@9
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@c
    move-result-object v5

    #@d
    .line 2630
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
    .line 2631
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/content/pm/UserInfo;

    #@1b
    .line 2632
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@1d
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@1f
    invoke-virtual {v6, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    #@22
    move-result-object v0

    #@23
    .line 2633
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
    .line 2634
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
    .line 2638
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    #@38
    move-result v9

    #@39
    if-eqz v9, :cond_0

    #@3b
    .line 2639
    invoke-virtual {v3, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    #@3e
    .line 2633
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@40
    goto :goto_1

    #@41
    .line 2630
    .end local v2    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@43
    goto :goto_0

    #@44
    .line 2645
    .end local v0    # "idleUids":[I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v11, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    #@47
    .line 2624
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 2

    #@0
    .prologue
    .line 2661
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
    .line 2662
    .local v0, "enableChain":Z
    :goto_0
    const/4 v1, 0x2

    #@a
    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    #@d
    .line 2660
    return-void

    #@e
    .line 2661
    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 3

    #@0
    .prologue
    .line 2558
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@2
    .line 2559
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@4
    .line 2558
    const/4 v2, 0x1

    #@5
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(ZILandroid/util/SparseIntArray;)V

    #@8
    .line 2557
    return-void
.end method

.method updateRulesForRestrictPowerLocked()V
    .locals 3

    #@0
    .prologue
    .line 2549
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@2
    .line 2550
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@4
    .line 2549
    const/4 v2, 0x3

    #@5
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(ZILandroid/util/SparseIntArray;)V

    #@8
    .line 2548
    return-void
.end method

.method writePolicyLocked()V
    .locals 14

    #@0
    .prologue
    .line 1565
    const/4 v1, 0x0

    #@1
    .line 1567
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v1

    #@7
    .line 1569
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 1570
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v11

    #@12
    invoke-interface {v4, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 1571
    const/4 v11, 0x1

    #@16
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v11

    #@1a
    const/4 v12, 0x0

    #@1b
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1e
    .line 1573
    const-string/jumbo v11, "policy-list"

    #@21
    const/4 v12, 0x0

    #@22
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1574
    const-string/jumbo v11, "version"

    #@28
    const/16 v12, 0xa

    #@2a
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2d
    .line 1575
    const-string/jumbo v11, "restrictBackground"

    #@30
    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@32
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@35
    .line 1578
    const/4 v2, 0x0

    #@36
    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v11

    #@3c
    if-ge v2, v11, :cond_4

    #@3e
    .line 1579
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Landroid/net/NetworkPolicy;

    #@46
    .line 1580
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v9, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@48
    .line 1581
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->isPersistable()Z

    #@4b
    move-result v11

    #@4c
    if-nez v11, :cond_0

    #@4e
    .line 1578
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1583
    :cond_0
    const-string/jumbo v11, "network-policy"

    #@54
    const/4 v12, 0x0

    #@55
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 1584
    const-string/jumbo v11, "networkTemplate"

    #@5b
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@5e
    move-result v12

    #@5f
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@62
    .line 1585
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    .line 1586
    .local v8, "subscriberId":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@68
    .line 1587
    const-string/jumbo v11, "subscriberId"

    #@6b
    const/4 v12, 0x0

    #@6c
    invoke-interface {v4, v12, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6f
    .line 1589
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    .line 1590
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@75
    .line 1591
    const-string/jumbo v11, "networkId"

    #@78
    const/4 v12, 0x0

    #@79
    invoke-interface {v4, v12, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 1593
    :cond_2
    const-string/jumbo v11, "cycleDay"

    #@7f
    iget v12, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    #@81
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@84
    .line 1594
    const-string/jumbo v11, "cycleTimezone"

    #@87
    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@89
    const/4 v13, 0x0

    #@8a
    invoke-interface {v4, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 1595
    const-string/jumbo v11, "warningBytes"

    #@90
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    #@92
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@95
    .line 1596
    const-string/jumbo v11, "limitBytes"

    #@98
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    #@9a
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@9d
    .line 1597
    const-string/jumbo v11, "lastWarningSnooze"

    #@a0
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@a2
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@a5
    .line 1598
    const-string/jumbo v11, "lastLimitSnooze"

    #@a8
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@aa
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@ad
    .line 1599
    const-string/jumbo v11, "metered"

    #@b0
    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->metered:Z

    #@b2
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@b5
    .line 1600
    const-string/jumbo v11, "inferred"

    #@b8
    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->inferred:Z

    #@ba
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@bd
    .line 1601
    const-string/jumbo v11, "network-policy"

    #@c0
    const/4 v12, 0x0

    #@c1
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c4
    goto :goto_1

    #@c5
    .line 1646
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .end local v8    # "subscriberId":Ljava/lang/String;
    .end local v9    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    #@c6
    .line 1647
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    #@c8
    .line 1648
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@ca
    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@cd
    .line 1562
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    #@ce
    .line 1605
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    const/4 v2, 0x0

    #@cf
    :goto_3
    :try_start_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d1
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    #@d4
    move-result v11

    #@d5
    if-ge v2, v11, :cond_6

    #@d7
    .line 1606
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d9
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@dc
    move-result v10

    #@dd
    .line 1607
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@df
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e2
    move-result v5

    #@e3
    .line 1610
    .local v5, "policy":I
    if-nez v5, :cond_5

    #@e5
    .line 1605
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@e7
    goto :goto_3

    #@e8
    .line 1612
    :cond_5
    const-string/jumbo v11, "uid-policy"

    #@eb
    const/4 v12, 0x0

    #@ec
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ef
    .line 1613
    const-string/jumbo v11, "uid"

    #@f2
    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@f5
    .line 1614
    const-string/jumbo v11, "policy"

    #@f8
    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@fb
    .line 1615
    const-string/jumbo v11, "uid-policy"

    #@fe
    const/4 v12, 0x0

    #@ff
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@102
    goto :goto_4

    #@103
    .line 1618
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_6
    const-string/jumbo v11, "policy-list"

    #@106
    const/4 v12, 0x0

    #@107
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10a
    .line 1621
    const-string/jumbo v11, "whitelist"

    #@10d
    const/4 v12, 0x0

    #@10e
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@111
    .line 1624
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@113
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@116
    move-result v7

    #@117
    .line 1625
    .local v7, "size":I
    const/4 v2, 0x0

    #@118
    :goto_5
    if-ge v2, v7, :cond_7

    #@11a
    .line 1626
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@11c
    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@11f
    move-result v10

    #@120
    .line 1627
    .restart local v10    # "uid":I
    const-string/jumbo v11, "restrict-background"

    #@123
    const/4 v12, 0x0

    #@124
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@127
    .line 1628
    const-string/jumbo v11, "uid"

    #@12a
    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@12d
    .line 1629
    const-string/jumbo v11, "restrict-background"

    #@130
    const/4 v12, 0x0

    #@131
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@134
    .line 1625
    add-int/lit8 v2, v2, 0x1

    #@136
    goto :goto_5

    #@137
    .line 1633
    .end local v10    # "uid":I
    :cond_7
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@139
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@13c
    move-result v7

    #@13d
    .line 1634
    const/4 v2, 0x0

    #@13e
    :goto_6
    if-ge v2, v7, :cond_8

    #@140
    .line 1635
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@142
    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@145
    move-result v10

    #@146
    .line 1636
    .restart local v10    # "uid":I
    const-string/jumbo v11, "revoked-restrict-background"

    #@149
    const/4 v12, 0x0

    #@14a
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14d
    .line 1637
    const-string/jumbo v11, "uid"

    #@150
    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@153
    .line 1638
    const-string/jumbo v11, "revoked-restrict-background"

    #@156
    const/4 v12, 0x0

    #@157
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15a
    .line 1634
    add-int/lit8 v2, v2, 0x1

    #@15c
    goto :goto_6

    #@15d
    .line 1641
    .end local v10    # "uid":I
    :cond_8
    const-string/jumbo v11, "whitelist"

    #@160
    const/4 v12, 0x0

    #@161
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@164
    .line 1643
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@167
    .line 1645
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@169
    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@16c
    goto/16 :goto_2
.end method

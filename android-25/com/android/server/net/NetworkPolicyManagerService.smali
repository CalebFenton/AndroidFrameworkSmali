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
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;
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

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

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

.field private static final MSG_SET_FIREWALL_RULES:I = 0xd

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

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

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

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

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
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "restrictedNetworksChanged"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL()V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)V

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

.method static synthetic -wrap7(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyNL()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;

    #@0
    .prologue
    .line 420
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    #@3
    move-result-object v5

    #@4
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    #@7
    move-result-object v6

    #@8
    const/4 v7, 0x0

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
    .line 419
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    #@11
    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p5, "time"    # Landroid/util/TrustedTime;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    #@0
    .prologue
    .line 427
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    #@3
    .line 309
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@a
    .line 310
    new-instance v1, Ljava/lang/Object;

    #@c
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@11
    .line 321
    new-instance v1, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@18
    .line 323
    new-instance v1, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@1f
    .line 326
    new-instance v1, Landroid/util/SparseIntArray;

    #@21
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@26
    .line 328
    new-instance v1, Landroid/util/SparseIntArray;

    #@28
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@2b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@2d
    .line 331
    new-instance v1, Landroid/util/SparseIntArray;

    #@2f
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@32
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@34
    .line 333
    new-instance v1, Landroid/util/SparseIntArray;

    #@36
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@39
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@3b
    .line 335
    new-instance v1, Landroid/util/SparseIntArray;

    #@3d
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@40
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@42
    .line 339
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@44
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@47
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@49
    .line 347
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@4b
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@4e
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@50
    .line 355
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@52
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@55
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@57
    .line 358
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@59
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@5c
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@5e
    .line 364
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@60
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@63
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@65
    .line 371
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@67
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@6a
    .line 370
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@6c
    .line 379
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@6e
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@71
    .line 378
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@73
    .line 383
    new-instance v1, Landroid/util/ArraySet;

    #@75
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@78
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@7a
    .line 386
    new-instance v1, Landroid/util/ArraySet;

    #@7c
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@7f
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@81
    .line 390
    new-instance v1, Landroid/util/ArraySet;

    #@83
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@86
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@88
    .line 394
    new-instance v1, Landroid/util/SparseIntArray;

    #@8a
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@8d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@8f
    .line 400
    new-instance v1, Landroid/os/RemoteCallbackList;

    #@91
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    #@94
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@96
    .line 682
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    #@98
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@9b
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    #@9d
    .line 707
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    #@9f
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@a2
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    #@a4
    .line 719
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$3;

    #@a6
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@a9
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    #@ab
    .line 730
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    #@ad
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@b0
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@b2
    .line 750
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    #@b4
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@b7
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@b9
    .line 771
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    #@bb
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@be
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@c0
    .line 806
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    #@c2
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@c5
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    #@c7
    .line 824
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    #@c9
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@cc
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    #@ce
    .line 838
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    #@d0
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@d3
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    #@d5
    .line 852
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    #@d7
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@da
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    #@dc
    .line 881
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    #@de
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@e1
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    #@e3
    .line 926
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    #@e5
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@e8
    .line 925
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@ea
    .line 1175
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    #@ec
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@ef
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@f1
    .line 3259
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    #@f3
    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@f6
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@f8
    .line 430
    const-string/jumbo v1, "missing context"

    #@fb
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    move-result-object v1

    #@ff
    check-cast v1, Landroid/content/Context;

    #@101
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@103
    .line 431
    const-string/jumbo v1, "missing activityManager"

    #@106
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    move-result-object v1

    #@10a
    check-cast v1, Landroid/app/IActivityManager;

    #@10c
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@10e
    .line 432
    const-string/jumbo v1, "missing networkStats"

    #@111
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    move-result-object v1

    #@115
    check-cast v1, Landroid/net/INetworkStatsService;

    #@117
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@119
    .line 433
    const-string/jumbo v1, "missing networkManagement"

    #@11c
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    move-result-object v1

    #@120
    check-cast v1, Landroid/os/INetworkManagementService;

    #@122
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@124
    .line 435
    const-string/jumbo v1, "deviceidle"

    #@127
    .line 434
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12a
    move-result-object v1

    #@12b
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@12e
    move-result-object v1

    #@12f
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@131
    .line 436
    const-string/jumbo v1, "missing TrustedTime"

    #@134
    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    move-result-object v1

    #@138
    check-cast v1, Landroid/util/TrustedTime;

    #@13a
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@13c
    .line 437
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@13e
    const-string/jumbo v2, "user"

    #@141
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@144
    move-result-object v1

    #@145
    check-cast v1, Landroid/os/UserManager;

    #@147
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@149
    .line 438
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@14c
    move-result-object v1

    #@14d
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    #@14f
    .line 440
    new-instance v0, Landroid/os/HandlerThread;

    #@151
    const-string/jumbo v1, "NetworkPolicy"

    #@154
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@157
    .line 441
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@15a
    .line 442
    new-instance v1, Landroid/os/Handler;

    #@15c
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15f
    move-result-object v2

    #@160
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@162
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@165
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@167
    .line 444
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    #@169
    .line 446
    new-instance v1, Landroid/util/AtomicFile;

    #@16b
    new-instance v2, Ljava/io/File;

    #@16d
    const-string/jumbo v3, "netpolicy.xml"

    #@170
    invoke-direct {v2, p6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@173
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@176
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@178
    .line 448
    const-class v1, Landroid/app/AppOpsManager;

    #@17a
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@17d
    move-result-object v1

    #@17e
    check-cast v1, Landroid/app/AppOpsManager;

    #@180
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    #@182
    .line 451
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    #@184
    .line 452
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    #@186
    const/4 v3, 0x0

    #@187
    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    #@18a
    .line 451
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@18d
    .line 429
    return-void
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 502
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@4
    move-result-object v7

    #@5
    .line 503
    .local v7, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v6

    #@b
    .line 504
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    #@e
    move-result-object v0

    #@f
    .line 505
    .local v0, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@10
    .line 506
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
    .line 507
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Ljava/lang/String;

    #@1d
    .line 513
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
    .line 519
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    #@26
    move-result v9

    #@27
    if-nez v9, :cond_1

    #@29
    .line 520
    const-string/jumbo v9, "NetworkPolicy"

    #@2c
    new-instance v10, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v11, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

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
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 506
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@45
    goto :goto_0

    #@46
    .line 514
    :catch_0
    move-exception v3

    #@47
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    #@48
    .line 524
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4a
    invoke-static {p1, v9}, Landroid/os/UserHandle;->getUid(II)I

    #@4d
    move-result v8

    #@4e
    .line 525
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@50
    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@53
    .line 530
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@55
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@58
    move-result v9

    #@59
    if-nez v9, :cond_0

    #@5b
    .line 534
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@5d
    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@60
    .line 535
    const/4 v2, 0x1

    #@61
    goto :goto_1

    #@62
    .line 538
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
    .line 3588
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
    .line 3598
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 3599
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    .line 3600
    const-string/jumbo v2, "com.android.systemui"

    #@a
    const-string/jumbo v3, "com.android.systemui.net.NetworkOverLimitActivity"

    #@d
    .line 3599
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 3601
    const/high16 v1, 0x10000000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 3602
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 3603
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1037
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
    .line 3592
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.server.net.action.SNOOZE_WARNING"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3593
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 3594
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 3607
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 3608
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    .line 3609
    const-string/jumbo v2, "com.android.settings"

    #@a
    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    #@d
    .line 3608
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 3610
    const/high16 v1, 0x10000000

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 3611
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@1b
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    .line 3612
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1163
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1164
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@8
    .line 1165
    const/4 v3, 0x0

    #@9
    const/4 v4, -0x1

    #@a
    .line 1164
    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1160
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    #@e
    .line 1166
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
    .line 3621
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v1

    #@4
    .line 3622
    .local v1, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 3623
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x1

    #@c
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@f
    .line 3622
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 3620
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 3584
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
    .line 3221
    if-eqz p1, :cond_0

    #@2
    .line 3223
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3220
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3224
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
    .line 3251
    if-eqz p1, :cond_0

    #@2
    .line 3253
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundBlacklistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3250
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3254
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
    .line 3231
    if-eqz p1, :cond_0

    #@2
    .line 3233
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3230
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3234
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
    .line 3241
    if-eqz p1, :cond_0

    #@2
    .line 3243
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundWhitelistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3240
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3244
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
    .line 3211
    if-eqz p1, :cond_0

    #@2
    .line 3213
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 3210
    :cond_0
    :goto_0
    return-void

    #@6
    .line 3214
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 3535
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    #@5
    move-result v2

    #@6
    if-ltz v2, :cond_0

    #@8
    .line 3536
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@d
    move-result v2

    #@e
    if-ne v2, p2, :cond_0

    #@10
    .line 3538
    return-void

    #@11
    .line 3540
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@16
    .line 3542
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@18
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 3534
    :goto_0
    return-void

    #@1c
    .line 3543
    :catch_0
    move-exception v1

    #@1d
    .line 3544
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@20
    const-string/jumbo v3, "problem enable firewall chain"

    #@23
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0

    #@27
    .line 3545
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
    .line 1045
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 1046
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@d
    .line 1047
    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    #@e
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@11
    .line 1048
    const-wide/16 v6, 0x0

    #@13
    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@16
    .line 1049
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1a
    .line 1050
    const v4, 0x106005b

    #@1d
    .line 1049
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    #@20
    move-result v2

    #@21
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@24
    .line 1052
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v15

    #@2c
    .line 1053
    .local v15, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    #@2f
    .line 1149
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
    .line 1150
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    #@38
    new-array v8, v2, [I

    #@3a
    .line 1151
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    #@3e
    .line 1152
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@41
    move-result-object v7

    #@42
    const/4 v6, 0x0

    #@43
    .line 1153
    const/4 v9, -0x1

    #@44
    move-object v4, v3

    #@45
    .line 1151
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@48
    .line 1154
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@4c
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 1044
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    #@50
    .line 1055
    :pswitch_0
    const v2, 0x10404d0

    #@53
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@56
    move-result-object v19

    #@57
    .line 1056
    .local v19, "title":Ljava/lang/CharSequence;
    const v2, 0x10404d1

    #@5a
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    .line 1058
    .local v10, "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    #@61
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@64
    .line 1059
    move-object/from16 v0, v19

    #@66
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    .line 1060
    move-object/from16 v0, v19

    #@6b
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6e
    .line 1061
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@71
    .line 1062
    const/4 v2, -0x1

    #@72
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@75
    .line 1063
    const/4 v2, 0x1

    #@76
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@79
    .line 1065
    move-object/from16 v0, p1

    #@7b
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@7d
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@80
    move-result-object v18

    #@81
    .line 1067
    .local v18, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@85
    const/4 v4, 0x0

    #@86
    const/high16 v6, 0x8000000

    #@88
    .line 1066
    move-object/from16 v0, v18

    #@8a
    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@91
    .line 1069
    move-object/from16 v0, p1

    #@93
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@95
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@98
    move-result-object v20

    #@99
    .line 1071
    .local v20, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@9d
    const/4 v4, 0x0

    #@9e
    const/high16 v6, 0x8000000

    #@a0
    .line 1070
    move-object/from16 v0, v20

    #@a2
    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@a9
    goto :goto_0

    #@aa
    .line 1076
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v18    # "snoozeIntent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, 0x10404d6

    #@ad
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b0
    move-result-object v10

    #@b1
    .line 1079
    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v13, 0x10806ce

    #@b4
    .line 1080
    .local v13, "icon":I
    move-object/from16 v0, p1

    #@b6
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@b8
    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@bb
    move-result v2

    #@bc
    packed-switch v2, :pswitch_data_1

    #@bf
    .line 1095
    const/16 v19, 0x0

    #@c1
    .line 1099
    :goto_2
    const/4 v2, 0x1

    #@c2
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@c5
    .line 1100
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@c8
    .line 1101
    move-object/from16 v0, v19

    #@ca
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@cd
    .line 1102
    move-object/from16 v0, v19

    #@cf
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@d2
    .line 1103
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@d5
    .line 1105
    move-object/from16 v0, p1

    #@d7
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@d9
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@dc
    move-result-object v14

    #@dd
    .line 1107
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@df
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@e1
    const/4 v4, 0x0

    #@e2
    const/high16 v6, 0x8000000

    #@e4
    .line 1106
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@e7
    move-result-object v2

    #@e8
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@eb
    goto/16 :goto_0

    #@ed
    .line 1082
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v2, 0x10404d2

    #@f0
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f3
    move-result-object v19

    #@f4
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@f5
    .line 1085
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x10404d3

    #@f8
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@fb
    move-result-object v19

    #@fc
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@fd
    .line 1088
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, 0x10404d4

    #@100
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@103
    move-result-object v19

    #@104
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@105
    .line 1091
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, 0x10404d5

    #@108
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@10b
    move-result-object v19

    #@10c
    .line 1092
    .restart local v19    # "title":Ljava/lang/CharSequence;
    const v13, 0x1080078

    #@10f
    .line 1093
    goto :goto_2

    #@110
    .line 1111
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v13    # "icon":I
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    #@112
    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@114
    sub-long v16, p3, v6

    #@116
    .line 1112
    .local v16, "overBytes":J
    const/4 v2, 0x1

    #@117
    new-array v2, v2, [Ljava/lang/Object;

    #@119
    .line 1113
    move-object/from16 v0, p0

    #@11b
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@11d
    move-wide/from16 v0, v16

    #@11f
    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@122
    move-result-object v4

    #@123
    const/4 v6, 0x0

    #@124
    aput-object v4, v2, v6

    #@126
    .line 1112
    const v4, 0x10404db

    #@129
    invoke-virtual {v15, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@12c
    move-result-object v10

    #@12d
    .line 1116
    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@12f
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@131
    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@134
    move-result v2

    #@135
    packed-switch v2, :pswitch_data_2

    #@138
    .line 1130
    const/16 v19, 0x0

    #@13a
    .line 1134
    :goto_3
    const/4 v2, 0x1

    #@13b
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@13e
    .line 1135
    const v2, 0x1080078

    #@141
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@144
    .line 1136
    move-object/from16 v0, v19

    #@146
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@149
    .line 1137
    move-object/from16 v0, v19

    #@14b
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@14e
    .line 1138
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@151
    .line 1140
    move-object/from16 v0, p1

    #@153
    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@155
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@158
    move-result-object v14

    #@159
    .line 1142
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@15b
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@15d
    const/4 v4, 0x0

    #@15e
    const/high16 v6, 0x8000000

    #@160
    .line 1141
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@163
    move-result-object v2

    #@164
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@167
    goto/16 :goto_0

    #@169
    .line 1118
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v2, 0x10404d7

    #@16c
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@16f
    move-result-object v19

    #@170
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@171
    .line 1121
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, 0x10404d8

    #@174
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@177
    move-result-object v19

    #@178
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@179
    .line 1124
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, 0x10404d9

    #@17c
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@17f
    move-result-object v19

    #@180
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@181
    .line 1127
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, 0x10404da

    #@184
    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@187
    move-result-object v19

    #@188
    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    #@189
    .line 1155
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v19    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v12

    #@18a
    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    #@18c
    .line 1053
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    #@196
    .line 1080
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    #@1a2
    .line 1116
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyNL()V
    .locals 7

    #@0
    .prologue
    .line 1409
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    return-void

    #@5
    .line 1411
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@a
    move-result-object v4

    #@b
    .line 1412
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@10
    move-result-object v0

    #@11
    .line 1414
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@14
    move-result-object v2

    #@15
    .line 1415
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
    .line 1416
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1417
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyNL(Ljava/lang/String;)V

    #@22
    .line 1415
    add-int/lit8 v5, v5, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1407
    .end local v1    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private ensureActiveMobilePolicyNL(Ljava/lang/String;)V
    .locals 21
    .param p1, "subscriberId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1423
    new-instance v2, Landroid/net/NetworkIdentity;

    #@2
    const/4 v3, 0x0

    #@3
    .line 1424
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
    .line 1423
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@c
    .line 1425
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@13
    move-result v3

    #@14
    add-int/lit8 v19, v3, -0x1

    #@16
    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    #@18
    .line 1426
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    move/from16 v0, v19

    #@1e
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/net/NetworkTemplate;

    #@24
    .line 1427
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 1432
    return-void

    #@2b
    .line 1425
    :cond_0
    add-int/lit8 v19, v19, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1436
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
    .line 1437
    const-string/jumbo v11, "; generating default policy"

    #@48
    .line 1436
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
    .line 1440
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5a
    move-result-object v3

    #@5b
    .line 1441
    const v10, 0x10e0085

    #@5e
    .line 1440
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    #@61
    move-result v18

    #@62
    .line 1443
    .local v18, "dataWarningConfig":I
    move/from16 v0, v18

    #@64
    int-to-long v10, v0

    #@65
    const-wide/16 v12, -0x1

    #@67
    cmp-long v3, v10, v12

    #@69
    if-nez v3, :cond_2

    #@6b
    .line 1444
    const-wide/16 v8, -0x1

    #@6d
    .line 1449
    .local v8, "warningBytes":J
    :goto_1
    new-instance v20, Landroid/text/format/Time;

    #@6f
    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    #@72
    .line 1450
    .local v20, "time":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    #@75
    .line 1452
    move-object/from16 v0, v20

    #@77
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    #@79
    .line 1453
    .local v6, "cycleDay":I
    move-object/from16 v0, v20

    #@7b
    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@7d
    .line 1455
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@80
    move-result-object v5

    #@81
    .line 1456
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    #@83
    .line 1457
    const-wide/16 v10, -0x1

    #@85
    const-wide/16 v12, -0x1

    #@87
    const-wide/16 v14, -0x1

    #@89
    const/16 v16, 0x1

    #@8b
    const/16 v17, 0x1

    #@8d
    .line 1456
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@90
    .line 1458
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    #@92
    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V

    #@95
    .line 1421
    return-void

    #@96
    .line 1446
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v20    # "time":Landroid/text/format/Time;
    :cond_2
    move/from16 v0, v18

    #@98
    int-to-long v10, v0

    #@99
    const-wide/32 v12, 0x100000

    #@9c
    mul-long v8, v10, v12

    #@9e
    .restart local v8    # "warningBytes":J
    goto :goto_1
.end method

.method private findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 2245
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
    .line 2246
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/net/NetworkPolicy;

    #@12
    .line 2247
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@14
    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 2248
    return-object v1

    #@1b
    .line 2245
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2251
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
    .line 2269
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
    .line 2272
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 2273
    :try_start_0
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v18

    #@15
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v2

    #@16
    .line 2276
    if-eqz v18, :cond_0

    #@18
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 2281
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@21
    move-result-wide v6

    #@22
    .line 2284
    .local v6, "currentTime":J
    move-object/from16 v0, v18

    #@24
    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@27
    move-result-wide v4

    #@28
    .line 2285
    .local v4, "start":J
    move-wide/from16 v16, v6

    #@2a
    .line 2286
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
    .line 2289
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
    .line 2291
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
    .line 2294
    .local v14, "hardLimitBytes":J
    :goto_1
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    #@52
    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    #@55
    return-object v9

    #@56
    .line 2272
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
    .line 2278
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v2, 0x0

    #@5a
    return-object v2

    #@5b
    .line 2290
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
    .line 2292
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
    .line 424
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
    .line 3552
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
    .line 3556
    :catch_0
    move-exception v6

    #@d
    .line 3558
    .local v6, "e":Landroid/os/RemoteException;
    return-wide v8

    #@e
    .line 3553
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    #@f
    .line 3554
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
    .line 3555
    return-wide v8
.end method

.method private hasInternetPermissions(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2900
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
    .line 2902
    return v3

    #@d
    .line 2904
    :catch_0
    move-exception v0

    #@e
    .line 2906
    :cond_0
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 3563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3565
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
    .line 3570
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 3565
    return v1

    #@e
    .line 3566
    :catch_0
    move-exception v0

    #@f
    .line 3568
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    .line 3570
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 3568
    return v1

    #@14
    .line 3569
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@15
    .line 3570
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 3569
    throw v1
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 2596
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

.method static isProcStateAllowedWhileOnRestrictBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 2600
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
    .line 997
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 998
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v10

    #@e
    .line 999
    .local v10, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@13
    move-result-object v7

    #@14
    .line 1002
    .local v7, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@17
    move-result-object v9

    #@18
    .line 1003
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
    .line 1004
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1005
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    #@24
    .line 1006
    const/4 v4, 0x0

    #@25
    move v2, v1

    #@26
    move v5, v1

    #@27
    .line 1005
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@2a
    .line 1007
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 1008
    return v6

    #@31
    .line 1003
    :cond_0
    add-int/lit8 v2, v11, 0x1

    #@33
    move v11, v2

    #@34
    goto :goto_0

    #@35
    .line 1011
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_1
    return v1

    #@36
    .line 1013
    .end local v7    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v9    # "subIds":[I
    .end local v10    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    return v6
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2508
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2509
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2513
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2514
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private isUidForegroundUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2504
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    .line 2503
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundUL(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2880
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
    .line 2881
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@e
    move-result v2

    #@f
    .line 2883
    .local v2, "userId":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 2884
    array-length v5, v1

    #@16
    move v3, v4

    #@17
    :goto_0
    if-ge v3, v5, :cond_1

    #@19
    aget-object v0, v1, v3

    #@1b
    .line 2885
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@1d
    invoke-virtual {v6, v0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_0

    #@23
    .line 2886
    return v4

    #@24
    .line 2884
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2890
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    #@28
    return v3
.end method

.method private isUidStateForegroundUL(I)Z
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 2519
    const/4 v0, 0x2

    #@1
    if-gt p1, v0, :cond_0

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

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2867
    const/16 v0, 0x3f5

    #@2
    if-eq p1, v0, :cond_0

    #@4
    const/16 v0, 0x3fb

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 2869
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2868
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
    .line 2867
    if-nez v0, :cond_0

    #@16
    .line 2872
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
    .line 2876
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

.method private isWhitelistedBatterySaverUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2668
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@3
    move-result v0

    #@4
    .line 2669
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
    .line 917
    new-instance v0, Landroid/net/NetworkPolicy;

    #@4
    const-string/jumbo v3, "UTC"

    #@7
    const/4 v2, -0x1

    #@8
    .line 919
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
    .line 917
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    #@11
    return-object v0
.end method

.method private normalizePoliciesNL()V
    .locals 1

    #@0
    .prologue
    .line 1957
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
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    #@d
    .line 1956
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1961
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v3

    #@7
    .line 1962
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1964
    .local v1, "merged":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    #@10
    .line 1965
    array-length v5, p1

    #@11
    :goto_0
    if-ge v4, v5, :cond_3

    #@13
    aget-object v2, p1, v4

    #@15
    .line 1968
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@17
    invoke-static {v6, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@1a
    move-result-object v6

    #@1b
    iput-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@1d
    .line 1969
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
    .line 1970
    .local v0, "existing":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    #@29
    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    #@2c
    move-result v6

    #@2d
    if-lez v6, :cond_2

    #@2f
    .line 1971
    :cond_0
    if-eqz v0, :cond_1

    #@31
    .line 1972
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
    .line 1974
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@58
    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@5a
    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 1965
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1960
    .end local v0    # "existing":Landroid/net/NetworkPolicy;
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1023
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@11
    .line 1024
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@13
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@16
    .line 1021
    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    #@0
    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    .line 1028
    return-void
.end method

.method private readPolicyAL()V
    .locals 37

    #@0
    .prologue
    .line 1465
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@7
    .line 1466
    move-object/from16 v0, p0

    #@9
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    #@e
    .line 1468
    const/16 v22, 0x0

    #@10
    .line 1470
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
    .line 1471
    .local v22, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v23

    #@1c
    .line 1472
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
    .line 1475
    const/16 v33, 0x1

    #@2b
    .line 1476
    .local v33, "version":I
    const/16 v24, 0x0

    #@2d
    .line 1477
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
    .line 1478
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39
    move-result-object v30

    #@3a
    .line 1479
    .local v30, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    #@3b
    move/from16 v0, v31

    #@3d
    if-ne v0, v4, :cond_12

    #@3f
    .line 1480
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
    .line 1481
    move-object/from16 v0, p0

    #@4c
    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@4e
    move/from16 v27, v0

    #@50
    .line 1482
    .local v27, "oldValue":Z
    const-string/jumbo v4, "version"

    #@53
    move-object/from16 v0, v23

    #@55
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@58
    move-result v33

    #@59
    .line 1483
    const/4 v4, 0x3

    #@5a
    move/from16 v0, v33

    #@5c
    if-lt v0, v4, :cond_1

    #@5e
    .line 1485
    const-string/jumbo v4, "restrictBackground"

    #@61
    .line 1484
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
    .line 1489
    :goto_1
    move-object/from16 v0, p0

    #@6d
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@6f
    move/from16 v0, v27

    #@71
    if-eq v4, v0, :cond_0

    #@73
    .line 1492
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@77
    move-object/from16 v34, v0

    #@79
    .line 1493
    move-object/from16 v0, p0

    #@7b
    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@7d
    if-eqz v4, :cond_2

    #@7f
    const/4 v4, 0x1

    #@80
    .line 1492
    :goto_2
    const/16 v35, 0x6

    #@82
    .line 1493
    const/16 v36, 0x0

    #@84
    .line 1492
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
    .line 1595
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
    .line 1597
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundDataUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    .line 1603
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@99
    .line 1461
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    #@9a
    .line 1487
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
    .line 1598
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
    .line 1599
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
    .line 1603
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b1
    goto :goto_3

    #@b2
    .line 1493
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
    .line 1496
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
    .line 1497
    const-string/jumbo v4, "networkTemplate"

    #@c2
    move-object/from16 v0, v23

    #@c4
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@c7
    move-result v26

    #@c8
    .line 1498
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
    .line 1500
    .local v29, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    #@d7
    move/from16 v0, v33

    #@d9
    if-lt v0, v4, :cond_4

    #@db
    .line 1501
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
    .line 1505
    :goto_4
    const-string/jumbo v4, "cycleDay"

    #@eb
    move-object/from16 v0, v23

    #@ed
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@f0
    move-result v6

    #@f1
    .line 1507
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    #@f2
    move/from16 v0, v33

    #@f4
    if-lt v0, v4, :cond_5

    #@f6
    .line 1508
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
    .line 1512
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
    .line 1513
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    #@10f
    move-object/from16 v0, v23

    #@111
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@114
    move-result-wide v10

    #@115
    .line 1515
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    #@116
    move/from16 v0, v33

    #@118
    if-lt v0, v4, :cond_6

    #@11a
    .line 1516
    const-string/jumbo v4, "lastLimitSnooze"

    #@11d
    move-object/from16 v0, v23

    #@11f
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@122
    move-result-wide v14

    #@123
    .line 1523
    .local v14, "lastLimitSnooze":J
    :goto_6
    const/4 v4, 0x4

    #@124
    move/from16 v0, v33

    #@126
    if-lt v0, v4, :cond_8

    #@128
    .line 1524
    const-string/jumbo v4, "metered"

    #@12b
    move-object/from16 v0, v23

    #@12d
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@130
    move-result v16

    #@131
    .line 1537
    :goto_7
    const/4 v4, 0x5

    #@132
    move/from16 v0, v33

    #@134
    if-lt v0, v4, :cond_9

    #@136
    .line 1538
    const-string/jumbo v4, "lastWarningSnooze"

    #@139
    move-object/from16 v0, v23

    #@13b
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@13e
    move-result-wide v12

    #@13f
    .line 1543
    .local v12, "lastWarningSnooze":J
    :goto_8
    const/4 v4, 0x7

    #@140
    move/from16 v0, v33

    #@142
    if-lt v0, v4, :cond_a

    #@144
    .line 1544
    const-string/jumbo v4, "inferred"

    #@147
    move-object/from16 v0, v23

    #@149
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@14c
    move-result v17

    #@14d
    .line 1549
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
    .line 1551
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->isPersistable()Z

    #@15b
    move-result v4

    #@15c
    if-eqz v4, :cond_0

    #@15e
    .line 1552
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
    .line 1600
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
    .line 1601
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
    .line 1603
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@181
    goto/16 :goto_3

    #@183
    .line 1503
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
    .line 1510
    .end local v25    # "networkId":Ljava/lang/String;
    .restart local v6    # "cycleDay":I
    :cond_5
    :try_start_6
    const-string/jumbo v7, "UTC"

    #@18a
    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_5

    #@18c
    .line 1517
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_6
    const/4 v4, 0x2

    #@18d
    move/from16 v0, v33

    #@18f
    if-lt v0, v4, :cond_7

    #@191
    .line 1518
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
    .line 1520
    .end local v14    # "lastLimitSnooze":J
    :cond_7
    const-wide/16 v14, -0x1

    #@19d
    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    #@19e
    .line 1526
    :cond_8
    packed-switch v26, :pswitch_data_0

    #@1a1
    .line 1533
    const/16 v16, 0x0

    #@1a3
    .local v16, "metered":Z
    goto :goto_7

    #@1a4
    .line 1530
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    #@1a6
    .line 1531
    .restart local v16    # "metered":Z
    goto :goto_7

    #@1a7
    .line 1540
    .end local v16    # "metered":Z
    :cond_9
    const-wide/16 v12, -0x1

    #@1a9
    .restart local v12    # "lastWarningSnooze":J
    goto :goto_8

    #@1aa
    .line 1546
    :cond_a
    const/16 v17, 0x0

    #@1ac
    .local v17, "inferred":Z
    goto :goto_9

    #@1ad
    .line 1557
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
    .line 1558
    const-string/jumbo v4, "uid"

    #@1bb
    move-object/from16 v0, v23

    #@1bd
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1c0
    move-result v32

    #@1c1
    .line 1559
    .local v32, "uid":I
    const-string/jumbo v4, "policy"

    #@1c4
    move-object/from16 v0, v23

    #@1c6
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@1c9
    move-result v28

    #@1ca
    .line 1561
    .local v28, "policy":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    #@1cd
    move-result v4

    #@1ce
    if-eqz v4, :cond_c

    #@1d0
    .line 1562
    const/4 v4, 0x0

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    move/from16 v1, v32

    #@1d5
    move/from16 v2, v28

    #@1d7
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 1602
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
    .line 1603
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e0
    .line 1602
    throw v4

    #@1e1
    .line 1564
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
    .line 1566
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
    .line 1567
    const-string/jumbo v4, "appId"

    #@218
    move-object/from16 v0, v23

    #@21a
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@21d
    move-result v18

    #@21e
    .line 1568
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    #@221
    move-object/from16 v0, v23

    #@223
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@226
    move-result v28

    #@227
    .line 1572
    .restart local v28    # "policy":I
    const/4 v4, 0x0

    #@228
    move/from16 v0, v18

    #@22a
    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@22d
    move-result v32

    #@22e
    .line 1573
    .restart local v32    # "uid":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    #@231
    move-result v4

    #@232
    if-eqz v4, :cond_e

    #@234
    .line 1574
    const/4 v4, 0x0

    #@235
    move-object/from16 v0, p0

    #@237
    move/from16 v1, v32

    #@239
    move/from16 v2, v28

    #@23b
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    #@23e
    goto/16 :goto_0

    #@240
    .line 1576
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
    .line 1578
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
    .line 1579
    const/16 v24, 0x1

    #@276
    goto/16 :goto_0

    #@278
    .line 1580
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
    .line 1581
    const-string/jumbo v4, "uid"

    #@288
    move-object/from16 v0, v23

    #@28a
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@28d
    move-result v32

    #@28e
    .line 1582
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
    .line 1583
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
    .line 1584
    const-string/jumbo v4, "uid"

    #@2ad
    move-object/from16 v0, v23

    #@2af
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@2b2
    move-result v32

    #@2b3
    .line 1585
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
    .line 1587
    .end local v32    # "uid":I
    :cond_12
    const/4 v4, 0x3

    #@2c3
    move/from16 v0, v31

    #@2c5
    if-ne v0, v4, :cond_0

    #@2c7
    .line 1588
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
    .line 1589
    const/16 v24, 0x0

    #@2d4
    goto/16 :goto_0

    #@2d6
    .line 1603
    .end local v30    # "tag":Ljava/lang/String;
    :cond_13
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2d9
    goto/16 :goto_3

    #@2db
    .line 1526
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
    .line 3433
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3431
    :goto_0
    return-void

    #@6
    .line 3434
    :catch_0
    move-exception v1

    #@7
    .line 3435
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem removing interface quota"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 3436
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private removeRestrictBackgroundWhitelistedUidUL(IZZ)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2134
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@6
    move-result v1

    #@7
    .line 2135
    .local v1, "oldStatus":Z
    if-nez v1, :cond_0

    #@9
    if-eqz p2, :cond_5

    #@b
    .line 2139
    :cond_0
    if-nez p2, :cond_6

    #@d
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    #@10
    move-result v0

    #@11
    .line 2140
    :goto_0
    if-eqz v1, :cond_1

    #@13
    .line 2141
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
    .line 2142
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@36
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@39
    .line 2144
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@3b
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 2145
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@43
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_7

    #@49
    .line 2150
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    #@4b
    .line 2152
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(IZ)V

    #@4e
    .line 2154
    :cond_3
    if-eqz p3, :cond_4

    #@50
    .line 2156
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@52
    monitor-enter v3

    #@53
    .line 2157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    monitor-exit v3

    #@57
    .line 2162
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@59
    if-eqz v3, :cond_8

    #@5b
    :goto_2
    return v0

    #@5c
    .line 2137
    :cond_5
    return v2

    #@5d
    .line 2139
    :cond_6
    const/4 v0, 0x1

    #@5e
    .local v0, "needFirewallRules":Z
    goto :goto_0

    #@5f
    .line 2148
    .end local v0    # "needFirewallRules":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@61
    const/4 v4, 0x1

    #@62
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@65
    goto :goto_1

    #@66
    .line 2156
    :catchall_0
    move-exception v2

    #@67
    monitor-exit v3

    #@68
    throw v2

    #@69
    :cond_8
    move v0, v2

    #@6a
    .line 2162
    goto :goto_2
.end method

.method private removeUidStateUL(I)V
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    const/4 v3, 0x0

    #@3
    .line 2556
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    .line 2557
    .local v0, "index":I
    if-ltz v0, :cond_2

    #@b
    .line 2558
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@10
    move-result v1

    #@11
    .line 2559
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@16
    .line 2560
    if-eq v1, v4, :cond_2

    #@18
    .line 2561
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    #@1b
    .line 2563
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 2564
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    #@22
    .line 2566
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 2567
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    #@29
    .line 2569
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    #@2c
    .line 2570
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    #@2f
    .line 2555
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
    .line 3423
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3421
    :goto_0
    return-void

    #@6
    .line 3424
    :catch_0
    move-exception v1

    #@7
    .line 3425
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@a
    const-string/jumbo v3, "problem setting interface quota"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 3426
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
    .line 3444
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3441
    :goto_0
    return-void

    #@6
    .line 3445
    :catch_0
    move-exception v1

    #@7
    .line 3446
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
    .line 3447
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
    .line 3455
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 3452
    :goto_0
    return-void

    #@6
    .line 3456
    :catch_0
    move-exception v1

    #@7
    .line 3457
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
    .line 3458
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1232
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@5
    move-result v2

    #@6
    if-ne v2, v6, :cond_1

    #@8
    .line 1235
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@d
    move-result-object v7

    #@e
    .line 1236
    .local v7, "sm":Landroid/telephony/SubscriptionManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@13
    move-result-object v10

    #@14
    .line 1238
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@17
    move-result-object v9

    #@18
    .line 1239
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
    .line 1240
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1241
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    #@24
    .line 1242
    const/4 v4, 0x0

    #@25
    move v2, v1

    #@26
    move v5, v1

    #@27
    .line 1241
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@2a
    .line 1244
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 1245
    invoke-virtual {v10, p2, v8}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    #@33
    .line 1239
    :cond_0
    add-int/lit8 v2, v11, 0x1

    #@35
    move v11, v2

    #@36
    goto :goto_0

    #@37
    .line 1228
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v7    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v8    # "subId":I
    .end local v9    # "subIds":[I
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 2058
    const-string/jumbo v2, "NetworkPolicy"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "setRestrictBackgroundUL(): "

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
    .line 2059
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@1c
    .line 2060
    .local v1, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@1e
    .line 2064
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    #@21
    .line 2066
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
    .line 2067
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
    .line 2068
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 2071
    return-void

    #@4a
    .line 2073
    :catch_0
    move-exception v0

    #@4b
    .line 2076
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@4d
    monitor-enter v3

    #@4e
    .line 2077
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    #@51
    .line 2078
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 2057
    return-void

    #@56
    .line 2076
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2
.end method

.method private setUidFirewallRule(III)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    #@0
    .prologue
    .line 3514
    const/4 v2, 0x1

    #@1
    if-ne p1, v2, :cond_1

    #@3
    .line 3515
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 3523
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
    .line 3513
    :goto_1
    return-void

    #@e
    .line 3516
    :cond_1
    const/4 v2, 0x2

    #@f
    if-ne p1, v2, :cond_2

    #@11
    .line 3517
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@16
    goto :goto_0

    #@17
    .line 3518
    :cond_2
    const/4 v2, 0x3

    #@18
    if-ne p1, v2, :cond_0

    #@1a
    .line 3519
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@1f
    goto :goto_0

    #@20
    .line 3524
    :catch_0
    move-exception v1

    #@21
    .line 3525
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    #@24
    const-string/jumbo v3, "problem setting firewall uid rules"

    #@27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_1

    #@2b
    .line 3526
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
    .line 3495
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v4

    #@4
    .line 3496
    .local v4, "size":I
    new-array v5, v4, [I

    #@6
    .line 3497
    .local v5, "uids":[I
    new-array v3, v4, [I

    #@8
    .line 3498
    .local v3, "rules":[I
    add-int/lit8 v2, v4, -0x1

    #@a
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    #@c
    .line 3499
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@f
    move-result v6

    #@10
    aput v6, v5, v2

    #@12
    .line 3500
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@15
    move-result v6

    #@16
    aput v6, v3, v2

    #@18
    .line 3498
    add-int/lit8 v2, v2, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 3502
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@1d
    invoke-interface {v6, p1, v5, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    .line 3493
    .end local v2    # "index":I
    .end local v3    # "rules":[I
    .end local v4    # "size":I
    .end local v5    # "uids":[I
    :goto_1
    return-void

    #@21
    .line 3503
    :catch_0
    move-exception v1

    #@22
    .line 3504
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "NetworkPolicy"

    #@25
    const-string/jumbo v7, "problem setting firewall uid rules"

    #@28
    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_1

    #@2c
    .line 3505
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    #@2d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    #@0
    .prologue
    .line 3485
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0xd

    #@4
    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 3484
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
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
    .line 1769
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    #@5
    .line 1771
    if-ne p3, v3, :cond_4

    #@7
    const/4 v0, 0x1

    #@8
    .line 1772
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@a
    .line 1773
    if-eqz v0, :cond_0

    #@c
    move v2, v3

    #@d
    .line 1772
    :cond_0
    const/16 v5, 0xc

    #@f
    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 1775
    if-ne p2, v3, :cond_5

    #@18
    const/4 v1, 0x1

    #@19
    .line 1777
    .local v1, "wasBlacklisted":Z
    :goto_1
    if-nez p2, :cond_1

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 1778
    :cond_1
    if-eqz v1, :cond_3

    #@1f
    if-nez p3, :cond_3

    #@21
    .line 1779
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
    .line 1768
    :cond_3
    return-void

    #@2e
    .line 1771
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "wasBlacklisted":Z
    :cond_4
    const/4 v0, 0x0

    #@2f
    .restart local v0    # "isBlacklisted":Z
    goto :goto_0

    #@30
    .line 1775
    :cond_5
    const/4 v1, 0x0

    #@31
    .restart local v1    # "wasBlacklisted":Z
    goto :goto_1
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    #@0
    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@5
    .line 1788
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    #@8
    .line 1789
    if-eqz p3, :cond_0

    #@a
    .line 1790
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@c
    monitor-enter v0

    #@d
    .line 1791
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v0

    #@11
    .line 1784
    :cond_0
    return-void

    #@12
    .line 1790
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method

.method private updateNetworkStats(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    #@0
    .prologue
    .line 2578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2576
    :goto_0
    return-void

    #@6
    .line 2579
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    #@0
    .prologue
    .line 2587
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    #@3
    move-result v1

    #@4
    .line 2589
    .local v1, "oldForeground":Z
    invoke-static {p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    #@7
    move-result v0

    #@8
    .line 2590
    .local v0, "newForeground":Z
    if-eq v1, v0, :cond_0

    #@a
    .line 2591
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    #@d
    .line 2585
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2924
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    #@3
    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    #@6
    .line 2926
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    #@9
    .line 2929
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    #@c
    .line 2932
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    #@f
    .line 2922
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .locals 14
    .param p1, "type"    # I

    #@0
    .prologue
    .line 2807
    const-wide/32 v10, 0x200000

    #@3
    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@6
    move-result v10

    #@7
    if-eqz v10, :cond_0

    #@9
    .line 2808
    new-instance v10, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v11, "updateRulesForRestrictPowerUL-"

    #@11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v10

    #@15
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    const-wide/32 v12, 0x200000

    #@20
    invoke-static {v12, v13, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@23
    .line 2811
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v5

    #@29
    .line 2814
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2b
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@2e
    move-result-object v8

    #@2f
    .line 2816
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const v10, 0xc2200

    #@32
    .line 2815
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    #@35
    move-result-object v1

    #@36
    .line 2820
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@39
    move-result v9

    #@3a
    .line 2821
    .local v9, "usersSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@3d
    move-result v2

    #@3e
    .line 2822
    .local v2, "appsSize":I
    const/4 v3, 0x0

    #@3f
    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    #@41
    .line 2823
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Landroid/content/pm/UserInfo;

    #@47
    .line 2824
    .local v7, "user":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    #@48
    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    #@4a
    .line 2825
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@50
    .line 2826
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    #@52
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@54
    invoke-static {v10, v11}, Landroid/os/UserHandle;->getUid(II)I

    #@57
    move-result v6

    #@58
    .line 2827
    .local v6, "uid":I
    packed-switch p1, :pswitch_data_0

    #@5b
    .line 2835
    const-string/jumbo v10, "NetworkPolicy"

    #@5e
    new-instance v11, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v12, "Invalid type for updateRulesForAllApps: "

    #@66
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v11

    #@72
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 2824
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@77
    goto :goto_1

    #@78
    .line 2829
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    goto :goto_2

    #@7c
    .line 2839
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "appsSize":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "usersSize":I
    :catchall_0
    move-exception v10

    #@7d
    .line 2840
    const-wide/32 v12, 0x200000

    #@80
    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@83
    move-result v11

    #@84
    if-eqz v11, :cond_1

    #@86
    .line 2841
    const-wide/32 v12, 0x200000

    #@89
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@8c
    .line 2839
    :cond_1
    throw v10

    #@8d
    .line 2832
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v2    # "appsSize":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "uid":I
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v9    # "usersSize":I
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    goto :goto_2

    #@91
    .line 2822
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@93
    goto :goto_0

    #@94
    .line 2840
    .end local v4    # "j":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const-wide/32 v10, 0x200000

    #@97
    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@9a
    move-result v10

    #@9b
    if-eqz v10, :cond_4

    #@9d
    .line 2841
    const-wide/32 v10, 0x200000

    #@a0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@a3
    .line 2806
    :cond_4
    return-void

    #@a4
    .line 2827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2975
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(IZ)V

    #@4
    .line 2974
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsUL(IZ)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 2983
    if-nez p2, :cond_0

    #@4
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    #@7
    move-result v8

    #@8
    if-eqz v8, :cond_5

    #@a
    .line 2988
    :cond_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    #@f
    move-result v7

    #@10
    .line 2989
    .local v7, "uidPolicy":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@12
    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    #@15
    move-result v6

    #@16
    .line 2990
    .local v6, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    #@19
    move-result v1

    #@1a
    .line 2992
    .local v1, "isForeground":Z
    and-int/lit8 v8, v7, 0x1

    #@1c
    if-eqz v8, :cond_6

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 2993
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@21
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@24
    move-result v2

    #@25
    .line 2994
    .local v2, "isWhitelisted":Z
    and-int/lit8 v5, v6, 0xf

    #@27
    .line 2995
    .local v5, "oldRule":I
    const/4 v3, 0x0

    #@28
    .line 2998
    .local v3, "newRule":I
    if-eqz v1, :cond_8

    #@2a
    .line 2999
    if-nez v0, :cond_7

    #@2c
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@2e
    if-eqz v8, :cond_1

    #@30
    if-eqz v2, :cond_7

    #@32
    .line 3001
    :cond_1
    if-eqz v2, :cond_2

    #@34
    .line 3002
    const/4 v3, 0x1

    #@35
    .line 3011
    :cond_2
    :goto_1
    and-int/lit16 v8, v6, 0xf0

    #@37
    or-int v4, v3, v8

    #@39
    .line 3024
    .local v4, "newUidRules":I
    if-nez v4, :cond_a

    #@3b
    .line 3025
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@3d
    invoke-virtual {v8, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@40
    .line 3031
    :goto_2
    if-eq v3, v5, :cond_4

    #@42
    .line 3032
    and-int/lit8 v8, v3, 0x2

    #@44
    if-eqz v8, :cond_b

    #@46
    .line 3036
    invoke-direct {p0, p1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@49
    .line 3040
    if-eqz v0, :cond_3

    #@4b
    .line 3041
    invoke-direct {p0, p1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    #@4e
    .line 3081
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@50
    invoke-virtual {v8, v11, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    #@57
    .line 2982
    :cond_4
    return-void

    #@58
    .line 2985
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "isForeground":Z
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "newRule":I
    .end local v4    # "newUidRules":I
    .end local v5    # "oldRule":I
    .end local v6    # "oldUidRules":I
    .end local v7    # "uidPolicy":I
    :cond_5
    return-void

    #@59
    .line 2992
    .restart local v1    # "isForeground":Z
    .restart local v6    # "oldUidRules":I
    .restart local v7    # "uidPolicy":I
    :cond_6
    const/4 v0, 0x0

    #@5a
    .restart local v0    # "isBlacklisted":Z
    goto :goto_0

    #@5b
    .line 3000
    .restart local v2    # "isWhitelisted":Z
    .restart local v3    # "newRule":I
    .restart local v5    # "oldRule":I
    :cond_7
    const/4 v3, 0x2

    #@5c
    .line 2999
    goto :goto_1

    #@5d
    .line 3005
    :cond_8
    if-eqz v0, :cond_9

    #@5f
    .line 3006
    const/4 v3, 0x4

    #@60
    goto :goto_1

    #@61
    .line 3007
    :cond_9
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@63
    if-eqz v8, :cond_2

    #@65
    if-eqz v2, :cond_2

    #@67
    .line 3008
    const/4 v3, 0x1

    #@68
    goto :goto_1

    #@69
    .line 3027
    .restart local v4    # "newUidRules":I
    :cond_a
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@6b
    invoke-virtual {v8, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@6e
    goto :goto_2

    #@6f
    .line 3043
    :cond_b
    and-int/lit8 v8, v5, 0x2

    #@71
    if-eqz v8, :cond_d

    #@73
    .line 3050
    if-nez v2, :cond_c

    #@75
    .line 3051
    invoke-direct {p0, p1, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@78
    .line 3053
    :cond_c
    if-eqz v0, :cond_3

    #@7a
    .line 3054
    invoke-direct {p0, p1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    #@7d
    goto :goto_3

    #@7e
    .line 3056
    :cond_d
    and-int/lit8 v8, v3, 0x4

    #@80
    if-nez v8, :cond_e

    #@82
    .line 3057
    and-int/lit8 v8, v5, 0x4

    #@84
    if-eqz v8, :cond_f

    #@86
    .line 3059
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    #@89
    .line 3060
    and-int/lit8 v8, v5, 0x4

    #@8b
    if-eqz v8, :cond_3

    #@8d
    if-eqz v2, :cond_3

    #@8f
    .line 3064
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@92
    goto :goto_3

    #@93
    .line 3066
    :cond_f
    and-int/lit8 v8, v3, 0x1

    #@95
    if-nez v8, :cond_10

    #@97
    .line 3067
    and-int/lit8 v8, v5, 0x1

    #@99
    if-eqz v8, :cond_11

    #@9b
    .line 3069
    :cond_10
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    #@9e
    goto :goto_3

    #@9f
    .line 3072
    :cond_11
    const-string/jumbo v8, "NetworkPolicy"

    #@a2
    new-instance v9, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v10, "Unexpected change of metered UID state for "

    #@aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    .line 3073
    const-string/jumbo v10, ": foreground="

    #@b5
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    .line 3074
    const-string/jumbo v10, ", whitelisted="

    #@c0
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    .line 3075
    const-string/jumbo v10, ", blacklisted="

    #@cb
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v9

    #@cf
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    .line 3076
    const-string/jumbo v10, ", newRule="

    #@d6
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v9

    #@da
    .line 3076
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@dd
    move-result-object v10

    #@de
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v9

    #@e2
    .line 3077
    const-string/jumbo v10, ", oldRule="

    #@e5
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v9

    #@e9
    .line 3077
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@ec
    move-result-object v10

    #@ed
    .line 3072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v9

    #@f1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v9

    #@f5
    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    goto/16 :goto_3
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4
    .param p1, "restrictedNetworksChanged"    # Z

    #@0
    .prologue
    const-wide/32 v2, 0x200000

    #@3
    .line 2758
    const-string/jumbo v0, "updateRulesForGlobalChangeAL"

    #@6
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2760
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    #@c
    .line 2761
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    #@f
    .line 2762
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    #@12
    .line 2765
    if-eqz p1, :cond_0

    #@14
    .line 2766
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    #@17
    .line 2767
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 2770
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@1d
    .line 2757
    return-void

    #@1e
    .line 2769
    :catchall_0
    move-exception v0

    #@1f
    .line 2770
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@22
    .line 2769
    throw v0
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 10
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3125
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    .line 3127
    return v1

    #@8
    .line 3130
    :cond_0
    if-nez p3, :cond_1

    #@a
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    #@d
    move-result v1

    #@e
    .line 3131
    .local v1, "isIdle":Z
    :cond_1
    if-nez v1, :cond_5

    #@10
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@12
    if-nez v7, :cond_5

    #@14
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@16
    .line 3132
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    #@19
    move-result v0

    #@1a
    .line 3134
    .local v0, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(I)Z

    #@1d
    move-result v2

    #@1e
    .line 3135
    .local v2, "isWhitelisted":Z
    and-int/lit16 v5, p2, 0xf0

    #@20
    .line 3136
    .local v5, "oldRule":I
    const/4 v3, 0x0

    #@21
    .line 3142
    .local v3, "newRule":I
    if-eqz v0, :cond_6

    #@23
    .line 3143
    if-eqz v6, :cond_2

    #@25
    .line 3144
    const/16 v3, 0x20

    #@27
    .line 3150
    :cond_2
    :goto_1
    and-int/lit8 v7, p2, 0xf

    #@29
    or-int v4, v7, v3

    #@2b
    .line 3166
    .local v4, "newUidRules":I
    if-eq v3, v5, :cond_4

    #@2d
    .line 3167
    if-eqz v3, :cond_3

    #@2f
    and-int/lit8 v7, v3, 0x20

    #@31
    if-eqz v7, :cond_8

    #@33
    .line 3179
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@35
    const/4 v8, 0x1

    #@36
    invoke-virtual {v7, v8, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    #@3d
    .line 3182
    :cond_4
    return v4

    #@3e
    .line 3131
    .end local v0    # "isForeground":Z
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "newRule":I
    .end local v4    # "newUidRules":I
    .end local v5    # "oldRule":I
    :cond_5
    const/4 v6, 0x1

    #@3f
    .local v6, "restrictMode":Z
    goto :goto_0

    #@40
    .line 3146
    .end local v6    # "restrictMode":Z
    .restart local v0    # "isForeground":Z
    .restart local v2    # "isWhitelisted":Z
    .restart local v3    # "newRule":I
    .restart local v5    # "oldRule":I
    :cond_6
    if-eqz v6, :cond_2

    #@42
    .line 3147
    if-eqz v2, :cond_7

    #@44
    const/16 v3, 0x20

    #@46
    goto :goto_1

    #@47
    :cond_7
    const/16 v3, 0x40

    #@49
    goto :goto_1

    #@4a
    .line 3169
    .restart local v4    # "newUidRules":I
    :cond_8
    and-int/lit8 v7, v3, 0x40

    #@4c
    if-nez v7, :cond_3

    #@4e
    .line 3173
    const-string/jumbo v7, "NetworkPolicy"

    #@51
    new-instance v8, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v9, "Unexpected change of non-metered UID state for "

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    .line 3174
    const-string/jumbo v9, ": foreground="

    #@64
    .line 3173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    .line 3175
    const-string/jumbo v9, ", whitelisted="

    #@6f
    .line 3173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    .line 3176
    const-string/jumbo v9, ", newRule="

    #@7a
    .line 3173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    .line 3176
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    .line 3173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    .line 3177
    const-string/jumbo v9, ", oldRule="

    #@89
    .line 3173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    .line 3177
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    .line 3173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v8

    #@99
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    goto :goto_2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3104
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@3
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v1

    #@7
    .line 3106
    .local v1, "oldUidRules":I
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    #@a
    move-result v0

    #@b
    .line 3108
    .local v0, "newUidRules":I
    if-nez v0, :cond_0

    #@d
    .line 3109
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@f
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@12
    .line 3103
    :goto_0
    return-void

    #@13
    .line 3111
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@18
    goto :goto_0
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 4

    #@0
    .prologue
    const-wide/32 v2, 0x200000

    #@3
    .line 2787
    const-string/jumbo v0, "updateRulesForRestrictBackgroundUL"

    #@6
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2789
    const/4 v0, 0x1

    #@a
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 2791
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@10
    .line 2786
    return-void

    #@11
    .line 2790
    :catchall_0
    move-exception v0

    #@12
    .line 2791
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@15
    .line 2790
    throw v0
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 4

    #@0
    .prologue
    const-wide/32 v2, 0x200000

    #@3
    .line 2776
    const-string/jumbo v0, "updateRulesForRestrictPowerUL"

    #@6
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2778
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    #@c
    .line 2779
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    #@f
    .line 2780
    const/4 v0, 0x2

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 2782
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@16
    .line 2775
    return-void

    #@17
    .line 2781
    :catchall_0
    move-exception v0

    #@18
    .line 2782
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 2781
    throw v0
.end method

.method private updateRulesForTempWhitelistChangeUL()V
    .locals 7

    #@0
    .prologue
    .line 2847
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v5

    #@6
    .line 2848
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
    .line 2849
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/content/pm/UserInfo;

    #@13
    .line 2850
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
    .line 2851
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@1f
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@22
    move-result v0

    #@23
    .line 2852
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    #@25
    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@28
    move-result v3

    #@29
    .line 2854
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    #@2c
    .line 2855
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    #@2f
    .line 2856
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    #@32
    .line 2858
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    #@35
    .line 2850
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_1

    #@38
    .line 2848
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 2846
    .end local v2    # "j":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    #@0
    .prologue
    .line 2675
    if-eqz p2, :cond_1

    #@2
    .line 2676
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2677
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
    .line 2676
    if-eqz v0, :cond_2

    #@14
    .line 2678
    :cond_0
    const/4 v0, 0x1

    #@15
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@18
    .line 2674
    :cond_1
    :goto_0
    return-void

    #@19
    .line 2680
    :cond_2
    const/4 v0, 0x0

    #@1a
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@1d
    goto :goto_0
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 2635
    if-eqz p1, :cond_6

    #@3
    .line 2638
    move-object v4, p3

    #@4
    .line 2639
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    #@7
    .line 2640
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@9
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@c
    move-result-object v6

    #@d
    .line 2641
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
    .line 2642
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/content/pm/UserInfo;

    #@1b
    .line 2643
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
    .line 2644
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@27
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 2645
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2f
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@32
    move-result v0

    #@33
    .line 2646
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@35
    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@38
    move-result v3

    #@39
    .line 2647
    .local v3, "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@3c
    .line 2643
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 2650
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
    .line 2651
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@4b
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@4e
    move-result v0

    #@4f
    .line 2652
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@51
    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@54
    move-result v3

    #@55
    .line 2653
    .restart local v3    # "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@58
    .line 2650
    add-int/lit8 v1, v1, -0x1

    #@5a
    goto :goto_2

    #@5b
    .line 2641
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@5d
    goto :goto_0

    #@5e
    .line 2656
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
    .line 2657
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
    .line 2658
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@76
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@79
    move-result v7

    #@7a
    invoke-virtual {p3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@7d
    .line 2656
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@7f
    goto :goto_3

    #@80
    .line 2661
    :cond_5
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V

    #@83
    .line 2634
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_4
    return-void

    #@84
    .line 2663
    :cond_6
    const/4 v7, 0x0

    #@85
    const/4 v8, 0x2

    #@86
    invoke-direct {p0, p2, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V

    #@89
    goto :goto_4
.end method

.method private updateUidStateUL(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x200000

    #@3
    .line 2528
    const-string/jumbo v1, "updateUidStateUL"

    #@6
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2530
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@b
    const/16 v2, 0x10

    #@d
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@10
    move-result v0

    #@11
    .line 2531
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_4

    #@13
    .line 2533
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@18
    .line 2534
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    #@1b
    .line 2535
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@1e
    move-result v1

    #@1f
    .line 2536
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    #@22
    move-result v2

    #@23
    .line 2535
    if-eq v1, v2, :cond_3

    #@25
    .line 2537
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 2538
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    #@2e
    .line 2540
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 2541
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    #@35
    .line 2543
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 2544
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    #@3c
    .line 2546
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    #@3f
    .line 2548
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundUL(I)Z

    #@42
    move-result v1

    #@43
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 2551
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@49
    .line 2527
    return-void

    #@4a
    .line 2550
    .end local v0    # "oldUidState":I
    :catchall_0
    move-exception v1

    #@4b
    .line 2551
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4e
    .line 2550
    throw v1
.end method

.method private upgradeLegacyBackgroundDataUL()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1613
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    const-string/jumbo v3, "background_data"

    #@a
    .line 1612
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-eq v2, v1, :cond_1

    #@10
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@12
    .line 1616
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1617
    new-instance v0, Landroid/content/Intent;

    #@18
    .line 1618
    const-string/jumbo v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    #@1b
    .line 1617
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 1619
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@22
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@25
    .line 1611
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    #@26
    .line 1612
    :cond_1
    const/4 v1, 0x0

    #@27
    goto :goto_0
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .locals 6

    #@0
    .prologue
    .line 490
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    .line 491
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    .line 493
    .local v2, "numberUsers":I
    const/4 v0, 0x0

    #@b
    .line 494
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 495
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/content/pm/UserInfo;

    #@14
    .line 496
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    #@16
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_0

    #@1c
    .line 494
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 496
    :cond_0
    const/4 v0, 0x1

    #@20
    goto :goto_1

    #@21
    .line 498
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    #@0
    .prologue
    .line 3617
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
    .line 3616
    return-void
.end method

.method addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 1925
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
    .line 1926
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
    .line 1927
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@15
    .line 1924
    return-void
.end method

.method public addRestrictBackgroundWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2084
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2088
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 2089
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    move-result v2

    #@14
    .line 2090
    .local v2, "oldStatus":Z
    if-eqz v2, :cond_0

    #@16
    monitor-exit v4

    #@17
    .line 2092
    return-void

    #@18
    .line 2094
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    #@1b
    move-result v1

    #@1c
    .line 2095
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
    .line 2096
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@3f
    const/4 v5, 0x1

    #@40
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@43
    .line 2097
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@45
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 2098
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@4d
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@50
    move-result v3

    #@51
    .line 2097
    if-eqz v3, :cond_1

    #@53
    .line 2101
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@55
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@58
    .line 2103
    :cond_1
    if-eqz v1, :cond_2

    #@5a
    .line 2105
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    #@5d
    .line 2108
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@5f
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@60
    .line 2109
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    :try_start_3
    monitor-exit v3

    #@64
    .line 2111
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@66
    if-eqz v3, :cond_3

    #@68
    if-eqz v2, :cond_4

    #@6a
    :cond_3
    const/4 v0, 0x0

    #@6b
    .local v0, "changed":I
    :goto_0
    monitor-exit v4

    #@6c
    .line 2113
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@6e
    .line 2114
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@70
    .line 2113
    const/16 v5, 0x9

    #@72
    invoke-virtual {v3, v5, p1, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@79
    .line 2083
    return-void

    #@7a
    .line 2108
    .end local v0    # "changed":I
    :catchall_0
    move-exception v5

    #@7b
    :try_start_4
    monitor-exit v3

    #@7c
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7d
    .line 2088
    .end local v1    # "needFirewallRules":Z
    .end local v2    # "oldStatus":Z
    :catchall_1
    move-exception v3

    #@7e
    monitor-exit v4

    #@7f
    throw v3

    #@80
    .line 2111
    .restart local v1    # "needFirewallRules":Z
    .restart local v2    # "oldStatus":Z
    :cond_4
    if-eqz v1, :cond_3

    #@82
    const/4 v0, 0x1

    #@83
    .restart local v0    # "changed":I
    goto :goto_0
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1736
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v3, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1738
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1739
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
    .line 1742
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 1743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 1744
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    #@36
    .line 1745
    if-eq v0, p2, :cond_1

    #@38
    .line 1746
    const/4 v1, 0x1

    #@39
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    :cond_1
    monitor-exit v2

    #@3d
    .line 1735
    return-void

    #@3e
    .line 1742
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
    .line 456
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
    .line 455
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    #@0
    .prologue
    .line 460
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
    .line 459
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2323
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v12, "android.permission.DUMP"

    #@5
    const-string/jumbo v13, "NetworkPolicy"

    #@8
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2325
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v11, "  "

    #@10
    move-object/from16 v0, p2

    #@12
    invoke-direct {v3, v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@15
    .line 2327
    .local v3, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    #@17
    move-object/from16 v0, p3

    #@19
    array-length v11, v0

    #@1a
    invoke-direct {v2, v11}, Landroid/util/ArraySet;-><init>(I)V

    #@1d
    .line 2328
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
    .line 2329
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    .line 2328
    add-int/lit8 v11, v11, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2332
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@2d
    monitor-enter v12

    #@2e
    .line 2333
    :try_start_0
    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@30
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    .line 2334
    :try_start_1
    const-string/jumbo v11, "--unsnooze"

    #@34
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@37
    move-result v11

    #@38
    if-eqz v11, :cond_2

    #@3a
    .line 2335
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@3f
    move-result v11

    #@40
    add-int/lit8 v4, v11, -0x1

    #@42
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    #@44
    .line 2336
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@46
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@49
    move-result-object v11

    #@4a
    check-cast v11, Landroid/net/NetworkPolicy;

    #@4c
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->clearSnooze()V

    #@4f
    .line 2335
    add-int/lit8 v4, v4, -0x1

    #@51
    goto :goto_1

    #@52
    .line 2339
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    #@55
    .line 2340
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    #@58
    .line 2341
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    #@5b
    .line 2342
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    #@5e
    .line 2343
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    #@61
    .line 2345
    const-string/jumbo v11, "Cleared snooze timestamps"

    #@64
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@68
    monitor-exit v12

    #@69
    .line 2346
    return-void

    #@6a
    .line 2349
    .end local v4    # "i":I
    :cond_2
    :try_start_3
    const-string/jumbo v11, "System ready: "

    #@6d
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@70
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@72
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@75
    .line 2350
    const-string/jumbo v11, "Restrict background: "

    #@78
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@7b
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@7d
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@80
    .line 2351
    const-string/jumbo v11, "Restrict power: "

    #@83
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@86
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@88
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@8b
    .line 2352
    const-string/jumbo v11, "Device idle: "

    #@8e
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@91
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@93
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    #@96
    .line 2353
    const-string/jumbo v11, "Network policies:"

    #@99
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 2354
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9f
    .line 2355
    const/4 v4, 0x0

    #@a0
    .restart local v4    # "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@a2
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@a5
    move-result v11

    #@a6
    if-ge v4, v11, :cond_3

    #@a8
    .line 2356
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@aa
    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ad
    move-result-object v11

    #@ae
    check-cast v11, Landroid/net/NetworkPolicy;

    #@b0
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    #@b3
    move-result-object v11

    #@b4
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b7
    .line 2355
    add-int/lit8 v4, v4, 0x1

    #@b9
    goto :goto_2

    #@ba
    .line 2358
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@bd
    .line 2360
    const-string/jumbo v11, "Metered ifaces: "

    #@c0
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c3
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@c5
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@c8
    move-result-object v11

    #@c9
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@cc
    .line 2362
    const-string/jumbo v11, "Policy for UIDs:"

    #@cf
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@d2
    .line 2363
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@d5
    .line 2364
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d7
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    #@da
    move-result v7

    #@db
    .line 2365
    .local v7, "size":I
    const/4 v4, 0x0

    #@dc
    :goto_3
    if-ge v4, v7, :cond_4

    #@de
    .line 2366
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@e0
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@e3
    move-result v9

    #@e4
    .line 2367
    .local v9, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@e6
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e9
    move-result v6

    #@ea
    .line 2368
    .local v6, "policy":I
    const-string/jumbo v11, "UID="

    #@ed
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f0
    .line 2369
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@f3
    .line 2370
    const-string/jumbo v11, " policy="

    #@f6
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f9
    .line 2371
    const-class v11, Landroid/net/NetworkPolicyManager;

    #@fb
    const-string/jumbo v14, "POLICY_"

    #@fe
    invoke-static {v11, v14, v6}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@101
    move-result-object v11

    #@102
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@105
    .line 2372
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@108
    .line 2365
    add-int/lit8 v4, v4, 0x1

    #@10a
    goto :goto_3

    #@10b
    .line 2374
    .end local v6    # "policy":I
    .end local v9    # "uid":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@10e
    .line 2376
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@110
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@113
    move-result v7

    #@114
    .line 2377
    if-lez v7, :cond_6

    #@116
    .line 2378
    const-string/jumbo v11, "Power save whitelist (except idle) app ids:"

    #@119
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@11c
    .line 2379
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@11f
    .line 2380
    const/4 v4, 0x0

    #@120
    :goto_4
    if-ge v4, v7, :cond_5

    #@122
    .line 2381
    const-string/jumbo v11, "UID="

    #@125
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@128
    .line 2382
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@12a
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@12d
    move-result v11

    #@12e
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@131
    .line 2383
    const-string/jumbo v11, ": "

    #@134
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@137
    .line 2384
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@139
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@13c
    move-result v11

    #@13d
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    #@140
    .line 2385
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@143
    .line 2380
    add-int/lit8 v4, v4, 0x1

    #@145
    goto :goto_4

    #@146
    .line 2387
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@149
    .line 2390
    :cond_6
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@14b
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@14e
    move-result v7

    #@14f
    .line 2391
    if-lez v7, :cond_8

    #@151
    .line 2392
    const-string/jumbo v11, "Power save whitelist app ids:"

    #@154
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@157
    .line 2393
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@15a
    .line 2394
    const/4 v4, 0x0

    #@15b
    :goto_5
    if-ge v4, v7, :cond_7

    #@15d
    .line 2395
    const-string/jumbo v11, "UID="

    #@160
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@163
    .line 2396
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@165
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@168
    move-result v11

    #@169
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@16c
    .line 2397
    const-string/jumbo v11, ": "

    #@16f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@172
    .line 2398
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@174
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@177
    move-result v11

    #@178
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    #@17b
    .line 2399
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@17e
    .line 2394
    add-int/lit8 v4, v4, 0x1

    #@180
    goto :goto_5

    #@181
    .line 2401
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@184
    .line 2404
    :cond_8
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@186
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@189
    move-result v7

    #@18a
    .line 2405
    if-lez v7, :cond_a

    #@18c
    .line 2406
    const-string/jumbo v11, "Restrict background whitelist uids:"

    #@18f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@192
    .line 2407
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@195
    .line 2408
    const/4 v4, 0x0

    #@196
    :goto_6
    if-ge v4, v7, :cond_9

    #@198
    .line 2409
    const-string/jumbo v11, "UID="

    #@19b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@19e
    .line 2410
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@1a0
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1a3
    move-result v11

    #@1a4
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1a7
    .line 2411
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1aa
    .line 2408
    add-int/lit8 v4, v4, 0x1

    #@1ac
    goto :goto_6

    #@1ad
    .line 2413
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1b0
    .line 2416
    :cond_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@1b2
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@1b5
    move-result v7

    #@1b6
    .line 2417
    if-lez v7, :cond_c

    #@1b8
    .line 2418
    const-string/jumbo v11, "Default restrict background whitelist uids:"

    #@1bb
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1be
    .line 2419
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1c1
    .line 2420
    const/4 v4, 0x0

    #@1c2
    :goto_7
    if-ge v4, v7, :cond_b

    #@1c4
    .line 2421
    const-string/jumbo v11, "UID="

    #@1c7
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1ca
    .line 2422
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@1cc
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1cf
    move-result v11

    #@1d0
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1d3
    .line 2423
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1d6
    .line 2420
    add-int/lit8 v4, v4, 0x1

    #@1d8
    goto :goto_7

    #@1d9
    .line 2425
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1dc
    .line 2428
    :cond_c
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@1de
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@1e1
    move-result v7

    #@1e2
    .line 2429
    if-lez v7, :cond_e

    #@1e4
    .line 2430
    const-string/jumbo v11, "Default restrict background whitelist uids revoked by users:"

    #@1e7
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1ea
    .line 2431
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1ed
    .line 2432
    const/4 v4, 0x0

    #@1ee
    :goto_8
    if-ge v4, v7, :cond_d

    #@1f0
    .line 2433
    const-string/jumbo v11, "UID="

    #@1f3
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1f6
    .line 2434
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@1f8
    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@1fb
    move-result v11

    #@1fc
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@1ff
    .line 2435
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@202
    .line 2432
    add-int/lit8 v4, v4, 0x1

    #@204
    goto :goto_8

    #@205
    .line 2437
    :cond_d
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@208
    .line 2440
    :cond_e
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@20a
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@20d
    .line 2441
    .local v5, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@20f
    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    #@212
    .line 2442
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@214
    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    #@217
    .line 2444
    const-string/jumbo v11, "Status for all known UIDs:"

    #@21a
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@21d
    .line 2445
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@220
    .line 2446
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@223
    move-result v7

    #@224
    .line 2447
    const/4 v4, 0x0

    #@225
    :goto_9
    if-ge v4, v7, :cond_11

    #@227
    .line 2448
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@22a
    move-result v9

    #@22b
    .line 2449
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    #@22e
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@231
    .line 2450
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@234
    .line 2452
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    #@236
    const/16 v14, 0x10

    #@238
    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    #@23b
    move-result v8

    #@23c
    .line 2453
    .local v8, "state":I
    const-string/jumbo v11, " state="

    #@23f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@242
    .line 2454
    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@245
    .line 2455
    const/4 v11, 0x2

    #@246
    if-gt v8, v11, :cond_f

    #@248
    .line 2456
    const-string/jumbo v11, " (fg)"

    #@24b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@24e
    .line 2462
    :goto_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@250
    const/4 v14, 0x0

    #@251
    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    #@254
    move-result v10

    #@255
    .line 2463
    .local v10, "uidRules":I
    const-string/jumbo v11, " rules="

    #@258
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@25b
    .line 2464
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@25e
    move-result-object v11

    #@25f
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@262
    .line 2465
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@265
    .line 2447
    add-int/lit8 v4, v4, 0x1

    #@267
    goto :goto_9

    #@268
    .line 2458
    .end local v10    # "uidRules":I
    :cond_f
    const/4 v11, 0x4

    #@269
    if-gt v8, v11, :cond_10

    #@26b
    .line 2459
    const-string/jumbo v11, " (fg svc)"

    #@26e
    .line 2458
    :goto_b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@271
    goto :goto_a

    #@272
    .line 2333
    .end local v4    # "i":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v7    # "size":I
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :catchall_0
    move-exception v11

    #@273
    :try_start_4
    monitor-exit v13

    #@274
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@275
    .line 2332
    :catchall_1
    move-exception v11

    #@276
    monitor-exit v12

    #@277
    throw v11

    #@278
    .line 2459
    .restart local v4    # "i":I
    .restart local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v7    # "size":I
    .restart local v8    # "state":I
    .restart local v9    # "uid":I
    :cond_10
    :try_start_5
    const-string/jumbo v11, " (bg)"

    #@27b
    goto :goto_b

    #@27c
    .line 2467
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@27f
    .line 2469
    const-string/jumbo v11, "Status for just UIDs with rules:"

    #@282
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@285
    .line 2470
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@288
    .line 2471
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@28a
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    #@28d
    move-result v7

    #@28e
    .line 2472
    const/4 v4, 0x0

    #@28f
    :goto_c
    if-ge v4, v7, :cond_12

    #@291
    .line 2473
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@293
    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@296
    move-result v9

    #@297
    .line 2474
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    #@29a
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@29d
    .line 2475
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@2a0
    .line 2476
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@2a2
    const/4 v14, 0x0

    #@2a3
    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    #@2a6
    move-result v10

    #@2a7
    .line 2477
    .restart local v10    # "uidRules":I
    const-string/jumbo v11, " rules="

    #@2aa
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@2ad
    .line 2478
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    #@2b0
    move-result-object v11

    #@2b1
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@2b4
    .line 2479
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2b7
    .line 2472
    add-int/lit8 v4, v4, 0x1

    #@2b9
    goto :goto_c

    #@2ba
    .line 2481
    .end local v9    # "uid":I
    .end local v10    # "uidRules":I
    :cond_12
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@2bd
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2be
    monitor-exit v12

    #@2bf
    .line 2322
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3629
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@6
    const-string/jumbo v7, "NetworkPolicy"

    #@9
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 3631
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
    .line 3632
    return-void

    #@18
    .line 3636
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
    .line 3637
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@25
    move-result-object v2

    #@26
    .line 3638
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
    .line 3639
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2e
    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_1

    #@34
    .line 3640
    const-wide/16 v8, -0x1

    #@36
    iput-wide v8, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    #@38
    .line 3641
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    #@3a
    .line 3642
    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    #@3d
    .line 3638
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 3645
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    #@43
    .line 3648
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    #@46
    .line 3650
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
    .line 3652
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
    .line 3653
    .local v3, "uid":I
    invoke-virtual {p0, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    #@5f
    .line 3652
    add-int/lit8 v4, v4, 0x1

    #@61
    goto :goto_1

    #@62
    .line 3628
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
    .line 1932
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    #@6
    const-string/jumbo v6, "NetworkPolicy"

    #@9
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1934
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
    .line 1946
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@19
    monitor-enter v5

    #@1a
    .line 1947
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v3

    #@20
    .line 1948
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    #@22
    .line 1949
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@25
    .line 1950
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
    .line 1949
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1937
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    #@33
    .line 1938
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@35
    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    #@38
    const-string/jumbo v6, "NetworkPolicy"

    #@3b
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 1940
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
    .line 1942
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
    .line 1952
    return-object v2

    #@51
    .line 1946
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
    .line 2256
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 2262
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v2

    #@13
    .line 2264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 2262
    return-object v2

    #@17
    .line 2263
    :catchall_0
    move-exception v2

    #@18
    .line 2264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 2263
    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    #@0
    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2213
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 2214
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v0

    #@11
    return v1

    #@12
    .line 2213
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
    .line 2184
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    #@7
    const-string/jumbo v7, "NetworkPolicy"

    #@a
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v1

    #@11
    .line 2187
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@13
    monitor-enter v5

    #@14
    .line 2189
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    move-result-wide v2

    #@18
    .line 2192
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result v0

    #@1c
    .line 2194
    .local v0, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 2196
    if-ne v0, v8, :cond_0

    #@21
    monitor-exit v5

    #@22
    .line 2198
    return v4

    #@23
    .line 2193
    .end local v0    # "policy":I
    :catchall_0
    move-exception v4

    #@24
    .line 2194
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 2193
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 2187
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    #@29
    monitor-exit v5

    #@2a
    throw v4

    #@2b
    .line 2200
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
    .line 2201
    return v8

    #@31
    .line 2203
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
    .line 2204
    const/4 v4, 0x2

    #@3a
    :cond_2
    monitor-exit v5

    #@3b
    .line 2203
    return v4
.end method

.method public getRestrictBackgroundWhitelistedUids()[I
    .locals 6

    #@0
    .prologue
    .line 2167
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2168
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 2169
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@10
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    #@13
    move-result v1

    #@14
    .line 2170
    .local v1, "size":I
    new-array v2, v1, [I

    #@16
    .line 2171
    .local v2, "whitelist":[I
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@19
    .line 2172
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
    .line 2171
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    :cond_0
    monitor-exit v4

    #@25
    .line 2178
    return-object v2

    #@26
    .line 2168
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
    .line 1798
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1800
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1801
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
    .line 1800
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
    .line 1807
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v6, "NetworkPolicy"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1809
    const/4 v4, 0x0

    #@c
    new-array v3, v4, [I

    #@e
    .line 1810
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@10
    monitor-enter v5

    #@11
    .line 1811
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
    .line 1812
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1f
    move-result v1

    #@20
    .line 1813
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@22
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@25
    move-result v2

    #@26
    .line 1814
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    #@28
    .line 1815
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v3

    #@2c
    .line 1811
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
    .line 1819
    return-object v3

    #@31
    .line 1810
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
    const/4 v4, 0x0

    #@1
    .line 2299
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2300
    return v4

    #@6
    .line 2303
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    #@b
    move-result-object v0

    #@c
    .line 2306
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 2307
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v1

    #@13
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3

    #@14
    .line 2310
    if-eqz v1, :cond_1

    #@16
    .line 2311
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    #@18
    return v3

    #@19
    .line 2306
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit v3

    #@1b
    throw v4

    #@1c
    .line 2313
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@1e
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    #@21
    move-result v2

    #@22
    .line 2314
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getMetered()Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_3

    #@2e
    :cond_2
    const/4 v3, 0x6

    #@2f
    if-ne v2, v3, :cond_4

    #@31
    .line 2315
    :cond_3
    const/4 v3, 0x1

    #@32
    return v3

    #@33
    .line 2317
    :cond_4
    return v4
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2497
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@d
    monitor-enter v0

    #@e
    .line 2498
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundUL(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    monitor-exit v0

    #@13
    return v1

    #@14
    .line 2497
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
    .line 3578
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
    .line 3579
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    #@f
    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    #@12
    .line 3577
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
    .line 2489
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
    .line 2488
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    #@0
    .prologue
    .line 2026
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2027
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 2028
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
    .line 2029
    const/4 v0, 0x0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v1

    #@2f
    .line 2023
    return-void

    #@30
    .line 2026
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@3
    .line 1993
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 1994
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 1995
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@c
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 1997
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/net/NetworkPolicy;

    #@15
    .line 1998
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    #@17
    .line 1999
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "unable to find policy for "

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 1995
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    #@32
    :try_start_2
    monitor-exit v5

    #@33
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@34
    .line 1994
    :catchall_1
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3

    #@37
    .line 2002
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@3a
    .line 2010
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string/jumbo v6, "unexpected type"

    #@3f
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 2004
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@45
    .line 2013
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    #@48
    .line 2014
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    #@4b
    .line 2015
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    #@4e
    .line 2016
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    #@51
    .line 2017
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@55
    monitor-exit v4

    #@56
    .line 1991
    return-void

    #@57
    .line 2007
    :pswitch_1
    :try_start_5
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@59
    goto :goto_0

    #@5a
    .line 2002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistUL()V
    .locals 3

    #@0
    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    #@5
    move-result v0

    #@6
    .line 564
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 565
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 566
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@14
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    #@17
    .line 564
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 562
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1893
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@10
    .line 1890
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
    .line 2119
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@7
    const-string/jumbo v5, "NetworkPolicy"

    #@a
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2121
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 2122
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x1

    #@12
    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    .local v0, "changed":Z
    monitor-exit v3

    #@17
    .line 2124
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 2125
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1d
    .line 2124
    const/16 v4, 0x9

    #@1f
    invoke-virtual {v3, v4, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@26
    .line 2118
    return-void

    #@27
    .line 2121
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
    .line 2124
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1753
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v3, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1755
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1756
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
    .line 1759
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 1760
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@30
    const/4 v3, 0x0

    #@31
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 1761
    .local v0, "oldPolicy":I
    not-int v1, p2

    #@36
    and-int p2, v0, v1

    #@38
    .line 1762
    if-eq v0, p2, :cond_1

    #@3a
    .line 1763
    const/4 v1, 0x1

    #@3b
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    :cond_1
    monitor-exit v2

    #@3f
    .line 1752
    return-void

    #@40
    .line 1759
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    throw v1
.end method

.method removeUserStateUL(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1829
    const/4 v0, 0x0

    #@2
    .line 1832
    .local v0, "changed":Z
    new-array v4, v5, [I

    #@4
    .line 1833
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
    .line 1834
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@f
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@12
    move-result v2

    #@13
    .line 1835
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@16
    move-result v6

    #@17
    if-ne v6, p1, :cond_0

    #@19
    .line 1836
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@1c
    move-result-object v4

    #@1d
    .line 1833
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1840
    .end local v2    # "uid":I
    :cond_1
    array-length v6, v4

    #@21
    if-lez v6, :cond_3

    #@23
    .line 1841
    array-length v7, v4

    #@24
    move v6, v5

    #@25
    :goto_1
    if-ge v6, v7, :cond_2

    #@27
    aget v2, v4, v6

    #@29
    .line 1842
    .restart local v2    # "uid":I
    invoke-direct {p0, v2, v5, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z

    #@2c
    .line 1841
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1844
    .end local v2    # "uid":I
    :cond_2
    const/4 v0, 0x1

    #@30
    .line 1848
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
    .line 1849
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@3c
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@3f
    move-result v2

    #@40
    .line 1850
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@43
    move-result v6

    #@44
    if-ne v6, p1, :cond_4

    #@46
    .line 1851
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@48
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    #@4b
    .line 1852
    const/4 v0, 0x1

    #@4c
    .line 1848
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@4e
    goto :goto_2

    #@4f
    .line 1857
    .end local v2    # "uid":I
    :cond_5
    new-array v3, v5, [I

    #@51
    .line 1858
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
    .line 1859
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@5c
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@5f
    move-result v2

    #@60
    .line 1860
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@63
    move-result v6

    #@64
    if-ne v6, p1, :cond_6

    #@66
    .line 1861
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@69
    move-result-object v3

    #@6a
    .line 1858
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@6c
    goto :goto_3

    #@6d
    .line 1865
    .end local v2    # "uid":I
    :cond_7
    array-length v6, v3

    #@6e
    if-lez v6, :cond_9

    #@70
    .line 1866
    array-length v6, v3

    #@71
    :goto_4
    if-ge v5, v6, :cond_8

    #@73
    aget v2, v3, v5

    #@75
    .line 1867
    .restart local v2    # "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@77
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->delete(I)V

    #@7a
    .line 1866
    add-int/lit8 v5, v5, 0x1

    #@7c
    goto :goto_4

    #@7d
    .line 1869
    .end local v2    # "uid":I
    :cond_8
    const/4 v0, 0x1

    #@7e
    .line 1871
    :cond_9
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@80
    monitor-enter v6

    #@81
    .line 1872
    const/4 v5, 0x1

    #@82
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    #@85
    .line 1873
    if-eqz p2, :cond_a

    #@87
    if-eqz v0, :cond_a

    #@89
    .line 1874
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c
    :cond_a
    monitor-exit v6

    #@8d
    .line 1877
    return v0

    #@8e
    .line 1871
    :catchall_0
    move-exception v5

    #@8f
    monitor-exit v6

    #@90
    throw v5
.end method

.method public setConnectivityListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1883
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1884
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Connectivity listener already registered"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1886
    :cond_0
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    #@1a
    .line 1881
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const-wide/32 v4, 0x200000

    #@3
    .line 2220
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    #@8
    const-string/jumbo v2, "NetworkPolicy"

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 2221
    const-string/jumbo v0, "setDeviceIdleMode"

    #@11
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@14
    .line 2223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@16
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    .line 2224
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    if-ne v0, p1, :cond_0

    #@1b
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    .line 2240
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 2225
    return-void

    #@20
    .line 2227
    :cond_0
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@22
    .line 2228
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 2231
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    :cond_1
    :try_start_4
    monitor-exit v1

    #@2a
    .line 2234
    if-eqz p1, :cond_2

    #@2c
    .line 2235
    const-string/jumbo v0, "net"

    #@2f
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@32
    .line 2240
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@35
    .line 2219
    return-void

    #@36
    .line 2223
    :catchall_0
    move-exception v0

    #@37
    :try_start_5
    monitor-exit v1

    #@38
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@39
    .line 2239
    :catchall_1
    move-exception v0

    #@3a
    .line 2240
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3d
    .line 2239
    throw v0

    #@3e
    .line 2237
    :cond_2
    :try_start_6
    const-string/jumbo v0, "net"

    #@41
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@44
    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 1905
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 1909
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@12
    .line 1910
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@14
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@15
    .line 1911
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@17
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@18
    .line 1912
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    #@1b
    .line 1913
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    #@1e
    .line 1914
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    #@21
    .line 1915
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    #@24
    .line 1916
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@29
    .line 1920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1904
    return-void

    #@2d
    .line 1911
    :catchall_0
    move-exception v2

    #@2e
    :try_start_5
    monitor-exit v4

    #@2f
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@30
    .line 1910
    :catchall_1
    move-exception v2

    #@31
    :try_start_6
    monitor-exit v3

    #@32
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@33
    .line 1919
    :catchall_2
    move-exception v2

    #@34
    .line 1920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 1919
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2036
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@6
    const-string/jumbo v5, "NetworkPolicy"

    #@9
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2037
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 2039
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    #@13
    .line 2040
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@15
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    .line 2041
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@18
    if-ne p1, v2, :cond_0

    #@1a
    .line 2043
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
    .line 2050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 2044
    return-void

    #@39
    .line 2046
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    .line 2050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 2053
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
    .line 2035
    return-void

    #@4e
    .line 2040
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
    .line 2049
    :catchall_1
    move-exception v2

    #@52
    .line 2050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 2049
    throw v2

    #@56
    :cond_1
    move v2, v3

    #@57
    .line 2053
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 1716
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v5, "NetworkPolicy"

    #@8
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1718
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1719
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
    .line 1721
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@2d
    monitor-enter v4

    #@2e
    .line 1722
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    move-result-wide v2

    #@32
    .line 1724
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
    .line 1725
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    #@3b
    .line 1726
    const/4 v1, 0x1

    #@3c
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 1729
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    monitor-exit v4

    #@43
    .line 1715
    return-void

    #@44
    .line 1728
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    #@45
    .line 1729
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1728
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@49
    .line 1721
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
    .line 1981
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    #@5
    const-string/jumbo v4, "NetworkPolicy"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1983
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 1985
    .local v0, "token":J
    const/4 v2, 0x2

    #@10
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1987
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1980
    return-void

    #@17
    .line 1986
    :catchall_0
    move-exception v2

    #@18
    .line 1987
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1986
    throw v2
.end method

.method public systemReady()V
    .locals 18

    #@0
    .prologue
    .line 572
    const-string/jumbo v13, "systemReady"

    #@3
    const-wide/32 v14, 0x200000

    #@6
    invoke-static {v14, v15, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 574
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    #@c
    move-result v13

    #@d
    if-nez v13, :cond_0

    #@f
    .line 575
    const-string/jumbo v13, "NetworkPolicy"

    #@12
    const-string/jumbo v14, "bandwidth controls disabled, unable to enforce policy"

    #@15
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@18
    .line 678
    const-wide/32 v14, 0x200000

    #@1b
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@1e
    .line 576
    return-void

    #@1f
    .line 579
    :cond_0
    :try_start_1
    const-class v13, Landroid/app/usage/UsageStatsManagerInternal;

    #@21
    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@24
    move-result-object v13

    #@25
    check-cast v13, Landroid/app/usage/UsageStatsManagerInternal;

    #@27
    move-object/from16 v0, p0

    #@29
    iput-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@2b
    .line 581
    move-object/from16 v0, p0

    #@2d
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    #@2f
    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@30
    .line 582
    :try_start_2
    move-object/from16 v0, p0

    #@32
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    #@34
    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 583
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    #@38
    .line 584
    const-class v13, Landroid/os/PowerManagerInternal;

    #@3a
    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3d
    move-result-object v13

    #@3e
    check-cast v13, Landroid/os/PowerManagerInternal;

    #@40
    move-object/from16 v0, p0

    #@42
    iput-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@44
    .line 585
    move-object/from16 v0, p0

    #@46
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@48
    .line 586
    new-instance v16, Lcom/android/server/net/NetworkPolicyManagerService$15;

    #@4a
    move-object/from16 v0, v16

    #@4c
    move-object/from16 v1, p0

    #@4e
    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    #@51
    .line 585
    move-object/from16 v0, v16

    #@53
    invoke-virtual {v13, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    #@56
    .line 598
    move-object/from16 v0, p0

    #@58
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@5a
    invoke-virtual {v13}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    #@5d
    move-result v13

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@62
    .line 600
    const/4 v13, 0x1

    #@63
    move-object/from16 v0, p0

    #@65
    iput-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    #@67
    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    #@6a
    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    #@6d
    move-result v13

    #@6e
    if-eqz v13, :cond_1

    #@70
    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    #@73
    .line 609
    :cond_1
    move-object/from16 v0, p0

    #@75
    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@77
    move-object/from16 v0, p0

    #@79
    invoke-direct {v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    #@7c
    .line 610
    const/4 v13, 0x0

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    #@82
    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@86
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@87
    .line 616
    :try_start_6
    move-object/from16 v0, p0

    #@89
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    #@8f
    .line 617
    const/4 v15, 0x3

    #@90
    .line 616
    invoke-interface {v13, v14, v15}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V

    #@93
    .line 618
    move-object/from16 v0, p0

    #@95
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    #@9b
    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@9e
    .line 624
    :goto_0
    :try_start_7
    new-instance v10, Landroid/content/IntentFilter;

    #@a0
    .line 625
    const-string/jumbo v13, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    #@a3
    .line 624
    invoke-direct {v10, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a6
    .line 626
    .local v10, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@a8
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@b2
    const/16 v16, 0x0

    #@b4
    move-object/from16 v0, v16

    #@b6
    invoke-virtual {v13, v14, v10, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@b9
    .line 629
    const-class v13, Lcom/android/server/DeviceIdleController$LocalService;

    #@bb
    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@be
    move-result-object v4

    #@bf
    check-cast v4, Lcom/android/server/DeviceIdleController$LocalService;

    #@c1
    .line 630
    .local v4, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    #@c3
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    #@c5
    invoke-virtual {v4, v13}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    #@c8
    .line 633
    new-instance v3, Landroid/content/IntentFilter;

    #@ca
    const-string/jumbo v13, "android.net.conn.CONNECTIVITY_CHANGE"

    #@cd
    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@d0
    .line 634
    .local v3, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@d2
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    #@d8
    const-string/jumbo v15, "android.permission.CONNECTIVITY_INTERNAL"

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@df
    move-object/from16 v16, v0

    #@e1
    move-object/from16 v0, v16

    #@e3
    invoke-virtual {v13, v14, v3, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@e6
    .line 637
    new-instance v6, Landroid/content/IntentFilter;

    #@e8
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@eb
    .line 638
    .local v6, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.PACKAGE_ADDED"

    #@ee
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f1
    .line 639
    const-string/jumbo v13, "package"

    #@f4
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@f7
    .line 640
    move-object/from16 v0, p0

    #@f9
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@103
    const/16 v16, 0x0

    #@105
    move-object/from16 v0, v16

    #@107
    invoke-virtual {v13, v14, v6, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@10a
    .line 643
    move-object/from16 v0, p0

    #@10c
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@10e
    .line 644
    move-object/from16 v0, p0

    #@110
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    #@112
    new-instance v15, Landroid/content/IntentFilter;

    #@114
    const-string/jumbo v16, "android.intent.action.UID_REMOVED"

    #@117
    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@11e
    move-object/from16 v16, v0

    #@120
    const/16 v17, 0x0

    #@122
    .line 643
    move-object/from16 v0, v17

    #@124
    move-object/from16 v1, v16

    #@126
    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@129
    .line 647
    new-instance v9, Landroid/content/IntentFilter;

    #@12b
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    #@12e
    .line 648
    .local v9, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.USER_ADDED"

    #@131
    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@134
    .line 649
    const-string/jumbo v13, "android.intent.action.USER_REMOVED"

    #@137
    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@13a
    .line 650
    move-object/from16 v0, p0

    #@13c
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@13e
    move-object/from16 v0, p0

    #@140
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@142
    move-object/from16 v0, p0

    #@144
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@146
    const/16 v16, 0x0

    #@148
    move-object/from16 v0, v16

    #@14a
    invoke-virtual {v13, v14, v9, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@14d
    .line 653
    new-instance v8, Landroid/content/IntentFilter;

    #@14f
    const-string/jumbo v13, "com.android.server.action.NETWORK_STATS_UPDATED"

    #@152
    invoke-direct {v8, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@155
    .line 654
    .local v8, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@157
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@159
    .line 655
    move-object/from16 v0, p0

    #@15b
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    #@15d
    const-string/jumbo v15, "android.permission.READ_NETWORK_USAGE_HISTORY"

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@164
    move-object/from16 v16, v0

    #@166
    .line 654
    move-object/from16 v0, v16

    #@168
    invoke-virtual {v13, v14, v8, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@16b
    .line 658
    new-instance v2, Landroid/content/IntentFilter;

    #@16d
    const-string/jumbo v13, "com.android.server.net.action.ALLOW_BACKGROUND"

    #@170
    invoke-direct {v2, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@173
    .line 659
    .local v2, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@175
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@177
    move-object/from16 v0, p0

    #@179
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    #@17b
    const-string/jumbo v15, "android.permission.MANAGE_NETWORK_POLICY"

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@182
    move-object/from16 v16, v0

    #@184
    move-object/from16 v0, v16

    #@186
    invoke-virtual {v13, v14, v2, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@189
    .line 662
    new-instance v7, Landroid/content/IntentFilter;

    #@18b
    const-string/jumbo v13, "com.android.server.net.action.SNOOZE_WARNING"

    #@18e
    invoke-direct {v7, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@191
    .line 663
    .local v7, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@193
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    #@199
    .line 664
    const-string/jumbo v15, "android.permission.MANAGE_NETWORK_POLICY"

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1a0
    move-object/from16 v16, v0

    #@1a2
    .line 663
    move-object/from16 v0, v16

    #@1a4
    invoke-virtual {v13, v14, v7, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1a7
    .line 668
    new-instance v11, Landroid/content/IntentFilter;

    #@1a9
    const-string/jumbo v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@1ac
    invoke-direct {v11, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1af
    .line 669
    .local v11, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@1b1
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1bb
    const/16 v16, 0x0

    #@1bd
    move-object/from16 v0, v16

    #@1bf
    invoke-virtual {v13, v14, v11, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1c2
    .line 672
    new-instance v12, Landroid/content/IntentFilter;

    #@1c4
    .line 673
    const-string/jumbo v13, "android.net.wifi.STATE_CHANGE"

    #@1c7
    .line 672
    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1ca
    .line 674
    .local v12, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    #@1cc
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@1d6
    const/16 v16, 0x0

    #@1d8
    move-object/from16 v0, v16

    #@1da
    invoke-virtual {v13, v14, v12, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1dd
    .line 676
    move-object/from16 v0, p0

    #@1df
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@1e1
    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    #@1e3
    const/4 v15, 0x0

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    invoke-direct {v14, v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V

    #@1e9
    invoke-virtual {v13, v14}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@1ec
    .line 678
    const-wide/32 v14, 0x200000

    #@1ef
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@1f2
    .line 571
    return-void

    #@1f3
    .line 582
    .end local v2    # "allowFilter":Landroid/content/IntentFilter;
    .end local v3    # "connFilter":Landroid/content/IntentFilter;
    .end local v4    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v6    # "packageFilter":Landroid/content/IntentFilter;
    .end local v7    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v8    # "statsFilter":Landroid/content/IntentFilter;
    .end local v9    # "userFilter":Landroid/content/IntentFilter;
    .end local v10    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v11    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v12    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v13

    #@1f4
    :try_start_8
    monitor-exit v15

    #@1f5
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1f6
    .line 581
    :catchall_1
    move-exception v13

    #@1f7
    :try_start_9
    monitor-exit v14

    #@1f8
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@1f9
    .line 677
    :catchall_2
    move-exception v13

    #@1fa
    .line 678
    const-wide/32 v14, 0x200000

    #@1fd
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@200
    .line 677
    throw v13

    #@201
    .line 619
    :catch_0
    move-exception v5

    #@202
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    const-string/jumbo v2, "NetworkPolicy"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1900
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@10
    .line 1897
    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 18

    #@0
    .prologue
    .line 1202
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 1203
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
    .line 1204
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
    .line 1206
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
    .line 1211
    invoke-static {v6, v7, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@2b
    move-result-wide v4

    #@2c
    .line 1212
    .local v4, "start":J
    move-wide v8, v6

    #@2d
    .line 1213
    .local v8, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@2f
    move-object/from16 v2, p0

    #@31
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@34
    move-result-wide v14

    #@35
    .line 1216
    .local v14, "totalBytes":J
    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 1217
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@3d
    cmp-long v2, v2, v4

    #@3f
    if-gez v2, :cond_1

    #@41
    const/4 v12, 0x1

    #@42
    .line 1218
    .local v12, "overLimitWithoutSnooze":Z
    :goto_1
    if-eqz v12, :cond_3

    #@44
    const/4 v11, 0x0

    #@45
    .line 1220
    .local v11, "networkEnabled":Z
    :goto_2
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@47
    move-object/from16 v0, p0

    #@49
    invoke-direct {v0, v2, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    #@4c
    .line 1203
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
    .line 1207
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
    .line 1217
    .restart local v4    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "totalBytes":J
    :cond_1
    const/4 v12, 0x0

    #@59
    goto :goto_1

    #@5a
    .line 1216
    :cond_2
    const/4 v12, 0x0

    #@5b
    goto :goto_1

    #@5c
    .line 1218
    .restart local v12    # "overLimitWithoutSnooze":Z
    :cond_3
    const/4 v11, 0x1

    #@5d
    .restart local v11    # "networkEnabled":Z
    goto :goto_2

    #@5e
    .line 1196
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    :cond_4
    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 44

    #@0
    .prologue
    .line 1261
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
    .line 1269
    .local v37, "states":[Landroid/net/NetworkState;
    new-instance v13, Ljava/util/ArrayList;

    #@a
    move-object/from16 v0, v37

    #@c
    array-length v6, v0

    #@d
    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    .line 1270
    .local v13, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v14, Landroid/util/ArraySet;

    #@12
    move-object/from16 v0, v37

    #@14
    array-length v6, v0

    #@15
    invoke-direct {v14, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@18
    .line 1271
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
    .line 1272
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
    .line 1273
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
    .line 1275
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
    .line 1276
    .local v12, "baseIface":Ljava/lang/String;
    if-eqz v12, :cond_0

    #@4e
    .line 1277
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
    .line 1282
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
    .line 1283
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
    .line 1284
    .local v33, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v33 .. v33}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@76
    move-result-object v32

    #@77
    .line 1285
    .local v32, "stackedIface":Ljava/lang/String;
    if-eqz v32, :cond_1

    #@79
    .line 1286
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
    .line 1262
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
    .line 1264
    .local v15, "e":Landroid/os/RemoteException;
    return-void

    #@89
    .line 1271
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
    .line 1293
    .end local v36    # "state":Landroid/net/NetworkState;
    :cond_3
    move-object/from16 v0, p0

    #@8e
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    #@90
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@93
    .line 1294
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@96
    move-result-object v22

    #@97
    .line 1295
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
    .line 1296
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
    .line 1298
    .local v29, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    #@b2
    .line 1299
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
    .line 1300
    move/from16 v0, v24

    #@bc
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v20

    #@c0
    check-cast v20, Landroid/util/Pair;

    #@c2
    .line 1301
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
    .line 1302
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
    .line 1299
    :cond_4
    add-int/lit8 v24, v24, -0x1

    #@df
    goto :goto_3

    #@e0
    .line 1306
    .end local v20    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v6

    #@e4
    if-lez v6, :cond_6

    #@e6
    .line 1307
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
    .line 1308
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
    .line 1295
    .end local v23    # "ifaces":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v18, v18, -0x1

    #@101
    goto :goto_2

    #@102
    .line 1312
    .end local v24    # "j":I
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    :cond_7
    const-wide v26, 0x7fffffffffffffffL

    #@107
    .line 1313
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
    .line 1317
    .local v28, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@114
    move-result-wide v10

    #@115
    .line 1318
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
    .line 1319
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
    .line 1320
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
    .line 1324
    .restart local v23    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@13c
    move-result v6

    #@13d
    if-eqz v6, :cond_a

    #@13f
    .line 1325
    move-object/from16 v0, v29

    #@141
    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@144
    move-result-wide v8

    #@145
    .line 1326
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
    .line 1336
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
    .line 1337
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
    .line 1338
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
    .line 1340
    :cond_8
    if-nez v16, :cond_d

    #@171
    .line 1343
    const-wide v30, 0x7fffffffffffffffL

    #@176
    .line 1355
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
    .line 1357
    const-string/jumbo v6, "NetworkPolicy"

    #@17f
    const-string/jumbo v7, "shared quota unsupported; generating rule for each iface"

    #@182
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@185
    .line 1360
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
    .line 1362
    .local v21, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@191
    move-object/from16 v40, v0

    #@193
    .line 1363
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
    .line 1362
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
    .line 1365
    move-object/from16 v0, v28

    #@1ba
    move-object/from16 v1, v21

    #@1bc
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1bf
    .line 1360
    add-int/lit8 v6, v6, 0x1

    #@1c1
    goto :goto_9

    #@1c2
    .line 1328
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v21    # "iface":Ljava/lang/String;
    .end local v30    # "quotaBytes":J
    .end local v38    # "totalBytes":J
    :cond_a
    const-wide v8, 0x7fffffffffffffffL

    #@1c7
    .line 1329
    .restart local v8    # "start":J
    const-wide/16 v38, 0x0

    #@1c9
    .restart local v38    # "totalBytes":J
    goto :goto_5

    #@1ca
    .line 1336
    :cond_b
    const/16 v17, 0x0

    #@1cc
    .restart local v17    # "hasWarning":Z
    goto :goto_6

    #@1cd
    .line 1337
    :cond_c
    const/16 v16, 0x0

    #@1cf
    goto :goto_7

    #@1d0
    .line 1344
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
    .line 1347
    const-wide v30, 0x7fffffffffffffffL

    #@1dd
    .restart local v30    # "quotaBytes":J
    goto :goto_8

    #@1de
    .line 1352
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
    .line 1370
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
    .line 1371
    move-object/from16 v0, v29

    #@1fb
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    #@1fd
    move-wide/from16 v26, v0

    #@1ff
    .line 1373
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
    .line 1374
    move-object/from16 v0, v29

    #@20b
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    #@20d
    move-wide/from16 v26, v0

    #@20f
    .line 1318
    :cond_11
    add-int/lit8 v18, v18, -0x1

    #@211
    goto/16 :goto_4

    #@213
    .line 1378
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
    .line 1379
    move/from16 v0, v18

    #@21d
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@220
    move-result-object v21

    #@221
    check-cast v21, Ljava/lang/String;

    #@223
    .line 1381
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    #@225
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    #@227
    const/16 v7, 0xa

    #@229
    .line 1382
    const v40, 0x7fffffff

    #@22c
    const/16 v41, -0x1

    #@22e
    .line 1381
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
    .line 1384
    move-object/from16 v0, v28

    #@23d
    move-object/from16 v1, v21

    #@23f
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@242
    .line 1378
    add-int/lit8 v18, v18, -0x1

    #@244
    goto :goto_a

    #@245
    .line 1387
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
    .line 1390
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
    .line 1391
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
    .line 1392
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
    .line 1393
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
    .line 1390
    :cond_14
    add-int/lit8 v18, v18, -0x1

    #@28b
    goto :goto_b

    #@28c
    .line 1397
    .end local v21    # "iface":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v28

    #@28e
    move-object/from16 v1, p0

    #@290
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    #@292
    .line 1399
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
    .line 1400
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
    .line 1256
    return-void
.end method

.method updateNotificationsNL()V
    .locals 14

    #@0
    .prologue
    .line 946
    new-instance v6, Landroid/util/ArraySet;

    #@2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@4
    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@7
    .line 947
    .local v6, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@9
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@c
    .line 953
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    #@f
    move-result-wide v4

    #@10
    .line 954
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
    .line 955
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v10

    #@20
    check-cast v10, Landroid/net/NetworkPolicy;

    #@22
    .line 957
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@24
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 954
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 958
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 960
    invoke-static {v4, v5, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    #@36
    move-result-wide v2

    #@37
    .line 961
    .local v2, "start":J
    move-wide v8, v4

    #@38
    .line 962
    .local v8, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@3a
    move-object v0, p0

    #@3b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@3e
    move-result-wide v12

    #@3f
    .line 964
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 965
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@47
    cmp-long v0, v0, v2

    #@49
    if-ltz v0, :cond_2

    #@4b
    .line 966
    const/4 v0, 0x3

    #@4c
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@4f
    goto :goto_1

    #@50
    .line 968
    :cond_2
    const/4 v0, 0x2

    #@51
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@54
    .line 969
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@56
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    #@59
    goto :goto_1

    #@5a
    .line 973
    :cond_3
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@5c
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    #@5f
    .line 975
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
    .line 976
    const/4 v0, 0x1

    #@6c
    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    #@6f
    goto :goto_1

    #@70
    .line 982
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
    .line 983
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@7b
    move-result-object v11

    #@7c
    check-cast v11, Ljava/lang/String;

    #@7e
    .line 984
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    #@80
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@83
    move-result v0

    #@84
    if-nez v0, :cond_5

    #@86
    .line 985
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    #@89
    .line 982
    :cond_5
    add-int/lit8 v7, v7, -0x1

    #@8b
    goto :goto_2

    #@8c
    .line 942
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method updatePowerSaveTempWhitelistUL()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 544
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@3
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@6
    move-result v0

    #@7
    .line 545
    .local v0, "N":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 546
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@c
    const/4 v7, 0x0

    #@d
    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    #@10
    .line 545
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 549
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@15
    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    #@18
    move-result-object v4

    #@19
    .line 550
    .local v4, "whitelist":[I
    if-eqz v4, :cond_1

    #@1b
    .line 551
    array-length v6, v4

    #@1c
    :goto_1
    if-ge v5, v6, :cond_1

    #@1e
    aget v3, v4, v5

    #@20
    .line 552
    .local v3, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@22
    const/4 v8, 0x1

    #@23
    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 551
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_1

    #@29
    .line 555
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v1

    #@2a
    .line 541
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 465
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@3
    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    #@6
    move-result-object v2

    #@7
    .line 466
    .local v2, "whitelist":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@9
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    #@c
    .line 467
    if-eqz v2, :cond_0

    #@e
    .line 468
    array-length v5, v2

    #@f
    move v4, v3

    #@10
    :goto_0
    if-ge v4, v5, :cond_0

    #@12
    aget v1, v2, v4

    #@14
    .line 469
    .local v1, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    #@16
    const/4 v7, 0x1

    #@17
    invoke-virtual {v6, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1a
    .line 468
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 472
    .end local v1    # "uid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@1f
    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    #@22
    move-result-object v2

    #@23
    .line 473
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@25
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    #@28
    .line 474
    if-eqz v2, :cond_1

    #@2a
    .line 475
    array-length v4, v2

    #@2b
    :goto_1
    if-ge v3, v4, :cond_1

    #@2d
    aget v1, v2, v3

    #@2f
    .line 476
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@31
    const/4 v6, 0x1

    #@32
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 475
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1

    #@38
    .line 479
    .end local v1    # "uid":I
    .end local v2    # "whitelist":[I
    :catch_0
    move-exception v0

    #@39
    .line 463
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 2715
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 2717
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v0

    #@c
    .line 2718
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
    .line 2719
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 2722
    :cond_1
    const/4 v1, 0x0

    #@21
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@24
    .line 2714
    :goto_0
    return-void

    #@25
    .line 2720
    :cond_2
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    #@28
    goto :goto_0
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2628
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    #@6
    .line 2627
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2614
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    #@6
    .line 2613
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2731
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@3
    invoke-virtual {v6}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    #@6
    move-result v3

    #@7
    .line 2732
    .local v3, "paroled":Z
    if-eqz v3, :cond_1

    #@9
    .line 2733
    .local v0, "enableChain":Z
    :goto_0
    const/4 v6, 0x2

    #@a
    invoke-direct {p0, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    #@d
    .line 2735
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@f
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    #@12
    move-result v4

    #@13
    .line 2736
    .local v4, "ruleCount":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    #@16
    .line 2737
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@18
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1b
    move-result v5

    #@1c
    .line 2738
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    #@1e
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    #@21
    move-result v2

    #@22
    .line 2739
    .local v2, "oldRules":I
    if-eqz v0, :cond_2

    #@24
    .line 2744
    and-int/lit8 v2, v2, 0xf

    #@26
    .line 2749
    :cond_0
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    #@29
    .line 2736
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 2732
    .end local v0    # "enableChain":Z
    .end local v1    # "i":I
    .end local v2    # "oldRules":I
    .end local v4    # "ruleCount":I
    .end local v5    # "uid":I
    :cond_1
    const/4 v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2747
    .restart local v0    # "enableChain":Z
    .restart local v1    # "i":I
    .restart local v2    # "oldRules":I
    .restart local v4    # "ruleCount":I
    .restart local v5    # "uid":I
    :cond_2
    and-int/lit16 v6, v2, 0xf0

    #@30
    if-nez v6, :cond_0

    #@32
    goto :goto_2

    #@33
    .line 2730
    .end local v2    # "oldRules":I
    .end local v5    # "uid":I
    :cond_3
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14

    #@0
    .prologue
    const-wide/32 v12, 0x200000

    #@3
    const/4 v7, 0x0

    #@4
    .line 2686
    const-string/jumbo v6, "updateRulesForAppIdleUL"

    #@7
    invoke-static {v12, v13, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@a
    .line 2688
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    #@c
    .line 2689
    .local v3, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    #@f
    .line 2692
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    #@11
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@14
    move-result-object v5

    #@15
    .line 2693
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@18
    move-result v6

    #@19
    add-int/lit8 v1, v6, -0x1

    #@1b
    .local v1, "ui":I
    :goto_0
    if-ltz v1, :cond_2

    #@1d
    .line 2694
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroid/content/pm/UserInfo;

    #@23
    .line 2695
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@25
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@27
    invoke-virtual {v6, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    #@2a
    move-result-object v0

    #@2b
    .line 2696
    .local v0, "idleUids":[I
    array-length v8, v0

    #@2c
    move v6, v7

    #@2d
    :goto_1
    if-ge v6, v8, :cond_1

    #@2f
    aget v2, v0, v6

    #@31
    .line 2697
    .local v2, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    #@33
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    #@36
    move-result v10

    #@37
    const/4 v11, 0x0

    #@38
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@3b
    move-result v9

    #@3c
    if-nez v9, :cond_0

    #@3e
    .line 2701
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_0

    #@44
    .line 2702
    const/4 v9, 0x2

    #@45
    invoke-virtual {v3, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    #@48
    .line 2696
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 2693
    .end local v2    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@4d
    goto :goto_0

    #@4e
    .line 2708
    .end local v0    # "idleUids":[I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v6, 0x2

    #@4f
    const/4 v7, 0x0

    #@50
    invoke-direct {p0, v6, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    .line 2710
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@56
    .line 2685
    return-void

    #@57
    .line 2709
    .end local v1    # "ui":I
    .end local v3    # "uidRules":Landroid/util/SparseIntArray;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    #@58
    .line 2710
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@5b
    .line 2709
    throw v6
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0x200000

    #@3
    .line 2618
    const-string/jumbo v0, "updateRulesForDeviceIdleUL"

    #@6
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2620
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    #@b
    .line 2621
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    #@d
    .line 2620
    const/4 v2, 0x1

    #@e
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 2623
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@14
    .line 2617
    return-void

    #@15
    .line 2622
    :catchall_0
    move-exception v0

    #@16
    .line 2623
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@19
    .line 2622
    throw v0
.end method

.method updateRulesForPowerSaveUL()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0x200000

    #@3
    .line 2604
    const-string/jumbo v0, "updateRulesForPowerSaveUL"

    #@6
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2606
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    #@b
    .line 2607
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    #@d
    .line 2606
    const/4 v2, 0x3

    #@e
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 2609
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@14
    .line 2603
    return-void

    #@15
    .line 2608
    :catchall_0
    move-exception v0

    #@16
    .line 2609
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@19
    .line 2608
    throw v0
.end method

.method writePolicyAL()V
    .locals 14

    #@0
    .prologue
    .line 1626
    const/4 v1, 0x0

    #@1
    .line 1628
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v1

    #@7
    .line 1630
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 1631
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v11

    #@12
    invoke-interface {v4, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 1632
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
    .line 1634
    const-string/jumbo v11, "policy-list"

    #@21
    const/4 v12, 0x0

    #@22
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1635
    const-string/jumbo v11, "version"

    #@28
    const/16 v12, 0xa

    #@2a
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2d
    .line 1636
    const-string/jumbo v11, "restrictBackground"

    #@30
    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    #@32
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@35
    .line 1639
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
    .line 1640
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Landroid/net/NetworkPolicy;

    #@46
    .line 1641
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v9, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #@48
    .line 1642
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->isPersistable()Z

    #@4b
    move-result v11

    #@4c
    if-nez v11, :cond_0

    #@4e
    .line 1639
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1644
    :cond_0
    const-string/jumbo v11, "network-policy"

    #@54
    const/4 v12, 0x0

    #@55
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 1645
    const-string/jumbo v11, "networkTemplate"

    #@5b
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getMatchRule()I

    #@5e
    move-result v12

    #@5f
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@62
    .line 1646
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    .line 1647
    .local v8, "subscriberId":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@68
    .line 1648
    const-string/jumbo v11, "subscriberId"

    #@6b
    const/4 v12, 0x0

    #@6c
    invoke-interface {v4, v12, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6f
    .line 1650
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    .line 1651
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@75
    .line 1652
    const-string/jumbo v11, "networkId"

    #@78
    const/4 v12, 0x0

    #@79
    invoke-interface {v4, v12, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 1654
    :cond_2
    const-string/jumbo v11, "cycleDay"

    #@7f
    iget v12, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    #@81
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@84
    .line 1655
    const-string/jumbo v11, "cycleTimezone"

    #@87
    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@89
    const/4 v13, 0x0

    #@8a
    invoke-interface {v4, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 1656
    const-string/jumbo v11, "warningBytes"

    #@90
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    #@92
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@95
    .line 1657
    const-string/jumbo v11, "limitBytes"

    #@98
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    #@9a
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@9d
    .line 1658
    const-string/jumbo v11, "lastWarningSnooze"

    #@a0
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    #@a2
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@a5
    .line 1659
    const-string/jumbo v11, "lastLimitSnooze"

    #@a8
    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    #@aa
    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@ad
    .line 1660
    const-string/jumbo v11, "metered"

    #@b0
    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->metered:Z

    #@b2
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@b5
    .line 1661
    const-string/jumbo v11, "inferred"

    #@b8
    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->inferred:Z

    #@ba
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@bd
    .line 1662
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
    .line 1707
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
    .line 1708
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    #@c8
    .line 1709
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@ca
    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@cd
    .line 1623
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    #@ce
    .line 1666
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
    .line 1667
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@d9
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@dc
    move-result v10

    #@dd
    .line 1668
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    #@df
    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e2
    move-result v5

    #@e3
    .line 1671
    .local v5, "policy":I
    if-nez v5, :cond_5

    #@e5
    .line 1666
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@e7
    goto :goto_3

    #@e8
    .line 1673
    :cond_5
    const-string/jumbo v11, "uid-policy"

    #@eb
    const/4 v12, 0x0

    #@ec
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ef
    .line 1674
    const-string/jumbo v11, "uid"

    #@f2
    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@f5
    .line 1675
    const-string/jumbo v11, "policy"

    #@f8
    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@fb
    .line 1676
    const-string/jumbo v11, "uid-policy"

    #@fe
    const/4 v12, 0x0

    #@ff
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@102
    goto :goto_4

    #@103
    .line 1679
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_6
    const-string/jumbo v11, "policy-list"

    #@106
    const/4 v12, 0x0

    #@107
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10a
    .line 1682
    const-string/jumbo v11, "whitelist"

    #@10d
    const/4 v12, 0x0

    #@10e
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@111
    .line 1685
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@113
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@116
    move-result v7

    #@117
    .line 1686
    .local v7, "size":I
    const/4 v2, 0x0

    #@118
    :goto_5
    if-ge v2, v7, :cond_7

    #@11a
    .line 1687
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    #@11c
    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@11f
    move-result v10

    #@120
    .line 1688
    .restart local v10    # "uid":I
    const-string/jumbo v11, "restrict-background"

    #@123
    const/4 v12, 0x0

    #@124
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@127
    .line 1689
    const-string/jumbo v11, "uid"

    #@12a
    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@12d
    .line 1690
    const-string/jumbo v11, "restrict-background"

    #@130
    const/4 v12, 0x0

    #@131
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@134
    .line 1686
    add-int/lit8 v2, v2, 0x1

    #@136
    goto :goto_5

    #@137
    .line 1694
    .end local v10    # "uid":I
    :cond_7
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@139
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    #@13c
    move-result v7

    #@13d
    .line 1695
    const/4 v2, 0x0

    #@13e
    :goto_6
    if-ge v2, v7, :cond_8

    #@140
    .line 1696
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    #@142
    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@145
    move-result v10

    #@146
    .line 1697
    .restart local v10    # "uid":I
    const-string/jumbo v11, "revoked-restrict-background"

    #@149
    const/4 v12, 0x0

    #@14a
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14d
    .line 1698
    const-string/jumbo v11, "uid"

    #@150
    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@153
    .line 1699
    const-string/jumbo v11, "revoked-restrict-background"

    #@156
    const/4 v12, 0x0

    #@157
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15a
    .line 1695
    add-int/lit8 v2, v2, 0x1

    #@15c
    goto :goto_6

    #@15d
    .line 1702
    .end local v10    # "uid":I
    :cond_8
    const-string/jumbo v11, "whitelist"

    #@160
    const/4 v12, 0x0

    #@161
    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@164
    .line 1704
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@167
    .line 1706
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    #@169
    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@16c
    goto/16 :goto_2
.end method

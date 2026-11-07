.class public final Landroid/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;,
        Landroid/permission/PermissionManager$SplitPermissionInfo;,
        Landroid/permission/PermissionManager$PermissionQuery;,
        Landroid/permission/PermissionManager$PermissionRequestStateQuery;,
        Landroid/permission/PermissionManager$PackageNamePermissionQuery;,
        Landroid/permission/PermissionManager$PermissionState;,
        Landroid/permission/PermissionManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REVIEW_PERMISSION_DECISIONS:Ljava/lang/String; = "android.permission.action.REVIEW_PERMISSION_DECISIONS"

.field public static final blacklist CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

.field public static final blacklist CACHE_KEY_PACKAGE_INFO_NOTIFY:Ljava/lang/String;

.field public static final blacklist CANNOT_INSTALL_WITH_BAD_PERMISSION_GROUPS:J = 0x8b70248L

.field public static final blacklist DEBUG_DEVICE_PERMISSIONS:Z = false

.field public static final blacklist DEBUG_TRACE_GRANTS:Z = false

.field public static final blacklist DEBUG_TRACE_PERMISSION_UPDATES:Z = false

.field public static final blacklist DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXEMPTED_INDICATOR_ROLE_UPDATE_FREQUENCY_MS:J = 0x3a98L

.field private static final blacklist EXEMPTED_ROLES:[I

.field public static final blacklist EXPLICIT_SET_FLAGS:I = 0x8037

.field public static final whitelist EXTRA_PERMISSION_USAGES:Ljava/lang/String; = "android.permission.extra.PERMISSION_USAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

.field public static final blacklist KILL_APP_REASON_GIDS_CHANGED:Ljava/lang/String; = "permission grant or revoke changed gids"

.field public static final blacklist KILL_APP_REASON_PERMISSIONS_REVOKED:Ljava/lang/String; = "permissions revoked"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist LOG_TAG_TRACE_GRANTS:Ljava/lang/String; = "PermissionGrantTrace"

.field public static final whitelist PERMISSION_GRANTED:I = 0x0

.field public static final whitelist PERMISSION_HARD_DENIED:I = 0x2

.field public static final whitelist PERMISSION_SOFT_DENIED:I = 0x1

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"

.field public static final blacklist USE_ACCESS_CHECKING_SERVICE:Z

.field private static blacklist sLastIndicatorUpdateTime:J

.field private static blacklist sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PackageNamePermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPermissionRequestStateCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PermissionRequestStateQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sShouldWarnMissingActivityManager:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private final blacklist mPackageManager:Landroid/content/pm/IPackageManager;

.field private final blacklist mPermissionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/permission/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionManager:Landroid/permission/IPermissionManager;

.field private blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPermissionUncached(Ljava/lang/String;III)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->checkPermissionUncached(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 108
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    .line 197
    invoke-static {}, Landroid/internal/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    sput-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    .line 204
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    .line 206
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    .line 211
    sget-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    .line 250
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 251
    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_34

    .line 252
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_34
    sput-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    .line 1716
    const/4 v0, 0x1

    sput-boolean v0, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1869
    nop

    .line 1870
    const-string/jumbo v0, "package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_NOTIFY:Ljava/lang/String;

    .line 1876
    invoke-static {}, Landroid/permission/PermissionManager;->getPackageInfoCacheKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    .line 1879
    new-instance v0, Landroid/permission/PermissionManager$1;

    sget-object v1, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    const-string v2, "checkPermission"

    const/16 v3, 0x800

    invoke-direct {v0, v3, v1, v2}, Landroid/permission/PermissionManager$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    .line 1891
    new-instance v0, Landroid/permission/PermissionManager$2;

    sget-object v1, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    const-string v2, "getPermissionRequestState"

    const/16 v3, 0x200

    invoke-direct {v0, v3, v1, v2}, Landroid/permission/PermissionManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPermissionRequestStateCache:Landroid/app/PropertyInvalidatedCache;

    .line 2018
    new-instance v0, Landroid/permission/PermissionManager$3;

    sget-object v1, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    const-string v2, "checkPackageNamePermission"

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Landroid/permission/PermissionManager$3;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    return-void

    nop

    :array_72
    .array-data 4
        0x1040033
        0x1040032
        0x1040034
        0x1040035
        0x1040036
        0x1040037
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    .line 277
    iput-object p1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 279
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 281
    const-class v0, Landroid/permission/LegacyPermissionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    iput-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 282
    return-void
.end method

.method private static blacklist checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2009
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/permission/IPermissionManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2011
    :catch_9
    move-exception v0

    .line 2012
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist checkPermission(Ljava/lang/String;III)I
    .registers 6
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "deviceId"    # I

    .line 1903
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/permission/PermissionManager$PermissionQuery;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist checkPermissionUncached(Ljava/lang/String;III)I
    .registers 9
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "deviceId"    # I

    .line 1720
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1721
    .local v0, "appId":I
    if-eqz v0, :cond_43

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_43

    .line 1724
    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1725
    .local v1, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_35

    .line 1728
    sget-object v2, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing ActivityManager; assuming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not hold "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v2, -0x1

    return v2

    .line 1733
    :cond_35
    const/4 v2, 0x1

    :try_start_36
    sput-boolean v2, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1734
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermissionForDevice(Ljava/lang/String;III)I

    move-result v2
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3c} :catch_3d

    return v2

    .line 1735
    :catch_3d
    move-exception v2

    .line 1736
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1722
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist disablePackageNamePermissionCache()V
    .registers 1

    .line 2145
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 2146
    return-void
.end method

.method public static blacklist disablePermissionCache()V
    .registers 1

    .line 1951
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 1952
    return-void
.end method

.method public static blacklist getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1362
    invoke-static {p0}, Landroid/permission/PermissionManager;->updateIndicatorExemptedPackages(Landroid/content/Context;)V

    .line 1363
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1364
    .local v0, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 1366
    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1367
    .local v2, "exemptedPackage":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 1368
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1365
    .end local v2    # "exemptedPackage":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1371
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method private static blacklist getPackageInfoCacheKey()Ljava/lang/String;
    .registers 1

    .line 1857
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->separatePermissionNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1858
    const-string/jumbo v0, "package_info_cache"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_e
    sget-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_NOTIFY:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 820
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 821
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 820
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 822
    :catch_b
    move-exception v0

    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist getPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 1743
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1745
    :catch_9
    move-exception v0

    .line 1746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getPersistentDeviceId(I)Ljava/lang/String;
    .registers 8
    .param p1, "deviceId"    # I

    .line 2084
    const/4 v0, 0x0

    .line 2086
    .local v0, "persistentDeviceId":Ljava/lang/String;
    if-nez p1, :cond_6

    .line 2087
    const-string v0, "default:0"

    goto :goto_50

    .line 2089
    :cond_6
    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2091
    .local v1, "virtualDeviceManager":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v1, :cond_50

    .line 2092
    invoke-virtual {v1, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v2

    .line 2093
    .local v2, "virtualDevice":Landroid/companion/virtual/VirtualDevice;
    if-nez v2, :cond_32

    .line 2094
    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Virtual device is not found with device Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const/4 v3, 0x0

    return-object v3

    .line 2097
    :cond_32
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2098
    if-nez v0, :cond_50

    .line 2099
    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find persistent device Id for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    .end local v1    # "virtualDeviceManager":Landroid/companion/virtual/VirtualDeviceManager;
    .end local v2    # "virtualDevice":Landroid/companion/virtual/VirtualDevice;
    :cond_50
    :goto_50
    return-object v0
.end method

.method private blacklist grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 680
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 681
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 680
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 684
    nop

    .line 685
    return-void

    .line 682
    :catch_b
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 2054
    if-eqz p1, :cond_6d

    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6d

    .line 2059
    :cond_b
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2060
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2061
    .local v0, "virtualDeviceManager":Landroid/companion/virtual/VirtualDeviceManager;
    if-nez v0, :cond_2e

    .line 2062
    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VDM is not enabled when device id is not default. deviceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 2065
    :cond_2e
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v1

    .line 2066
    .local v1, "virtualDevice":Landroid/companion/virtual/VirtualDevice;
    if-eqz v1, :cond_53

    .line 2067
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2068
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDevice;->hasCustomAudioInputSupport()Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_42
    nop

    .line 2069
    const-string v2, "android.permission.CAMERA"

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2070
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDevice;->hasCustomCameraSupport()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 2071
    :cond_51
    const/4 p1, 0x0

    goto :goto_6c

    .line 2074
    :cond_53
    sget-object v2, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualDevice is not found when device id is not default. deviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    .end local v1    # "virtualDevice":Landroid/companion/virtual/VirtualDevice;
    :cond_6c
    :goto_6c
    return p1

    .line 2056
    .end local v0    # "virtualDeviceManager":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_6d
    :goto_6d
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "reason"    # Ljava/lang/String;

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 759
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_12

    .line 758
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "persistentDeviceId":Ljava/lang/String;
    .end local p5    # "reason":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "permissionName":Ljava/lang/String;
    .local v3, "persistentDeviceId":Ljava/lang/String;
    .local v5, "reason":Ljava/lang/String;
    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 762
    nop

    .line 763
    return-void

    .line 760
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "persistentDeviceId":Ljava/lang/String;
    .end local v5    # "reason":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "persistentDeviceId":Ljava/lang/String;
    .restart local p5    # "reason":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object p1, v0

    .line 761
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "persistentDeviceId":Ljava/lang/String;
    .end local p5    # "reason":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "permissionName":Ljava/lang/String;
    .restart local v3    # "persistentDeviceId":Ljava/lang/String;
    .restart local v5    # "reason":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public static blacklist shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1353
    invoke-static {p0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist shouldTraceGrant(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1430
    .local p1, "parcelableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1431
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1432
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1e

    .line 1433
    new-instance v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager-IA;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1435
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method public static blacklist splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 1445
    .local p0, "splitPermissionsList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1446
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1447
    .local v1, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_29

    .line 1448
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1449
    .local v3, "info":Landroid/permission/PermissionManager$SplitPermissionInfo;
    new-instance v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 1450
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 1449
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    .end local v3    # "info":Landroid/permission/PermissionManager$SplitPermissionInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1452
    .end local v2    # "i":I
    :cond_29
    return-object v1
.end method

.method public static blacklist updateIndicatorExemptedPackages(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1380
    .local v0, "now":J
    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 1382
    :cond_16
    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    .line 1383
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget-object v3, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2d

    .line 1384
    sget-object v3, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    sget-object v4, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1383
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1387
    .end local v2    # "i":I
    :cond_2d
    return-void
.end method

.method private blacklist updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "persistentDeviceId"    # Ljava/lang/String;
    .param p6, "user"    # Landroid/os/UserHandle;

    .line 899
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 900
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v6, v0

    .line 901
    .local v6, "checkAdjustPolicyFlagPermission":Z
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 903
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_23

    .line 901
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "persistentDeviceId":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "flagMask":I
    .local v5, "flagValues":I
    .local v7, "persistentDeviceId":Ljava/lang/String;
    :try_start_1b
    invoke-interface/range {v1 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 906
    .end local v6    # "checkAdjustPolicyFlagPermission":Z
    nop

    .line 907
    return-void

    .line 904
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "flagMask":I
    .end local v5    # "flagValues":I
    .end local v7    # "persistentDeviceId":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    .restart local p5    # "persistentDeviceId":Ljava/lang/String;
    :catch_23
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-object p1, v0

    .line 905
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "persistentDeviceId":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "permissionName":Ljava/lang/String;
    .restart local v4    # "flagMask":I
    .restart local v5    # "flagValues":I
    .restart local v7    # "persistentDeviceId":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method


# virtual methods
.method public blacklist addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowlistFlags"    # I

    .line 1022
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1023
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1022
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1024
    :catch_d
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 1176
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1177
    :try_start_3
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1178
    monitor-exit v0

    return-void

    .line 1180
    :cond_d
    new-instance v1, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;

    .line 1181
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_29

    .line 1183
    .local v1, "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    :try_start_16
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1184
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_23
    .catchall {:try_start_16 .. :try_end_20} :catchall_29

    .line 1187
    nop

    .line 1188
    .end local v1    # "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    :try_start_21
    monitor-exit v0

    .line 1189
    return-void

    .line 1185
    .restart local v1    # "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    :catch_23
    move-exception v2

    .line 1186
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/permission/PermissionManager;
    .end local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    throw v3

    .line 1188
    .end local v1    # "delegate":Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/permission/PermissionManager;
    .restart local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 5
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 513
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 514
    :catch_7
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1618
    iget-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v4, "pid":I
    .local v5, "uid":I
    invoke-virtual/range {v0 .. v5}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public blacklist checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "userId"    # I

    .line 2039
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p1}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 2040
    .local v0, "resolvedDeviceId":I
    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 2041
    .local v1, "persistentDeviceId":Ljava/lang/String;
    sget-object v2, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v3, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-direct {v3, p1, p2, v1, p4}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2134
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 2136
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2134
    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForDataDeliveryFromDataSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 427
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForStartDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "attributionSource":Landroid/content/AttributionSource;
    .end local p3    # "message":Ljava/lang/String;
    .local v1, "permission":Ljava/lang/String;
    .local v3, "attributionSource":Landroid/content/AttributionSource;
    .local v4, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public whitelist finishDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 358
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 360
    return-void
.end method

.method public blacklist getAllPermissionGroups(I)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 574
    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 575
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionGroupInfo;>;"
    if-nez v0, :cond_d

    .line 576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 578
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 579
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_12
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation

    .line 1938
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1939
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1938
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1940
    :catch_d
    move-exception v0

    .line 1941
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllowlistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowlistFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 959
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 960
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 959
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_13

    .line 962
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 964
    :cond_13
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 965
    .end local v0    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_19
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAutoRevokeExemptionGrantedPackages()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1421
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1422
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1421
    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 1423
    :catch_15
    move-exception v0

    .line 1424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAutoRevokeExemptionRequestedPackages()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1401
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1402
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1401
    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 1403
    :catch_15
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIndicatorAppOpUsageData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 1325
    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0}, Landroid/media/AudioManager;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIndicatorAppOpUsageData(Z)Ljava/util/List;
    .registers 5
    .param p1, "micMuted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 1340
    invoke-virtual {p0}, Landroid/permission/PermissionManager;->initializeUsageHelper()V

    .line 1341
    xor-int/lit8 v0, p1, 0x1

    .line 1342
    .local v0, "includeMicrophoneUsage":Z
    iget-object v1, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    const-string v2, "default:0"

    invoke-virtual {v1, v0, v2}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 784
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "persistentDeviceId":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 786
    const/4 v1, 0x0

    return v1

    .line 789
    :cond_e
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/permission/PermissionManager;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    return v1
.end method

.method public whitelist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 812
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 812
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/permission/PermissionManager;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public blacklist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 554
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 555
    :catch_7
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 446
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v1, p1, v0, p2}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 448
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "deviceId"    # I

    .line 1910
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 1911
    .local v0, "resolvedDeviceId":I
    sget-object v1, Landroid/permission/PermissionManager;->sPermissionRequestStateCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/permission/PermissionManager$PermissionRequestStateQuery;

    invoke-direct {v2, p1, p2, v0}, Landroid/permission/PermissionManager$PermissionRequestStateQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public blacklist getRegisteredAttributionSourceCountForTest(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 1686
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getRegisteredAttributionSourceCount(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1687
    :catch_7
    move-exception v0

    .line 1688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1690
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getRuntimePermissionsVersion()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1230
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getRuntimePermissionsVersion(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1231
    :catch_d
    move-exception v0

    .line 1232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSplitPermissions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1276
    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    return-object v0

    .line 1281
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_19

    .line 1285
    .local v0, "parcelableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    nop

    .line 1287
    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    .line 1289
    iget-object v1, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    return-object v1

    .line 1282
    .end local v0    # "parcelableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catch_19
    move-exception v0

    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting split permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 638
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "persistentDeviceId":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 640
    return-void

    .line 643
    :cond_d
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/permission/PermissionManager;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 644
    return-void
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 666
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 665
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/permission/PermissionManager;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 667
    return-void
.end method

.method public blacklist initializeUsageHelper()V
    .registers 3

    .line 1298
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_d

    .line 1299
    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 1301
    :cond_d
    return-void
.end method

.method public blacklist isAutoRevokeExempted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1107
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->isAutoRevokeExempted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1108
    :catch_d
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 601
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 602
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 601
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/permission/IPermissionManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 603
    :catch_13
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .registers 4
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1671
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1672
    :catch_b
    move-exception v0

    .line 1673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1675
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 469
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 470
    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 471
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    if-nez v0, :cond_a

    .line 472
    const/4 v1, 0x0

    return-object v1

    .line 474
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 475
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    :catch_f
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 5
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1643
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->serverSideAttributionRegistration()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1644
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;

    move-result-object v0

    .line 1645
    .local v0, "newToken":Landroid/os/IBinder;
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    move-result-object v1

    return-object v1

    .line 1647
    .end local v0    # "newToken":Landroid/os/IBinder;
    :cond_15
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1648
    .local v0, "registeredSource":Landroid/content/AttributionSource;
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/permission/IPermissionManager;->registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 1649
    return-object v0

    .line 1651
    .end local v0    # "registeredSource":Landroid/content/AttributionSource;
    :catch_28
    move-exception v0

    .line 1652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1654
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object p1
.end method

.method public blacklist removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowlistFlags"    # I

    .line 1081
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1082
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1081
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1083
    :catch_d
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 1202
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1203
    :try_start_3
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 1204
    .local v1, "delegate":Landroid/permission/IOnPermissionsChangeListener;
    if-eqz v1, :cond_1e

    .line 1206
    :try_start_d
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1207
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catchall {:try_start_d .. :try_end_17} :catchall_20

    .line 1210
    goto :goto_1e

    .line 1208
    :catch_18
    move-exception v2

    .line 1209
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_19
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/permission/PermissionManager;
    .end local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    throw v3

    .line 1212
    .end local v1    # "delegate":Landroid/permission/IOnPermissionsChangeListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/permission/PermissionManager;
    .restart local p1    # "listener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist removePermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->removePermission(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 536
    nop

    .line 537
    return-void

    .line 534
    :catch_7
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1707
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1711
    goto :goto_a

    .line 1709
    :catch_6
    move-exception v0

    .line 1710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1712
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "reason"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, "persistentDeviceId":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 713
    return-void

    .line 716
    :cond_d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v5, "user":Landroid/os/UserHandle;
    .local v6, "reason":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionManager;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 742
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 743
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 742
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "persistentDeviceId":Ljava/lang/String;
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "persistentDeviceId":Ljava/lang/String;
    .local v6, "reason":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionManager;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public blacklist setAutoRevokeExempted(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exempted"    # Z

    .line 1136
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1137
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1136
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->setAutoRevokeExempted(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1138
    :catch_d
    move-exception v0

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRuntimePermissionsVersion(I)V
    .registers 4
    .param p1, "version"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1250
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->setRuntimePermissionsVersion(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1253
    nop

    .line 1254
    return-void

    .line 1251
    :catch_d
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1157
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1159
    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1158
    invoke-interface {v1, v0, p1, v2, v3}, Landroid/permission/IPermissionManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return v1

    .line 1160
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 1161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JII)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "importanceToResetTimer"    # I
    .param p5, "importanceToKeepSessionAlive"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1528
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move v7, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "timeoutMillis":J
    .end local p4    # "importanceToResetTimer":I
    .end local p5    # "importanceToKeepSessionAlive":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "timeoutMillis":J
    .local v6, "importanceToResetTimer":I
    .local v7, "importanceToKeepSessionAlive":I
    invoke-virtual/range {v0 .. v7}, Landroid/permission/PermissionManager;->startOneTimePermissionSession(Ljava/lang/String;JJII)V

    .line 1530
    return-void
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JJII)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J
    .param p4, "revokeAfterKilledDelayMillis"    # J
    .param p6, "importanceToResetTimer"    # I
    .param p7, "importanceToKeepSessionAlive"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1576
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1577
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_18

    .line 1576
    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "timeoutMillis":J
    .end local p4    # "revokeAfterKilledDelayMillis":J
    .local v1, "packageName":Ljava/lang/String;
    .local v4, "timeoutMillis":J
    .local v6, "revokeAfterKilledDelayMillis":J
    :try_start_11
    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->startOneTimePermissionSession(Ljava/lang/String;IIJJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 1580
    goto :goto_20

    .line 1578
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "timeoutMillis":J
    .end local v6    # "revokeAfterKilledDelayMillis":J
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "timeoutMillis":J
    .restart local p4    # "revokeAfterKilledDelayMillis":J
    :catch_18
    move-exception v0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .line 1579
    .end local p2    # "timeoutMillis":J
    .end local p4    # "revokeAfterKilledDelayMillis":J
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v4    # "timeoutMillis":J
    .restart local v6    # "revokeAfterKilledDelayMillis":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1581
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public whitelist stopOneTimePermissionSession(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1595
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1596
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1595
    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->stopOneTimePermissionSession(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1599
    goto :goto_10

    .line 1597
    :catch_c
    move-exception v0

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1600
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist tearDownUsageHelper()V
    .registers 2

    .line 1309
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-eqz v0, :cond_c

    .line 1310
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper;->tearDown()V

    .line 1311
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 1313
    :cond_c
    return-void
.end method

.method public blacklist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 847
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, "persistentDeviceId":Ljava/lang/String;
    if-nez v6, :cond_d

    .line 849
    return-void

    .line 852
    :cond_d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "flagMask":I
    .local v5, "flagValues":I
    .local v7, "user":Landroid/os/UserHandle;
    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V

    .line 854
    return-void
.end method

.method public whitelist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "flagMask"    # I
    .param p5, "flagValues"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 879
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 880
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 879
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v4, p4

    move v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "persistentDeviceId":Ljava/lang/String;
    .end local p4    # "flagMask":I
    .end local p5    # "flagValues":I
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "flagMask":I
    .local v5, "flagValues":I
    .local v6, "persistentDeviceId":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V

    .line 881
    return-void
.end method

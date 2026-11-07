.class public Landroid/health/connect/HealthConnectManager;
.super Ljava/lang/Object;
.source "HealthConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/HealthConnectManager$DataDownloadState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_HEALTH_CONNECT_MIGRATION_READY:Ljava/lang/String; = "android.health.connect.action.HEALTH_CONNECT_MIGRATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_HEALTH_HOME_SETTINGS:Ljava/lang/String; = "android.health.connect.action.HEALTH_HOME_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_HEALTH_DATA:Ljava/lang/String; = "android.health.connect.action.MANAGE_HEALTH_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_HEALTH_PERMISSIONS:Ljava/lang/String; = "android.health.connect.action.MANAGE_HEALTH_PERMISSIONS"

.field public static final whitelist ACTION_REQUEST_EXERCISE_ROUTE:Ljava/lang/String; = "android.health.connect.action.REQUEST_EXERCISE_ROUTE"

.field public static final whitelist ACTION_REQUEST_HEALTH_PERMISSIONS:Ljava/lang/String; = "android.health.connect.action.REQUEST_HEALTH_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_MIGRATION_INFO:Ljava/lang/String; = "android.health.connect.action.SHOW_MIGRATION_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_SHOW_ONBOARDING:Ljava/lang/String; = "android.health.connect.action.SHOW_ONBOARDING"

.field public static final whitelist CATEGORY_HEALTH_PERMISSIONS:Ljava/lang/String; = "android.intent.category.HEALTH_PERMISSIONS"

.field public static final whitelist DATA_DOWNLOAD_COMPLETE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_DOWNLOAD_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_DOWNLOAD_RETRY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_DOWNLOAD_STARTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_DOWNLOAD_STATE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EXERCISE_ROUTE:Ljava/lang/String; = "android.health.connect.extra.EXERCISE_ROUTE"

.field public static final whitelist EXTRA_SESSION_ID:Ljava/lang/String; = "android.health.connect.extra.SESSION_ID"

.field private static final blacklist HEALTH_PERMISSION_PREFIX:Ljava/lang/String; = "android.permission.health."

.field private static final blacklist TAG:Ljava/lang/String; = "HealthConnectManager"

.field private static volatile blacklist sHealthPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

.field private final blacklist mService:Landroid/health/connect/aidl/IHealthConnectService;


# direct methods
.method public static synthetic blacklist $r8$lambda$pU-cyifqmHjXGtaYRk3lzgl91ho(Landroid/health/connect/HealthConnectManager;Landroid/health/connect/datatypes/Record;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/HealthConnectManager;->lambda$insertRecords$1(Landroid/health/connect/datatypes/Record;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalExternalRecordConverter(Landroid/health/connect/HealthConnectManager;)Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;
    .registers 1

    iget-object p0, p0, Landroid/health/connect/HealthConnectManager;->mInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreturnError(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/HealthConnectManager;->returnError(Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoExternalRecordsWithUuids(Landroid/health/connect/HealthConnectManager;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/HealthConnectManager;->toExternalRecordsWithUuids(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreturnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/health/connect/HealthConnectManager;->returnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/health/connect/aidl/IHealthConnectService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/health/connect/aidl/IHealthConnectService;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 370
    iput-object p2, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    .line 371
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getInstance()Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/HealthConnectManager;->mInternalExternalRecordConverter:Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    .line 372
    return-void
.end method

.method public static whitelist getHealthPermissions(Landroid/content/Context;)Ljava/util/Set;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

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

    .line 2068
    sget-object v0, Landroid/health/connect/HealthConnectManager;->sHealthPermissions:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 2069
    sget-object v0, Landroid/health/connect/HealthConnectManager;->sHealthPermissions:Ljava/util/Set;

    return-object v0

    .line 2074
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2075
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission-group.HEALTH"

    .line 2076
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 2079
    .local v1, "permGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    iget-object v3, v1, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 2082
    const-wide/16 v4, 0x1000

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    .line 2080
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_22} :catch_44

    .line 2088
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "permGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 2090
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2091
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v4, v1

    :goto_2b
    if-ge v2, v4, :cond_3d

    aget-object v5, v1, v2

    .line 2092
    .local v5, "perm":Landroid/content/pm/PermissionInfo;
    invoke-static {v5}, Landroid/health/connect/HealthPermissions;->isValidHealthPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 2093
    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2091
    .end local v5    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 2096
    :cond_3d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 2097
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sput-object v1, Landroid/health/connect/HealthConnectManager;->sHealthPermissions:Ljava/util/Set;

    .line 2098
    return-object v1

    .line 2083
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_44
    move-exception v0

    .line 2084
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "HealthConnectManager"

    const-string v2, "Health permission group or HC package not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2085
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 2086
    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sput-object v1, Landroid/health/connect/HealthConnectManager;->sHealthPermissions:Ljava/util/Set;

    .line 2087
    return-object v1
.end method

.method private blacklist getReadCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/health/connect/datatypes/Record;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/ReadRecordsResponse<",
            "TT;>;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)",
            "Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;"
        }
    .end annotation

    .line 1971
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/ReadRecordsResponse<TT;>;Landroid/health/connect/HealthConnectException;>;"
    new-instance v0, Landroid/health/connect/HealthConnectManager$26;

    invoke-direct {v0, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$26;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-object v0
.end method

.method public static whitelist isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2050
    const-string v0, "android.permission.health."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2051
    const/4 v0, 0x0

    return v0

    .line 2053
    :cond_a
    invoke-static {p0}, Landroid/health/connect/HealthConnectManager;->getHealthPermissions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$insertRecords$0(Landroid/health/connect/datatypes/Record;)V
    .registers 3
    .param p0, "record"    # Landroid/health/connect/datatypes/Record;

    .line 553
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Record;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/Metadata;->setId(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$insertRecords$1(Landroid/health/connect/datatypes/Record;)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 4
    .param p1, "record"    # Landroid/health/connect/datatypes/Record;

    .line 558
    invoke-virtual {p1}, Landroid/health/connect/datatypes/Record;->toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 559
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    .line 558
    return-object v0
.end method

.method static synthetic blacklist lambda$returnError$3(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    .line 2028
    invoke-virtual {p1}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->getHealthConnectException()Landroid/health/connect/HealthConnectException;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$returnResult$2(Landroid/os/OutcomeReceiver;Ljava/lang/Object;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "result"    # Ljava/lang/Object;

    .line 2020
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist resetHealthPermissionsCache()V
    .registers 1

    .line 2111
    const/4 v0, 0x0

    sput-object v0, Landroid/health/connect/HealthConnectManager;->sHealthPermissions:Ljava/util/Set;

    .line 2112
    return-void
.end method

.method private blacklist returnError(Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/health/connect/aidl/HealthConnectExceptionParcel;",
            "Landroid/os/OutcomeReceiver<",
            "*",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2027
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<*Landroid/health/connect/HealthConnectException;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2028
    new-instance v0, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3, p2}, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2029
    return-void
.end method

.method private static blacklist returnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RES:",
            "Ljava/lang/Object;",
            "ERR:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TRES;",
            "Landroid/os/OutcomeReceiver<",
            "TRES;TERR;>;)V"
        }
    .end annotation

    .line 2019
    .local p1, "result":Ljava/lang/Object;, "TRES;"
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<TRES;TERR;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2020
    new-instance v0, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2021
    return-void
.end method

.method private blacklist toExternalRecordsWithUuids(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation

    .line 2006
    .local p1, "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    .local p2, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2007
    .local v0, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2009
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 2010
    .local v3, "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/health/connect/internal/datatypes/RecordInternal;->setUuid(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 2011
    invoke-virtual {v3}, Landroid/health/connect/internal/datatypes/RecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/Record;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2012
    .end local v3    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    move v0, v4

    goto :goto_a

    .line 2014
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_2a
    return-object v1
.end method

.method private static blacklist wrapMigrationCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IMigrationCallback;
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/migration/MigrationException;",
            ">;)",
            "Landroid/health/connect/aidl/IMigrationCallback;"
        }
    .end annotation

    .line 2118
    .local p1, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/migration/MigrationException;>;"
    new-instance v0, Landroid/health/connect/HealthConnectManager$27;

    invoke-direct {v0, p0, p1}, Landroid/health/connect/HealthConnectManager$27;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-object v0
.end method


# virtual methods
.method public whitelist aggregate(Landroid/health/connect/AggregateRecordsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/health/connect/AggregateRecordsRequest<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/AggregateRecordsResponse<",
            "TT;>;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 606
    .local p1, "request":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/AggregateRecordsResponse<TT;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/AggregateDataRequestParcel;

    invoke-direct {v2, p1}, Landroid/health/connect/aidl/AggregateDataRequestParcel;-><init>(Landroid/health/connect/AggregateRecordsRequest;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$2;

    invoke-direct {v3, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$2;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 610
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->aggregateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/AggregateDataRequestParcel;Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;)V
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_1e} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_34

    .line 641
    :catch_1f
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 635
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_25
    move-exception v0

    .line 636
    .local v0, "classCastException":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    new-instance v2, Landroid/health/connect/HealthConnectException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/health/connect/HealthConnectException;-><init>(I)V

    invoke-direct {v1, v2}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;-><init>(Landroid/health/connect/HealthConnectException;)V

    invoke-direct {p0, p2, v1, p3}, Landroid/health/connect/HealthConnectManager;->returnError(Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 643
    .end local v0    # "classCastException":Ljava/lang/ClassCastException;
    :goto_34
    nop

    .line 644
    return-void
.end method

.method public whitelist aggregateGroupByDuration(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p2, "duration"    # Ljava/time/Duration;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/health/connect/AggregateRecordsRequest<",
            "TT;>;",
            "Ljava/time/Duration;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<",
            "TT;>;>;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "request":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/AggregateRecordsGroupedByDurationResponse<TT;>;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_43

    .line 676
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :try_start_16
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 680
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/AggregateDataRequestParcel;

    invoke-direct {v2, p1, p2}, Landroid/health/connect/aidl/AggregateDataRequestParcel;-><init>(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Duration;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$3;

    invoke-direct {v3, p0, p3, p4}, Landroid/health/connect/HealthConnectManager$3;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 679
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->aggregateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/AggregateDataRequestParcel;Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;)V
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_2b} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_41

    .line 709
    :catch_2c
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 703
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_32
    move-exception v0

    .line 704
    .local v0, "classCastException":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    new-instance v2, Landroid/health/connect/HealthConnectException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/health/connect/HealthConnectException;-><init>(I)V

    invoke-direct {v1, v2}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;-><init>(Landroid/health/connect/HealthConnectException;)V

    invoke-direct {p0, p3, v1, p4}, Landroid/health/connect/HealthConnectManager;->returnError(Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 711
    .end local v0    # "classCastException":Ljava/lang/ClassCastException;
    :goto_41
    nop

    .line 712
    return-void

    .line 674
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration should be at least 1 millisecond"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist aggregateGroupByPeriod(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Period;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p2, "period"    # Ljava/time/Period;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/health/connect/AggregateRecordsRequest<",
            "TT;>;",
            "Ljava/time/Period;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<",
            "TT;>;>;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p1, "request":Landroid/health/connect/AggregateRecordsRequest;, "Landroid/health/connect/AggregateRecordsRequest<TT;>;"
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse<TT;>;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-eq p2, v0, :cond_3d

    .line 746
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :try_start_10
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 750
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/AggregateDataRequestParcel;

    invoke-direct {v2, p1, p2}, Landroid/health/connect/aidl/AggregateDataRequestParcel;-><init>(Landroid/health/connect/AggregateRecordsRequest;Ljava/time/Period;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$4;

    invoke-direct {v3, p0, p3, p4}, Landroid/health/connect/HealthConnectManager$4;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 749
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->aggregateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/AggregateDataRequestParcel;Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;)V
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_25} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_26

    goto :goto_3b

    .line 780
    :catch_26
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 774
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2c
    move-exception v0

    .line 775
    .local v0, "classCastException":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/health/connect/aidl/HealthConnectExceptionParcel;

    new-instance v2, Landroid/health/connect/HealthConnectException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/health/connect/HealthConnectException;-><init>(I)V

    invoke-direct {v1, v2}, Landroid/health/connect/aidl/HealthConnectExceptionParcel;-><init>(Landroid/health/connect/HealthConnectException;)V

    invoke-direct {p0, p3, v1, p4}, Landroid/health/connect/HealthConnectManager;->returnError(Ljava/util/concurrent/Executor;Landroid/health/connect/aidl/HealthConnectExceptionParcel;Landroid/os/OutcomeReceiver;)V

    .line 782
    .end local v0    # "classCastException":Ljava/lang/ClassCastException;
    :goto_3b
    nop

    .line 783
    return-void

    .line 744
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Period duration should be at least a day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist canRestore(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "dataVersion"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 3006
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$42;

    invoke-direct {v1, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$42;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->canRestore(ILandroid/health/connect/aidl/ICanRestoreResponseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 3024
    nop

    .line 3025
    return-void

    .line 3022
    :catch_12
    move-exception v0

    .line 3023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist configureScheduledExport(Landroid/health/connect/exportimport/ScheduledExportSettings;)V
    .registers 4
    .param p1, "settings"    # Landroid/health/connect/exportimport/ScheduledExportSettings;

    .line 1763
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->configureScheduledExport(Landroid/health/connect/exportimport/ScheduledExportSettings;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1766
    goto :goto_10

    .line 1764
    :catch_c
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1767
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist createMedicalDataSource(Landroid/health/connect/CreateMedicalDataSourceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/health/connect/CreateMedicalDataSourceRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/CreateMedicalDataSourceRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2592
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/datatypes/MedicalDataSource;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2598
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$35;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$35;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2597
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->createMedicalDataSource(Landroid/content/AttributionSource;Landroid/health/connect/CreateMedicalDataSourceRequest;Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1b

    .line 2613
    nop

    .line 2614
    return-void

    .line 2611
    :catch_1b
    move-exception v0

    .line 2612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deleteAllStagedRemoteData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1458
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->deleteAllStagedRemoteData(Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1461
    nop

    .line 1462
    return-void

    .line 1459
    :catch_d
    move-exception v0

    .line 1460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist deleteMedicalDataSourceWithData(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2803
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2804
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2809
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$38;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$38;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2808
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->deleteMedicalDataSourceWithData(Landroid/content/AttributionSource;Ljava/lang/String;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1b

    .line 2824
    nop

    .line 2825
    return-void

    .line 2822
    :catch_1b
    move-exception v0

    .line 2823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist deleteMedicalResources(Landroid/health/connect/DeleteMedicalResourcesRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/health/connect/DeleteMedicalResourcesRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/DeleteMedicalResourcesRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2434
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2440
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$32;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$32;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2439
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->deleteMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/DeleteMedicalResourcesRequest;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1b

    .line 2455
    nop

    .line 2456
    return-void

    .line 2453
    :catch_1b
    move-exception v0

    .line 2454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist deleteMedicalResources(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2491
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2496
    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Landroid/health/connect/HealthConnectManager;->returnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V

    .line 2497
    return-void

    .line 2501
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2502
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$33;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$33;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2501
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->deleteMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_26

    .line 2517
    nop

    .line 2518
    return-void

    .line 2515
    :catch_26
    move-exception v0

    .line 2516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist deleteRecords(Landroid/health/connect/DeleteUsingFiltersRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "request"    # Landroid/health/connect/DeleteUsingFiltersRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/DeleteUsingFiltersRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 800
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;

    invoke-direct {v2, p1}, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;-><init>(Landroid/health/connect/DeleteUsingFiltersRequest;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$5;

    invoke-direct {v3, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$5;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 805
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->deleteUsingFilters(Landroid/content/AttributionSource;Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 821
    goto :goto_23

    .line 819
    :catch_1f
    move-exception v0

    .line 820
    .local v0, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 822
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method public whitelist deleteRecords(Ljava/lang/Class;Landroid/health/connect/TimeRangeFilter;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p2, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Landroid/health/connect/TimeRangeFilter;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 882
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :try_start_c
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 889
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;

    new-instance v3, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;

    invoke-direct {v3}, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;-><init>()V

    new-instance v4, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v4}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    iget-object v5, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 894
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v4

    .line 895
    invoke-virtual {v4}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v4

    .line 892
    invoke-virtual {v3, v4}, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->addDataOrigin(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/DeleteUsingFiltersRequest$Builder;

    move-result-object v3

    .line 896
    invoke-virtual {v3, p1}, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->addRecordType(Ljava/lang/Class;)Landroid/health/connect/DeleteUsingFiltersRequest$Builder;

    move-result-object v3

    .line 897
    invoke-virtual {v3, p2}, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->setTimeRangeFilter(Landroid/health/connect/TimeRangeFilter;)Landroid/health/connect/DeleteUsingFiltersRequest$Builder;

    move-result-object v3

    .line 898
    invoke-virtual {v3}, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->build()Landroid/health/connect/DeleteUsingFiltersRequest;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;-><init>(Landroid/health/connect/DeleteUsingFiltersRequest;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$7;

    invoke-direct {v3, p0, p3, p4}, Landroid/health/connect/HealthConnectManager$7;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 888
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->deleteUsingFilters(Landroid/content/AttributionSource;Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_49} :catch_4a

    .line 912
    goto :goto_4e

    .line 910
    :catch_4a
    move-exception v0

    .line 911
    .local v0, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 913
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method public whitelist deleteRecords(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 838
    .local p1, "recordIds":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/RecordIdFilter;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 847
    :try_start_f
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 848
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;

    new-instance v3, Landroid/health/connect/aidl/RecordIdFiltersParcel;

    invoke-direct {v3, p1}, Landroid/health/connect/aidl/RecordIdFiltersParcel;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 850
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;-><init>(Landroid/health/connect/aidl/RecordIdFiltersParcel;Ljava/lang/String;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$6;

    invoke-direct {v3, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$6;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 847
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->deleteUsingFilters(Landroid/content/AttributionSource;Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2f} :catch_30

    .line 864
    goto :goto_34

    .line 862
    :catch_30
    move-exception v0

    .line 863
    .local v0, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 865
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    :goto_34
    return-void

    .line 843
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "record ids can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist fetchDataOriginsPriorityOrder(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "dataCategory"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1011
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;Landroid/health/connect/HealthConnectException;>;"
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$10;

    invoke-direct {v1, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$10;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getCurrentPriority(ILandroid/health/connect/aidl/IGetPriorityResponseCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1028
    nop

    .line 1029
    return-void

    .line 1026
    :catch_c
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist finishMigration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/migration/MigrationException;",
            ">;)V"
        }
    .end annotation

    .line 1685
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/migration/MigrationException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1689
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/health/connect/HealthConnectManager;->wrapMigrationCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v2

    .line 1688
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->finishMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 1692
    nop

    .line 1693
    return-void

    .line 1690
    :catch_17
    move-exception v0

    .line 1691
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllBackupFileNames(Z)Ljava/util/Set;
    .registers 4
    .param p1, "forDeviceToDevice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1441
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    invoke-interface {v0, p1}, Landroid/health/connect/aidl/IHealthConnectService;->getAllBackupFileNames(Z)Landroid/health/connect/restore/BackupFileNamesSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/health/connect/restore/BackupFileNamesSet;->getFileNames()Ljava/util/Set;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1442
    :catch_b
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllDataForBackup(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1424
    .local p1, "pfdsByFileName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    :try_start_3
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/restore/StageRemoteDataRequest;

    invoke-direct {v1, p1}, Landroid/health/connect/restore/StageRemoteDataRequest;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1428
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 1427
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getAllDataForBackup(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_15

    .line 1431
    nop

    .line 1432
    return-void

    .line 1429
    :catch_15
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getChangeLogToken(Landroid/health/connect/changelog/ChangeLogTokenRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/health/connect/changelog/ChangeLogTokenRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/changelog/ChangeLogTokenRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/changelog/ChangeLogTokenResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 973
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/changelog/ChangeLogTokenResponse;Landroid/health/connect/HealthConnectException;>;"
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 974
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$9;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$9;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 973
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getChangeLogToken(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogTokenRequest;Landroid/health/connect/aidl/IGetChangeLogTokenCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 990
    nop

    .line 991
    return-void

    .line 988
    :catch_12
    move-exception v0

    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getChangeLogs(Landroid/health/connect/changelog/ChangeLogsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "changeLogsRequest"    # Landroid/health/connect/changelog/ChangeLogsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/changelog/ChangeLogsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/changelog/ChangeLogsResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 927
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/changelog/ChangeLogsResponse;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 933
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$8;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$8;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 932
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getChangeLogs(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogsRequest;Landroid/health/connect/aidl/IChangeLogsResponseCallback;)V
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_19} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_2e

    .line 952
    :catch_1a
    move-exception v0

    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 947
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_20
    move-exception v0

    .line 948
    .local v0, "invalidArgumentException":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/health/connect/HealthConnectException;

    .line 951
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    .line 948
    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 954
    .end local v0    # "invalidArgumentException":Ljava/lang/ClassCastException;
    :goto_2e
    nop

    .line 955
    return-void
.end method

.method public blacklist getChangesForBackup(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "changeToken"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/backuprestore/GetChangesForBackupResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2871
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/backuprestore/GetChangesForBackupResponse;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$39;

    invoke-direct {v1, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$39;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getChangesForBackup(Ljava/lang/String;Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 2889
    nop

    .line 2890
    return-void

    .line 2887
    :catch_12
    move-exception v0

    .line 2888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContributorApplicationsInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/ApplicationInfoResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1324
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/ApplicationInfoResponse;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$16;

    invoke-direct {v1, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$16;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getContributorApplicationsInfo(Landroid/health/connect/aidl/IApplicationInfoResponseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 1348
    nop

    .line 1349
    return-void

    .line 1346
    :catch_12
    move-exception v0

    .line 1347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getGrantedHealthPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getGrantedHealthPermissions(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 449
    :catch_d
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getHealthConnectDataState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/HealthConnectDataState;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1584
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/HealthConnectDataState;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$19;

    invoke-direct {v1, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$19;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getHealthConnectDataState(Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 1604
    nop

    .line 1605
    return-void

    .line 1602
    :catch_12
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHealthConnectMigrationUiState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/migration/HealthConnectMigrationUiState;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1538
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/migration/HealthConnectMigrationUiState;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$18;

    invoke-direct {v1, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$18;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getHealthConnectMigrationUiState(Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 1559
    nop

    .line 1560
    return-void

    .line 1557
    :catch_12
    move-exception v0

    .line 1558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHealthDataHistoricalAccessStartDate(Ljava/lang/String;)Ljava/time/Instant;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 519
    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getHistoricalAccessStartDateInMilliseconds(Ljava/lang/String;Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 521
    .local v0, "dateMilli":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    .line 522
    const/4 v2, 0x0

    return-object v2

    .line 524
    :cond_14
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v2

    .line 526
    .end local v0    # "dateMilli":J
    :catch_19
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHealthPermissionsFlags(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 478
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/health/connect/aidl/IHealthConnectService;->getHealthPermissionsFlags(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 479
    :catch_d
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getImportStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/exportimport/ImportStatus;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1814
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/exportimport/ImportStatus;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1819
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$22;

    invoke-direct {v2, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$22;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1818
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getImportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IImportStatusCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 1834
    goto :goto_1b

    .line 1832
    :catch_17
    move-exception v0

    .line 1833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1835
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public blacklist getLatestMetadataForBackup(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2916
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/backuprestore/GetLatestMetadataForBackupResponse;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$40;

    invoke-direct {v1, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$40;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getLatestMetadataForBackup(Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 2933
    nop

    .line 2934
    return-void

    .line 2931
    :catch_12
    move-exception v0

    .line 2932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMedicalDataSources(Landroid/health/connect/GetMedicalDataSourcesRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/health/connect/GetMedicalDataSourcesRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/GetMedicalDataSourcesRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2749
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/datatypes/MedicalDataSource;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2751
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2755
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$37;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$37;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2754
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getMedicalDataSourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/GetMedicalDataSourcesRequest;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1b

    .line 2770
    nop

    .line 2771
    return-void

    .line 2768
    :catch_1b
    move-exception v0

    .line 2769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMedicalDataSources(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2665
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/datatypes/MedicalDataSource;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2670
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p3}, Landroid/health/connect/HealthConnectManager;->returnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V

    .line 2671
    return-void

    .line 2674
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_37

    .line 2680
    :try_start_1f
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2681
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$36;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$36;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2680
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getMedicalDataSourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_31

    .line 2696
    nop

    .line 2697
    return-void

    .line 2694
    :catch_31
    move-exception v0

    .line 2695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2675
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of requested IDs must be <= 5000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRecordRetentionPeriodInDays()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1118
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getRecordRetentionPeriodInDays(Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1119
    :catch_d
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getScheduledExportPeriodInDays()I
    .registers 3

    .line 1925
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->getScheduledExportPeriodInDays(Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1926
    :catch_d
    move-exception v0

    .line 1927
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getScheduledExportStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/exportimport/ScheduledExportStatus;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1780
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/exportimport/ScheduledExportStatus;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1785
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$21;

    invoke-direct {v2, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$21;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1784
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getScheduledExportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IScheduledExportStatusCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 1800
    goto :goto_1b

    .line 1798
    :catch_17
    move-exception v0

    .line 1799
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1801
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public blacklist grantHealthPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 388
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/health/connect/aidl/IHealthConnectService;->grantHealthPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 391
    nop

    .line 392
    return-void

    .line 389
    :catch_d
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist insertMinDataMigrationSdkExtensionVersion(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "requiredSdkExtension"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/migration/MigrationException;",
            ">;)V"
        }
    .end annotation

    .line 1738
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/migration/MigrationException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1742
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1744
    invoke-static {p2, p3}, Landroid/health/connect/HealthConnectManager;->wrapMigrationCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v2

    .line 1741
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->insertMinDataMigrationSdkExtensionVersion(Ljava/lang/String;ILandroid/health/connect/aidl/IMigrationCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 1748
    nop

    .line 1749
    return-void

    .line 1746
    :catch_17
    move-exception v0

    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist insertRecords(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/InsertRecordsResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/InsertRecordsResponse;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :try_start_9
    new-instance v0, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 554
    nop

    .line 555
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda3;-><init>(Landroid/health/connect/HealthConnectManager;)V

    .line 556
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 560
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 561
    .local v0, "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 562
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/health/connect/aidl/RecordsParcel;

    invoke-direct {v3, v0}, Landroid/health/connect/aidl/RecordsParcel;-><init>(Ljava/util/List;)V

    new-instance v4, Landroid/health/connect/HealthConnectManager$1;

    invoke-direct {v4, p0, p2, p3, v0}, Landroid/health/connect/HealthConnectManager$1;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Ljava/util/List;)V

    .line 561
    invoke-interface {v1, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService;->insertRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IInsertRecordsResponseCallback;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3e} :catch_40

    .line 584
    .end local v0    # "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    nop

    .line 585
    return-void

    .line 582
    :catch_40
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryAccessLogs(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/accesslog/AccessLog;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1182
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/accesslog/AccessLog;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1186
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$14;

    invoke-direct {v2, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$14;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1185
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->queryAccessLogs(Ljava/lang/String;Landroid/health/connect/aidl/IAccessLogsResponseCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_18

    .line 1201
    nop

    .line 1202
    return-void

    .line 1199
    :catch_18
    move-exception v0

    .line 1200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryActivityDates(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Ljava/time/LocalDate;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1622
    .local p1, "recordTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Ljava/time/LocalDate;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1631
    :try_start_f
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/aidl/ActivityDatesRequestParcel;

    invoke-direct {v1, p1}, Landroid/health/connect/aidl/ActivityDatesRequestParcel;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/health/connect/HealthConnectManager$20;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$20;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->getActivityDates(Landroid/health/connect/aidl/ActivityDatesRequestParcel;Landroid/health/connect/aidl/IActivityDatesResponseCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    .line 1648
    goto :goto_23

    .line 1646
    :catch_1f
    move-exception v0

    .line 1647
    .local v0, "exception":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1649
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_23
    return-void

    .line 1627
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Record types list can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryAllMedicalResourceTypeInfos(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceTypeInfo;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2536
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/MedicalResourceTypeInfo;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$34;

    invoke-direct {v1, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$34;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->queryAllMedicalResourceTypeInfos(Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 2555
    nop

    .line 2556
    return-void

    .line 2553
    :catch_12
    move-exception v0

    .line 2554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryAllRecordTypesInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Landroid/health/connect/RecordTypeInfoResponse;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1081
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/Map<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;Landroid/health/connect/RecordTypeInfoResponse;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$12;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/health/connect/aidl/IHealthConnectService;->queryAllRecordTypesInfo(Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 1100
    nop

    .line 1101
    return-void

    .line 1098
    :catch_12
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist queryDocumentProviders(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/exportimport/ExportImportDocumentProvider;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1944
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/exportimport/ExportImportDocumentProvider;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1949
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$25;

    invoke-direct {v2, p0, p1, p2}, Landroid/health/connect/HealthConnectManager$25;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1948
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->queryDocumentProviders(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 1964
    goto :goto_1b

    .line 1962
    :catch_17
    move-exception v0

    .line 1963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1965
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist readMedicalResources(Landroid/health/connect/ReadMedicalResourcesRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "request"    # Landroid/health/connect/ReadMedicalResourcesRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/ReadMedicalResourcesRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/ReadMedicalResourcesResponse;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2382
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/ReadMedicalResourcesResponse;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2388
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 2389
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesRequest;->toParcel()Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;

    move-result-object v2

    new-instance v3, Landroid/health/connect/HealthConnectManager$31;

    invoke-direct {v3, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$31;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2387
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->readMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_1f

    .line 2403
    nop

    .line 2404
    return-void

    .line 2401
    :catch_1f
    move-exception v0

    .line 2402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist readMedicalResources(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2308
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/datatypes/MedicalResource;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2313
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p3}, Landroid/health/connect/HealthConnectManager;->returnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V

    .line 2314
    return-void

    .line 2317
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_37

    .line 2323
    :try_start_1f
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2324
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$30;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$30;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2323
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->readMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_31

    .line 2339
    nop

    .line 2340
    return-void

    .line 2337
    :catch_31
    move-exception v0

    .line 2338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2318
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of requested IDs must be <= 5000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist readRecords(Landroid/health/connect/ReadRecordsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/health/connect/datatypes/Record;",
            ">(",
            "Landroid/health/connect/ReadRecordsRequest<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/health/connect/ReadRecordsResponse<",
            "TT;>;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1235
    .local p1, "request":Landroid/health/connect/ReadRecordsRequest;, "Landroid/health/connect/ReadRecordsRequest<TT;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/health/connect/ReadRecordsResponse<TT;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1240
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 1241
    invoke-virtual {p1}, Landroid/health/connect/ReadRecordsRequest;->toReadRecordsRequestParcel()Landroid/health/connect/aidl/ReadRecordsRequestParcel;

    move-result-object v2

    .line 1242
    invoke-direct {p0, p2, p3}, Landroid/health/connect/HealthConnectManager;->getReadCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;

    move-result-object v3

    .line 1239
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->readRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadRecordsRequestParcel;Landroid/health/connect/aidl/IReadRecordsResponseCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 1245
    goto :goto_21

    .line 1243
    :catch_1d
    move-exception v0

    .line 1244
    .local v0, "remoteException":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1246
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public blacklist restoreChanges(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/backuprestore/RestoreChange;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 3056
    .local p1, "restoreChanges":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/backuprestore/RestoreChange;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3060
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$43;

    invoke-direct {v1, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$43;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->restoreChanges(Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_15

    .line 3075
    nop

    .line 3076
    return-void

    .line 3073
    :catch_15
    move-exception v0

    .line 3074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist restoreLatestMetadata(Landroid/health/connect/backuprestore/BackupMetadata;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "backupMetadata"    # Landroid/health/connect/backuprestore/BackupMetadata;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/backuprestore/BackupMetadata;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2962
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2964
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$41;

    invoke-direct {v1, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$41;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->restoreLatestMetadata(Landroid/health/connect/backuprestore/BackupMetadata;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_15

    .line 2981
    nop

    .line 2982
    return-void

    .line 2979
    :catch_15
    move-exception v0

    .line 2980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist revokeAllHealthPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 432
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/health/connect/aidl/IHealthConnectService;->revokeAllHealthPermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 435
    nop

    .line 436
    return-void

    .line 433
    :catch_d
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist revokeHealthPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 413
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 413
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/health/connect/aidl/IHealthConnectService;->revokeHealthPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 417
    nop

    .line 418
    return-void

    .line 415
    :catch_d
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist runImmediateExport(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "file"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1886
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/HealthConnectManager$24;

    invoke-direct {v1, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$24;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/health/connect/aidl/IHealthConnectService;->runImmediateExport(Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    .line 1906
    goto :goto_18

    .line 1904
    :catch_14
    move-exception v0

    .line 1905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1907
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public blacklist runImport(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "file"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1849
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1854
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$23;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$23;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1853
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->runImport(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    .line 1870
    goto :goto_1e

    .line 1868
    :catch_1a
    move-exception v0

    .line 1869
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1871
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public blacklist setHealthPermissionsUserFixedFlagValue(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 500
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 501
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 500
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/health/connect/aidl/IHealthConnectService;->setHealthPermissionsUserFixedFlagValue(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 504
    nop

    .line 505
    return-void

    .line 502
    :catch_d
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLowerRateLimitsForTesting(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1472
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    invoke-interface {v0, p1}, Landroid/health/connect/aidl/IHealthConnectService;->setLowerRateLimitsForTesting(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1475
    nop

    .line 1476
    return-void

    .line 1473
    :catch_7
    move-exception v0

    .line 1474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRecordRetentionPeriodInDays(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "days"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1142
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    if-ltz p1, :cond_22

    const/16 v0, 0x1c84

    if-gt p1, v0, :cond_22

    .line 1150
    :try_start_c
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1152
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$13;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$13;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1150
    invoke-interface {v0, p1, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->setRecordRetentionPeriodInDays(ILandroid/os/UserHandle;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_1d

    .line 1167
    goto :goto_21

    .line 1165
    :catch_1d
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void

    .line 1146
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "days should be between 0 and 7300"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stageAllHealthConnectRemoteData(Ljava/util/Map;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/restore/StageRemoteDataException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1386
    .local p1, "pfdsByFileName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/restore/StageRemoteDataException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/restore/StageRemoteDataRequest;

    invoke-direct {v1, p1}, Landroid/health/connect/restore/StageRemoteDataRequest;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1393
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Landroid/health/connect/HealthConnectManager$17;

    invoke-direct {v3, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$17;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1391
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->stageAllHealthConnectRemoteData(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;Landroid/health/connect/aidl/IDataStagingFinishedCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_20

    .line 1409
    nop

    .line 1410
    return-void

    .line 1407
    :catch_20
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startMigration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/migration/MigrationException;",
            ">;)V"
        }
    .end annotation

    .line 1663
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/migration/MigrationException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    :try_start_6
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1667
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/health/connect/HealthConnectManager;->wrapMigrationCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v2

    .line 1666
    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->startMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 1670
    nop

    .line 1671
    return-void

    .line 1668
    :catch_17
    move-exception v0

    .line 1669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateDataDownloadState(I)V
    .registers 4
    .param p1, "downloadState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1512
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    invoke-interface {v0, p1}, Landroid/health/connect/aidl/IHealthConnectService;->updateDataDownloadState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1515
    nop

    .line 1516
    return-void

    .line 1513
    :catch_7
    move-exception v0

    .line 1514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateDataOriginPriorityOrder(Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1046
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    :try_start_0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    new-instance v1, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;

    invoke-direct {v1, p1}, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;-><init>(Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;)V

    new-instance v2, Landroid/health/connect/HealthConnectManager$11;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$11;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->updatePriority(Landroid/health/connect/aidl/UpdatePriorityRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1062
    nop

    .line 1063
    return-void

    .line 1060
    :catch_11
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateRecords(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 1267
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    nop

    .line 1272
    :try_start_a
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/health/connect/HealthConnectManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1274
    .local v0, "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 1275
    .local v2, "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->getClientRecordId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 1276
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->getClientRecordId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1277
    :cond_41
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->getUuid()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 1283
    .end local v2    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    :cond_47
    goto :goto_25

    .line 1278
    .restart local v2    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At least one of the records is missing both ClientRecordID and UUID. RecordType of the input: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1281
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/RecordInternal;->getRecordType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/health/connect/HealthConnectManager;
    .end local p1    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    throw v1

    .line 1285
    .end local v2    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    .restart local p0    # "this":Landroid/health/connect/HealthConnectManager;
    .restart local p1    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/HealthConnectException;>;"
    :cond_65
    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1286
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/health/connect/aidl/RecordsParcel;

    invoke-direct {v3, v0}, Landroid/health/connect/aidl/RecordsParcel;-><init>(Ljava/util/List;)V

    new-instance v4, Landroid/health/connect/HealthConnectManager$15;

    invoke-direct {v4, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$15;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 1285
    invoke-interface {v1, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService;->updateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    :try_end_7a
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_7a} :catch_82
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_7a} :catch_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_7a} :catch_82
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_7a} :catch_7c

    .line 1307
    .end local v0    # "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    nop

    .line 1308
    return-void

    .line 1305
    :catch_7c
    move-exception v0

    .line 1306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1301
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_82
    move-exception v0

    .line 1304
    .local v0, "invalidArgumentException":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist upsertMedicalResources(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;",
            "Landroid/health/connect/HealthConnectException;",
            ">;)V"
        }
    .end annotation

    .line 2204
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/UpsertMedicalResourceRequest;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/List<Landroid/health/connect/datatypes/MedicalResource;>;Landroid/health/connect/HealthConnectException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2209
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p3}, Landroid/health/connect/HealthConnectManager;->returnResult(Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/OutcomeReceiver;)V

    .line 2210
    return-void

    .line 2214
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->phrUpsertFixUseSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2215
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2216
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;

    invoke-direct {v2, p1}, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;-><init>(Ljava/util/List;)V

    new-instance v3, Landroid/health/connect/HealthConnectManager$28;

    invoke-direct {v3, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$28;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2215
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->upsertMedicalResourcesFromRequestsParcel(Landroid/content/AttributionSource;Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;)V

    goto :goto_43

    .line 2234
    :cond_33
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 2235
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/health/connect/HealthConnectManager$29;

    invoke-direct {v2, p0, p2, p3}, Landroid/health/connect/HealthConnectManager$29;-><init>(Landroid/health/connect/HealthConnectManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 2234
    invoke-interface {v0, v1, p1, v2}, Landroid/health/connect/aidl/IHealthConnectService;->upsertMedicalResources(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_43} :catch_45

    .line 2251
    :goto_43
    nop

    .line 2252
    return-void

    .line 2249
    :catch_45
    move-exception v0

    .line 2250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist writeMigrationData(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/migration/MigrationEntity;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/health/connect/migration/MigrationException;",
            ">;)V"
        }
    .end annotation

    .line 1710
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/migration/MigrationEntity;>;"
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/health/connect/migration/MigrationException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    :try_start_9
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager;->mService:Landroid/health/connect/aidl/IHealthConnectService;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager;->mContext:Landroid/content/Context;

    .line 1716
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/health/connect/migration/MigrationEntityParcel;

    invoke-direct {v2, p1}, Landroid/health/connect/migration/MigrationEntityParcel;-><init>(Ljava/util/List;)V

    .line 1718
    invoke-static {p2, p3}, Landroid/health/connect/HealthConnectManager;->wrapMigrationCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v3

    .line 1715
    invoke-interface {v0, v1, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService;->writeMigrationData(Ljava/lang/String;Landroid/health/connect/migration/MigrationEntityParcel;Landroid/health/connect/aidl/IMigrationCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_1f

    .line 1721
    nop

    .line 1722
    return-void

    .line 1719
    :catch_1f
    move-exception v0

    .line 1720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.class public Landroid/os/UserManagerCache;
.super Ljava/lang/Object;
.source "UserManagerCache.java"


# static fields
.field private static blacklist sEnabledProfileIds:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist sEnabledProfileIdsLock:Ljava/lang/Object;

.field private static blacklist sProfileIdsWithDisabled:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist sProfileIdsWithDisabledLock:Ljava/lang/Object;

.field private static blacklist sProfileParent:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sProfileParentLock:Ljava/lang/Object;

.field private static blacklist sProfiles:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sProfilesLock:Ljava/lang/Object;

.field private static blacklist sUserInfo:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserInfoLock:Ljava/lang/Object;

.field private static blacklist sUserPropertiesFromQuery:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserPropertiesFromQueryLock:Ljava/lang/Object;

.field private static blacklist sUserRestrictionFromQuery:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserRestrictionFromQueryLock:Ljava/lang/Object;

.field private static blacklist sUserUnlocked:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserUnlockedLock:Ljava/lang/Object;

.field private static blacklist sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserUnlockingOrUnlockedLock:Ljava/lang/Object;


# instance fields
.field private blacklist mQuietModeEnabled:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQuietModeEnabledLock:Ljava/lang/Object;

.field private blacklist mUserSerialNumber:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserSerialNumberLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    .line 466
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)[I
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 423
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;[I>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 424
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 426
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 428
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users_enabled"

    const-string v5, "EnabledProfileIds"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    .line 431
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 432
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 431
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I
    .registers 9
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 445
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;[I>;"
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 446
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 448
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 450
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users_enabled"

    const-string v5, "EnabledProfileIds"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    .line 453
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 454
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 453
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)[I
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 366
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;[I>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 367
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 369
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 371
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileIdsWithDisabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    .line 374
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 375
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 374
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I
    .registers 9
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 388
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;[I>;"
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 389
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 391
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 393
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileIdsWithDisabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    .line 396
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 397
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 396
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 10
    .param p2, "query"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .line 480
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/os/UserHandle;Landroid/os/UserHandle;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Landroid/os/UserHandle;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 481
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    return-object v0

    .line 483
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 485
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileParent"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    .line 488
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 489
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    return-object v0

    .line 488
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 9
    .param p1, "query"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .line 502
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/os/UserHandle;Landroid/os/UserHandle;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 503
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    return-object v0

    .line 505
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 507
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "ProfileParent"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    .line 510
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 511
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    return-object v0

    .line 510
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getProfiles(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/util/List;
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 309
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/UserInfo;>;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 310
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 312
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 314
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "Profiles"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    .line 317
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 318
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 317
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getProfiles(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/util/List;
    .registers 9
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 331
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/UserInfo;>;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 332
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 334
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 336
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "Profiles"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    .line 339
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 340
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 339
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    .line 138
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Landroid/content/pm/UserInfo;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 139
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    return-object v0

    .line 141
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 143
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "UserInfo"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    .line 146
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 147
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    return-object v0

    .line 146
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .registers 9
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    .line 160
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Landroid/content/pm/UserInfo;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 161
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    return-object v0

    .line 163
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 165
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_data"

    const-string v5, "UserInfo"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    .line 168
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 169
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    return-object v0

    .line 168
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 10
    .param p2, "query"    # Landroid/os/UserManager$QueryUserId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserManager$QueryUserId;",
            ">;",
            "Landroid/os/UserManager$QueryUserId;",
            ")",
            "Landroid/content/pm/UserProperties;"
        }
    .end annotation

    .line 195
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/os/UserManager$QueryUserId;Landroid/content/pm/UserProperties;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Landroid/os/UserManager$QueryUserId;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 196
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserProperties;

    return-object v0

    .line 198
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 200
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_properties_from_query"

    const-string v5, "UserPropertiesFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    .line 203
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 204
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserProperties;

    return-object v0

    .line 203
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 9
    .param p1, "query"    # Landroid/os/UserManager$QueryUserId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;",
            "Landroid/os/UserManager$QueryUserId;",
            ")",
            "Landroid/content/pm/UserProperties;"
        }
    .end annotation

    .line 217
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/os/UserManager$QueryUserId;Landroid/content/pm/UserProperties;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 218
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserProperties;

    return-object v0

    .line 220
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 222
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_properties_from_query"

    const-string v5, "UserPropertiesFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    .line 225
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 226
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserProperties;

    return-object v0

    .line 225
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 252
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/Boolean;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local p2, "query":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 253
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 255
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 257
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_restriction_from_query"

    const-string v5, "UserRestrictionFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    .line 260
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 261
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 260
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 274
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/Boolean;>;"
    .local p1, "query":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 275
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 277
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 279
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_user_restriction_from_query"

    const-string v5, "UserRestrictionFromQuery"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    .line 282
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 283
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 282
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist initCache()V
    .registers 0

    .line 644
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlocked()V

    .line 645
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlockingOrUnlocked()V

    .line 646
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserInfo()V

    .line 647
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserPropertiesFromQuery()V

    .line 648
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserRestrictionFromQuery()V

    .line 649
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfiles()V

    .line 650
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileIdsWithDisabled()V

    .line 651
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateEnabledProfileIds()V

    .line 652
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileParent()V

    .line 653
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateQuietModeEnabled()V

    .line 654
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserSerialNumber()V

    .line 655
    return-void
.end method

.method public static final blacklist invalidateEnabledProfileIds()V
    .registers 2

    .line 463
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users_enabled"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static final blacklist invalidateProfileIdsWithDisabled()V
    .registers 2

    .line 406
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public static final blacklist invalidateProfileParent()V
    .registers 2

    .line 520
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public static final blacklist invalidateProfiles()V
    .registers 2

    .line 349
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_data"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static final blacklist invalidateQuietModeEnabled()V
    .registers 2

    .line 577
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_quiet_mode_enabled"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public static final blacklist invalidateUserInfo()V
    .registers 2

    .line 178
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_data"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static final blacklist invalidateUserPropertiesFromQuery()V
    .registers 2

    .line 235
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_properties_from_query"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static final blacklist invalidateUserRestrictionFromQuery()V
    .registers 2

    .line 292
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_restriction_from_query"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static final blacklist invalidateUserSerialNumber()V
    .registers 2

    .line 634
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public static final blacklist invalidateUserUnlocked()V
    .registers 2

    .line 64
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "is_user_unlocked"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static final blacklist invalidateUserUnlockingOrUnlocked()V
    .registers 2

    .line 121
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "is_user_unlocked"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static blacklist isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 24
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 25
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 27
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 29
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "is_user_unlocked"

    const-string v5, "UserUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    .line 32
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 33
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 32
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 46
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 47
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 49
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 51
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "is_user_unlocked"

    const-string v5, "UserUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    .line 54
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 55
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 54
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 81
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local p1, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 82
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 84
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 86
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "is_user_unlocked"

    const-string v5, "UserUnlockingOrUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    .line 89
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 90
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 89
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static blacklist isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 103
    .local p0, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 104
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 106
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 108
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "is_user_unlocked"

    const-string v5, "UserUnlockingOrUnlocked"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    .line 111
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 112
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 111
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public blacklist getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 11
    .param p3, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 594
    .local p1, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p2, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 595
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 597
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 599
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "UserSerialNumber"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, p2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    .line 602
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 603
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 602
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 10
    .param p2, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 616
    .local p1, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 617
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 619
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 621
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_users"

    const-string v5, "UserSerialNumber"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    .line 624
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 625
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 624
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 11
    .param p3, "query"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 537
    .local p1, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .local p2, "bypassPredicate":Landroid/os/IpcDataCache$BypassCall;, "Landroid/os/IpcDataCache$BypassCall<Landroid/os/UserHandle;>;"
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 538
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 540
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 542
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_quiet_mode_enabled"

    const-string v5, "QuietModeEnabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, p2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    .line 545
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 546
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 545
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 10
    .param p2, "query"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 559
    .local p1, "binderCall":Landroid/os/IpcDataCache$RemoteCall;, "Landroid/os/IpcDataCache$RemoteCall<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 560
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 562
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2a

    .line 564
    new-instance v1, Landroid/os/IpcDataCache;

    new-instance v2, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v3, "system_server"

    const-string/jumbo v4, "user_manager_quiet_mode_enabled"

    const-string v5, "QuietModeEnabled"

    const/16 v6, 0x20

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    .line 567
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    .line 568
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 567
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

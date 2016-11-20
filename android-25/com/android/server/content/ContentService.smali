.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$1;,
        Lcom/android/server/content/ContentService$Lifecycle;,
        Lcom/android/server/content/ContentService$ObserverCall;,
        Lcom/android/server/content/ContentService$ObserverNode;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 247
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    #@4
    .line 115
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@6
    const-string/jumbo v1, ""

    #@9
    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@e
    .line 117
    iput-object v4, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@10
    .line 118
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    #@17
    .line 127
    new-instance v0, Landroid/util/SparseArray;

    #@19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1c
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@1e
    .line 129
    new-instance v0, Lcom/android/server/content/ContentService$1;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    #@23
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    #@25
    .line 248
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@27
    .line 249
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    #@29
    .line 254
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    #@2b
    .line 253
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2e
    move-result-object v11

    #@2f
    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    #@31
    .line 256
    .local v11, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v0, Lcom/android/server/content/ContentService$3;

    #@33
    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$3;-><init>(Lcom/android/server/content/ContentService;)V

    #@36
    .line 255
    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    #@39
    .line 263
    new-instance v3, Landroid/content/IntentFilter;

    #@3b
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@3e
    .line 264
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@41
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@44
    .line 265
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@47
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4a
    .line 266
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@4d
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@50
    .line 267
    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    #@53
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@56
    .line 268
    const-string/jumbo v0, "package"

    #@59
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@5c
    .line 269
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@5e
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    #@60
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@62
    move-object v5, v4

    #@63
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@66
    .line 272
    new-instance v8, Landroid/content/IntentFilter;

    #@68
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@6b
    .line 273
    .local v8, "localeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    #@6e
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@71
    .line 274
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@73
    iget-object v6, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    #@75
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@77
    move-object v9, v4

    #@78
    move-object v10, v4

    #@79
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@7c
    .line 247
    return-void
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "userHandle"    # I

    #@0
    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 438
    const/4 v6, 0x0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    .line 437
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 439
    :catch_0
    move-exception v7

    #@10
    .line 440
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    #@11
    return v0
.end method

.method private clampPeriod(J)J
    .locals 7
    .param p1, "period"    # J

    #@0
    .prologue
    .line 507
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v4, 0x3e8

    #@6
    div-long v0, v2, v4

    #@8
    .line 508
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    #@a
    if-gez v2, :cond_0

    #@c
    .line 509
    const-string/jumbo v2, "ContentService"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Requested poll frequency of "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 510
    const-string/jumbo v4, " seconds being rounded up to "

    #@22
    .line 509
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 510
    const-string/jumbo v4, "s."

    #@2d
    .line 509
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 511
    move-wide p1, v0

    #@39
    .line 513
    :cond_0
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1152
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1153
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_0

    #@6
    .line 1154
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@8
    .line 1155
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@b
    .line 1154
    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 1151
    :cond_0
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1069
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/ArrayMap;

    #@8
    .line 1070
    .local v1, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v1, :cond_0

    #@a
    .line 1071
    new-instance v1, Landroid/util/ArrayMap;

    #@c
    .end local v1    # "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 1072
    .restart local v1    # "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1074
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/util/ArrayMap;

    #@1a
    .line 1075
    .local v0, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v0, :cond_1

    #@1c
    .line 1076
    new-instance v0, Landroid/util/ArrayMap;

    #@1e
    .end local v0    # "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@21
    .line 1077
    .restart local v0    # "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1079
    :cond_1
    return-object v0
.end method

.method private getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1062
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v2

    #@7
    .line 1063
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    const/4 v4, 0x0

    #@c
    .line 1062
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@f
    move-result-object v0

    #@10
    .line 1064
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@14
    :cond_0
    return-object v1
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 149
    const-string/jumbo v1, "config.disable_network"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 150
    return-object v3

    #@c
    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@11
    if-nez v1, :cond_1

    #@13
    new-instance v1, Lcom/android/server/content/SyncManager;

    #@15
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@17
    iget-boolean v4, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    #@19
    invoke-direct {v1, v3, v4}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    #@1c
    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 160
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v2

    #@21
    return-object v1

    #@22
    .line 157
    :catch_0
    move-exception v0

    #@23
    .line 158
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string/jumbo v1, "ContentService"

    #@26
    const-string/jumbo v3, "Can\'t create SyncManager"

    #@29
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 153
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1083
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/util/ArrayMap;

    #@8
    .line 1084
    .local v3, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v3, :cond_0

    #@a
    return-void

    #@b
    .line 1086
    :cond_0
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/util/ArrayMap;

    #@11
    .line 1087
    .local v2, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v2, :cond_1

    #@13
    return-void

    #@14
    .line 1089
    :cond_1
    if-eqz p3, :cond_3

    #@16
    .line 1090
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1a
    move-result v4

    #@1b
    if-ge v0, v4, :cond_4

    #@1d
    .line 1091
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/util/Pair;

    #@23
    .line 1092
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@25
    if-eqz v4, :cond_2

    #@27
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@29
    check-cast v4, Landroid/net/Uri;

    #@2b
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 1094
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@3c
    goto :goto_0

    #@3d
    .line 1096
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1101
    .end local v0    # "i":I
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :cond_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    #@43
    .line 1082
    :cond_4
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    #@0
    .prologue
    .line 748
    const/4 v0, 0x1

    #@1
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 749
    if-nez p1, :cond_0

    #@6
    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Account must not be null"

    #@b
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 752
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v2, "Authority must not be empty."

    #@1a
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@20
    const-string/jumbo v2, "android.permission.WRITE_SYNC_SETTINGS"

    #@23
    .line 756
    const-string/jumbo v3, "no permission to write the sync settings"

    #@26
    .line 755
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 758
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@2c
    move-result v7

    #@2d
    .line 760
    .local v7, "userId":I
    invoke-direct {p0, p4, p5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    #@30
    move-result-wide p4

    #@31
    .line 761
    invoke-static {p4, p5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@34
    move-result-wide v4

    #@35
    .line 763
    .local v4, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@38
    move-result-wide v8

    #@39
    .line 766
    .local v8, "identityToken":J
    :try_start_0
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3b
    invoke-direct {v1, p1, p2, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3e
    .line 767
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@41
    move-result-object v0

    #@42
    move-wide v2, p4

    #@43
    move-object v6, p3

    #@44
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 770
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4a
    .line 747
    return-void

    #@4b
    .line 769
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_0
    move-exception v0

    #@4c
    .line 770
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4f
    .line 769
    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 4
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 1037
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1039
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@7
    move-result-object v2

    #@8
    .line 1040
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@a
    if-eqz p2, :cond_0

    #@c
    .line 1041
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1044
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@16
    .line 1036
    return-void

    #@17
    .line 1043
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@18
    .line 1044
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@1b
    .line 1043
    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 11
    .param p1, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@3
    move-result-object v6

    #@4
    .line 616
    .local v6, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v6, :cond_0

    #@6
    return-void

    #@7
    .line 617
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@a
    move-result v7

    #@b
    .line 619
    .local v7, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 622
    .local v2, "identityToken":J
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    #@11
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    #@14
    move-result-object v8

    #@15
    invoke-direct {v1, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@18
    .line 623
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    #@1b
    move-result-object v0

    #@1c
    .line 624
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    .line 625
    .local v5, "provider":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@22
    invoke-direct {v4, v0, v5, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@25
    .line 626
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 628
    iget-object v8, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@2d
    const-string/jumbo v9, "android.permission.WRITE_SYNC_SETTINGS"

    #@30
    .line 629
    const-string/jumbo v10, "no permission to write the sync settings"

    #@33
    .line 628
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 630
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, v4, v1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@3d
    .line 633
    :cond_1
    invoke-virtual {v6, v4, v1}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@40
    .line 634
    invoke-virtual {v6, v4, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 636
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@46
    .line 614
    return-void

    #@47
    .line 635
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v5    # "provider":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@48
    .line 636
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4b
    .line 635
    throw v8
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 569
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    #@7
    .line 568
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 588
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 589
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v5, "Authority must be non-empty"

    #@d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 592
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "no permission to modify the sync settings for user "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 591
    invoke-direct {p0, p4, v4}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@28
    .line 595
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 596
    .local v0, "identityToken":J
    if-eqz p3, :cond_1

    #@2e
    .line 597
    const-string/jumbo v4, "ContentService"

    #@31
    const-string/jumbo v5, "cname not null."

    #@34
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 598
    return-void

    #@38
    .line 601
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@3b
    move-result-object v3

    #@3c
    .line 602
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_2

    #@3e
    .line 604
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@40
    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@43
    .line 605
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@46
    .line 606
    const/4 v4, 0x0

    #@47
    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 609
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4d
    .line 587
    return-void

    #@4e
    .line 608
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v4

    #@4f
    .line 609
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@52
    .line 608
    throw v4
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw_"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 166
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v3, "android.permission.DUMP"

    #@8
    .line 167
    const-string/jumbo v5, "caller doesn\'t have the DUMP permission"

    #@b
    .line 166
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 169
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    #@10
    const-string/jumbo v2, "  "

    #@13
    move-object/from16 v0, p2

    #@15
    invoke-direct {v4, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@18
    .line 173
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1b
    move-result-wide v12

    #@1c
    .line 175
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@20
    if-nez v2, :cond_0

    #@22
    .line 176
    const-string/jumbo v2, "No SyncManager created!  (Disk full?)"

    #@25
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 180
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@2b
    .line 181
    const-string/jumbo v2, "Observer tree:"

    #@2e
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 182
    move-object/from16 v0, p0

    #@33
    iget-object v15, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@35
    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 183
    const/4 v2, 0x2

    #@37
    :try_start_2
    new-array v8, v2, [I

    #@39
    .line 184
    .local v8, "counts":[I
    new-instance v9, Landroid/util/SparseIntArray;

    #@3b
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    #@3e
    .line 185
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@42
    const-string/jumbo v6, ""

    #@45
    const-string/jumbo v7, "  "

    #@48
    move-object/from16 v3, p1

    #@4a
    move-object/from16 v5, p3

    #@4c
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    #@4f
    .line 186
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@52
    .line 187
    new-instance v14, Ljava/util/ArrayList;

    #@54
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@57
    .line 188
    .local v14, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    #@58
    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@5b
    move-result v2

    #@5c
    if-ge v10, v2, :cond_1

    #@5e
    .line 189
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@61
    move-result v2

    #@62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@69
    .line 188
    add-int/lit8 v10, v10, 0x1

    #@6b
    goto :goto_1

    #@6c
    .line 178
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-virtual {v2, v0, v4}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    goto :goto_0

    #@76
    .line 227
    :catchall_0
    move-exception v2

    #@77
    .line 228
    :try_start_4
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@7a
    .line 227
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7b
    .end local v4    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v12    # "identityToken":J
    :catchall_1
    move-exception v2

    #@7c
    monitor-exit p0

    #@7d
    throw v2

    #@7e
    .line 191
    .restart local v4    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "counts":[I
    .restart local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v10    # "i":I
    .restart local v12    # "identityToken":J
    .restart local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_5
    new-instance v2, Lcom/android/server/content/ContentService$2;

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v2, v0, v9}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    #@85
    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@88
    .line 205
    const/4 v10, 0x0

    #@89
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@8c
    move-result v2

    #@8d
    if-ge v10, v2, :cond_2

    #@8f
    .line 206
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@92
    move-result-object v2

    #@93
    check-cast v2, Ljava/lang/Integer;

    #@95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@98
    move-result v11

    #@99
    .line 207
    .local v11, "pid":I
    const-string/jumbo v2, "  pid "

    #@9c
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@9f
    invoke-virtual {v4, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@a2
    const-string/jumbo v2, ": "

    #@a5
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 208
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->get(I)I

    #@ab
    move-result v2

    #@ac
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@af
    const-string/jumbo v2, " observers"

    #@b2
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 205
    add-int/lit8 v10, v10, 0x1

    #@b7
    goto :goto_2

    #@b8
    .line 210
    .end local v11    # "pid":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@bb
    .line 211
    const-string/jumbo v2, " Total number of nodes: "

    #@be
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c1
    const/4 v2, 0x0

    #@c2
    aget v2, v8, v2

    #@c4
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    #@c7
    .line 212
    const-string/jumbo v2, " Total number of observers: "

    #@ca
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@cd
    const/4 v2, 0x1

    #@ce
    aget v2, v8, v2

    #@d0
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@d3
    :try_start_6
    monitor-exit v15

    #@d4
    .line 215
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@d8
    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d9
    .line 216
    :try_start_7
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@dc
    .line 217
    const-string/jumbo v2, "Cached content:"

    #@df
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e2
    .line 218
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@e5
    .line 219
    const/4 v10, 0x0

    #@e6
    :goto_3
    move-object/from16 v0, p0

    #@e8
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@ea
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@ed
    move-result v2

    #@ee
    if-ge v10, v2, :cond_3

    #@f0
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v5, "User "

    #@f8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v2

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@100
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@103
    move-result v5

    #@104
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v2

    #@108
    const-string/jumbo v5, ":"

    #@10b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@116
    .line 221
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@119
    .line 222
    move-object/from16 v0, p0

    #@11b
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@11d
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@120
    move-result-object v2

    #@121
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@124
    .line 223
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@127
    .line 219
    add-int/lit8 v10, v10, 0x1

    #@129
    goto :goto_3

    #@12a
    .line 182
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v2

    #@12b
    :try_start_8
    monitor-exit v15

    #@12c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@12d
    .line 225
    .restart local v8    # "counts":[I
    .restart local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v10    # "i":I
    .restart local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@130
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@131
    .line 228
    :try_start_b
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@134
    monitor-exit p0

    #@135
    .line 165
    return-void

    #@136
    .line 215
    :catchall_3
    move-exception v2

    #@137
    :try_start_c
    monitor-exit v3

    #@138
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1129
    const-string/jumbo v3, "ContentService"

    #@3
    invoke-direct {p0, p3, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@6
    .line 1130
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v4, "android.permission.CACHE_CONTENT"

    #@b
    const-string/jumbo v5, "ContentService"

    #@e
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1131
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@13
    const-class v4, Landroid/app/AppOpsManager;

    #@15
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/app/AppOpsManager;

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v3, v4, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@22
    .line 1134
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1135
    .local v2, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@29
    move-result-object v1

    #@2a
    .line 1137
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@2c
    monitor-enter v4

    #@2d
    .line 1138
    :try_start_0
    invoke-direct {p0, p3, v2}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    #@30
    move-result-object v0

    #@31
    .line 1140
    .local v0, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v4

    #@38
    return-object v3

    #@39
    .line 1137
    .end local v0    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 941
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to read the sync settings for user "

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 950
    invoke-direct {p0, p1, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 952
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_STATS"

    #@1c
    .line 953
    const-string/jumbo v5, "no permission to read the sync stats"

    #@1f
    .line 952
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 956
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@24
    const-string/jumbo v4, "android.permission.GET_ACCOUNTS"

    #@27
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_0

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 958
    .local v0, "canAccessAccounts":Z
    :goto_0
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@31
    move-result-wide v2

    #@32
    .line 960
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v1

    #@3e
    .line 963
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@41
    .line 960
    return-object v1

    #@42
    .line 956
    .end local v0    # "canAccessAccounts":Z
    .end local v2    # "identityToken":J
    :cond_0
    const/4 v0, 0x0

    #@43
    .restart local v0    # "canAccessAccounts":Z
    goto :goto_0

    #@44
    .line 962
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v1

    #@45
    .line 963
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@48
    .line 962
    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 822
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to read the sync settings for user "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 831
    invoke-direct {p0, p3, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 833
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1c
    .line 834
    const-string/jumbo v5, "no permission to read the sync settings"

    #@1f
    .line 833
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 836
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 838
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 839
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 840
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v3

    #@30
    .line 844
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@33
    .line 840
    return v3

    #@34
    .line 844
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 846
    const/4 v3, -0x1

    #@38
    return v3

    #@39
    .line 843
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@3a
    .line 844
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3d
    .line 843
    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .locals 1

    #@0
    .prologue
    .line 872
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to read the sync settings for user "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 881
    invoke-direct {p0, p1, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 883
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1c
    .line 884
    const-string/jumbo v5, "no permission to read the sync settings"

    #@1f
    .line 883
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 886
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 888
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 889
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 890
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    .line 893
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 890
    return v3

    #@38
    .line 893
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3b
    .line 895
    const/4 v3, 0x0

    #@3c
    return v3

    #@3d
    .line 892
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@3e
    .line 893
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@41
    .line 892
    throw v3
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 801
    if-nez p1, :cond_0

    #@2
    .line 802
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Account must not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 804
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 805
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v4, "Authority must not be empty"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 807
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1f
    .line 808
    const-string/jumbo v5, "no permission to read the sync settings"

    #@22
    .line 807
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 810
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@28
    move-result v2

    #@29
    .line 811
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@2c
    move-result-wide v0

    #@2d
    .line 813
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@30
    move-result-object v3

    #@31
    .line 814
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@33
    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@36
    .line 813
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result-object v3

    #@3a
    .line 816
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3d
    .line 813
    return-object v3

    #@3e
    .line 815
    :catchall_0
    move-exception v3

    #@3f
    .line 816
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@42
    .line 815
    throw v3
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to read sync settings for user "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 674
    invoke-direct {p0, p2, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 678
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 680
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@1e
    move-result-object v2

    #@1f
    .line 681
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v3

    #@23
    .line 683
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@26
    .line 681
    return-object v3

    #@27
    .line 682
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@28
    .line 683
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2b
    .line 682
    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    #@0
    .prologue
    .line 646
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to read sync settings for user "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 659
    invoke-direct {p0, p1, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 663
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 665
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@1e
    move-result-object v2

    #@1f
    .line 666
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v3

    #@23
    .line 668
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@26
    .line 666
    return-object v3

    #@27
    .line 667
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@28
    .line 668
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2b
    .line 667
    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to read the sync settings for user "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 698
    invoke-direct {p0, p3, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 700
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1c
    .line 701
    const-string/jumbo v5, "no permission to read the sync settings"

    #@1f
    .line 700
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 703
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 705
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 706
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 707
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    .line 711
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 707
    return v3

    #@38
    .line 711
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3b
    .line 713
    const/4 v3, 0x0

    #@3c
    return v3

    #@3d
    .line 710
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@3e
    .line 711
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@41
    .line 710
    throw v3
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 969
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 979
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 980
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v5, "Authority must not be empty"

    #@c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 984
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "no permission to read the sync stats for user "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 983
    invoke-direct {p0, p4, v4}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@27
    .line 985
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@29
    const-string/jumbo v5, "android.permission.READ_SYNC_STATS"

    #@2c
    .line 986
    const-string/jumbo v6, "no permission to read the sync stats"

    #@2f
    .line 985
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 988
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@35
    move-result-wide v0

    #@36
    .line 990
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result-object v3

    #@3a
    .line 991
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_1

    #@3c
    .line 1002
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3f
    .line 992
    return-object v7

    #@40
    .line 995
    :cond_1
    if-eqz p1, :cond_2

    #@42
    if-eqz p2, :cond_2

    #@44
    .line 996
    :try_start_1
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@46
    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@49
    .line 1000
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4, v2}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v4

    #@51
    .line 1002
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@54
    .line 1000
    return-object v4

    #@55
    .line 998
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@57
    const-string/jumbo v5, "Must call sync status with valid authority"

    #@5a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    .line 1001
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v4

    #@5f
    .line 1002
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@62
    .line 1001
    throw v4
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 923
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.READ_SYNC_STATS"

    #@5
    .line 924
    const-string/jumbo v6, "no permission to read the sync stats"

    #@8
    .line 923
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 925
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v3

    #@f
    .line 926
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 928
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v2

    #@17
    .line 929
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_0

    #@19
    .line 930
    const/4 v4, 0x0

    #@1a
    .line 935
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@1d
    .line 930
    return v4

    #@1e
    .line 932
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@21
    move-result-object v4

    #@22
    .line 933
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@24
    invoke-direct {v5, p1, p2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@27
    .line 932
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v4

    #@2b
    .line 935
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2e
    .line 932
    return v4

    #@2f
    .line 934
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v4

    #@30
    .line 935
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@33
    .line 934
    throw v4
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1008
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1014
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.READ_SYNC_STATS"

    #@5
    .line 1015
    const-string/jumbo v6, "no permission to read the sync stats"

    #@8
    .line 1014
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "no permission to retrieve the sync settings for user "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 1016
    invoke-direct {p0, p4, v4}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@22
    .line 1018
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 1019
    .local v0, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v3

    #@2a
    .line 1020
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_0

    #@2c
    const/4 v4, 0x0

    #@2d
    return v4

    #@2e
    .line 1024
    :cond_0
    if-eqz p1, :cond_1

    #@30
    if-eqz p2, :cond_1

    #@32
    .line 1025
    :try_start_0
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@34
    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@37
    .line 1029
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, v2}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    move-result v4

    #@3f
    .line 1031
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@42
    .line 1029
    return v4

    #@43
    .line 1027
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@45
    const-string/jumbo v5, "Invalid authority specified"

    #@48
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 1030
    :catchall_0
    move-exception v4

    #@4d
    .line 1031
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@50
    .line 1030
    throw v4
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V
    .locals 30
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "userHandle"    # I

    #@0
    .prologue
    .line 359
    if-nez p1, :cond_0

    #@2
    .line 360
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "Uri must not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 363
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v7

    #@f
    .line 364
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@12
    move-result v6

    #@13
    .line 365
    .local v6, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@16
    move-result v17

    #@17
    .line 367
    .local v17, "callingUserHandle":I
    move/from16 v0, v17

    #@19
    move/from16 v1, p5

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 368
    const/4 v8, 0x2

    #@1e
    move-object/from16 v4, p0

    #@20
    move-object/from16 v5, p1

    #@22
    move/from16 v9, p5

    #@24
    invoke-direct/range {v4 .. v9}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 370
    const-string/jumbo v4, "no permission to notify other users"

    #@2d
    move-object/from16 v0, p0

    #@2f
    move/from16 v1, p5

    #@31
    invoke-direct {v0, v1, v4}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@34
    .line 375
    :cond_1
    if-gez p5, :cond_2

    #@36
    .line 376
    const/4 v4, -0x2

    #@37
    move/from16 v0, p5

    #@39
    if-ne v0, v4, :cond_3

    #@3b
    .line 377
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3e
    move-result p5

    #@3f
    .line 386
    :cond_2
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@42
    move-result-wide v20

    #@43
    .line 388
    .local v20, "identityToken":J
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    #@45
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@48
    .line 389
    .local v15, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    #@4a
    iget-object v5, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@4c
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4d
    .line 390
    :try_start_1
    move-object/from16 v0, p0

    #@4f
    iget-object v8, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@51
    const/4 v10, 0x0

    #@52
    move-object/from16 v9, p1

    #@54
    move-object/from16 v11, p2

    #@56
    move/from16 v12, p3

    #@58
    move/from16 v13, p4

    #@5a
    move/from16 v14, p5

    #@5c
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    :try_start_2
    monitor-exit v5

    #@60
    .line 393
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v24

    #@64
    .line 394
    .local v24, "numCalls":I
    const/16 v19, 0x0

    #@66
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@68
    move/from16 v1, v24

    #@6a
    if-ge v0, v1, :cond_6

    #@6c
    .line 395
    move/from16 v0, v19

    #@6e
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v26

    #@72
    check-cast v26, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    .line 397
    .local v26, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_3
    move-object/from16 v0, v26

    #@76
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    #@78
    move-object/from16 v0, v26

    #@7a
    iget-boolean v5, v0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    #@7c
    move-object/from16 v0, p1

    #@7e
    move/from16 v1, p5

    #@80
    invoke-interface {v4, v5, v0, v1}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@83
    .line 394
    :goto_1
    add-int/lit8 v19, v19, 0x1

    #@85
    goto :goto_0

    #@86
    .line 378
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v19    # "i":I
    .end local v20    # "identityToken":J
    .end local v24    # "numCalls":I
    .end local v26    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :cond_3
    const/4 v4, -0x1

    #@87
    move/from16 v0, p5

    #@89
    if-eq v0, v4, :cond_2

    #@8b
    .line 379
    new-instance v4, Ljava/security/InvalidParameterException;

    #@8d
    new-instance v5, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v8, "Bad user handle for notifyChange: "

    #@95
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    move/from16 v0, p5

    #@9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v4

    #@a7
    .line 389
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    #@a8
    :try_start_4
    monitor-exit v5

    #@a9
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@aa
    .line 430
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_1
    move-exception v4

    #@ab
    .line 431
    invoke-static/range {v20 .. v21}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@ae
    .line 430
    throw v4

    #@af
    .line 400
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v19    # "i":I
    .restart local v24    # "numCalls":I
    .restart local v26    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_0
    move-exception v18

    #@b0
    .line 401
    .local v18, "ex":Landroid/os/RemoteException;
    :try_start_5
    move-object/from16 v0, p0

    #@b2
    iget-object v5, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@b4
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@b5
    .line 402
    :try_start_6
    const-string/jumbo v4, "ContentService"

    #@b8
    const-string/jumbo v8, "Found dead observer, removing"

    #@bb
    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 403
    move-object/from16 v0, v26

    #@c0
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    #@c2
    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@c5
    move-result-object v16

    #@c6
    .line 405
    .local v16, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v26

    #@c8
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@ca
    invoke-static {v4}, Lcom/android/server/content/ContentService$ObserverNode;->-get0(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    #@cd
    move-result-object v23

    #@ce
    .line 406
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    #@d1
    move-result v25

    #@d2
    .line 407
    .local v25, "numList":I
    const/16 v22, 0x0

    #@d4
    .local v22, "j":I
    :goto_2
    move/from16 v0, v22

    #@d6
    move/from16 v1, v25

    #@d8
    if-ge v0, v1, :cond_5

    #@da
    .line 408
    move-object/from16 v0, v23

    #@dc
    move/from16 v1, v22

    #@de
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e1
    move-result-object v27

    #@e2
    check-cast v27, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@e4
    .line 409
    .local v27, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v27

    #@e6
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@e8
    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@eb
    move-result-object v4

    #@ec
    move-object/from16 v0, v16

    #@ee
    if-ne v4, v0, :cond_4

    #@f0
    .line 410
    move-object/from16 v0, v23

    #@f2
    move/from16 v1, v22

    #@f4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@f7
    .line 411
    add-int/lit8 v22, v22, -0x1

    #@f9
    .line 412
    add-int/lit8 v25, v25, -0x1

    #@fb
    .line 407
    :cond_4
    add-int/lit8 v22, v22, 0x1

    #@fd
    goto :goto_2

    #@fe
    .end local v27    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5
    :try_start_7
    monitor-exit v5

    #@ff
    goto :goto_1

    #@100
    .line 401
    .end local v16    # "binder":Landroid/os/IBinder;
    .end local v22    # "j":I
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v25    # "numList":I
    :catchall_2
    move-exception v4

    #@101
    monitor-exit v5

    #@102
    throw v4

    #@103
    .line 418
    .end local v18    # "ex":Landroid/os/RemoteException;
    .end local v26    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :cond_6
    and-int/lit8 v4, p4, 0x1

    #@105
    if-eqz v4, :cond_7

    #@107
    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@10a
    move-result-object v29

    #@10b
    .line 420
    .local v29, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v29, :cond_7

    #@10d
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@110
    move-result-object v4

    #@111
    .line 421
    const/4 v5, 0x0

    #@112
    move-object/from16 v0, v29

    #@114
    move/from16 v1, v17

    #@116
    invoke-virtual {v0, v5, v1, v7, v4}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V

    #@119
    .line 426
    .end local v29    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_7
    move-object/from16 v0, p0

    #@11b
    iget-object v5, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@11d
    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@11e
    .line 427
    :try_start_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    #@121
    move-result-object v28

    #@122
    .line 428
    .local v28, "providerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@124
    move/from16 v1, p5

    #@126
    move-object/from16 v2, v28

    #@128
    move-object/from16 v3, p1

    #@12a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@12d
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@12e
    .line 431
    invoke-static/range {v20 .. v21}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@131
    .line 355
    return-void

    #@132
    .line 426
    .end local v28    # "providerPackageName":Ljava/lang/String;
    :catchall_3
    move-exception v4

    #@133
    :try_start_a
    monitor-exit v5

    #@134
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z

    #@0
    .prologue
    .line 447
    if-eqz p4, :cond_0

    #@2
    const/4 v4, 0x1

    #@3
    .line 448
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v5

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    .line 446
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V

    #@e
    .line 445
    return-void

    #@f
    .line 447
    :cond_0
    const/4 v4, 0x0

    #@10
    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 237
    :catch_0
    move-exception v0

    #@6
    .line 240
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 241
    const-string/jumbo v1, "ContentService"

    #@d
    const-string/jumbo v2, "Content Service Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 243
    :cond_0
    throw v0
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "value"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1107
    const/4 v3, 0x1

    #@1
    invoke-static {p3, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 1108
    const-string/jumbo v3, "ContentService"

    #@7
    invoke-direct {p0, p4, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@a
    .line 1109
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v4, "android.permission.CACHE_CONTENT"

    #@f
    const-string/jumbo v5, "ContentService"

    #@12
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 1110
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@17
    const-class v4, Landroid/app/AppOpsManager;

    #@19
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/app/AppOpsManager;

    #@1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v3, v4, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@26
    .line 1113
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 1114
    .local v2, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@2d
    move-result-object v1

    #@2e
    .line 1116
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    #@30
    monitor-enter v4

    #@31
    .line 1117
    :try_start_0
    invoke-direct {p0, p4, v2}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    #@34
    move-result-object v0

    #@35
    .line 1119
    .local v0, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_0

    #@37
    .line 1120
    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    :goto_0
    monitor-exit v4

    #@3b
    .line 1106
    return-void

    #@3c
    .line 1122
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 1116
    .end local v0    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    .line 330
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 329
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    #@7
    .line 328
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 293
    if-eqz p3, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 294
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "You must pass a valid uri and observer"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 297
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v4

    #@11
    .line 298
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v3

    #@15
    .line 299
    .local v3, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@18
    move-result v13

    #@19
    .line 302
    .local v13, "callingUserHandle":I
    move/from16 v0, p4

    #@1b
    if-eq v13, v0, :cond_2

    #@1d
    .line 303
    const/4 v5, 0x1

    #@1e
    move-object v1, p0

    #@1f
    move-object v2, p1

    #@20
    move/from16 v6, p4

    #@22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 306
    const-string/jumbo v1, "no permission to observe other users\' provider view"

    #@2b
    .line 305
    move/from16 v0, p4

    #@2d
    invoke-direct {p0, v0, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@30
    .line 310
    :cond_2
    if-gez p4, :cond_3

    #@32
    .line 311
    const/4 v1, -0x2

    #@33
    move/from16 v0, p4

    #@35
    if-ne v0, v1, :cond_4

    #@37
    .line 312
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3a
    move-result p4

    #@3b
    .line 319
    :cond_3
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@3d
    monitor-enter v2

    #@3e
    .line 320
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@40
    iget-object v9, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@42
    move-object v6, p1

    #@43
    move-object/from16 v7, p3

    #@45
    move/from16 v8, p2

    #@47
    move v10, v4

    #@48
    move v11, v3

    #@49
    move/from16 v12, p4

    #@4b
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    monitor-exit v2

    #@4f
    .line 292
    return-void

    #@50
    .line 313
    :cond_4
    const/4 v1, -0x1

    #@51
    move/from16 v0, p4

    #@53
    if-eq v0, v1, :cond_3

    #@55
    .line 314
    new-instance v1, Ljava/security/InvalidParameterException;

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "Bad user handle for registerContentObserver: "

    #@5f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    move/from16 v0, p4

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@70
    throw v1

    #@71
    .line 319
    :catchall_0
    move-exception v1

    #@72
    monitor-exit v2

    #@73
    throw v1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 776
    const/4 v3, 0x1

    #@1
    invoke-static {p3, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 777
    if-nez p1, :cond_0

    #@6
    .line 778
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Account must not be null"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 780
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 781
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v4, "Authority must not be empty"

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 783
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@20
    const-string/jumbo v4, "android.permission.WRITE_SYNC_SETTINGS"

    #@23
    .line 784
    const-string/jumbo v5, "no permission to write the sync settings"

    #@26
    .line 783
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 786
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@2c
    move-result v2

    #@2d
    .line 787
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@30
    move-result-wide v0

    #@31
    .line 789
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@34
    move-result-object v3

    #@35
    .line 791
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@37
    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3a
    .line 789
    invoke-virtual {v3, v4, p3}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 794
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@40
    .line 775
    return-void

    #@41
    .line 793
    :catchall_0
    move-exception v3

    #@42
    .line 794
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@45
    .line 793
    throw v3
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 1050
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1052
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@7
    move-result-object v2

    #@8
    .line 1053
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@a
    if-eqz p1, :cond_0

    #@c
    .line 1054
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1057
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@16
    .line 1049
    return-void

    #@17
    .line 1056
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@18
    .line 1057
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@1b
    .line 1056
    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 473
    const/4 v1, 0x1

    #@1
    invoke-static {p3, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 474
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@7
    .line 475
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@a
    move-result v2

    #@b
    .line 476
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v3

    #@f
    .line 480
    .local v3, "uId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@12
    move-result-wide v8

    #@13
    .line 482
    .local v8, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@16
    move-result-object v0

    #@17
    .line 483
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    #@19
    .line 485
    const/4 v6, -0x2

    #@1a
    move-object v1, p1

    #@1b
    move-object v4, p2

    #@1c
    move-object v5, p3

    #@1d
    .line 484
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 488
    :cond_0
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@23
    .line 472
    return-void

    #@24
    .line 487
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v1

    #@25
    .line 488
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@28
    .line 487
    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    #@0
    .prologue
    .line 851
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 852
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "Authority must not be empty"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 854
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v5, "android.permission.WRITE_SYNC_SETTINGS"

    #@14
    .line 855
    const-string/jumbo v6, "no permission to write the sync settings"

    #@17
    .line 854
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 857
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1d
    move-result v3

    #@1e
    .line 858
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@21
    move-result-wide v0

    #@22
    .line 860
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@25
    move-result-object v2

    #@26
    .line 861
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1

    #@28
    .line 862
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 866
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@32
    .line 850
    return-void

    #@33
    .line 865
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v4

    #@34
    .line 866
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 865
    throw v4
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 900
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    #@7
    .line 899
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 6
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "no permission to set the sync status for user "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 905
    invoke-direct {p0, p2, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 907
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.WRITE_SYNC_SETTINGS"

    #@1c
    .line 908
    const-string/jumbo v5, "no permission to write the sync settings"

    #@1f
    .line 907
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 910
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 912
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 913
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 914
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 917
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@36
    .line 904
    return-void

    #@37
    .line 916
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@38
    .line 917
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3b
    .line 916
    throw v3
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    #@0
    .prologue
    .line 718
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@7
    .line 717
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 724
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 725
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Authority must be non-empty"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 727
    :cond_0
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v4, "android.permission.WRITE_SYNC_SETTINGS"

    #@14
    .line 728
    const-string/jumbo v5, "no permission to write the sync settings"

    #@17
    .line 727
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "no permission to modify the sync settings for user "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 729
    invoke-direct {p0, p4, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@31
    .line 732
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@34
    move-result-wide v0

    #@35
    .line 734
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@38
    move-result-object v2

    #@39
    .line 735
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1

    #@3b
    .line 736
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, p1, p4, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 740
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@45
    .line 723
    return-void

    #@46
    .line 739
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@47
    .line 740
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4a
    .line 739
    throw v3
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 503
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;I)V

    #@7
    .line 502
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .locals 18
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v10, "no permission to request sync as user: "

    #@8
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    move/from16 v0, p2

    #@e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    move-object/from16 v0, p0

    #@18
    move/from16 v1, p2

    #@1a
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@1d
    .line 523
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@20
    move-result v12

    #@21
    .line 526
    .local v12, "callerUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@24
    move-result-wide v16

    #@25
    .line 528
    .local v16, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v9

    #@29
    .line 529
    .local v9, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v9, :cond_0

    #@2b
    .line 554
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2e
    .line 530
    return-void

    #@2f
    .line 533
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    #@32
    move-result-object v8

    #@33
    .line 534
    .local v8, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    #@36
    move-result-wide v6

    #@37
    .line 535
    .local v6, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    #@3a
    move-result-wide v4

    #@3b
    .line 536
    .local v4, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 537
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@45
    .line 538
    const-string/jumbo v10, "android.permission.WRITE_SYNC_SETTINGS"

    #@48
    .line 539
    const-string/jumbo v11, "no permission to write the sync settings"

    #@4b
    .line 537
    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 541
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@50
    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    #@53
    move-result-object v2

    #@54
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    #@57
    move-result-object v10

    #@58
    .line 541
    move/from16 v0, p2

    #@5a
    invoke-direct {v3, v2, v10, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@5d
    .line 544
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    #@5f
    invoke-direct {v0, v4, v5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    #@62
    move-result-wide v4

    #@63
    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@66
    move-result-object v2

    #@67
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 554
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_0
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@6d
    .line 521
    return-void

    #@6e
    .line 550
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    #@71
    move-result-object v10

    #@72
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    #@75
    move-result-object v13

    #@76
    .line 551
    const/4 v15, -0x2

    #@77
    move/from16 v11, p2

    #@79
    move-object v14, v8

    #@7a
    .line 549
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    goto :goto_0

    #@7e
    .line 553
    .end local v4    # "runAtTime":J
    .end local v6    # "flextime":J
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v2

    #@7f
    .line 554
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@82
    .line 553
    throw v2
.end method

.method systemReady()V
    .locals 0

    #@0
    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@3
    .line 278
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    .line 335
    if-nez p1, :cond_0

    #@2
    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "You must pass a valid observer"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@d
    monitor-enter v1

    #@e
    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 334
    return-void

    #@15
    .line 338
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

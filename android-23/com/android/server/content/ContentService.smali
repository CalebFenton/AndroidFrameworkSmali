.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverCall;,
        Lcom/android/server/content/ContentService$ObserverNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    #@3
    .line 67
    new-instance v1, Lcom/android/server/content/ContentService$ObserverNode;

    #@5
    const-string/jumbo v2, ""

    #@8
    invoke-direct {v1, v2}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@d
    .line 68
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@10
    .line 69
    new-instance v1, Ljava/lang/Object;

    #@12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    #@17
    .line 156
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    .line 157
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    #@1b
    .line 162
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    #@1d
    .line 161
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    #@23
    .line 164
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$2;

    #@25
    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;)V

    #@28
    .line 163
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    #@2b
    .line 155
    return-void
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 931
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 932
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_0

    #@6
    .line 933
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@8
    .line 934
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@b
    .line 933
    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 930
    :cond_0
    return-void
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 72
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
    .line 73
    return-object v3

    #@c
    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 79
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
    .line 83
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
    .line 80
    :catch_0
    move-exception v0

    #@23
    .line 81
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
    .line 76
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public static main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factoryTest"    # Z

    #@0
    .prologue
    .line 918
    new-instance v0, Lcom/android/server/content/ContentService;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    #@5
    .line 919
    .local v0, "service":Lcom/android/server/content/ContentService;
    const-string/jumbo v1, "content"

    #@8
    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@b
    .line 920
    return-object v0
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
    .line 613
    if-nez p1, :cond_0

    #@2
    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Account must not be null"

    #@7
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 616
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Authority must not be empty."

    #@16
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v2, "android.permission.WRITE_SYNC_SETTINGS"

    #@1f
    .line 620
    const-string/jumbo v3, "no permission to write the sync settings"

    #@22
    .line 619
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 622
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@28
    move-result v7

    #@29
    .line 623
    .local v7, "userId":I
    const-wide/16 v2, 0x3c

    #@2b
    cmp-long v0, p4, v2

    #@2d
    if-gez v0, :cond_2

    #@2f
    .line 624
    const-string/jumbo v0, "ContentService"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "Requested poll frequency of "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 625
    const-string/jumbo v3, " seconds being rounded up to 60 seconds."

    #@45
    .line 624
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 626
    const-wide/16 p4, 0x3c

    #@52
    .line 628
    :cond_2
    invoke-static {p4, p5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@55
    move-result-wide v4

    #@56
    .line 630
    .local v4, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@59
    move-result-wide v8

    #@5a
    .line 633
    .local v8, "identityToken":J
    :try_start_0
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5c
    invoke-direct {v1, p1, p2, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@5f
    .line 634
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@66
    move-result-object v0

    #@67
    move-wide v2, p4

    #@68
    move-object v6, p3

    #@69
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncStorageEngine;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 640
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@6f
    .line 612
    return-void

    #@70
    .line 639
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_0
    move-exception v0

    #@71
    .line 640
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@74
    .line 639
    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 4
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 894
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 896
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@7
    move-result-object v2

    #@8
    .line 897
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@a
    if-eqz p2, :cond_0

    #@c
    .line 898
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 901
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@16
    .line 893
    return-void

    #@17
    .line 900
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@18
    .line 901
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@1b
    .line 900
    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 11
    .param p1, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@3
    move-result-object v6

    #@4
    .line 481
    .local v6, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v6, :cond_0

    #@6
    return-void

    #@7
    .line 482
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@a
    move-result v7

    #@b
    .line 484
    .local v7, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 487
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
    .line 488
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    #@1b
    move-result-object v0

    #@1c
    .line 489
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    .line 490
    .local v5, "provider":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@22
    invoke-direct {v4, v0, v5, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@25
    .line 491
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 493
    iget-object v8, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@2d
    const-string/jumbo v9, "android.permission.WRITE_SYNC_SETTINGS"

    #@30
    .line 494
    const-string/jumbo v10, "no permission to write the sync settings"

    #@33
    .line 493
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 495
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, v4, v1}, Lcom/android/server/content/SyncStorageEngine;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@41
    .line 498
    :cond_1
    invoke-virtual {v6, v4, v1}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    #@44
    .line 499
    invoke-virtual {v6, v4, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 501
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4a
    .line 479
    return-void

    #@4b
    .line 500
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v5    # "provider":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@4c
    .line 501
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4f
    .line 500
    throw v8
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 435
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    #@7
    .line 434
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
    .line 454
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 455
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v5, "Authority must be non-empty"

    #@d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 458
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
    .line 457
    invoke-direct {p0, p4, v4}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@28
    .line 461
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 463
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@2f
    move-result-object v3

    #@30
    .line 464
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_1

    #@32
    .line 466
    if-nez p3, :cond_2

    #@34
    .line 467
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@36
    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@39
    .line 471
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@3c
    .line 472
    const/4 v4, 0x0

    #@3d
    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 475
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@43
    .line 453
    return-void

    #@44
    .line 469
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@46
    invoke-direct {v2, p3, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .restart local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_0

    #@4a
    .line 474
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v4

    #@4b
    .line 475
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4e
    .line 474
    throw v4
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 89
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v3, "android.permission.DUMP"

    #@8
    .line 90
    const-string/jumbo v4, "caller doesn\'t have the DUMP permission"

    #@b
    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 94
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    move-result-wide v12

    #@12
    .line 96
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@16
    if-nez v2, :cond_0

    #@18
    .line 97
    const-string/jumbo v2, "No SyncManager created!  (Disk full?)"

    #@1b
    move-object/from16 v0, p2

    #@1d
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 101
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@23
    .line 102
    const-string/jumbo v2, "Observer tree:"

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 103
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@2f
    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 104
    const/4 v2, 0x2

    #@31
    :try_start_2
    new-array v8, v2, [I

    #@33
    .line 105
    .local v8, "counts":[I
    new-instance v9, Landroid/util/SparseIntArray;

    #@35
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    #@38
    .line 106
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@3c
    const-string/jumbo v6, ""

    #@3f
    const-string/jumbo v7, "  "

    #@42
    move-object/from16 v3, p1

    #@44
    move-object/from16 v4, p2

    #@46
    move-object/from16 v5, p3

    #@48
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    #@4b
    .line 107
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@4e
    .line 108
    new-instance v14, Ljava/util/ArrayList;

    #@50
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@53
    .line 109
    .local v14, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    #@54
    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@57
    move-result v2

    #@58
    if-ge v10, v2, :cond_1

    #@5a
    .line 110
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@5d
    move-result v2

    #@5e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@65
    .line 109
    add-int/lit8 v10, v10, 0x1

    #@67
    goto :goto_1

    #@68
    .line 99
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@6c
    move-object/from16 v0, p1

    #@6e
    move-object/from16 v1, p2

    #@70
    invoke-virtual {v2, v0, v1}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 135
    :catchall_0
    move-exception v2

    #@75
    .line 136
    :try_start_4
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@78
    .line 135
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@79
    .end local v12    # "identityToken":J
    :catchall_1
    move-exception v2

    #@7a
    monitor-exit p0

    #@7b
    throw v2

    #@7c
    .line 112
    .restart local v8    # "counts":[I
    .restart local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v10    # "i":I
    .restart local v12    # "identityToken":J
    .restart local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_5
    new-instance v2, Lcom/android/server/content/ContentService$1;

    #@7e
    move-object/from16 v0, p0

    #@80
    invoke-direct {v2, v0, v9}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    #@83
    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@86
    .line 126
    const/4 v10, 0x0

    #@87
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@8a
    move-result v2

    #@8b
    if-ge v10, v2, :cond_2

    #@8d
    .line 127
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v2

    #@91
    check-cast v2, Ljava/lang/Integer;

    #@93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@96
    move-result v11

    #@97
    .line 128
    .local v11, "pid":I
    const-string/jumbo v2, "  pid "

    #@9a
    move-object/from16 v0, p2

    #@9c
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@a4
    const-string/jumbo v2, ": "

    #@a7
    move-object/from16 v0, p2

    #@a9
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    .line 129
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->get(I)I

    #@af
    move-result v2

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    #@b5
    const-string/jumbo v2, " observers"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 126
    add-int/lit8 v10, v10, 0x1

    #@bf
    goto :goto_2

    #@c0
    .line 131
    .end local v11    # "pid":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@c3
    .line 132
    const-string/jumbo v2, " Total number of nodes: "

    #@c6
    move-object/from16 v0, p2

    #@c8
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    const/4 v2, 0x0

    #@cc
    aget v2, v8, v2

    #@ce
    move-object/from16 v0, p2

    #@d0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    #@d3
    .line 133
    const-string/jumbo v2, " Total number of observers: "

    #@d6
    move-object/from16 v0, p2

    #@d8
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    const/4 v2, 0x1

    #@dc
    aget v2, v8, v2

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@e3
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@e4
    .line 136
    :try_start_7
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@e7
    monitor-exit p0

    #@e8
    .line 88
    return-void

    #@e9
    .line 103
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v2

    #@ea
    :try_start_8
    monitor-exit v15

    #@eb
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
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
    .line 805
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
    .locals 5
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
    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "no permission to read the sync settings for user "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 813
    invoke-direct {p0, p1, v2}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 815
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v3, "android.permission.READ_SYNC_STATS"

    #@1c
    .line 816
    const-string/jumbo v4, "no permission to read the sync stats"

    #@1f
    .line 815
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 818
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 820
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result-object v2

    #@32
    .line 822
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@35
    .line 820
    return-object v2

    #@36
    .line 821
    :catchall_0
    move-exception v2

    #@37
    .line 822
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3a
    .line 821
    throw v2
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
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
    .line 698
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
    .line 697
    invoke-direct {p0, p3, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 699
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1c
    .line 700
    const-string/jumbo v5, "no permission to read the sync settings"

    #@1f
    .line 699
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 702
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 704
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 705
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 706
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v3

    #@30
    .line 710
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@33
    .line 706
    return v3

    #@34
    .line 710
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 712
    const/4 v3, -0x1

    #@38
    return v3

    #@39
    .line 709
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@3a
    .line 710
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3d
    .line 709
    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .locals 1

    #@0
    .prologue
    .line 737
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
    .line 747
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
    .line 746
    invoke-direct {p0, p1, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 748
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1c
    .line 749
    const-string/jumbo v5, "no permission to read the sync settings"

    #@1f
    .line 748
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 751
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 753
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 754
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 755
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
    .line 758
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 755
    return v3

    #@38
    .line 758
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3b
    .line 760
    const/4 v3, 0x0

    #@3c
    return v3

    #@3d
    .line 757
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@3e
    .line 758
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@41
    .line 757
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
    .line 669
    if-nez p1, :cond_0

    #@2
    .line 670
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Account must not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 672
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 673
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v4, "Authority must not be empty"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 675
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1f
    .line 676
    const-string/jumbo v5, "no permission to read the sync settings"

    #@22
    .line 675
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 678
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@28
    move-result v2

    #@29
    .line 679
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@2c
    move-result-wide v0

    #@2d
    .line 681
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@34
    move-result-object v3

    #@35
    .line 682
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@37
    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3a
    .line 681
    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v3

    #@3e
    .line 684
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@41
    .line 681
    return-object v3

    #@42
    .line 683
    :catchall_0
    move-exception v3

    #@43
    .line 684
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@46
    .line 683
    throw v3
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 540
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
    .line 539
    invoke-direct {p0, p2, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 543
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 545
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@1e
    move-result-object v2

    #@1f
    .line 546
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v3

    #@23
    .line 548
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@26
    .line 546
    return-object v3

    #@27
    .line 547
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@28
    .line 548
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2b
    .line 547
    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    #@0
    .prologue
    .line 511
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
    .line 525
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
    .line 524
    invoke-direct {p0, p1, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 528
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 530
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@1e
    move-result-object v2

    #@1f
    .line 531
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v3

    #@23
    .line 533
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@26
    .line 531
    return-object v3

    #@27
    .line 532
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@28
    .line 533
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2b
    .line 532
    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 554
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
    .line 564
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
    .line 563
    invoke-direct {p0, p3, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 565
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.READ_SYNC_SETTINGS"

    #@1c
    .line 566
    const-string/jumbo v5, "no permission to read the sync settings"

    #@1f
    .line 565
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 568
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 570
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 571
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 572
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
    .line 576
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 572
    return v3

    #@38
    .line 576
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3b
    .line 578
    const/4 v3, 0x0

    #@3c
    return v3

    #@3d
    .line 575
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@3e
    .line 576
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@41
    .line 575
    throw v3
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 827
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
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 836
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 837
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v6, "Authority must not be empty"

    #@c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v5

    #@10
    .line 841
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "no permission to read the sync stats for user "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 840
    invoke-direct {p0, p4, v5}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@27
    .line 842
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@29
    const-string/jumbo v6, "android.permission.READ_SYNC_STATS"

    #@2c
    .line 843
    const-string/jumbo v7, "no permission to read the sync stats"

    #@2f
    .line 842
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@35
    move-result v0

    #@36
    .line 846
    .local v0, "callerUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@39
    move-result-wide v2

    #@3a
    .line 848
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v4

    #@3e
    .line 849
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v4, :cond_1

    #@40
    .line 860
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@43
    .line 850
    return-object v8

    #@44
    .line 853
    :cond_1
    if-eqz p1, :cond_2

    #@46
    if-eqz p2, :cond_2

    #@48
    .line 854
    :try_start_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4a
    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@4d
    .line 858
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    move-result-object v5

    #@55
    .line 860
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@58
    .line 858
    return-object v5

    #@59
    .line 856
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5b
    const-string/jumbo v6, "Must call sync status with valid authority"

    #@5e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 859
    .end local v4    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v5

    #@63
    .line 860
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@66
    .line 859
    throw v5
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 787
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.READ_SYNC_STATS"

    #@5
    .line 788
    const-string/jumbo v7, "no permission to read the sync stats"

    #@8
    .line 787
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 789
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v4

    #@f
    .line 790
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v0

    #@13
    .line 791
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 793
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    .line 794
    .local v1, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v1, :cond_0

    #@1d
    .line 795
    const/4 v5, 0x0

    #@1e
    .line 800
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@21
    .line 795
    return v5

    #@22
    .line 797
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@25
    move-result-object v5

    #@26
    .line 798
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@28
    invoke-direct {v6, p1, p2, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@2b
    .line 797
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result v5

    #@2f
    .line 800
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@32
    .line 797
    return v5

    #@33
    .line 799
    .end local v1    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v5

    #@34
    .line 800
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 799
    throw v5
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 865
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
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 871
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.READ_SYNC_STATS"

    #@5
    .line 872
    const-string/jumbo v7, "no permission to read the sync stats"

    #@8
    .line 871
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 874
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "no permission to retrieve the sync settings for user "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 873
    invoke-direct {p0, p4, v5}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@22
    .line 875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@25
    move-result v0

    #@26
    .line 876
    .local v0, "callerUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@29
    move-result-wide v2

    #@2a
    .line 877
    .local v2, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@2d
    move-result-object v4

    #@2e
    .line 878
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v4, :cond_0

    #@30
    const/4 v5, 0x0

    #@31
    return v5

    #@32
    .line 882
    :cond_0
    if-eqz p1, :cond_1

    #@34
    if-eqz p2, :cond_1

    #@36
    .line 883
    :try_start_0
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@38
    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3b
    .line 887
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result v5

    #@43
    .line 889
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@46
    .line 887
    return v5

    #@47
    .line 885
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v6, "Invalid authority specified"

    #@4c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 888
    :catchall_0
    move-exception v5

    #@51
    .line 889
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@54
    .line 888
    throw v5
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z

    #@0
    .prologue
    .line 323
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v5

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    .line 322
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    #@c
    .line 321
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V
    .locals 27
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z
    .param p5, "userHandle"    # I

    #@0
    .prologue
    .line 248
    const-string/jumbo v4, "ContentService"

    #@3
    const/4 v5, 0x2

    #@4
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 249
    const-string/jumbo v4, "ContentService"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Notifying update of "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    const-string/jumbo v6, " for user "

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    move/from16 v0, p5

    #@28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 250
    const-string/jumbo v6, " from observer "

    #@2f
    .line 249
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    .line 250
    const-string/jumbo v6, ", syncToNetwork "

    #@3c
    .line 249
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    move/from16 v0, p4

    #@42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 253
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@50
    move-result v25

    #@51
    .line 254
    .local v25, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@54
    move-result v23

    #@55
    .line 255
    .local v23, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@58
    move-result v12

    #@59
    .line 257
    .local v12, "callingUserHandle":I
    move/from16 v0, p5

    #@5b
    if-eq v12, v0, :cond_1

    #@5d
    .line 258
    move-object/from16 v0, p0

    #@5f
    iget-object v4, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@61
    const/4 v5, 0x2

    #@62
    move-object/from16 v0, p1

    #@64
    move/from16 v1, v23

    #@66
    move/from16 v2, v25

    #@68
    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_1

    #@6e
    .line 260
    const-string/jumbo v4, "no permission to notify other users"

    #@71
    move-object/from16 v0, p0

    #@73
    move/from16 v1, p5

    #@75
    invoke-direct {v0, v1, v4}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@78
    .line 264
    :cond_1
    if-gez p5, :cond_2

    #@7a
    .line 265
    const/4 v4, -0x2

    #@7b
    move/from16 v0, p5

    #@7d
    if-ne v0, v4, :cond_4

    #@7f
    .line 266
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@82
    move-result p5

    #@83
    .line 275
    :cond_2
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@86
    move-result-wide v16

    #@87
    .line 277
    .local v16, "identityToken":J
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    #@89
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@8c
    .line 278
    .local v10, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@90
    move-object/from16 v26, v0

    #@92
    monitor-enter v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@93
    .line 279
    :try_start_1
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@97
    const/4 v6, 0x0

    #@98
    move-object/from16 v5, p1

    #@9a
    move-object/from16 v7, p2

    #@9c
    move/from16 v8, p3

    #@9e
    move/from16 v9, p5

    #@a0
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    :try_start_2
    monitor-exit v26

    #@a4
    .line 282
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v19

    #@a8
    .line 283
    .local v19, "numCalls":I
    const/4 v14, 0x0

    #@a9
    .local v14, "i":I
    :goto_0
    move/from16 v0, v19

    #@ab
    if-ge v14, v0, :cond_7

    #@ad
    .line 284
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b0
    move-result-object v21

    #@b1
    check-cast v21, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b3
    .line 286
    .local v21, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_3
    move-object/from16 v0, v21

    #@b5
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    #@b7
    move-object/from16 v0, v21

    #@b9
    iget-boolean v5, v0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    #@bb
    move-object/from16 v0, p1

    #@bd
    move/from16 v1, p5

    #@bf
    invoke-interface {v4, v5, v0, v1}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V

    #@c2
    .line 287
    const-string/jumbo v4, "ContentService"

    #@c5
    const/4 v5, 0x2

    #@c6
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c9
    move-result v4

    #@ca
    if-eqz v4, :cond_3

    #@cc
    .line 288
    const-string/jumbo v4, "ContentService"

    #@cf
    new-instance v5, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v6, "Notified "

    #@d7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v5

    #@db
    move-object/from16 v0, v21

    #@dd
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    #@df
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v5

    #@e3
    const-string/jumbo v6, " of "

    #@e6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v5

    #@ea
    const-string/jumbo v6, "update at "

    #@ed
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    move-object/from16 v0, p1

    #@f3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v5

    #@f7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v5

    #@fb
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@fe
    .line 283
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@100
    goto :goto_0

    #@101
    .line 267
    .end local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v14    # "i":I
    .end local v16    # "identityToken":J
    .end local v19    # "numCalls":I
    .end local v21    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :cond_4
    const/4 v4, -0x1

    #@102
    move/from16 v0, p5

    #@104
    if-eq v0, v4, :cond_2

    #@106
    .line 268
    new-instance v4, Ljava/security/InvalidParameterException;

    #@108
    new-instance v5, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v6, "Bad user handle for notifyChange: "

    #@110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v5

    #@114
    move/from16 v0, p5

    #@116
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@119
    move-result-object v5

    #@11a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v5

    #@11e
    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@121
    throw v4

    #@122
    .line 278
    .restart local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v16    # "identityToken":J
    :catchall_0
    move-exception v4

    #@123
    :try_start_4
    monitor-exit v26

    #@124
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@125
    .line 315
    .end local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_1
    move-exception v4

    #@126
    .line 316
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@129
    .line 315
    throw v4

    #@12a
    .line 290
    .restart local v10    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v14    # "i":I
    .restart local v19    # "numCalls":I
    .restart local v21    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_0
    move-exception v13

    #@12b
    .line 291
    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_5
    move-object/from16 v0, p0

    #@12d
    iget-object v5, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@12f
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@130
    .line 292
    :try_start_6
    const-string/jumbo v4, "ContentService"

    #@133
    const-string/jumbo v6, "Found dead observer, removing"

    #@136
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@139
    .line 293
    move-object/from16 v0, v21

    #@13b
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    #@13d
    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@140
    move-result-object v11

    #@141
    .line 295
    .local v11, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v21

    #@143
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@145
    invoke-static {v4}, Lcom/android/server/content/ContentService$ObserverNode;->-get0(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    #@148
    move-result-object v18

    #@149
    .line 296
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@14c
    move-result v20

    #@14d
    .line 297
    .local v20, "numList":I
    const/4 v15, 0x0

    #@14e
    .local v15, "j":I
    :goto_2
    move/from16 v0, v20

    #@150
    if-ge v15, v0, :cond_6

    #@152
    .line 298
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@157
    move-result-object v22

    #@158
    check-cast v22, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@15a
    .line 299
    .local v22, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v22

    #@15c
    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@15e
    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@161
    move-result-object v4

    #@162
    if-ne v4, v11, :cond_5

    #@164
    .line 300
    move-object/from16 v0, v18

    #@166
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@169
    .line 301
    add-int/lit8 v15, v15, -0x1

    #@16b
    .line 302
    add-int/lit8 v20, v20, -0x1

    #@16d
    .line 297
    :cond_5
    add-int/lit8 v15, v15, 0x1

    #@16f
    goto :goto_2

    #@170
    .end local v22    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_6
    :try_start_7
    monitor-exit v5

    #@171
    goto :goto_1

    #@172
    .line 291
    .end local v11    # "binder":Landroid/os/IBinder;
    .end local v15    # "j":I
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v20    # "numList":I
    :catchall_2
    move-exception v4

    #@173
    monitor-exit v5

    #@174
    throw v4

    #@175
    .line 308
    .end local v13    # "ex":Landroid/os/RemoteException;
    .end local v21    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :cond_7
    if-eqz p4, :cond_8

    #@177
    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@17a
    move-result-object v24

    #@17b
    .line 310
    .local v24, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v24, :cond_8

    #@17d
    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@180
    move-result-object v4

    #@181
    .line 311
    const/4 v5, 0x0

    #@182
    move-object/from16 v0, v24

    #@184
    move/from16 v1, v25

    #@186
    invoke-virtual {v0, v5, v12, v1, v4}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@189
    .line 316
    .end local v24    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_8
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@18c
    .line 247
    return-void
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
    .line 144
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 145
    :catch_0
    move-exception v0

    #@6
    .line 148
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 149
    const-string/jumbo v1, "ContentService"

    #@d
    const-string/jumbo v2, "Content Service Crash"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 151
    :cond_0
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    .line 223
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 222
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    #@7
    .line 221
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 187
    if-eqz p3, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "You must pass a valid uri and observer"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 191
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v5

    #@11
    .line 192
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v6

    #@15
    .line 193
    .local v6, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@18
    move-result v8

    #@19
    .line 196
    .local v8, "callingUserHandle":I
    if-eq v8, p4, :cond_2

    #@1b
    .line 197
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, p1, v6, v5, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 200
    const-string/jumbo v0, "no permission to observe other users\' provider view"

    #@27
    .line 199
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@2a
    .line 203
    :cond_2
    if-gez p4, :cond_3

    #@2c
    .line 204
    const/4 v0, -0x2

    #@2d
    if-ne p4, v0, :cond_4

    #@2f
    .line 205
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@32
    move-result p4

    #@33
    .line 212
    :cond_3
    iget-object v9, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@35
    monitor-enter v9

    #@36
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@38
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@3a
    move-object v1, p1

    #@3b
    move-object v2, p3

    #@3c
    move v3, p2

    #@3d
    move v7, p4

    #@3e
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    monitor-exit v9

    #@42
    .line 186
    return-void

    #@43
    .line 206
    :cond_4
    const/4 v0, -0x1

    #@44
    if-eq p4, v0, :cond_3

    #@46
    .line 207
    new-instance v0, Ljava/security/InvalidParameterException;

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "Bad user handle for registerContentObserver: "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0

    #@60
    .line 212
    :catchall_0
    move-exception v0

    #@61
    monitor-exit v9

    #@62
    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 645
    if-nez p1, :cond_0

    #@2
    .line 646
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Account must not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 648
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 649
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v4, "Authority must not be empty"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 651
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@1c
    const-string/jumbo v4, "android.permission.WRITE_SYNC_SETTINGS"

    #@1f
    .line 652
    const-string/jumbo v5, "no permission to write the sync settings"

    #@22
    .line 651
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 654
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@28
    move-result v2

    #@29
    .line 655
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@2c
    move-result-wide v0

    #@2d
    .line 657
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@34
    move-result-object v3

    #@35
    .line 659
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@37
    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3a
    .line 657
    invoke-virtual {v3, v4, p3}, Lcom/android/server/content/SyncStorageEngine;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 662
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@40
    .line 644
    return-void

    #@41
    .line 661
    :catchall_0
    move-exception v3

    #@42
    .line 662
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@45
    .line 661
    throw v3
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 906
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 908
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@7
    move-result-object v2

    #@8
    .line 909
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@a
    if-eqz p1, :cond_0

    #@c
    .line 910
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 913
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@16
    .line 905
    return-void

    #@17
    .line 912
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@18
    .line 913
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@1b
    .line 912
    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 345
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    #@3
    .line 346
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v2

    #@7
    .line 347
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v3

    #@b
    .line 351
    .local v3, "uId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@e
    move-result-wide v12

    #@f
    .line 353
    .local v12, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@12
    move-result-object v0

    #@13
    .line 354
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    #@15
    .line 356
    const-wide/16 v6, 0x0

    #@17
    const-wide/16 v8, 0x0

    #@19
    .line 357
    const/4 v10, 0x0

    #@1a
    move-object v1, p1

    #@1b
    move-object/from16 v4, p2

    #@1d
    move-object/from16 v5, p3

    #@1f
    .line 355
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 360
    :cond_0
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@25
    .line 344
    return-void

    #@26
    .line 359
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v1

    #@27
    .line 360
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2a
    .line 359
    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    #@0
    .prologue
    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 717
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "Authority must not be empty"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 719
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v5, "android.permission.WRITE_SYNC_SETTINGS"

    #@14
    .line 720
    const-string/jumbo v6, "no permission to write the sync settings"

    #@17
    .line 719
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 722
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1d
    move-result v3

    #@1e
    .line 723
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@21
    move-result-wide v0

    #@22
    .line 725
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@25
    move-result-object v2

    #@26
    .line 726
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1

    #@28
    .line 727
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 731
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@32
    .line 715
    return-void

    #@33
    .line 730
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v4

    #@34
    .line 731
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@37
    .line 730
    throw v4
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 765
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    #@7
    .line 764
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 6
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 771
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
    .line 770
    invoke-direct {p0, p2, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@17
    .line 772
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@19
    const-string/jumbo v4, "android.permission.WRITE_SYNC_SETTINGS"

    #@1c
    .line 773
    const-string/jumbo v5, "no permission to write the sync settings"

    #@1f
    .line 772
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 775
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 777
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@29
    move-result-object v2

    #@2a
    .line 778
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_0

    #@2c
    .line 779
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 782
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@36
    .line 769
    return-void

    #@37
    .line 781
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@38
    .line 782
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@3b
    .line 781
    throw v3
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    #@0
    .prologue
    .line 583
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@7
    .line 582
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
    .line 589
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 590
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Authority must be non-empty"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 592
    :cond_0
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v4, "android.permission.WRITE_SYNC_SETTINGS"

    #@14
    .line 593
    const-string/jumbo v5, "no permission to write the sync settings"

    #@17
    .line 592
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 595
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
    .line 594
    invoke-direct {p0, p4, v3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    #@31
    .line 597
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@34
    move-result-wide v0

    #@35
    .line 599
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@38
    move-result-object v2

    #@39
    .line 600
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1

    #@3b
    .line 601
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, p1, p4, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 605
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@45
    .line 588
    return-void

    #@46
    .line 604
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_0
    move-exception v3

    #@47
    .line 605
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@4a
    .line 604
    throw v3
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/content/SyncRequest;

    #@0
    .prologue
    .line 374
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;I)V

    #@7
    .line 373
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .locals 24
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v9, "no permission to request sync as user: "

    #@8
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@20
    move-result v13

    #@21
    .line 386
    .local v13, "callerUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    #@24
    move-result-wide v22

    #@25
    .line 388
    .local v22, "identityToken":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v10

    #@29
    .line 389
    .local v10, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v10, :cond_0

    #@2b
    .line 420
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@2e
    .line 390
    return-void

    #@2f
    .line 393
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    #@32
    move-result-object v8

    #@33
    .line 394
    .local v8, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    #@36
    move-result-wide v6

    #@37
    .line 395
    .local v6, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    #@3a
    move-result-wide v4

    #@3b
    .line 396
    .local v4, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_2

    #@41
    .line 397
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    #@45
    .line 398
    const-string/jumbo v9, "android.permission.WRITE_SYNC_SETTINGS"

    #@48
    .line 399
    const-string/jumbo v11, "no permission to write the sync settings"

    #@4b
    .line 397
    invoke-virtual {v2, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 401
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@50
    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    #@53
    move-result-object v2

    #@54
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    .line 401
    move/from16 v0, p2

    #@5a
    invoke-direct {v3, v2, v9, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@5d
    .line 403
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-wide/16 v14, 0x3c

    #@5f
    cmp-long v2, v4, v14

    #@61
    if-gez v2, :cond_1

    #@63
    .line 404
    const-string/jumbo v2, "ContentService"

    #@66
    new-instance v9, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v11, "Requested poll frequency of "

    #@6e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    .line 405
    const-string/jumbo v11, " seconds being rounded up to 60 seconds."

    #@79
    .line 404
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 406
    const-wide/16 v4, 0x3c

    #@86
    .line 409
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@91
    .line 420
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_0
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@94
    .line 381
    return-void

    #@95
    .line 412
    :cond_2
    const-wide/16 v14, 0x3e8

    #@97
    mul-long v16, v6, v14

    #@99
    .line 413
    .local v16, "beforeRuntimeMillis":J
    const-wide/16 v14, 0x3e8

    #@9b
    mul-long v18, v4, v14

    #@9d
    .line 415
    .local v18, "runtimeMillis":J
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    #@a0
    move-result-object v11

    #@a1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    #@a4
    move-result-object v14

    #@a5
    .line 417
    const/16 v20, 0x0

    #@a7
    move/from16 v12, p2

    #@a9
    move-object v15, v8

    #@aa
    .line 414
    invoke-virtual/range {v10 .. v20}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ad
    goto :goto_0

    #@ae
    .line 419
    .end local v4    # "runAtTime":J
    .end local v6    # "flextime":J
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v10    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v16    # "beforeRuntimeMillis":J
    .end local v18    # "runtimeMillis":J
    :catchall_0
    move-exception v2

    #@af
    .line 420
    invoke-static/range {v22 .. v23}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    #@b2
    .line 419
    throw v2
.end method

.method public systemReady()V
    .locals 0

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    #@3
    .line 172
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    .line 227
    if-nez p1, :cond_0

    #@2
    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "You must pass a valid observer"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@d
    monitor-enter v1

    #@e
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 226
    return-void

    #@15
    .line 230
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

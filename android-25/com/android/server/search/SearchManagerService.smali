.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$Lifecycle;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSearchables"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/search/SearchManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onCleanupUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/search/SearchManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUnlockUser(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    #@3
    .line 98
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@a
    .line 107
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@c
    .line 108
    new-instance v0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    #@11
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@13
    const/4 v2, 0x0

    #@14
    const/4 v3, 0x1

    #@15
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@18
    .line 109
    new-instance v0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;

    #@1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, p0, v1}, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    #@21
    .line 110
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;

    #@27
    .line 106
    return-void
.end method

.method private getLegacyAssistComponent(I)Landroid/content/ComponentName;
    .locals 13
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 277
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    const-string/jumbo v5, "getLegacyAssistComponent"

    #@c
    const/4 v3, 0x1

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v6, 0x0

    #@f
    move v2, p1

    #@10
    .line 277
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@13
    move-result p1

    #@14
    .line 279
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@17
    move-result-object v10

    #@18
    .line 280
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    new-instance v7, Landroid/content/Intent;

    #@1a
    const-string/jumbo v0, "android.intent.action.ASSIST"

    #@1d
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 283
    .local v7, "assistIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 284
    const/high16 v1, 0x10000

    #@2c
    .line 282
    invoke-interface {v10, v7, v0, v1, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@2f
    move-result-object v9

    #@30
    .line 285
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_0

    #@32
    .line 286
    new-instance v0, Landroid/content/ComponentName;

    #@34
    .line 287
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@36
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3a
    .line 288
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3e
    .line 286
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    return-object v0

    #@42
    .line 293
    .end local v7    # "assistIntent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v8

    #@43
    .line 294
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SearchManagerService"

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v2, "Exception in getLegacyAssistComponent: "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 296
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v12

    #@5e
    .line 290
    :catch_1
    move-exception v11

    #@5f
    .line 292
    .local v11, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "SearchManagerService"

    #@62
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v2, "RemoteException in getLegacyAssistComponent: "

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    goto :goto_0
.end method

.method private getSearchables(I)Lcom/android/server/search/Searchables;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private getSearchables(IZ)Lcom/android/server/search/Searchables;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "forceUpdate"    # Z

    #@0
    .prologue
    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 120
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@6
    const-class v5, Landroid/os/UserManager;

    #@8
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/os/UserManager;

    #@e
    .line 121
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@11
    move-result-object v4

    #@12
    if-nez v4, :cond_0

    #@14
    .line 122
    new-instance v4, Ljava/lang/IllegalStateException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "User "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, " doesn\'t exist"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 127
    .end local v1    # "um":Landroid/os/UserManager;
    :catchall_0
    move-exception v4

    #@36
    .line 128
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 127
    throw v4

    #@3a
    .line 124
    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_1

    #@40
    .line 125
    new-instance v4, Ljava/lang/IllegalStateException;

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "User "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    const-string/jumbo v6, " isn\'t unlocked"

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    .line 128
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 130
    iget-object v5, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@66
    monitor-enter v5

    #@67
    .line 131
    :try_start_2
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@69
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Lcom/android/server/search/Searchables;

    #@6f
    .line 132
    .local v0, "searchables":Lcom/android/server/search/Searchables;
    if-nez v0, :cond_3

    #@71
    .line 133
    new-instance v0, Lcom/android/server/search/Searchables;

    #@73
    .end local v0    # "searchables":Lcom/android/server/search/Searchables;
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@75
    invoke-direct {v0, v4, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    #@78
    .line 134
    .restart local v0    # "searchables":Lcom/android/server/search/Searchables;
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    #@7b
    .line 135
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@7d
    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@80
    :cond_2
    :goto_0
    monitor-exit v5

    #@81
    .line 139
    return-object v0

    #@82
    .line 136
    :cond_3
    if-eqz p2, :cond_2

    #@84
    .line 137
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->updateSearchableList()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@87
    goto :goto_0

    #@88
    .line 130
    .end local v0    # "searchables":Lcom/android/server/search/Searchables;
    :catchall_1
    move-exception v4

    #@89
    monitor-exit v5

    #@8a
    throw v4
.end method

.method private onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 152
    return-void

    #@a
    .line 153
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 145
    const/4 v1, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 143
    :goto_0
    return-void

    #@5
    .line 146
    :catch_0
    move-exception v0

    #@6
    .local v0, "ignored":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 321
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.DUMP"

    #@5
    const-string/jumbo v4, "SearchManagerService"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 323
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v2, "  "

    #@10
    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@13
    .line 324
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@15
    monitor-enter v3

    #@16
    .line 325
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@1c
    move-result v2

    #@1d
    if-ge v0, v2, :cond_0

    #@1f
    .line 326
    const-string/jumbo v2, "\nUser: "

    #@22
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    #@2e
    .line 327
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@31
    .line 328
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@33
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Lcom/android/server/search/Searchables;

    #@39
    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3c
    .line 329
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 325
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    :cond_0
    monitor-exit v3

    #@43
    .line 320
    return-void

    #@44
    .line 324
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 255
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 3
    .param p1, "launchActivity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 230
    if-nez p1, :cond_0

    #@3
    .line 231
    const-string/jumbo v0, "SearchManagerService"

    #@6
    const-string/jumbo v1, "getSearchableInfo(), activity == null"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 232
    return-object v2

    #@d
    .line 234
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v0

    #@11
    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 263
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public launchAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 269
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@8
    .line 270
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 271
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    #@d
    .line 267
    :cond_0
    return-void
.end method

.method public launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 301
    invoke-direct {p0, p2}, Lcom/android/server/search/SearchManagerService;->getLegacyAssistComponent(I)Landroid/content/ComponentName;

    #@4
    move-result-object v6

    #@5
    .line 302
    .local v6, "comp":Landroid/content/ComponentName;
    if-nez v6, :cond_0

    #@7
    .line 303
    return v2

    #@8
    .line 305
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v8

    #@c
    .line 307
    .local v8, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@e
    const-string/jumbo v2, "android.intent.action.ASSIST"

    #@11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 308
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@17
    .line 309
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v0

    #@1b
    .line 310
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v2, 0x0

    #@1c
    move-object v3, p1

    #@1d
    move v4, p2

    #@1e
    move-object v5, p3

    #@1f
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 314
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 310
    return v2

    #@27
    .line 312
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    #@28
    .line 314
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 316
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 313
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@2e
    .line 314
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 313
    throw v2
.end method

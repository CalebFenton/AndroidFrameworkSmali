.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;,
        Lcom/android/server/search/SearchManagerService$UserReceiver;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;,
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSearchables:Landroid/util/SparseArray;
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

.method static synthetic -wrap0(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/search/SearchManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 76
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    #@4
    .line 68
    new-instance v1, Landroid/util/SparseArray;

    #@6
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@b
    .line 77
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@d
    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    #@f
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    #@12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@15
    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    #@17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    #@1a
    .line 80
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@1c
    new-instance v2, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    #@1e
    invoke-direct {v2, p0, v5}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;)V

    #@21
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@24
    .line 81
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@26
    new-instance v2, Lcom/android/server/search/SearchManagerService$UserReceiver;

    #@28
    invoke-direct {v2, p0, v5}, Lcom/android/server/search/SearchManagerService$UserReceiver;-><init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$UserReceiver;)V

    #@2b
    .line 82
    new-instance v3, Landroid/content/IntentFilter;

    #@2d
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    #@30
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@33
    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@36
    .line 83
    new-instance v1, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    #@38
    invoke-direct {v1, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    #@3b
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3d
    const/4 v3, 0x1

    #@3e
    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@41
    .line 76
    return-void
.end method

.method private getLegacyAssistComponent(I)Landroid/content/ComponentName;
    .locals 13
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 255
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    .line 256
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
    .line 255
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@13
    move-result p1

    #@14
    .line 257
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@17
    move-result-object v10

    #@18
    .line 258
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    new-instance v7, Landroid/content/Intent;

    #@1a
    const-string/jumbo v0, "android.intent.action.ASSIST"

    #@1d
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 261
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
    .line 262
    const/high16 v1, 0x10000

    #@2c
    .line 260
    invoke-interface {v10, v7, v0, v1, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@2f
    move-result-object v9

    #@30
    .line 263
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_0

    #@32
    .line 264
    new-instance v0, Landroid/content/ComponentName;

    #@34
    .line 265
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@36
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3a
    .line 266
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3e
    .line 264
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    return-object v0

    #@42
    .line 271
    .end local v7    # "assistIntent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v8

    #@43
    .line 272
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
    .line 274
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v12

    #@5e
    .line 268
    :catch_1
    move-exception v11

    #@5f
    .line 270
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
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v0

    #@5
    .line 89
    .local v0, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v5, "user"

    #@a
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, Landroid/os/UserManager;

    #@10
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v4

    #@14
    if-eqz v4, :cond_0

    #@16
    const/4 v3, 0x1

    #@17
    .line 91
    .local v3, "userExists":Z
    :goto_0
    if-nez v3, :cond_1

    #@19
    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 91
    return-object v6

    #@1d
    .line 89
    .end local v3    # "userExists":Z
    :cond_0
    const/4 v3, 0x0

    #@1e
    .restart local v3    # "userExists":Z
    goto :goto_0

    #@1f
    .line 93
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 95
    iget-object v5, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@24
    monitor-enter v5

    #@25
    .line 96
    :try_start_1
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/search/Searchables;

    #@2d
    .line 98
    .local v2, "searchables":Lcom/android/server/search/Searchables;
    if-nez v2, :cond_2

    #@2f
    .line 100
    new-instance v2, Lcom/android/server/search/Searchables;

    #@31
    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@33
    invoke-direct {v2, v4, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    #@36
    .line 101
    .restart local v2    # "searchables":Lcom/android/server/search/Searchables;
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->buildSearchableList()V

    #@39
    .line 102
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    :cond_2
    monitor-exit v5

    #@3f
    .line 104
    return-object v2

    #@40
    .line 92
    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    .end local v3    # "userExists":Z
    :catchall_0
    move-exception v4

    #@41
    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 92
    throw v4

    #@45
    .line 95
    .restart local v3    # "userExists":Z
    :catchall_1
    move-exception v4

    #@46
    monitor-exit v5

    #@47
    throw v4
.end method

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 109
    if-eqz p1, :cond_0

    #@2
    .line 110
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@4
    monitor-enter v1

    #@5
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 108
    :cond_0
    return-void

    #@c
    .line 110
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.DUMP"

    #@5
    const-string/jumbo v4, "SearchManagerService"

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 301
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v2, "  "

    #@10
    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@13
    .line 302
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    #@15
    monitor-enter v3

    #@16
    .line 303
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
    .line 304
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
    .line 305
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@31
    .line 306
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
    .line 307
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 303
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_0

    #@42
    :cond_0
    monitor-exit v3

    #@43
    .line 298
    return-void

    #@44
    .line 302
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
    .line 227
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
    .line 234
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
    .line 212
    if-nez p1, :cond_0

    #@3
    .line 213
    const-string/jumbo v0, "SearchManagerService"

    #@6
    const-string/jumbo v1, "getSearchableInfo(), activity == null"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 214
    return-object v2

    #@d
    .line 216
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
    .line 223
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
    .line 241
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
    .line 247
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@8
    .line 248
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    #@a
    .line 249
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    #@d
    .line 245
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
    .line 279
    invoke-direct {p0, p2}, Lcom/android/server/search/SearchManagerService;->getLegacyAssistComponent(I)Landroid/content/ComponentName;

    #@4
    move-result-object v6

    #@5
    .line 280
    .local v6, "comp":Landroid/content/ComponentName;
    if-nez v6, :cond_0

    #@7
    .line 281
    return v2

    #@8
    .line 283
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v8

    #@c
    .line 285
    .local v8, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@e
    const-string/jumbo v2, "android.intent.action.ASSIST"

    #@11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 286
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@17
    .line 287
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v0

    #@1b
    .line 288
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
    .line 292
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 288
    return v2

    #@27
    .line 290
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    #@28
    .line 292
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 294
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 291
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@2e
    .line 292
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 291
    throw v2
.end method

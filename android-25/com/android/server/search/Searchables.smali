.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/Searchables$1;
    }
.end annotation


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "com.android.googlesearch/.GoogleSearch"

    #@3
    .line 70
    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    #@5
    .line 73
    const-string/jumbo v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    #@8
    .line 72
    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    #@a
    .line 334
    new-instance v0, Lcom/android/server/search/Searchables$1;

    #@c
    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    #@f
    .line 333
    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    #@11
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    #@6
    .line 62
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    #@8
    .line 63
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    #@a
    .line 67
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    #@c
    .line 68
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    #@e
    .line 85
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    #@10
    .line 86
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    #@12
    .line 87
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    #@18
    .line 84
    return-void
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .locals 3
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
    .line 286
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 288
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10010000

    #@a
    .line 287
    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 289
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    #@10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 294
    :cond_0
    :goto_0
    return-object v0

    #@17
    .line 291
    :cond_1
    sget-object v2, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    #@19
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1c
    goto :goto_0
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p1, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 304
    .local v1, "searchProviderSetting":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 305
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@d
    move-result-object v0

    #@e
    .line 307
    .local v0, "globalSearchComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 308
    return-object v0

    #@17
    .line 312
    .end local v0    # "globalSearchComponent":Landroid/content/ComponentName;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "globalSearchActivity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 390
    if-nez p1, :cond_0

    #@3
    .line 391
    return-object v5

    #@4
    .line 393
    :cond_0
    new-instance v2, Landroid/content/Intent;

    #@6
    const-string/jumbo v3, "android.intent.action.WEB_SEARCH"

    #@9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 394
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 396
    const/high16 v3, 0x10000

    #@15
    invoke-direct {p0, v2, v3}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@18
    move-result-object v0

    #@19
    .line 398
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    #@1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 403
    :cond_1
    const-string/jumbo v3, "Searchables"

    #@24
    const-string/jumbo v4, "No web search activity found"

    #@27
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 404
    return-object v5

    #@2b
    .line 399
    :cond_2
    const/4 v3, 0x0

    #@2c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@32
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@34
    .line 401
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@36
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@38
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3a
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    return-object v3
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    #@1
    .line 370
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 375
    :cond_0
    const-string/jumbo v1, "Searchables"

    #@c
    const-string/jumbo v2, "No global search activity found"

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 376
    return-object v3

    #@13
    .line 371
    :cond_1
    const/4 v1, 0x0

    #@14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@1a
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1c
    .line 372
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    #@1e
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@20
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@22
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    return-object v1
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 381
    const-string/jumbo v1, "search_global_search_activity"

    #@9
    .line 380
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "globalSearch"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 321
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 322
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    .line 325
    const/high16 v2, 0x10000

    #@d
    .line 324
    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    .line 326
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    #@13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 330
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2

    #@1b
    .line 327
    :cond_1
    const/4 v2, 0x1

    #@1c
    return v2
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 362
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@7
    and-int/lit8 v1, v1, 0x1

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 408
    const/4 v0, 0x0

    #@1
    .line 411
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    .line 412
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 413
    iget v4, p0, Lcom/android/server/search/Searchables;->mUserId:I

    #@f
    .line 411
    invoke-interface {v2, p1, v3, p2, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 417
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    #@18
    .line 414
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    #@19
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 457
    const-string/jumbo v2, "Searchable authorities:"

    #@3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 458
    monitor-enter p0

    #@7
    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 460
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/app/SearchableInfo;

    #@1d
    .line 461
    .local v0, "info":Landroid/app/SearchableInfo;
    const-string/jumbo v2, "  "

    #@20
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 458
    .end local v0    # "info":Landroid/app/SearchableInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit p0

    #@2d
    throw v2

    #@2e
    :cond_0
    monitor-exit p0

    #@2f
    .line 456
    return-void
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 439
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    #@5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 12
    .param p1, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 120
    monitor-enter p0

    #@2
    .line 121
    :try_start_0
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    check-cast v7, Landroid/app/SearchableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 122
    .local v7, "result":Landroid/app/SearchableInfo;
    if-eqz v7, :cond_0

    #@c
    monitor-exit p0

    #@d
    return-object v7

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 130
    const/4 v1, 0x0

    #@10
    .line 132
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    #@12
    iget v9, p0, Lcom/android/server/search/Searchables;->mUserId:I

    #@14
    const/16 v10, 0x80

    #@16
    invoke-interface {v8, p1, v10, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    move-result-object v1

    #@1a
    .line 137
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    #@1b
    .line 140
    .local v5, "refActivityName":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@1d
    .line 141
    .local v2, "md":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    #@1f
    .line 142
    const-string/jumbo v8, "android.app.default_searchable"

    #@22
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 145
    .end local v5    # "refActivityName":Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    #@28
    .line 146
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@2c
    .line 147
    if-eqz v2, :cond_2

    #@2e
    .line 148
    const-string/jumbo v8, "android.app.default_searchable"

    #@31
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 153
    :cond_2
    if-eqz v5, :cond_6

    #@37
    .line 156
    const-string/jumbo v8, "*"

    #@3a
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v8

    #@3e
    if-eqz v8, :cond_3

    #@40
    .line 157
    return-object v11

    #@41
    .line 120
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "md":Landroid/os/Bundle;
    .end local v7    # "result":Landroid/app/SearchableInfo;
    :catchall_0
    move-exception v8

    #@42
    monitor-exit p0

    #@43
    throw v8

    #@44
    .line 133
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "result":Landroid/app/SearchableInfo;
    :catch_0
    move-exception v4

    #@45
    .line 134
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v8, "Searchables"

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "Error getting activity info "

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 135
    return-object v11

    #@60
    .line 159
    .end local v4    # "re":Landroid/os/RemoteException;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "md":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 161
    .local v3, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    #@65
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@68
    move-result v8

    #@69
    const/16 v9, 0x2e

    #@6b
    if-ne v8, v9, :cond_4

    #@6d
    .line 162
    new-instance v6, Landroid/content/ComponentName;

    #@6f
    new-instance v8, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v8

    #@7c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v8

    #@80
    invoke-direct {v6, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    .line 169
    .local v6, "referredActivity":Landroid/content/ComponentName;
    :goto_0
    monitor-enter p0

    #@84
    .line 170
    :try_start_2
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    #@86
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v8

    #@8a
    move-object v0, v8

    #@8b
    check-cast v0, Landroid/app/SearchableInfo;

    #@8d
    move-object v7, v0

    #@8e
    .line 171
    if-eqz v7, :cond_5

    #@90
    .line 172
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    #@92
    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@95
    monitor-exit p0

    #@96
    .line 173
    return-object v7

    #@97
    .line 164
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_4
    new-instance v6, Landroid/content/ComponentName;

    #@99
    invoke-direct {v6, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9c
    .restart local v6    # "referredActivity":Landroid/content/ComponentName;
    goto :goto_0

    #@9d
    :cond_5
    monitor-exit p0

    #@9e
    .line 179
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_6
    return-object v11

    #@9f
    .line 169
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v6    # "referredActivity":Landroid/content/ComponentName;
    :catchall_1
    move-exception v8

    #@a0
    monitor-exit p0

    #@a1
    throw v8
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 432
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 424
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    monitor-exit p0

    #@9
    .line 425
    return-object v0

    #@a
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    :catchall_0
    move-exception v1

    #@b
    monitor-exit p0

    #@c
    throw v1
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public updateSearchableList()V
    .locals 26

    #@0
    .prologue
    .line 206
    new-instance v15, Ljava/util/HashMap;

    #@2
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 208
    .local v15, "newSearchablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@7
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 210
    .local v14, "newSearchablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    #@c
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 214
    .local v13, "newSearchablesInGlobalSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v10, Landroid/content/Intent;

    #@11
    const-string/jumbo v23, "android.intent.action.SEARCH"

    #@14
    move-object/from16 v0, v23

    #@16
    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    .line 216
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v6

    #@1d
    .line 219
    .local v6, "ident":J
    const v23, 0x10000080

    #@20
    .line 218
    :try_start_0
    move-object/from16 v0, p0

    #@22
    move/from16 v1, v23

    #@24
    invoke-direct {v0, v10, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@27
    move-result-object v17

    #@28
    .line 222
    .local v17, "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v21, Landroid/content/Intent;

    #@2a
    const-string/jumbo v23, "android.intent.action.WEB_SEARCH"

    #@2d
    move-object/from16 v0, v21

    #@2f
    move-object/from16 v1, v23

    #@31
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@34
    .line 224
    .local v21, "webSearchIntent":Landroid/content/Intent;
    const v23, 0x10000080

    #@37
    .line 223
    move-object/from16 v0, p0

    #@39
    move-object/from16 v1, v21

    #@3b
    move/from16 v2, v23

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@40
    move-result-object v20

    #@41
    .line 227
    .local v20, "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v17, :cond_0

    #@43
    if-eqz v20, :cond_5

    #@45
    .line 228
    :cond_0
    if-nez v17, :cond_2

    #@47
    const/16 v18, 0x0

    #@49
    .line 229
    .local v18, "search_count":I
    :goto_0
    if-nez v20, :cond_3

    #@4b
    const/16 v22, 0x0

    #@4d
    .line 230
    .local v22, "web_search_count":I
    :goto_1
    add-int v5, v18, v22

    #@4f
    .line 231
    .local v5, "count":I
    const/4 v8, 0x0

    #@50
    .local v8, "ii":I
    :goto_2
    if-ge v8, v5, :cond_5

    #@52
    .line 233
    move/from16 v0, v18

    #@54
    if-ge v8, v0, :cond_4

    #@56
    .line 234
    move-object/from16 v0, v17

    #@58
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v23

    #@5c
    check-cast v23, Landroid/content/pm/ResolveInfo;

    #@5e
    move-object/from16 v9, v23

    #@60
    .line 236
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    :goto_3
    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@62
    .line 238
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v23, Landroid/content/ComponentName;

    #@64
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@66
    move-object/from16 v24, v0

    #@68
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@6a
    move-object/from16 v25, v0

    #@6c
    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    move-object/from16 v0, v23

    #@71
    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v23

    #@75
    if-nez v23, :cond_1

    #@77
    .line 239
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    #@7b
    move-object/from16 v23, v0

    #@7d
    .line 240
    move-object/from16 v0, p0

    #@7f
    iget v0, v0, Lcom/android/server/search/Searchables;->mUserId:I

    #@81
    move/from16 v24, v0

    #@83
    .line 239
    move-object/from16 v0, v23

    #@85
    move/from16 v1, v24

    #@87
    invoke-static {v0, v4, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    #@8a
    move-result-object v19

    #@8b
    .line 241
    .local v19, "searchable":Landroid/app/SearchableInfo;
    if-eqz v19, :cond_1

    #@8d
    .line 242
    move-object/from16 v0, v19

    #@8f
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@92
    .line 243
    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@95
    move-result-object v23

    #@96
    move-object/from16 v0, v23

    #@98
    move-object/from16 v1, v19

    #@9a
    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 244
    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    #@a0
    move-result v23

    #@a1
    if-eqz v23, :cond_1

    #@a3
    .line 245
    move-object/from16 v0, v19

    #@a5
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a8
    .line 231
    .end local v19    # "searchable":Landroid/app/SearchableInfo;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@aa
    goto :goto_2

    #@ab
    .line 228
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "count":I
    .end local v8    # "ii":I
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v18    # "search_count":I
    .end local v22    # "web_search_count":I
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@ae
    move-result v18

    #@af
    .restart local v18    # "search_count":I
    goto :goto_0

    #@b0
    .line 229
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@b3
    move-result v22

    #@b4
    goto :goto_1

    #@b5
    .line 235
    .restart local v5    # "count":I
    .restart local v8    # "ii":I
    .restart local v22    # "web_search_count":I
    :cond_4
    sub-int v23, v8, v18

    #@b7
    move-object/from16 v0, v20

    #@b9
    move/from16 v1, v23

    #@bb
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@be
    move-result-object v23

    #@bf
    check-cast v23, Landroid/content/pm/ResolveInfo;

    #@c1
    move-object/from16 v9, v23

    #@c3
    goto :goto_3

    #@c4
    .line 252
    .end local v5    # "count":I
    .end local v8    # "ii":I
    .end local v18    # "search_count":I
    .end local v22    # "web_search_count":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    #@c7
    move-result-object v11

    #@c8
    .line 255
    .local v11, "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@ca
    invoke-direct {v0, v11}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    #@cd
    move-result-object v12

    #@ce
    .line 259
    .local v12, "newGlobalSearchActivity":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@d0
    invoke-direct {v0, v12}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    #@d3
    move-result-object v16

    #@d4
    .line 262
    .local v16, "newWebSearchActivity":Landroid/content/ComponentName;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d5
    .line 263
    :try_start_1
    move-object/from16 v0, p0

    #@d7
    iput-object v15, v0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    #@d9
    .line 264
    move-object/from16 v0, p0

    #@db
    iput-object v14, v0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    #@dd
    .line 265
    move-object/from16 v0, p0

    #@df
    iput-object v13, v0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    #@e1
    .line 266
    move-object/from16 v0, p0

    #@e3
    iput-object v11, v0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    #@e5
    .line 267
    move-object/from16 v0, p0

    #@e7
    iput-object v12, v0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    #@e9
    .line 268
    move-object/from16 v0, v16

    #@eb
    move-object/from16 v1, p0

    #@ed
    iput-object v0, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ef
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f0
    .line 271
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f3
    .line 203
    return-void

    #@f4
    .line 262
    :catchall_0
    move-exception v23

    #@f5
    :try_start_3
    monitor-exit p0

    #@f6
    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@f7
    .line 270
    .end local v11    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .end local v16    # "newWebSearchActivity":Landroid/content/ComponentName;
    .end local v17    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "webSearchIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v23

    #@f8
    .line 271
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fb
    .line 270
    throw v23
.end method

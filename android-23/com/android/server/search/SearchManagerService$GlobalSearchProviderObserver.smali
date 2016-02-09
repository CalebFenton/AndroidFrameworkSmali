.class Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    .line 178
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 179
    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    #@8
    .line 180
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    #@a
    .line 181
    const-string/jumbo v1, "search_global_search_activity"

    #@d
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v1

    #@11
    .line 182
    const/4 v2, 0x0

    #@12
    .line 180
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@15
    .line 177
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 189
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@a
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 190
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@16
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@18
    invoke-static {v4}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1f
    move-result v4

    #@20
    invoke-static {v2, v4}, Lcom/android/server/search/SearchManagerService;->-wrap0(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->buildSearchableList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 189
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    :cond_0
    monitor-exit v3

    #@2b
    .line 193
    new-instance v1, Landroid/content/Intent;

    #@2d
    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    #@30
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@33
    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@38
    .line 195
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@3a
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-get0(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    #@3d
    move-result-object v2

    #@3e
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@40
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@43
    .line 187
    return-void

    #@44
    .line 188
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method

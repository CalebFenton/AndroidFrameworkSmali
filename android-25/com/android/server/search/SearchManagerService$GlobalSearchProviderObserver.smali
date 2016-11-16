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
    .line 195
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    .line 196
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 197
    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    #@8
    .line 198
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    #@a
    .line 199
    const-string/jumbo v1, "search_global_search_activity"

    #@d
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v1

    #@11
    .line 200
    const/4 v2, 0x0

    #@12
    .line 198
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@15
    .line 195
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 207
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
    .line 208
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@16
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/server/search/Searchables;

    #@20
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 207
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_0
    monitor-exit v3

    #@27
    .line 211
    new-instance v1, Landroid/content/Intent;

    #@29
    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    #@2c
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2f
    .line 212
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@31
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@34
    .line 213
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@36
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->-get0(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    #@39
    move-result-object v2

    #@3a
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3c
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3f
    .line 205
    return-void

    #@40
    .line 206
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@41
    monitor-exit v3

    #@42
    throw v2
.end method

.class Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method private updateSearchables()V
    .locals 5

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->getChangingUserId()I

    #@3
    move-result v0

    #@4
    .line 161
    .local v0, "changingUserId":I
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    #@6
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@9
    move-result-object v4

    #@a
    monitor-enter v4

    #@b
    .line 163
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    #@e
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v3

    #@16
    if-ge v1, v3, :cond_0

    #@18
    .line 164
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    #@1a
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@21
    move-result v3

    #@22
    if-ne v0, v3, :cond_1

    #@24
    .line 165
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    #@26
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get1(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Lcom/android/server/search/Searchables;

    #@30
    invoke-virtual {v3}, Lcom/android/server/search/Searchables;->updateSearchableList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    :cond_0
    monitor-exit v4

    #@34
    .line 171
    new-instance v2, Landroid/content/Intent;

    #@36
    const-string/jumbo v3, "android.search.action.SEARCHABLES_CHANGED"

    #@39
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3c
    .line 172
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    #@3e
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@41
    .line 174
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    #@43
    invoke-static {v3}, Lcom/android/server/search/SearchManagerService;->-get0(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    #@46
    move-result-object v3

    #@47
    new-instance v4, Landroid/os/UserHandle;

    #@49
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@4c
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@4f
    .line 159
    return-void

    #@50
    .line 163
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 161
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    #@3
    .line 155
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    #@3
    .line 150
    return-void
.end method

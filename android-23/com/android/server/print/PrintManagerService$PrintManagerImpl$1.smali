.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$enabledPrintServicesUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$enabledPrintServicesUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    iput-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    #@4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 474
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 475
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@a
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    monitor-enter v4

    #@f
    .line 476
    const/4 v3, -0x1

    #@10
    if-eq p3, v3, :cond_2

    #@12
    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@14
    invoke-static {v3, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    #@17
    move-result-object v2

    #@18
    .line 478
    .local v2, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    :cond_0
    monitor-exit v4

    #@1c
    .line 473
    :cond_1
    return-void

    #@1d
    .line 480
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@1f
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@26
    move-result v1

    #@27
    .line 481
    .local v1, "userCount":I
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@2a
    .line 482
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2c
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Lcom/android/server/print/UserState;

    #@36
    .line 483
    .restart local v2    # "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 481
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 475
    .end local v0    # "i":I
    .end local v1    # "userCount":I
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3
.end method

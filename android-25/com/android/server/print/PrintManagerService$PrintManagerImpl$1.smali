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
    .line 659
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
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 662
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_3

    #@8
    .line 663
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@a
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    monitor-enter v3

    #@f
    .line 664
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@11
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v1

    #@19
    .line 665
    .local v1, "userCount":I
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1c
    .line 666
    const/4 v2, -0x1

    #@1d
    if-eq p3, v2, :cond_0

    #@1f
    .line 667
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@21
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@28
    move-result v2

    #@29
    if-ne p3, v2, :cond_1

    #@2b
    .line 668
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2d
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Lcom/android/server/print/UserState;

    #@37
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 665
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    :cond_2
    monitor-exit v3

    #@3e
    .line 661
    .end local v0    # "i":I
    .end local v1    # "userCount":I
    :cond_3
    return-void

    #@3f
    .line 663
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method

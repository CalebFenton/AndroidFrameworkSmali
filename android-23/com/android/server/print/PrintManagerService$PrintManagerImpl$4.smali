.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p2, "val$userId"    # I

    #@0
    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@9
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    iget v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    #@f
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/print/UserState;

    #@15
    .line 657
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-eqz v0, :cond_0

    #@17
    .line 658
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->destroyLocked()V

    #@1a
    .line 659
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@1c
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    #@1f
    move-result-object v1

    #@20
    iget v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;->val$userId:I

    #@22
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit v2

    #@26
    .line 654
    return-void

    #@27
    .line 655
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1
.end method

.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStarted(I)V
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
    .line 633
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

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
    .line 637
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@9
    iget v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    #@b
    invoke-static {v1, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    #@e
    move-result-object v0

    #@f
    .line 639
    .local v0, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 644
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    #@16
    .line 635
    return-void

    #@17
    .line 637
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method

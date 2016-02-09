.class Lcom/android/server/pm/UserManagerService$2$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$2;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/UserManagerService$2;
    .param p2, "val$userHandle"    # I

    #@0
    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    #@2
    iput p2, p0, Lcom/android/server/pm/UserManagerService$2$1;->val$userHandle:I

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    #@2
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    #@4
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get0(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    .line 1479
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    #@b
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    #@d
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 1480
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$2$1;->this$1:Lcom/android/server/pm/UserManagerService$2;

    #@14
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    #@16
    iget v3, p0, Lcom/android/server/pm/UserManagerService$2$1;->val$userHandle:I

    #@18
    invoke-static {v0, v3}, Lcom/android/server/pm/UserManagerService;->-wrap0(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    monitor-exit v1

    #@1d
    .line 1477
    return-void

    #@1e
    .line 1479
    :catchall_0
    move-exception v0

    #@1f
    :try_start_3
    monitor-exit v2

    #@20
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@21
    .line 1478
    :catchall_1
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

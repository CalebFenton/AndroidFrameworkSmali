.class final Lcom/android/server/pm/UserManagerService$MainHandler;
.super Landroid/os/Handler;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    #@0
    .prologue
    .line 2023
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2027
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 2026
    :goto_0
    return-void

    #@6
    .line 2029
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/UserManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 2030
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    #@e
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get1(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    monitor-enter v3

    #@13
    .line 2031
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    check-cast v2, Landroid/content/pm/UserInfo;

    #@17
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    #@19
    .line 2032
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    #@1b
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get3(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/content/pm/UserInfo;

    #@25
    .line 2033
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@27
    .line 2034
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    #@29
    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->-wrap1(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_0
    monitor-exit v3

    #@2d
    goto :goto_0

    #@2e
    .line 2030
    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2

    #@31
    .line 2027
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

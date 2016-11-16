.class final Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;
.super Landroid/os/Handler;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    .line 156
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 161
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 160
    :cond_0
    :goto_0
    return-void

    #@6
    .line 163
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@8
    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 164
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@14
    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1b
    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@1d
    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@24
    goto :goto_0

    #@25
    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@27
    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDemoLauncherDisabled()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 170
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "User inactivity timeout reached"

    #@34
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 171
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@39
    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap6(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    #@3c
    goto :goto_0

    #@3d
    .line 178
    :pswitch_2
    const/4 v1, 0x2

    #@3e
    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    #@41
    .line 179
    const/4 v1, 0x1

    #@42
    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    #@45
    .line 180
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@47
    iget v1, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 181
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@4d
    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->logSessionDuration()V

    #@50
    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@52
    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/UserManager;

    #@55
    move-result-object v1

    #@56
    const-string/jumbo v2, "Demo"

    #@59
    .line 184
    const/16 v3, 0x300

    #@5b
    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@5e
    move-result-object v0

    #@5f
    .line 185
    .local v0, "demoUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@61
    .line 186
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@63
    invoke-static {v1, v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap5(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V

    #@66
    .line 187
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@68
    invoke-static {v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/am/ActivityManagerService;

    #@6b
    move-result-object v1

    #@6c
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@6e
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    #@71
    goto :goto_0

    #@72
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

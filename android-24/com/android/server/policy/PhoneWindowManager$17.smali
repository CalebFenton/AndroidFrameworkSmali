.class Lcom/android/server/policy/PhoneWindowManager$17;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$screenshotType"    # I

    #@0
    .prologue
    .line 5377
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$17;->val$screenshotType:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 5380
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v6, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    .line 5381
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eq v5, p0, :cond_0

    #@b
    monitor-exit v6

    #@c
    .line 5382
    return-void

    #@d
    .line 5384
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Messenger;

    #@f
    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #@12
    .line 5385
    .local v2, "messenger":Landroid/os/Messenger;
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->val$screenshotType:I

    #@14
    const/4 v7, 0x0

    #@15
    invoke-static {v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@18
    move-result-object v3

    #@19
    .line 5386
    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    #@1a
    .line 5387
    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$17$1;

    #@1c
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1e
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@20
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@23
    move-result-object v5

    #@24
    invoke-direct {v1, p0, v5, p0}, Lcom/android/server/policy/PhoneWindowManager$17$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$17;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    #@27
    .line 5399
    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    #@29
    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@2c
    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2e
    .line 5400
    const/4 v5, 0x0

    #@2f
    iput v5, v3, Landroid/os/Message;->arg2:I

    #@31
    const/4 v5, 0x0

    #@32
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@34
    .line 5401
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@36
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@38
    if-eqz v5, :cond_1

    #@3a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3c
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3e
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_1

    #@44
    .line 5402
    const/4 v5, 0x1

    #@45
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@47
    .line 5403
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@49
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4b
    if-eqz v5, :cond_2

    #@4d
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4f
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@51
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_2

    #@57
    .line 5404
    const/4 v5, 0x1

    #@58
    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 5406
    :cond_2
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    :goto_0
    monitor-exit v6

    #@5e
    .line 5379
    return-void

    #@5f
    .line 5407
    :catch_0
    move-exception v0

    #@60
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@61
    .line 5380
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v5

    #@62
    monitor-exit v6

    #@63
    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 5414
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap12(Lcom/android/server/policy/PhoneWindowManager;)V

    #@5
    .line 5413
    return-void
.end method

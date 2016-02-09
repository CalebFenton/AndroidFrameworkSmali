.class Lcom/android/server/policy/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 4815
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 4818
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v6, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    .line 4819
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eq v5, p0, :cond_0

    #@b
    monitor-exit v6

    #@c
    .line 4820
    return-void

    #@d
    .line 4822
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Messenger;

    #@f
    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #@12
    .line 4823
    .local v2, "messenger":Landroid/os/Messenger;
    const/4 v5, 0x0

    #@13
    const/4 v7, 0x1

    #@14
    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@17
    move-result-object v3

    #@18
    .line 4824
    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    #@19
    .line 4825
    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18$1;

    #@1b
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1d
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@1f
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@22
    move-result-object v5

    #@23
    invoke-direct {v1, p0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager$18$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$18;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    #@26
    .line 4837
    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    #@28
    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@2b
    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2d
    .line 4838
    const/4 v5, 0x0

    #@2e
    iput v5, v3, Landroid/os/Message;->arg2:I

    #@30
    const/4 v5, 0x0

    #@31
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@33
    .line 4839
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@35
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@37
    if-eqz v5, :cond_1

    #@39
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3b
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@3d
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_1

    #@43
    .line 4840
    const/4 v5, 0x1

    #@44
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@46
    .line 4841
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@48
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@4a
    if-eqz v5, :cond_2

    #@4c
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4e
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    #@50
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_2

    #@56
    .line 4842
    const/4 v5, 0x1

    #@57
    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 4844
    :cond_2
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    :goto_0
    monitor-exit v6

    #@5d
    .line 4817
    return-void

    #@5e
    .line 4845
    :catch_0
    move-exception v0

    #@5f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@60
    .line 4818
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v5

    #@61
    monitor-exit v6

    #@62
    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4850
    return-void
.end method

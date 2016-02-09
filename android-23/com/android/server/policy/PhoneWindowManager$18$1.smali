.class Lcom/android/server/policy/PhoneWindowManager$18$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$18;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$18;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$18;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/PhoneWindowManager$18;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$myConn"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 4825
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@2
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->val$myConn:Landroid/content/ServiceConnection;

    #@4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4828
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 4829
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@d
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->val$myConn:Landroid/content/ServiceConnection;

    #@f
    if-ne v0, v2, :cond_0

    #@11
    .line 4830
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@13
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@15
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@17
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@19
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1b
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@1d
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@20
    .line 4831
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@22
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@24
    const/4 v2, 0x0

    #@25
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@27
    .line 4832
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@29
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@2d
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    #@2f
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@31
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    #@33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :cond_0
    monitor-exit v1

    #@37
    .line 4827
    return-void

    #@38
    .line 4828
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
.end method

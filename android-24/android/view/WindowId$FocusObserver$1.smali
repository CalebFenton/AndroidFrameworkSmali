.class Landroid/view/WindowId$FocusObserver$1;
.super Landroid/view/IWindowFocusObserver$Stub;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/WindowId$FocusObserver;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@2
    invoke-direct {p0}, Landroid/view/IWindowFocusObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public focusGained(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 53
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@2
    iget-object v2, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@4
    monitor-enter v2

    #@5
    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@7
    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/WindowId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v0, "token":Landroid/view/WindowId;
    monitor-exit v2

    #@10
    .line 56
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@12
    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 57
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@18
    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@1a
    iget-object v2, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@1c
    iget-object v2, v2, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@1e
    const/4 v3, 0x1

    #@1f
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 51
    :goto_0
    return-void

    #@27
    .line 53
    .end local v0    # "token":Landroid/view/WindowId;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 59
    .restart local v0    # "token":Landroid/view/WindowId;
    :cond_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@2c
    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    #@2f
    goto :goto_0
.end method

.method public focusLost(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "inputToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 66
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@2
    iget-object v2, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@4
    monitor-enter v2

    #@5
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@7
    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/WindowId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v0, "token":Landroid/view/WindowId;
    monitor-exit v2

    #@10
    .line 69
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@12
    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 70
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@18
    iget-object v1, v1, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@1a
    iget-object v2, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@1c
    iget-object v2, v2, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@1e
    const/4 v3, 0x2

    #@1f
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@26
    .line 64
    :goto_0
    return-void

    #@27
    .line 66
    .end local v0    # "token":Landroid/view/WindowId;
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 72
    .restart local v0    # "token":Landroid/view/WindowId;
    :cond_0
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$1;->this$1:Landroid/view/WindowId$FocusObserver;

    #@2c
    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    #@2f
    goto :goto_0
.end method

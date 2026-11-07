.class Lcom/android/internal/util/ScreenshotHelper$3;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ScreenshotHelper;->takeScreenshotInternal(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/ScreenshotHelper;

.field final synthetic blacklist val$completionConsumer:Ljava/util/function/Consumer;

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic blacklist val$msg:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/util/ScreenshotHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 160
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 161
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eq v1, p0, :cond_11

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_11
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1, p2}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fputmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)V

    .line 165
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v2}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_4c

    .line 168
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_21
    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$msg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_4c

    .line 174
    goto :goto_4a

    .line 169
    :catch_27
    move-exception v2

    .line 170
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_28
    const-string v3, "ScreenshotHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t take screenshot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v3, :cond_4a

    .line 172
    iget-object v3, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 175
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 180
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 182
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 185
    const-string v1, "ScreenshotHelper"

    const-string v2, "Screenshot service disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 190
    :cond_31
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method

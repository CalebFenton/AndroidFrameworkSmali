.class Lcom/android/internal/util/ScreenshotHelper$2;
.super Landroid/os/Handler;
.source "ScreenshotHelper.java"


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


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/util/ScreenshotHelper;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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

    .line 127
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2c

    .line 138
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 139
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 140
    monitor-exit v0

    goto :goto_2c

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1

    .line 132
    :pswitch_17
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_24

    .line 133
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 135
    :cond_24
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    nop

    .line 143
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_6
    .end packed-switch
.end method

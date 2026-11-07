.class Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;
.super Ljava/lang/Object;
.source "CallbackController.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/CallbackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelableRunnable"
.end annotation


# instance fields
.field private blacklist mRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/CallbackController;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/CallbackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/base/CallbackController-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 128
    return-void
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/CallbackController;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 136
    :cond_c
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

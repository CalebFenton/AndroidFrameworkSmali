.class Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;
.super Ljava/lang/Object;
.source "PostTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/task/PostTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskOriginRunnable"
.end annotation


# instance fields
.field private final blacklist mTaskOrigin:Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;

.field private final blacklist mWrappedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "taskOrigin"    # Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;
    .param p2, "wrappedRunnable"    # Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;->mTaskOrigin:Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;

    .line 71
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;->mWrappedRunnable:Ljava/lang/Runnable;

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 76
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->-$$Nest$sfgetsTaskOrigin()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;->mTaskOrigin:Landroid/net/connectivity/org/chromium/base/task/TaskOriginException;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    :try_start_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/PostTask$TaskOriginRunnable;->mWrappedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    .line 82
    nop

    :goto_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->-$$Nest$sfgetsTaskOrigin()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 83
    goto :goto_21

    .line 79
    :catchall_17
    move-exception v0

    .line 80
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_18
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->maybeAddTaskOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_22

    .line 82
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_f

    .line 84
    :goto_21
    return-void

    .line 82
    :catchall_22
    move-exception v0

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->-$$Nest$sfgetsTaskOrigin()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 83
    throw v0
.end method

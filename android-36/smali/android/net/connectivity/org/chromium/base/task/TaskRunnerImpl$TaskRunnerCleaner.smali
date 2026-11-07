.class Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;
.super Ljava/lang/ref/WeakReference;
.source "TaskRunnerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskRunnerCleaner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist mNativePtr:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)V
    .registers 4
    .param p1, "runner"    # Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;

    .line 83
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->-$$Nest$sfgetsQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 84
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;->-$$Nest$fgetmNativeTaskRunnerAndroid(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;->mNativePtr:J

    .line 85
    return-void
.end method


# virtual methods
.method blacklist destroy()V
    .registers 4

    .line 88
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;->destroy(J)V

    .line 89
    return-void
.end method

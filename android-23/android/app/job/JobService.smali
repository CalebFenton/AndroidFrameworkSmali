.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobService$JobHandler;,
        Landroid/app/job/JobService$1;
    }
.end annotation


# static fields
.field public static final PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "JobService"


# instance fields
.field private final MSG_EXECUTE_JOB:I

.field private final MSG_JOB_FINISHED:I

.field private final MSG_STOP_JOB:I

.field mBinder:Landroid/app/job/IJobService;

.field mHandler:Landroid/app/job/JobService$JobHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandlerLock"
    .end annotation
.end field

.field private final mHandlerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/job/JobService;->MSG_EXECUTE_JOB:I

    #@6
    .line 69
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/app/job/JobService;->MSG_STOP_JOB:I

    #@9
    .line 73
    const/4 v0, 0x2

    #@a
    iput v0, p0, Landroid/app/job/JobService;->MSG_JOB_FINISHED:I

    #@c
    .line 76
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    #@13
    .line 86
    new-instance v0, Landroid/app/job/JobService$1;

    #@15
    invoke-direct {v0, p0}, Landroid/app/job/JobService$1;-><init>(Landroid/app/job/JobService;)V

    #@18
    iput-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    #@1a
    .line 42
    return-void
.end method


# virtual methods
.method ensureHandler()V
    .locals 3

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 105
    new-instance v0, Landroid/app/job/JobService$JobHandler;

    #@9
    invoke-virtual {p0}, Landroid/app/job/JobService;->getMainLooper()Landroid/os/Looper;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, p0, v2}, Landroid/app/job/JobService$JobHandler;-><init>(Landroid/app/job/JobService;Landroid/os/Looper;)V

    #@10
    iput-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 102
    return-void

    #@14
    .line 103
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public final jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "needsReschedule"    # Z

    #@0
    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/app/job/JobService;->ensureHandler()V

    #@3
    .line 253
    iget-object v1, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@5
    const/4 v2, 0x2

    #@6
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 254
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@f
    .line 255
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 251
    return-void

    #@13
    .line 254
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    #@2
    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method

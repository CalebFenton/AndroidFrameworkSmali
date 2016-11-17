.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobService$JobHandler;,
        Landroid/app/job/JobService$JobInterface;
    }
.end annotation


# static fields
.field private static final MSG_EXECUTE_JOB:I = 0x0

.field private static final MSG_JOB_FINISHED:I = 0x2

.field private static final MSG_STOP_JOB:I = 0x1

.field public static final PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "JobService"


# instance fields
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
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 78
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    #@a
    .line 44
    return-void
.end method


# virtual methods
.method ensureHandler()V
    .locals 3

    #@0
    .prologue
    .line 120
    iget-object v1, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 122
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
    .line 119
    return-void

    #@14
    .line 120
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
    .line 272
    invoke-virtual {p0}, Landroid/app/job/JobService;->ensureHandler()V

    #@3
    .line 273
    iget-object v1, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@5
    const/4 v2, 0x2

    #@6
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 274
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@f
    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 271
    return-void

    #@13
    .line 274
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
    .line 214
    iget-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 215
    new-instance v0, Landroid/app/job/JobService$JobInterface;

    #@6
    invoke-direct {v0, p0}, Landroid/app/job/JobService$JobInterface;-><init>(Landroid/app/job/JobService;)V

    #@9
    iput-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    #@b
    .line 217
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    #@d
    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method

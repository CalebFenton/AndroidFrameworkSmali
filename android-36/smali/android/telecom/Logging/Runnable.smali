.class public abstract Landroid/telecom/Logging/Runnable;
.super Ljava/lang/Object;
.source "Runnable.java"


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRunnable:Ljava/lang/Runnable;

.field private blacklist mSubsession:Landroid/telecom/Logging/Session;

.field private final blacklist mSubsessionName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubsession(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubsessionName(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubsession(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "subsessionName"    # Ljava/lang/String;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/telecom/Logging/Runnable$1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/Runnable$1;-><init>(Landroid/telecom/Logging/Runnable;)V

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    .line 55
    if-nez p2, :cond_14

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    goto :goto_16

    .line 58
    :cond_14
    iput-object p2, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    .line 60
    :goto_16
    iput-object p1, p0, Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    invoke-static {v1}, Landroid/telecom/Log;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public final blacklist getRunnableToCancel()Ljava/lang/Runnable;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public abstract blacklist loggedRun()V
.end method

.method public blacklist prepare()Ljava/lang/Runnable;
    .registers 2

    .line 78
    invoke-virtual {p0}, Landroid/telecom/Logging/Runnable;->cancel()V

    .line 79
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    .line 80
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

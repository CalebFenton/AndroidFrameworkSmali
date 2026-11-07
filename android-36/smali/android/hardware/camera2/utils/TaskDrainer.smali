.class public Landroid/hardware/camera2/utils/TaskDrainer;
.super Ljava/lang/Object;
.source "TaskDrainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TaskDrainer"


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private greylist-max-o mDrainFinished:Z

.field private greylist-max-o mDraining:Z

.field private final greylist-max-o mEarlyFinishedTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$q0aC-j90J3dU1KJqDrKs7xxTbLs(Landroid/hardware/camera2/utils/TaskDrainer;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->lambda$postDrained$0()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .line 81
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    .line 71
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    .line 72
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    .line 82
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 83
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .param p3, "name"    # Ljava/lang/String;

    .line 95
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    .line 71
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    .line 72
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    .line 96
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 97
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .line 98
    iput-object p3, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private greylist-max-o checkIfDrainFinished()V
    .registers 2

    .line 195
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    if-nez v0, :cond_16

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    .line 197
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->postDrained()V

    .line 199
    :cond_16
    return-void
.end method

.method private synthetic blacklist lambda$postDrained$0()V
    .registers 2

    .line 207
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    invoke-interface {v0}, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;->onDrained()V

    .line 208
    return-void
.end method

.method private greylist-max-o postDrained()V
    .registers 3

    .line 202
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/utils/TaskDrainer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method


# virtual methods
.method public greylist-max-o beginDrain()V
    .registers 3

    .line 176
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-nez v1, :cond_d

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    .line 185
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V

    .line 191
    :cond_d
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public greylist-max-o taskFinished(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 159
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_33

    .line 160
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was already finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .end local p1    # "task":Ljava/lang/Object;, "TT;"
    throw v1

    .line 165
    .restart local p0    # "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .restart local p1    # "task":Ljava/lang/Object;, "TT;"
    :cond_33
    :goto_33
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public greylist-max-o taskStarted(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-nez v1, :cond_39

    .line 127
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 129
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_37

    .line 130
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was already started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .end local p1    # "task":Ljava/lang/Object;, "TT;"
    throw v1

    .line 133
    .restart local p0    # "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .restart local p1    # "task":Ljava/lang/Object;, "TT;"
    :cond_37
    :goto_37
    monitor-exit v0

    .line 134
    return-void

    .line 123
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t start more tasks after draining has begun"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .end local p1    # "task":Ljava/lang/Object;, "TT;"
    throw v1

    .line 133
    .restart local p0    # "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .restart local p1    # "task":Ljava/lang/Object;, "TT;"
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

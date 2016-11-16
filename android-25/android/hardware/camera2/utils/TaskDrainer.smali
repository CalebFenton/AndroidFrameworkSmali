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
.field private static final TAG:Ljava/lang/String; = "TaskDrainer"


# instance fields
.field private final DEBUG:Z

.field private mDrainFinished:Z

.field private mDraining:Z

.field private final mEarlyFinishedTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/utils/TaskDrainer;)Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    #@6
    .line 63
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    #@d
    .line 68
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    #@14
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    #@1b
    .line 71
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    #@1d
    .line 72
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    #@1f
    .line 82
    const-string/jumbo v0, "handler must not be null"

    #@22
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/os/Handler;

    #@28
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    #@2a
    .line 83
    const-string/jumbo v0, "listener must not be null"

    #@2d
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@33
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@35
    .line 84
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    #@38
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    #@6
    .line 63
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    #@d
    .line 68
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    #@14
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@19
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    #@1b
    .line 71
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    #@1d
    .line 72
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    #@1f
    .line 97
    const-string/jumbo v0, "handler must not be null"

    #@22
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/os/Handler;

    #@28
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    #@2a
    .line 98
    const-string/jumbo v0, "listener must not be null"

    #@2d
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@33
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@35
    .line 99
    iput-object p3, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    #@37
    .line 95
    return-void
.end method

.method private checkIfDrainFinished()V
    .locals 1

    #@0
    .prologue
    .line 196
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 195
    :cond_0
    :goto_0
    return-void

    #@11
    .line 197
    :cond_1
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    #@14
    .line 198
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->postDrained()V

    #@17
    goto :goto_0
.end method

.method private postDrained()V
    .locals 2

    #@0
    .prologue
    .line 203
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/hardware/camera2/utils/TaskDrainer$1;

    #@4
    invoke-direct {v1, p0}, Landroid/hardware/camera2/utils/TaskDrainer$1;-><init>(Landroid/hardware/camera2/utils/TaskDrainer;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 202
    return-void
.end method


# virtual methods
.method public beginDrain()V
    .locals 2

    #@0
    .prologue
    .line 177
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 178
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 183
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    #@a
    .line 186
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 176
    return-void

    #@f
    .line 177
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public taskFinished(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 160
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Task "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, " was already finished"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 152
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0

    #@37
    .line 166
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    monitor-exit v1

    #@3b
    .line 151
    return-void
.end method

.method public taskStarted(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer;, "Landroid/hardware/camera2/utils/TaskDrainer<TT;>;"
    .local p1, "task":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 123
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Can\'t start more tasks after draining has begun"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 118
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    #@15
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 130
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    #@1d
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_1

    #@23
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Task "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, " was already started"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    :cond_1
    monitor-exit v1

    #@45
    .line 117
    return-void
.end method

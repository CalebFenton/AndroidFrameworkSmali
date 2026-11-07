.class public Landroid/hardware/camera2/utils/TaskSingleDrainer;
.super Ljava/lang/Object;
.source "TaskSingleDrainer.java"


# instance fields
.field private final greylist-max-o mSingleTask:Ljava/lang/Object;

.field private final greylist-max-o mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .param p3, "name"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 61
    return-void
.end method


# virtual methods
.method public greylist-max-o beginDrain()V
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V

    .line 88
    return-void
.end method

.method public greylist-max-o taskFinished()V
    .registers 3

    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public greylist-max-o taskStarted()V
    .registers 3

    .line 77
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.class public Landroid/hardware/camera2/utils/TaskSingleDrainer;
.super Ljava/lang/Object;
.source "TaskSingleDrainer.java"


# instance fields
.field private final mSingleTask:Ljava/lang/Object;

.field private final mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    #@a
    .line 47
    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    #@c
    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@11
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    #@a
    .line 59
    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    #@c
    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@11
    .line 58
    return-void
.end method


# virtual methods
.method public beginDrain()V
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V

    #@5
    .line 85
    return-void
.end method

.method public taskFinished()V
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    #@4
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V

    #@7
    .line 101
    return-void
.end method

.method public taskStarted()V
    .locals 2

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    #@2
    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    #@4
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    #@7
    .line 75
    return-void
.end method

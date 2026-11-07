.class Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field blacklist mActive:Ljava/lang/Runnable;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$UeeRUTu0xPBef-mdkyXsM4sQDI4(Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->lambda$execute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mTasks:Ljava/util/Queue;

    .line 36
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 37
    return-void
.end method

.method private synthetic blacklist lambda$execute$0(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 42
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 44
    invoke-virtual {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->scheduleNext()V

    .line 45
    nop

    .line 46
    return-void

    .line 44
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->scheduleNext()V

    .line 45
    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mTasks:Ljava/util/Queue;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor$$ExternalSyntheticLambda0;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 48
    invoke-virtual {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 50
    .end local p0    # "this":Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;
    :cond_12
    monitor-exit p0

    return-void

    .line 39
    .end local p1    # "r":Ljava/lang/Runnable;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method protected declared-synchronized blacklist scheduleNext()V
    .registers 3

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 54
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 56
    .end local p0    # "this":Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;
    :cond_14
    monitor-exit p0

    return-void

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.class Landroid/window/TaskOrganizer$1;
.super Landroid/window/ITaskOrganizer$Stub;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskOrganizer;


# direct methods
.method public static synthetic blacklist $r8$lambda$BfZljSLvbOxLl9lAmxVzXFoCjYU(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onTaskVanished$5(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BuXoh-EhX76ZKCJXfTX95OYGMWw(Landroid/window/TaskOrganizer$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$copySplashScreenView$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DNbyZkzzXAi0yFoykLy2bEitgjQ(Landroid/window/TaskOrganizer$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onImeDrawnOnTask$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JFybI7116bqnvmWm835b0heUmQg(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/window/TaskOrganizer$1;->lambda$onTaskAppeared$4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OaX10eGVHumLQD3BBMswfwgAv2g(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onBackPressedOnTaskRoot$7(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eXH6Qt4Kj7JO_1wDtJN7rfAd7T8(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h80gEU_AkovAtfqMDJvXHz1F_wE(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$removeStartingWindow$1(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ms8YKiaSNzRXE_oxvzxkTY-276A(Landroid/window/TaskOrganizer$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onAppSplashScreenViewRemoved$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ymyF3xZeY830CRyp4eBo81WJpe0(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/TaskOrganizer$1;->lambda$onTaskInfoChanged$6(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/TaskOrganizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/window/TaskOrganizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskOrganizer$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$addStartingWindow$0(Landroid/window/StartingWindowInfo;)V
    .registers 3
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;

    .line 265
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$copySplashScreenView$2(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 275
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->copySplashScreenView(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onAppSplashScreenViewRemoved$3(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 280
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onBackPressedOnTaskRoot$7(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 300
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImeDrawnOnTask$8(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 305
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onImeDrawnOnTask(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onTaskAppeared$4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 285
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTaskInfoChanged$6(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 295
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTaskVanished$5(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 290
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$removeStartingWindow$1(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 3
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 270
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .registers 4
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;

    .line 265
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 275
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 280
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 300
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 305
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 285
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 295
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 290
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 4
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 270
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

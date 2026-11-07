.class Landroid/app/ActivityManager$3;
.super Landroid/app/IApplicationStartInfoCompleteListener$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityManager;->addApplicationStartInfoCompletionListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ActivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4409
    iput-object p1, p0, Landroid/app/ActivityManager$3;->this$0:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onApplicationStartInfoComplete$0(Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;Landroid/app/ApplicationStartInfo;)V
    .registers 3
    .param p0, "callback"    # Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;
    .param p1, "applicationStartInfo"    # Landroid/app/ApplicationStartInfo;

    .line 4417
    iget-object v0, p0, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    .registers 7
    .param p1, "applicationStartInfo"    # Landroid/app/ApplicationStartInfo;

    .line 4413
    iget-object v0, p0, Landroid/app/ActivityManager$3;->this$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityManager$3;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 4415
    iget-object v2, p0, Landroid/app/ActivityManager$3;->this$0:Landroid/app/ActivityManager;

    invoke-static {v2}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4416
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    .line 4417
    .local v2, "callback":Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;
    iget-object v3, v2, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;Landroid/app/ApplicationStartInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4414
    .end local v2    # "callback":Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4420
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, p0, Landroid/app/ActivityManager$3;->this$0:Landroid/app/ActivityManager;

    invoke-static {v1}, Landroid/app/ActivityManager;->-$$Nest$fgetmAppStartInfoCallbacks(Landroid/app/ActivityManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4421
    iget-object v1, p0, Landroid/app/ActivityManager$3;->this$0:Landroid/app/ActivityManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManager;->-$$Nest$fputmAppStartInfoCompleteListener(Landroid/app/ActivityManager;Landroid/app/IApplicationStartInfoCompleteListener;)V

    .line 4422
    monitor-exit v0

    .line 4423
    return-void

    .line 4422
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw v1
.end method

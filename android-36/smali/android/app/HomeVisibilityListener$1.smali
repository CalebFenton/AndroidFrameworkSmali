.class Landroid/app/HomeVisibilityListener$1;
.super Landroid/app/IProcessObserver$Stub;
.source "HomeVisibilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/HomeVisibilityListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/HomeVisibilityListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$Eqc20ZY37A418ORjHDdUI3ABrx0(Landroid/app/HomeVisibilityListener$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener$1;->lambda$refreshHomeVisibility$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WksC9iWu0RQ6wGIb3ZemVs0MkxM(Landroid/app/HomeVisibilityListener$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener$1;->lambda$refreshHomeVisibility$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/HomeVisibilityListener;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/HomeVisibilityListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$refreshHomeVisibility$0()V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iget-object v1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iget-boolean v1, v1, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    invoke-virtual {v0, v1}, Landroid/app/HomeVisibilityListener;->onHomeVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$refreshHomeVisibility$1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    invoke-static {v0}, Landroid/app/HomeVisibilityListener;->-$$Nest$fgetmExecutor(Landroid/app/HomeVisibilityListener;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/HomeVisibilityListener$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist refreshHomeVisibility()V
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    invoke-static {v0}, Landroid/app/HomeVisibilityListener;->-$$Nest$misHomeActivityVisible(Landroid/app/HomeVisibilityListener;)Z

    move-result v0

    .line 92
    .local v0, "isHomeActivityVisible":Z
    iget-object v1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iget-boolean v1, v1, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    if-eq v1, v0, :cond_18

    .line 93
    iget-object v1, p0, Landroid/app/HomeVisibilityListener$1;->this$0:Landroid/app/HomeVisibilityListener;

    iput-boolean v0, v1, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    .line 94
    new-instance v1, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/HomeVisibilityListener$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/HomeVisibilityListener$1;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 98
    :cond_18
    return-void
.end method


# virtual methods
.method public blacklist onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "fg"    # Z

    .line 78
    invoke-direct {p0}, Landroid/app/HomeVisibilityListener$1;->refreshHomeVisibility()V

    .line 79
    return-void
.end method

.method public blacklist onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "fgServiceTypes"    # I

    .line 83
    return-void
.end method

.method public blacklist onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 87
    invoke-direct {p0}, Landroid/app/HomeVisibilityListener$1;->refreshHomeVisibility()V

    .line 88
    return-void
.end method

.method public blacklist onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "processUid"    # I
    .param p3, "packageUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;

    .line 74
    return-void
.end method

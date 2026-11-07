.class public abstract Landroid/filterfw/core/GraphRunner;
.super Ljava/lang/Object;
.source "GraphRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o RESULT_BLOCKED:I = 0x4

.field public static final greylist-max-o RESULT_ERROR:I = 0x6

.field public static final greylist-max-o RESULT_FINISHED:I = 0x2

.field public static final greylist-max-o RESULT_RUNNING:I = 0x1

.field public static final greylist-max-o RESULT_SLEEPING:I = 0x3

.field public static final greylist-max-o RESULT_STOPPED:I = 0x5

.field public static final greylist-max-o RESULT_UNKNOWN:I


# instance fields
.field protected greylist-max-o mFilterContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 52
    iput-object p1, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 53
    return-void
.end method


# virtual methods
.method protected greylist-max-o activateGlContext()Z
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 69
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v1

    if-nez v1, :cond_13

    .line 70
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 71
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public abstract greylist-max-o close()V
.end method

.method protected greylist-max-o deactivateGlContext()V
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 81
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_b

    .line 82
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 84
    :cond_b
    return-void
.end method

.method public greylist-max-o getContext()Landroid/filterfw/core/FilterContext;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public abstract greylist getError()Ljava/lang/Exception;
.end method

.method public abstract greylist getGraph()Landroid/filterfw/core/FilterGraph;
.end method

.method public abstract greylist-max-o isRunning()Z
.end method

.method public abstract greylist run()V
.end method

.method public abstract greylist setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
.end method

.method public abstract greylist stop()V
.end method

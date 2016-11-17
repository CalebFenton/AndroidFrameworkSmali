.class public Landroid/filterfw/MffEnvironment;
.super Ljava/lang/Object;
.source "MffEnvironment.java"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method protected constructor <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    if-nez p1, :cond_0

    #@5
    .line 46
    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    #@7
    .end local p1    # "frameManager":Landroid/filterfw/core/FrameManager;
    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    #@a
    .line 50
    .restart local p1    # "frameManager":Landroid/filterfw/core/FrameManager;
    :cond_0
    new-instance v0, Landroid/filterfw/core/FilterContext;

    #@c
    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    #@f
    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@11
    .line 51
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@13
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    #@16
    .line 43
    return-void
.end method


# virtual methods
.method public activateGLEnvironment()V
    .locals 3

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@2
    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@5
    move-result-object v0

    #@6
    .line 86
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    #@8
    .line 87
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@a
    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    #@11
    .line 84
    return-void

    #@12
    .line 89
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v2, "No GLEnvironment in place to activate!"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public createGLEnvironment()V
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    #@2
    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    #@5
    .line 75
    .local v0, "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    #@8
    .line 76
    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    #@b
    .line 73
    return-void
.end method

.method public deactivateGLEnvironment()V
    .locals 3

    #@0
    .prologue
    .line 99
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@2
    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@5
    move-result-object v0

    #@6
    .line 100
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    #@8
    .line 101
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@a
    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    #@11
    .line 98
    return-void

    #@12
    .line 103
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v2, "No GLEnvironment in place to deactivate!"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@2
    return-object v0
.end method

.method public setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 1
    .param p1, "glEnvironment"    # Landroid/filterfw/core/GLEnvironment;

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    #@2
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    #@5
    .line 66
    return-void
.end method

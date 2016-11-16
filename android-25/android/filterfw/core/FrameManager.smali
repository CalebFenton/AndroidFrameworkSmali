.class public abstract Landroid/filterfw/core/FrameManager;
.super Ljava/lang/Object;
.source "FrameManager.java"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v0

    #@8
    .line 37
    .local v0, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@b
    .line 38
    return-object v0
.end method

.method public duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "newTarget"    # I

    #@0
    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v0

    #@8
    .line 43
    .local v0, "newFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    #@b
    .line 44
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@e
    move-result-object v1

    #@f
    .line 45
    .local v1, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@12
    .line 46
    return-object v1
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    #@2
    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 58
    iget-object v1, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public abstract newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
.end method

.method public abstract newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
.end method

.method public abstract releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method public abstract retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method setContext(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    #@2
    .line 64
    return-void
.end method

.method public tearDown()V
    .locals 0

    #@0
    .prologue
    .line 61
    return-void
.end method

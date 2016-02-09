.class public Landroid/filterpacks/base/RetargetFilter;
.super Landroid/filterfw/core/Filter;
.source "RetargetFilter.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mTarget:I

.field private mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = false
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 36
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    #@6
    .line 38
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@3
    move-result-object v0

    #@4
    .line 55
    .local v0, "retargeted":Landroid/filterfw/core/MutableFrameFormat;
    iget v1, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    #@6
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    #@9
    .line 56
    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 62
    const-string/jumbo v2, "frame"

    #@3
    invoke-virtual {p0, v2}, Landroid/filterpacks/base/RetargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 65
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@a
    move-result-object v2

    #@b
    iget v3, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    #@d
    invoke-virtual {v2, v0, v3}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    #@10
    move-result-object v1

    #@11
    .line 68
    .local v1, "output":Landroid/filterfw/core/Frame;
    const-string/jumbo v2, "frame"

    #@14
    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/base/RetargetFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@17
    .line 71
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1a
    .line 60
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTargetString:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    #@8
    .line 48
    const-string/jumbo v0, "frame"

    #@b
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/RetargetFilter;->addInputPort(Ljava/lang/String;)V

    #@e
    .line 49
    const-string/jumbo v0, "frame"

    #@11
    const-string/jumbo v1, "frame"

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/RetargetFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 43
    return-void
.end method

.class public Landroid/filterpacks/base/FrameBranch;
.super Landroid/filterfw/core/Filter;
.source "FrameBranch.java"


# instance fields
.field private mNumberOfOutputs:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "outputs"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    #@6
    .line 34
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 48
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 53
    const-string/jumbo v2, "in"

    #@3
    invoke-virtual {p0, v2}, Landroid/filterpacks/base/FrameBranch;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v1

    #@7
    .line 56
    .local v1, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "out"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/base/FrameBranch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@23
    .line 56
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 51
    :cond_0
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 40
    const-string/jumbo v1, "in"

    #@3
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameBranch;->addInputPort(Ljava/lang/String;)V

    #@6
    .line 41
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/filterpacks/base/FrameBranch;->mNumberOfOutputs:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "out"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "in"

    #@22
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/FrameBranch;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 41
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 39
    :cond_0
    return-void
.end method

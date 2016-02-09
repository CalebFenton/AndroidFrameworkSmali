.class public Landroid/media/effect/SingleFilterEffect;
.super Landroid/media/effect/FilterEffect;
.source "SingleFilterEffect.java"


# instance fields
.field protected mFunction:Landroid/filterfw/core/FilterFunction;

.field protected mInputName:Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filterClass"    # Ljava/lang/Class;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "finalParameters"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    #@3
    .line 55
    iput-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    #@5
    .line 56
    iput-object p5, p0, Landroid/media/effect/SingleFilterEffect;->mOutputName:Ljava/lang/String;

    #@7
    .line 58
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 59
    .local v2, "filterName":Ljava/lang/String;
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    #@e
    move-result-object v0

    #@f
    .line 60
    .local v0, "factory":Landroid/filterfw/core/FilterFactory;
    invoke-virtual {v0, p3, v2}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@12
    move-result-object v1

    #@13
    .line 61
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1, p6}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    #@16
    .line 63
    new-instance v3, Landroid/filterfw/core/FilterFunction;

    #@18
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v3, v4, v1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    #@1f
    iput-object v3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    #@21
    .line 52
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 7
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->beginGLEffect()V

    #@3
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SingleFilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 71
    .local v0, "inputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/SingleFilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v1

    #@b
    .line 73
    .local v1, "outputFrame":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    #@d
    const/4 v4, 0x2

    #@e
    new-array v4, v4, [Ljava/lang/Object;

    #@10
    iget-object v5, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v4, v6

    #@15
    const/4 v5, 0x1

    #@16
    aput-object v0, v4, v5

    #@18
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    #@1b
    move-result-object v2

    #@1c
    .line 75
    .local v2, "resultFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@1f
    .line 77
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@22
    .line 78
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@25
    .line 79
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@28
    .line 81
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->endGLEffect()V

    #@2b
    .line 67
    return-void
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/FilterFunction;->tearDown()V

    #@5
    .line 92
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    #@8
    .line 90
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 85
    return-void
.end method

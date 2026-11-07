.class public Landroid/media/effect/SingleFilterEffect;
.super Landroid/media/effect/FilterEffect;
.source "SingleFilterEffect.java"


# instance fields
.field protected greylist-max-o mFunction:Landroid/filterfw/core/FilterFunction;

.field protected greylist-max-o mInputName:Ljava/lang/String;

.field protected greylist-max-o mOutputName:Ljava/lang/String;


# direct methods
.method public varargs constructor greylist <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filterClass"    # Ljava/lang/Class;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "finalParameters"    # [Ljava/lang/Object;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 56
    iput-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Landroid/media/effect/SingleFilterEffect;->mOutputName:Ljava/lang/String;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "filterName":Ljava/lang/String;
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    move-result-object v1

    .line 61
    .local v1, "factory":Landroid/filterfw/core/FilterFactory;
    invoke-virtual {v1, p3, v0}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 62
    .local v2, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v2, p6}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 64
    new-instance v3, Landroid/filterfw/core/FilterFunction;

    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    iput-object v3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist apply(IIII)V
    .registers 9
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    .line 69
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->beginGLEffect()V

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SingleFilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 72
    .local v0, "inputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/SingleFilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 74
    .local v1, "outputFrame":Landroid/filterfw/core/Frame;
    iget-object v2, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    iget-object v3, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 76
    .local v2, "resultFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 78
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 79
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 80
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 82
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->endGLEffect()V

    .line 83
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterFunction;->tearDown()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 94
    return-void
.end method

.method public whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

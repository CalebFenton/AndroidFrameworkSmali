.class public Landroid/media/effect/SizeChangeEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "SizeChangeEffect.java"


# direct methods
.method public varargs constructor blacklist <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filterClass"    # Ljava/lang/Class;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "finalParameters"    # [Ljava/lang/Object;

    .line 37
    invoke-direct/range {p0 .. p6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist apply(IIII)V
    .registers 10
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    .line 42
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->beginGLEffect()V

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 45
    .local v0, "inputFrame":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/media/effect/SizeChangeEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    iget-object v2, p0, Landroid/media/effect/SizeChangeEffect;->mInputName:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 47
    .local v1, "resultFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    .line 48
    .local v2, "outputWidth":I
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    .line 50
    .local v3, "outputHeight":I
    invoke-virtual {p0, p4, v2, v3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 51
    .local v4, "outputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 53
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 54
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 55
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 57
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->endGLEffect()V

    .line 58
    return-void
.end method

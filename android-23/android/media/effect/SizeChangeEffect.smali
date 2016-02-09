.class public Landroid/media/effect/SizeChangeEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "SizeChangeEffect.java"


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filterClass"    # Ljava/lang/Class;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "finalParameters"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3
    .line 36
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 9
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->beginGLEffect()V

    #@3
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 45
    .local v0, "inputFrame":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/media/effect/SizeChangeEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    #@9
    const/4 v6, 0x2

    #@a
    new-array v6, v6, [Ljava/lang/Object;

    #@c
    iget-object v7, p0, Landroid/media/effect/SizeChangeEffect;->mInputName:Ljava/lang/String;

    #@e
    const/4 v8, 0x0

    #@f
    aput-object v7, v6, v8

    #@11
    const/4 v7, 0x1

    #@12
    aput-object v0, v6, v7

    #@14
    invoke-virtual {v5, v6}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    #@17
    move-result-object v4

    #@18
    .line 47
    .local v4, "resultFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1f
    move-result v3

    #@20
    .line 48
    .local v3, "outputWidth":I
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@27
    move-result v2

    #@28
    .line 50
    .local v2, "outputHeight":I
    invoke-virtual {p0, p4, v3, v2}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@2b
    move-result-object v1

    #@2c
    .line 51
    .local v1, "outputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@2f
    .line 53
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@32
    .line 54
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@35
    .line 55
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@38
    .line 57
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->endGLEffect()V

    #@3b
    .line 41
    return-void
.end method

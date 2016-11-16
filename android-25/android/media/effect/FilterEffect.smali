.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "FilterEffect.java"


# instance fields
.field protected mEffectContext:Landroid/media/effect/EffectContext;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    #@5
    .line 42
    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method protected beginGLEffect()V
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    #@2
    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    #@5
    .line 65
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    #@7
    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->saveGLState()V

    #@a
    .line 63
    return-void
.end method

.method protected endGLEffect()V
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    #@2
    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    #@5
    .line 71
    return-void
.end method

.method protected frameFromTexture(III)Landroid/filterfw/core/Frame;
    .locals 6
    .param p1, "texId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 86
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@8
    move-result-object v2

    #@9
    .line 87
    .local v2, "manager":Landroid/filterfw/core/FrameManager;
    invoke-static {p2, p3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@c
    move-result-object v0

    #@d
    .line 92
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    int-to-long v4, p1

    #@e
    .line 91
    const/16 v3, 0x64

    #@10
    .line 90
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@13
    move-result-object v1

    #@14
    .line 93
    .local v1, "frame":Landroid/filterfw/core/Frame;
    const-wide/16 v4, -0x1

    #@16
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@19
    .line 94
    return-object v1
.end method

.method protected getFilterContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    #@2
    iget-object v0, v0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@4
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.class public Landroid/media/effect/effects/IdentityEffect;
.super Landroid/media/effect/FilterEffect;
.source "IdentityEffect.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    #@3
    .line 29
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 2
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    #@0
    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/media/effect/effects/IdentityEffect;->beginGLEffect()V

    #@3
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/effects/IdentityEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 38
    .local v0, "inputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/effects/IdentityEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v1

    #@b
    .line 40
    .local v1, "outputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@e
    .line 42
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@11
    .line 43
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@14
    .line 45
    invoke-virtual {p0}, Landroid/media/effect/effects/IdentityEffect;->endGLEffect()V

    #@17
    .line 34
    return-void
.end method

.method public release()V
    .locals 0

    #@0
    .prologue
    .line 55
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unknown parameter "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 51
    const-string/jumbo v2, " for IdentityEffect!"

    #@15
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

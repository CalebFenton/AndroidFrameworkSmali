.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;
.super Ljava/lang/Object;
.source "ParticleAnimation.java"


# instance fields
.field blacklist mAllParticles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mAllParticles:Ljava/util/HashMap;

    .line 31
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-void
.end method


# virtual methods
.method public blacklist animate(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;F)V
    .registers 17
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "start"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .param p4, "end"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .param p5, "progress"    # F

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mAllParticles:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .local v0, "particles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;>;"
    if-nez v0, :cond_4a

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    const/16 v2, 0x14

    if-ge v1, v2, :cond_3d

    .line 52
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v5, v2

    .line 53
    .local v5, "x":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v6, v2

    .line 54
    .local v6, "y":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v7, v2

    .line 55
    .local v7, "radius":F
    const/high16 v8, 0x435c0000    # 220.0f

    .line 56
    .local v8, "r":F
    const/high16 v9, 0x435c0000    # 220.0f

    .line 57
    .local v9, "g":F
    const/high16 v10, 0x435c0000    # 220.0f

    .line 58
    .local v10, "b":F
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;-><init>(FFFFFF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "radius":F
    .end local v8    # "r":F
    .end local v9    # "g":F
    .end local v10    # "b":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 60
    .end local v1    # "i":I
    :cond_3d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mAllParticles:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 64
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_bc

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;

    .line 66
    .local v2, "particle":Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 67
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->r:F

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v6, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->g:F

    div-float/2addr v6, v5

    iget v7, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->b:F

    div-float/2addr v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v8, p5

    const/high16 v9, 0x43480000    # 200.0f

    mul-float/2addr v8, v9

    div-float/2addr v8, v5

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 72
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/ParticleAnimation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 73
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    iget v5, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 74
    .local v3, "dx":F
    nop

    .line 75
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v4

    .line 76
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    iget v6, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const v5, 0x3c23d70a    # 0.01f

    mul-float v5, v5, p5

    .line 77
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 78
    .local v4, "dy":F
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    add-float/2addr v5, v6

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v6

    iget v6, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->radius:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float v6, v6, p5

    add-float/2addr v5, v6

    .line 79
    .local v5, "dr":F
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 64
    .end local v2    # "particle":Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "dr":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 81
    .end local v1    # "i":I
    :cond_bc
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 83
    return-void
.end method

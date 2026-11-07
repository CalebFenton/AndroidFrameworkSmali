.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


# instance fields
.field public blacklist b:F

.field public blacklist g:F

.field public blacklist r:F

.field public blacklist radius:F

.field public final blacklist x:F

.field public final blacklist y:F


# direct methods
.method public constructor blacklist <init>(FFFFFF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "r"    # F
    .param p5, "g"    # F
    .param p6, "b"    # F

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->x:F

    .line 28
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->y:F

    .line 29
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->radius:F

    .line 30
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->r:F

    .line 31
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->g:F

    .line 32
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/Particle;->b:F

    .line 33
    return-void
.end method

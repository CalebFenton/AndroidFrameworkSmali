.class public Landroid/animation/PointFEvaluator;
.super Ljava/lang/Object;
.source "PointFEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/PointF;)V
    .registers 2
    .param p1, "reuse"    # Landroid/graphics/PointF;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/PointF;
    .param p3, "endValue"    # Landroid/graphics/PointF;

    .line 73
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 74
    .local v0, "x":F
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 76
    .local v1, "y":F
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_1e

    .line 77
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 78
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    return-object v2

    .line 80
    :cond_1e
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public bridge synthetic whitelist evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 23
    check-cast p2, Landroid/graphics/PointF;

    check-cast p3, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/PointFEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

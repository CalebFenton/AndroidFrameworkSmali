.class public Landroid/animation/PointFEvaluator;
.super Ljava/lang/Object;
.source "PointFEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "reuse"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    #@5
    .line 50
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/PointF;
    .param p3, "endValue"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 73
    iget v2, p2, Landroid/graphics/PointF;->x:F

    #@2
    iget v3, p3, Landroid/graphics/PointF;->x:F

    #@4
    iget v4, p2, Landroid/graphics/PointF;->x:F

    #@6
    sub-float/2addr v3, v4

    #@7
    mul-float/2addr v3, p1

    #@8
    add-float v0, v2, v3

    #@a
    .line 74
    .local v0, "x":F
    iget v2, p2, Landroid/graphics/PointF;->y:F

    #@c
    iget v3, p3, Landroid/graphics/PointF;->y:F

    #@e
    iget v4, p2, Landroid/graphics/PointF;->y:F

    #@10
    sub-float/2addr v3, v4

    #@11
    mul-float/2addr v3, p1

    #@12
    add-float v1, v2, v3

    #@14
    .line 76
    .local v1, "y":F
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 77
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    #@1a
    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    #@1d
    .line 78
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    #@1f
    return-object v2

    #@20
    .line 80
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    #@22
    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    #@25
    return-object v2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    check-cast p2, Landroid/graphics/PointF;

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/PointF;

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/PointFEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

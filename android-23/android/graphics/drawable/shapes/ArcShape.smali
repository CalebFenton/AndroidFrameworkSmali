.class public Landroid/graphics/drawable/shapes/ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "ArcShape.java"


# instance fields
.field private mStart:F

.field private mSweep:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    #@3
    .line 41
    iput p1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStart:F

    #@5
    .line 42
    iput p2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweep:F

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->rect()Landroid/graphics/RectF;

    #@3
    move-result-object v1

    #@4
    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStart:F

    #@6
    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweep:F

    #@8
    const/4 v4, 0x1

    #@9
    move-object v0, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@e
    .line 46
    return-void
.end method

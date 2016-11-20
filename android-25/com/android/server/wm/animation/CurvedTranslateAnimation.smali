.class public Lcom/android/server/wm/animation/CurvedTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "CurvedTranslateAnimation.java"


# instance fields
.field private final mKeyframes:Landroid/animation/PathKeyframes;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@3
    .line 34
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/wm/animation/CurvedTranslateAnimation;->mKeyframes:Landroid/animation/PathKeyframes;

    #@9
    .line 33
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/animation/CurvedTranslateAnimation;->mKeyframes:Landroid/animation/PathKeyframes;

    #@2
    invoke-virtual {v1, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/PointF;

    #@8
    .line 40
    .local v0, "location":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@b
    move-result-object v1

    #@c
    iget v2, v0, Landroid/graphics/PointF;->x:F

    #@e
    iget v3, v0, Landroid/graphics/PointF;->y:F

    #@10
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@13
    .line 38
    return-void
.end method

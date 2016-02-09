.class public Landroid/transition/TransitionUtils$MatrixEvaluator;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field mTempEndValues:[F

.field mTempMatrix:Landroid/graphics/Matrix;

.field mTempStartValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 175
    new-array v0, v1, [F

    #@7
    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    #@9
    .line 177
    new-array v0, v1, [F

    #@b
    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    #@d
    .line 179
    new-instance v0, Landroid/graphics/Matrix;

    #@f
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@12
    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    #@14
    .line 173
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Matrix;
    .param p3, "endValue"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 183
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    #@2
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@5
    .line 184
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    #@7
    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@a
    .line 185
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 186
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    #@11
    aget v2, v2, v1

    #@13
    iget-object v3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    #@15
    aget v3, v3, v1

    #@17
    sub-float v0, v2, v3

    #@19
    .line 187
    .local v0, "diff":F
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    #@1b
    iget-object v3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    #@1d
    aget v3, v3, v1

    #@1f
    mul-float v4, p1, v0

    #@21
    add-float/2addr v3, v4

    #@22
    aput v3, v2, v1

    #@24
    .line 185
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 189
    .end local v0    # "diff":F
    :cond_0
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    #@29
    iget-object v3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    #@2b
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    #@2e
    .line 190
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    #@30
    return-object v2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 182
    check-cast p2, Landroid/graphics/Matrix;

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Matrix;

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/transition/TransitionUtils$MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

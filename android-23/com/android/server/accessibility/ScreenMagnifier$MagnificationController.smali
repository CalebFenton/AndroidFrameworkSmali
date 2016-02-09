.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnificationController"
.end annotation


# static fields
.field private static final PROPERTY_NAME_MAGNIFICATION_SPEC:Ljava/lang/String; = "magnificationSpec"


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTransformationAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "animationDuration"    # J

    #@0
    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 953
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@b
    .line 955
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@11
    .line 957
    new-instance v2, Landroid/graphics/Rect;

    #@13
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@18
    .line 963
    const-class v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@1a
    const-class v3, Landroid/view/MagnificationSpec;

    #@1c
    .line 964
    const-string/jumbo v4, "magnificationSpec"

    #@1f
    .line 963
    invoke-static {v2, v3, v4}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    #@22
    move-result-object v1

    #@23
    .line 965
    .local v1, "property":Landroid/util/Property;, "Landroid/util/Property<Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Landroid/view/MagnificationSpec;>;"
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    #@28
    .line 981
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Landroid/view/MagnificationSpec;>;"
    const/4 v2, 0x2

    #@29
    new-array v2, v2, [Landroid/view/MagnificationSpec;

    #@2b
    .line 982
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2d
    const/4 v4, 0x0

    #@2e
    aput-object v3, v2, v4

    #@30
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@32
    const/4 v4, 0x1

    #@33
    aput-object v3, v2, v4

    #@35
    .line 981
    invoke-static {p0, v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@3b
    .line 983
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@3d
    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@40
    .line 984
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@42
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    #@44
    const/high16 v4, 0x40200000    # 2.5f

    #@46
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@49
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@4c
    .line 961
    return-void
.end method

.method private animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "fromSpec"    # Landroid/view/MagnificationSpec;
    .param p2, "toSpec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p1, v1, v2

    #@8
    const/4 v2, 0x1

    #@9
    aput-object p2, v1, v2

    #@b
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@e
    .line 1108
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@13
    .line 1106
    return-void
.end method

.method private getMinOffsetX()F
    .locals 3

    #@0
    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 1093
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@4
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@b
    .line 1094
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@e
    move-result v2

    #@f
    int-to-float v1, v2

    #@10
    .line 1095
    .local v1, "viewportWidth":F
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@12
    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    #@14
    mul-float/2addr v2, v1

    #@15
    sub-float v2, v1, v2

    #@17
    return v2
.end method

.method private getMinOffsetY()F
    .locals 3

    #@0
    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 1100
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@4
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@b
    .line 1101
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@e
    move-result v2

    #@f
    int-to-float v1, v2

    #@10
    .line 1102
    .local v1, "viewportHeight":F
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@12
    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    #@14
    mul-float/2addr v2, v1

    #@15
    sub-float v2, v1, v2

    #@17
    return v2
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    #@0
    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    #@0
    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@4
    return v0
.end method

.method public getOffsetY()F
    .locals 1

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@4
    return v0
.end method

.method public getScale()F
    .locals 1

    #@0
    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    return v0
.end method

.method public isMagnifying()Z
    .locals 2

    #@0
    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    cmpl-float v0, v0, v1

    #@8
    if-lez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public offsetMagnifiedRegionCenter(FF)V
    .locals 5
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1041
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@3
    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    #@5
    sub-float v0, v2, p1

    #@7
    .line 1042
    .local v0, "nonNormOffsetX":F
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@9
    .line 1043
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    #@c
    move-result v3

    #@d
    .line 1042
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    #@10
    move-result v3

    #@11
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@14
    move-result v3

    #@15
    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    #@17
    .line 1044
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@19
    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    #@1b
    sub-float v1, v2, p2

    #@1d
    .line 1045
    .local v1, "nonNormOffsetY":F
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@1f
    .line 1046
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    #@22
    move-result v3

    #@23
    .line 1045
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    #@26
    move-result v3

    #@27
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@2a
    move-result v3

    #@2b
    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    #@2d
    .line 1047
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2f
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    #@32
    .line 1040
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 993
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@a
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    #@d
    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@f
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    #@12
    .line 996
    if-eqz p1, :cond_1

    #@14
    .line 997
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@16
    .line 998
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@18
    .line 997
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    #@1b
    .line 1002
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@1d
    .line 1003
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@20
    .line 1004
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@22
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get0(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    #@29
    .line 991
    return-void

    #@2a
    .line 1000
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2c
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    #@2f
    goto :goto_0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    #@4
    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@6
    .line 1120
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@8
    iget v1, p1, Landroid/view/MagnificationSpec;->offsetX:F

    #@a
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@c
    .line 1121
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@e
    iget v1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    #@10
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@12
    .line 1122
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@14
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get11(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManagerInternal;

    #@17
    move-result-object v0

    #@18
    invoke-static {p1}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    #@1f
    .line 1115
    return-void
.end method

.method public setMagnifiedRegionCenter(FFZ)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z

    #@0
    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    #@7
    .line 1035
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 14
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z

    #@0
    .prologue
    .line 1020
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 1021
    .local v3, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@4
    invoke-static {v12}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@7
    move-result-object v12

    #@8
    invoke-virtual {v12, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@b
    .line 1022
    iget-object v11, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@d
    .line 1023
    .local v11, "spec":Landroid/view/MagnificationSpec;
    iget v10, v11, Landroid/view/MagnificationSpec;->scale:F

    #@f
    .line 1024
    .local v10, "oldScale":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetX:F

    #@11
    neg-float v12, v12

    #@12
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@15
    move-result v13

    #@16
    div-int/lit8 v13, v13, 0x2

    #@18
    int-to-float v13, v13

    #@19
    add-float/2addr v12, v13

    #@1a
    div-float v8, v12, v10

    #@1c
    .line 1025
    .local v8, "oldCenterX":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    #@1e
    neg-float v12, v12

    #@1f
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@22
    move-result v13

    #@23
    div-int/lit8 v13, v13, 0x2

    #@25
    int-to-float v13, v13

    #@26
    add-float/2addr v12, v13

    #@27
    div-float v9, v12, v10

    #@29
    .line 1026
    .local v9, "oldCenterY":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetX:F

    #@2b
    neg-float v12, v12

    #@2c
    add-float v12, v12, p2

    #@2e
    div-float v4, v12, v10

    #@30
    .line 1027
    .local v4, "normPivotX":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    #@32
    neg-float v12, v12

    #@33
    add-float v12, v12, p3

    #@35
    div-float v5, v12, v10

    #@37
    .line 1028
    .local v5, "normPivotY":F
    sub-float v12, v8, v4

    #@39
    div-float v13, v10, p1

    #@3b
    mul-float v6, v12, v13

    #@3d
    .line 1029
    .local v6, "offsetX":F
    sub-float v12, v9, v5

    #@3f
    div-float v13, v10, p1

    #@41
    mul-float v7, v12, v13

    #@43
    .line 1030
    .local v7, "offsetY":F
    add-float v1, v4, v6

    #@45
    .line 1031
    .local v1, "centerX":F
    add-float v2, v5, v7

    #@47
    .line 1032
    .local v2, "centerY":F
    move/from16 v0, p4

    #@49
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    #@4c
    .line 1019
    return-void
.end method

.method public setScaleAndMagnifiedRegionCenter(FFFZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1053
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@c
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@e
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1055
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@16
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@18
    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 1057
    return-void

    #@1f
    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1060
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    #@29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@2c
    .line 1066
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->updateMagnificationSpec(FFF)V

    #@2f
    .line 1067
    if-eqz p4, :cond_2

    #@31
    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@33
    .line 1069
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@35
    .line 1068
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    #@38
    .line 1073
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@3a
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get0(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    #@41
    .line 1051
    return-void

    #@42
    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@44
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    #@47
    goto :goto_0
.end method

.method public updateMagnificationSpec(FFF)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "magnifiedCenterX"    # F
    .param p3, "magnifiedCenterY"    # F

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1078
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@3
    .line 1079
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@5
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->-get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@c
    .line 1080
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@e
    iput p1, v5, Landroid/view/MagnificationSpec;->scale:F

    #@10
    .line 1081
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@13
    move-result v4

    #@14
    .line 1082
    .local v4, "viewportWidth":I
    div-int/lit8 v5, v4, 0x2

    #@16
    int-to-float v5, v5

    #@17
    mul-float v6, p2, p1

    #@19
    sub-float v1, v5, v6

    #@1b
    .line 1083
    .local v1, "nonNormOffsetX":F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@1d
    .line 1084
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    #@20
    move-result v6

    #@21
    .line 1083
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    #@24
    move-result v6

    #@25
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@28
    move-result v6

    #@29
    iput v6, v5, Landroid/view/MagnificationSpec;->offsetX:F

    #@2b
    .line 1085
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@2e
    move-result v3

    #@2f
    .line 1086
    .local v3, "viewportHeight":I
    div-int/lit8 v5, v3, 0x2

    #@31
    int-to-float v5, v5

    #@32
    mul-float v6, p3, p1

    #@34
    sub-float v2, v5, v6

    #@36
    .line 1087
    .local v2, "nonNormOffsetY":F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@38
    .line 1088
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    #@3b
    move-result v6

    #@3c
    .line 1087
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    #@3f
    move-result v6

    #@40
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@43
    move-result v6

    #@44
    iput v6, v5, Landroid/view/MagnificationSpec;->offsetY:F

    #@46
    .line 1077
    return-void
.end method

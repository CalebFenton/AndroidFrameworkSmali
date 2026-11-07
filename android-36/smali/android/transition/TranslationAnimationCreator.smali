.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .registers 26
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p9, "transition"    # Landroid/transition/Transition;

    .line 54
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 55
    .local v5, "terminalX":F
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 56
    .local v6, "terminalY":F
    iget-object v0, v8, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v2, 0x10205b1

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [I

    .line 57
    .local v11, "startPosition":[I
    if-eqz v11, :cond_2f

    .line 58
    const/4 v0, 0x0

    aget v0, v11, v0

    sub-int v0, v0, p2

    int-to-float v0, v0

    add-float/2addr v0, v5

    .line 59
    .end local p4    # "startX":F
    .local v0, "startX":F
    const/4 v2, 0x1

    aget v2, v11, v2

    sub-int v2, v2, p3

    int-to-float v2, v2

    add-float/2addr v2, v6

    move v12, v0

    move v13, v2

    .end local p5    # "startY":F
    .local v2, "startY":F
    goto :goto_33

    .line 57
    .end local v0    # "startX":F
    .end local v2    # "startY":F
    .restart local p4    # "startX":F
    .restart local p5    # "startY":F
    :cond_2f
    move/from16 v12, p4

    move/from16 v13, p5

    .line 62
    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v12, "startX":F
    .local v13, "startY":F
    :goto_33
    sub-float v0, v12, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v3, p2, v0

    .line 63
    .local v3, "startPosX":I
    sub-float v0, v13, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v4, p3, v0

    .line 65
    .local v4, "startPosY":I
    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    cmpl-float v0, v12, v9

    if-nez v0, :cond_53

    cmpl-float v0, v13, v10

    if-nez v0, :cond_53

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v14, v0

    .line 71
    .local v14, "path":Landroid/graphics/Path;
    invoke-virtual {v14, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    invoke-virtual {v14, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v1, v0, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 76
    .local v15, "anim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v8, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator-IA;)V

    .line 78
    .local v0, "listener":Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 79
    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 81
    move-object/from16 v2, p8

    invoke-virtual {v15, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object v15
.end method

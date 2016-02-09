.class public Landroid/transition/ChangeImageTransform;
.super Landroid/transition/Transition;
.source "ChangeImageTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeImageTransform$1;,
        Landroid/transition/ChangeImageTransform$2;
    }
.end annotation


# static fields
.field private static ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final TAG:Ljava/lang/String; = "ChangeImageTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 48
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 49
    const-string/jumbo v1, "android:changeImageTransform:matrix"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 50
    const-string/jumbo v1, "android:changeImageTransform:bounds"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 48
    sput-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    #@11
    .line 53
    new-instance v0, Landroid/transition/ChangeImageTransform$1;

    #@13
    invoke-direct {v0}, Landroid/transition/ChangeImageTransform$1;-><init>()V

    #@16
    sput-object v0, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    #@18
    .line 61
    new-instance v0, Landroid/transition/ChangeImageTransform$2;

    #@1a
    const-class v1, Landroid/graphics/Matrix;

    #@1c
    const-string/jumbo v2, "animatedTransform"

    #@1f
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@22
    .line 60
    sput-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@24
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 75
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 19
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 80
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 81
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, v16

    #@8
    instance-of v0, v0, Landroid/widget/ImageView;

    #@a
    move/from16 v17, v0

    #@c
    if-eqz v17, :cond_0

    #@e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v17

    #@12
    if-eqz v17, :cond_1

    #@14
    .line 82
    :cond_0
    return-void

    #@15
    :cond_1
    move-object/from16 v6, v16

    #@17
    .line 84
    check-cast v6, Landroid/widget/ImageView;

    #@19
    .line 85
    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v3

    #@1d
    .line 86
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_2

    #@1f
    .line 87
    return-void

    #@20
    .line 89
    :cond_2
    move-object/from16 v0, p1

    #@22
    iget-object v15, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@24
    .line 91
    .local v15, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    #@27
    move-result v7

    #@28
    .line 92
    .local v7, "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    #@2b
    move-result v14

    #@2c
    .line 93
    .local v14, "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    #@2f
    move-result v10

    #@30
    .line 94
    .local v10, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    #@33
    move-result v1

    #@34
    .line 96
    .local v1, "bottom":I
    new-instance v2, Landroid/graphics/Rect;

    #@36
    invoke-direct {v2, v7, v14, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@39
    .line 97
    .local v2, "bounds":Landroid/graphics/Rect;
    const-string/jumbo v17, "android:changeImageTransform:bounds"

    #@3c
    move-object/from16 v0, v17

    #@3e
    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 99
    invoke-virtual {v6}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@44
    move-result-object v11

    #@45
    .line 100
    .local v11, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget-object v17, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@47
    move-object/from16 v0, v17

    #@49
    if-ne v11, v0, :cond_5

    #@4b
    .line 101
    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@4e
    move-result-object v8

    #@4f
    .line 102
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    #@52
    move-result v17

    #@53
    if-nez v17, :cond_3

    #@55
    .line 103
    new-instance v9, Landroid/graphics/Matrix;

    #@57
    invoke-direct {v9, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@5a
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object v8, v9

    #@5b
    .line 119
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    const-string/jumbo v17, "android:changeImageTransform:matrix"

    #@5e
    move-object/from16 v0, v17

    #@60
    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 79
    return-void

    #@64
    .line 105
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@67
    move-result v5

    #@68
    .line 106
    .local v5, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@6b
    move-result v4

    #@6c
    .line 107
    .local v4, "drawableHeight":I
    if-lez v5, :cond_4

    #@6e
    if-lez v4, :cond_4

    #@70
    .line 108
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@73
    move-result v17

    #@74
    move/from16 v0, v17

    #@76
    int-to-float v0, v0

    #@77
    move/from16 v17, v0

    #@79
    int-to-float v0, v5

    #@7a
    move/from16 v18, v0

    #@7c
    div-float v12, v17, v18

    #@7e
    .line 109
    .local v12, "scaleX":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@81
    move-result v17

    #@82
    move/from16 v0, v17

    #@84
    int-to-float v0, v0

    #@85
    move/from16 v17, v0

    #@87
    int-to-float v0, v4

    #@88
    move/from16 v18, v0

    #@8a
    div-float v13, v17, v18

    #@8c
    .line 110
    .local v13, "scaleY":F
    new-instance v8, Landroid/graphics/Matrix;

    #@8e
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    #@91
    .line 111
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    #@94
    goto :goto_0

    #@95
    .line 113
    .end local v12    # "scaleX":F
    .end local v13    # "scaleY":F
    :cond_4
    const/4 v8, 0x0

    #@96
    .local v8, "matrix":Landroid/graphics/Matrix;
    goto :goto_0

    #@97
    .line 117
    .end local v4    # "drawableHeight":I
    .end local v5    # "drawableWidth":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_5
    new-instance v8, Landroid/graphics/Matrix;

    #@99
    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@9c
    move-result-object v17

    #@9d
    move-object/from16 v0, v17

    #@9f
    invoke-direct {v8, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@a2
    .local v8, "matrix":Landroid/graphics/Matrix;
    goto :goto_0
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "startMatrix"    # Landroid/graphics/Matrix;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 197
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@2
    .line 198
    new-instance v1, Landroid/transition/TransitionUtils$MatrixEvaluator;

    #@4
    invoke-direct {v1}, Landroid/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    #@7
    .line 197
    const/4 v2, 0x2

    #@8
    new-array v2, v2, [Landroid/graphics/Matrix;

    #@a
    .line 198
    const/4 v3, 0x0

    #@b
    aput-object p2, v2, v3

    #@d
    const/4 v3, 0x1

    #@e
    aput-object p3, v2, v3

    #@10
    .line 197
    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 191
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@3
    .line 192
    sget-object v1, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    #@5
    .line 191
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Landroid/graphics/Matrix;

    #@8
    .line 192
    const/4 v3, 0x0

    #@9
    aput-object v4, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object v4, v2, v3

    #@e
    .line 191
    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 128
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 123
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 150
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 151
    :cond_0
    const/4 v10, 0x0

    #@5
    return-object v10

    #@6
    .line 153
    :cond_1
    iget-object v10, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string/jumbo v11, "android:changeImageTransform:bounds"

    #@b
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v8

    #@f
    check-cast v8, Landroid/graphics/Rect;

    #@11
    .line 154
    .local v8, "startBounds":Landroid/graphics/Rect;
    iget-object v10, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@13
    const-string/jumbo v11, "android:changeImageTransform:bounds"

    #@16
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/graphics/Rect;

    #@1c
    .line 155
    .local v4, "endBounds":Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    #@1e
    if-nez v4, :cond_3

    #@20
    .line 156
    :cond_2
    const/4 v10, 0x0

    #@21
    return-object v10

    #@22
    .line 159
    :cond_3
    iget-object v10, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@24
    const-string/jumbo v11, "android:changeImageTransform:matrix"

    #@27
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Landroid/graphics/Matrix;

    #@2d
    .line 160
    .local v9, "startMatrix":Landroid/graphics/Matrix;
    iget-object v10, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2f
    const-string/jumbo v11, "android:changeImageTransform:matrix"

    #@32
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Landroid/graphics/Matrix;

    #@38
    .line 162
    .local v5, "endMatrix":Landroid/graphics/Matrix;
    if-nez v9, :cond_4

    #@3a
    if-nez v5, :cond_4

    #@3c
    const/4 v7, 0x1

    #@3d
    .line 165
    :goto_0
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v10

    #@41
    if-eqz v10, :cond_6

    #@43
    if-eqz v7, :cond_6

    #@45
    .line 166
    const/4 v10, 0x0

    #@46
    return-object v10

    #@47
    .line 163
    :cond_4
    if-eqz v9, :cond_5

    #@49
    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v7

    #@4d
    .local v7, "matricesEqual":Z
    goto :goto_0

    #@4e
    .end local v7    # "matricesEqual":Z
    :cond_5
    const/4 v7, 0x0

    #@4f
    .local v7, "matricesEqual":Z
    goto :goto_0

    #@50
    .line 169
    .end local v7    # "matricesEqual":Z
    :cond_6
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@52
    check-cast v6, Landroid/widget/ImageView;

    #@54
    .line 170
    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object v1

    #@58
    .line 171
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5b
    move-result v3

    #@5c
    .line 172
    .local v3, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5f
    move-result v2

    #@60
    .line 175
    .local v2, "drawableHeight":I
    if-eqz v3, :cond_7

    #@62
    if-nez v2, :cond_8

    #@64
    .line 176
    :cond_7
    invoke-direct {p0, v6}, Landroid/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    #@67
    move-result-object v0

    #@68
    .line 187
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_1
    return-object v0

    #@69
    .line 178
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_8
    if-nez v9, :cond_9

    #@6b
    .line 179
    sget-object v9, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@6d
    .line 181
    :cond_9
    if-nez v5, :cond_a

    #@6f
    .line 182
    sget-object v5, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@71
    .line 184
    :cond_a
    sget-object v10, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    #@73
    invoke-virtual {v10, v6, v9}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@76
    .line 185
    invoke-direct {p0, v6, v9, v5}, Landroid/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    #@79
    move-result-object v0

    #@7a
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    sget-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

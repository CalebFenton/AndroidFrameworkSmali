.class public Landroid/transition/ChangeImageTransform;
.super Landroid/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static greylist-max-o ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final greylist-max-o PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ChangeImageTransform"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    const-string v0, "android:changeImageTransform:matrix"

    const-string v1, "android:changeImageTransform:bounds"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroid/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 62
    new-instance v0, Landroid/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 18
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 82
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 83
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_70

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_70

    .line 86
    :cond_f
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    .line 87
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 88
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_19

    .line 89
    return-void

    .line 91
    :cond_19
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 93
    .local v4, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 94
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 95
    .local v6, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 96
    .local v7, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 98
    .local v8, "bottom":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .local v9, "bounds":Landroid/graphics/Rect;
    const-string v10, "android:changeImageTransform:bounds"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v10

    .line 102
    .local v10, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 103
    .local v11, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 104
    .local v12, "drawableHeight":I
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v13, :cond_60

    if-lez v11, :cond_60

    if-lez v12, :cond_60

    .line 105
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v11

    div-float/2addr v13, v14

    .line 106
    .local v13, "scaleX":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v12

    div-float/2addr v14, v15

    .line 107
    .local v14, "scaleY":F
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .local v15, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v15, v13, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 109
    .end local v13    # "scaleX":F
    .end local v14    # "scaleY":F
    goto :goto_6a

    .line 110
    .end local v15    # "matrix":Landroid/graphics/Matrix;
    :cond_60
    new-instance v13, Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v15, v13

    .line 112
    .restart local v15    # "matrix":Landroid/graphics/Matrix;
    :goto_6a
    const-string v13, "android:changeImageTransform:matrix"

    invoke-interface {v4, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void

    .line 84
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v11    # "drawableWidth":I
    .end local v12    # "drawableHeight":I
    .end local v15    # "matrix":Landroid/graphics/Matrix;
    :cond_70
    :goto_70
    return-void
.end method

.method private greylist-max-o createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "startMatrix"    # Landroid/graphics/Matrix;
    .param p3, "endMatrix"    # Landroid/graphics/Matrix;

    .line 182
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v1, Landroid/transition/TransitionUtils$MatrixEvaluator;

    invoke-direct {v1}, Landroid/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 176
    sget-object v0, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v1, Landroid/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 122
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 123
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 117
    invoke-direct {p0, p1}, Landroid/transition/ChangeImageTransform;->captureValues(Landroid/transition/TransitionValues;)V

    .line 118
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 145
    const/4 v0, 0x0

    if-eqz p2, :cond_65

    if-nez p3, :cond_6

    goto :goto_65

    .line 148
    :cond_6
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 149
    .local v1, "startBounds":Landroid/graphics/Rect;
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 150
    .local v2, "endBounds":Landroid/graphics/Rect;
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeImageTransform:matrix"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    .line 151
    .local v3, "startMatrix":Landroid/graphics/Matrix;
    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    .line 152
    .local v4, "endMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_64

    if-eqz v2, :cond_64

    if-eqz v3, :cond_64

    if-nez v4, :cond_33

    goto :goto_64

    .line 156
    :cond_33
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 157
    return-object v0

    .line 160
    :cond_40
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 162
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 163
    .local v6, "drawableWidth":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 166
    .local v7, "drawableHeight":I
    if-lez v6, :cond_5f

    if-gtz v7, :cond_55

    goto :goto_5f

    .line 169
    :cond_55
    sget-object v8, Landroid/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    invoke-virtual {v8, v0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0, v0, v3, v4}, Landroid/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .local v8, "animator":Landroid/animation/ObjectAnimator;
    goto :goto_63

    .line 167
    .end local v8    # "animator":Landroid/animation/ObjectAnimator;
    :cond_5f
    :goto_5f
    invoke-direct {p0, v0}, Landroid/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 172
    .restart local v8    # "animator":Landroid/animation/ObjectAnimator;
    :goto_63
    return-object v8

    .line 153
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "drawableWidth":I
    .end local v7    # "drawableHeight":I
    .end local v8    # "animator":Landroid/animation/ObjectAnimator;
    :cond_64
    :goto_64
    return-object v0

    .line 146
    .end local v1    # "startBounds":Landroid/graphics/Rect;
    .end local v2    # "endBounds":Landroid/graphics/Rect;
    .end local v3    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "endMatrix":Landroid/graphics/Matrix;
    :cond_65
    :goto_65
    return-object v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 127
    sget-object v0, Landroid/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.class public Landroid/transition/ChangeTransform;
.super Landroid/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeTransform$Transforms;,
        Landroid/transition/ChangeTransform$GhostListener;,
        Landroid/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroid/transition/ChangeTransform$1;,
        Landroid/transition/ChangeTransform$2;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mUseOverlay:Z


# direct methods
.method static synthetic -get0(Landroid/transition/ChangeTransform;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    #@0
    .prologue
    invoke-static/range {p0 .. p8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 56
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 57
    const-string/jumbo v1, "android:changeTransform:matrix"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 58
    const-string/jumbo v1, "android:changeTransform:transforms"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 59
    const-string/jumbo v1, "android:changeTransform:parentMatrix"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 56
    sput-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    #@17
    .line 66
    new-instance v0, Landroid/transition/ChangeTransform$1;

    #@19
    const-class v1, [F

    #@1b
    const-string/jumbo v2, "nonTranslations"

    #@1e
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@21
    .line 65
    sput-object v0, Landroid/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@23
    .line 82
    new-instance v0, Landroid/transition/ChangeTransform$2;

    #@25
    const-class v1, Landroid/graphics/PointF;

    #@27
    const-string/jumbo v2, "translations"

    #@2a
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@2d
    .line 81
    sput-object v0, Landroid/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@2f
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 98
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@4
    .line 94
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@6
    .line 95
    iput-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@8
    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@d
    iput-object v0, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    #@f
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 94
    iput-boolean v2, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@6
    .line 95
    iput-boolean v2, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@8
    .line 96
    new-instance v1, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@d
    iput-object v1, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    #@f
    .line 102
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeTransform:[I

    #@11
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18
    move-result v1

    #@19
    iput-boolean v1, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@1b
    .line 104
    const/4 v1, 0x0

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@22
    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@25
    .line 100
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 9
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 185
    iget-object v5, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 186
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v6

    #@6
    const/16 v7, 0x8

    #@8
    if-ne v6, v7, :cond_0

    #@a
    .line 187
    return-void

    #@b
    .line 189
    :cond_0
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@d
    const-string/jumbo v7, "android:changeTransform:parent"

    #@10
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@13
    move-result-object v8

    #@14
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 190
    new-instance v4, Landroid/transition/ChangeTransform$Transforms;

    #@19
    invoke-direct {v4, v5}, Landroid/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    #@1c
    .line 191
    .local v4, "transforms":Landroid/transition/ChangeTransform$Transforms;
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1e
    const-string/jumbo v7, "android:changeTransform:transforms"

    #@21
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 192
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@27
    move-result-object v0

    #@28
    .line 193
    .local v0, "matrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_1

    #@2a
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_3

    #@30
    .line 194
    :cond_1
    const/4 v0, 0x0

    #@31
    .line 198
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@33
    const-string/jumbo v7, "android:changeTransform:matrix"

    #@36
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 199
    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 200
    new-instance v3, Landroid/graphics/Matrix;

    #@3f
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@42
    .line 201
    .local v3, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/view/ViewGroup;

    #@48
    .line 202
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    #@4b
    .line 203
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    #@4e
    move-result v6

    #@4f
    neg-int v6, v6

    #@50
    int-to-float v6, v6

    #@51
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    #@54
    move-result v7

    #@55
    neg-int v7, v7

    #@56
    int-to-float v7, v7

    #@57
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@5a
    .line 204
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@5c
    const-string/jumbo v7, "android:changeTransform:parentMatrix"

    #@5f
    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 205
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@64
    const-string/jumbo v7, "android:changeTransform:intermediateMatrix"

    #@67
    .line 206
    const v8, 0x1020052

    #@6a
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@6d
    move-result-object v8

    #@6e
    .line 205
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 207
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@73
    const-string/jumbo v7, "android:changeTransform:intermediateParentMatrix"

    #@76
    .line 208
    const v8, 0x1020053

    #@79
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@7c
    move-result-object v8

    #@7d
    .line 207
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 210
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "parentMatrix":Landroid/graphics/Matrix;
    :cond_2
    return-void

    #@81
    .line 196
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    new-instance v1, Landroid/graphics/Matrix;

    #@83
    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@86
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v1, "matrix":Landroid/graphics/Matrix;
    move-object v0, v1

    #@87
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    goto :goto_0
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 367
    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 369
    .local v5, "view":Landroid/view/View;
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@4
    const-string/jumbo v7, "android:changeTransform:parentMatrix"

    #@7
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/graphics/Matrix;

    #@d
    .line 370
    .local v0, "endMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    #@f
    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@12
    .line 371
    .local v3, "localEndMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    #@15
    .line 373
    invoke-static {v5, p1, v3}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    #@18
    move-result-object v1

    #@19
    .line 375
    .local v1, "ghostView":Landroid/view/GhostView;
    move-object v4, p0

    #@1a
    .line 376
    .local v4, "outerTransition":Landroid/transition/Transition;
    :goto_0
    iget-object v6, v4, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@1c
    if-eqz v6, :cond_0

    #@1e
    .line 377
    iget-object v4, v4, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@20
    goto :goto_0

    #@21
    .line 379
    :cond_0
    new-instance v2, Landroid/transition/ChangeTransform$GhostListener;

    #@23
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@25
    invoke-direct {v2, v5, v6, v1}, Landroid/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/GhostView;)V

    #@28
    .line 380
    .local v2, "listener":Landroid/transition/ChangeTransform$GhostListener;
    invoke-virtual {v4, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@2b
    .line 382
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2d
    iget-object v7, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2f
    if-eq v6, v7, :cond_1

    #@31
    .line 383
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@33
    const/4 v7, 0x0

    #@34
    invoke-virtual {v6, v7}, Landroid/view/View;->setTransitionAlpha(F)V

    #@37
    .line 385
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    #@39
    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    #@3c
    .line 366
    return-void
.end method

.method private createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 21
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;
    .param p3, "handleParentChange"    # Z

    #@0
    .prologue
    .line 265
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@4
    const-string/jumbo v5, "android:changeTransform:matrix"

    #@7
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v14

    #@b
    check-cast v14, Landroid/graphics/Matrix;

    #@d
    .line 266
    .local v14, "startMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    #@f
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@11
    const-string/jumbo v5, "android:changeTransform:matrix"

    #@14
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v11

    #@18
    check-cast v11, Landroid/graphics/Matrix;

    #@1a
    .line 268
    .local v11, "endMatrix":Landroid/graphics/Matrix;
    if-nez v14, :cond_0

    #@1c
    .line 269
    sget-object v14, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@1e
    .line 272
    :cond_0
    if-nez v11, :cond_1

    #@20
    .line 273
    sget-object v11, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@22
    .line 276
    :cond_1
    invoke-virtual {v14, v11}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_2

    #@28
    .line 277
    const/4 v4, 0x0

    #@29
    return-object v4

    #@2a
    .line 280
    :cond_2
    move-object/from16 v0, p2

    #@2c
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2e
    const-string/jumbo v5, "android:changeTransform:transforms"

    #@31
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v8

    #@35
    check-cast v8, Landroid/transition/ChangeTransform$Transforms;

    #@37
    .line 283
    .local v8, "transforms":Landroid/transition/ChangeTransform$Transforms;
    move-object/from16 v0, p2

    #@39
    iget-object v7, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@3b
    .line 284
    .local v7, "view":Landroid/view/View;
    invoke-static {v7}, Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    #@3e
    .line 286
    const/16 v4, 0x9

    #@40
    new-array v15, v4, [F

    #@42
    .line 287
    .local v15, "startMatrixValues":[F
    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->getValues([F)V

    #@45
    .line 288
    const/16 v4, 0x9

    #@47
    new-array v12, v4, [F

    #@49
    .line 289
    .local v12, "endMatrixValues":[F
    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->getValues([F)V

    #@4c
    .line 291
    new-instance v9, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@4e
    invoke-direct {v9, v7, v15}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    #@51
    .line 294
    .local v9, "pathAnimatorMatrix":Landroid/transition/ChangeTransform$PathAnimatorMatrix;
    sget-object v4, Landroid/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@53
    new-instance v5, Landroid/animation/FloatArrayEvaluator;

    #@55
    const/16 v18, 0x9

    #@57
    move/from16 v0, v18

    #@59
    new-array v0, v0, [F

    #@5b
    move-object/from16 v18, v0

    #@5d
    move-object/from16 v0, v18

    #@5f
    invoke-direct {v5, v0}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    #@62
    .line 293
    const/16 v18, 0x2

    #@64
    move/from16 v0, v18

    #@66
    new-array v0, v0, [[F

    #@68
    move-object/from16 v18, v0

    #@6a
    .line 295
    const/16 v19, 0x0

    #@6c
    aput-object v15, v18, v19

    #@6e
    const/16 v19, 0x1

    #@70
    aput-object v12, v18, v19

    #@72
    .line 293
    move-object/from16 v0, v18

    #@74
    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@77
    move-result-object v17

    #@78
    .line 296
    .local v17, "valuesProperty":Landroid/animation/PropertyValuesHolder;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeTransform;->getPathMotion()Landroid/transition/PathMotion;

    #@7b
    move-result-object v4

    #@7c
    const/4 v5, 0x2

    #@7d
    aget v5, v15, v5

    #@7f
    .line 297
    const/16 v18, 0x5

    #@81
    aget v18, v15, v18

    #@83
    const/16 v19, 0x2

    #@85
    aget v19, v12, v19

    #@87
    .line 298
    const/16 v20, 0x5

    #@89
    aget v20, v12, v20

    #@8b
    .line 296
    move/from16 v0, v18

    #@8d
    move/from16 v1, v19

    #@8f
    move/from16 v2, v20

    #@91
    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@94
    move-result-object v13

    #@95
    .line 300
    .local v13, "path":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    #@97
    const/4 v5, 0x0

    #@98
    .line 299
    invoke-static {v4, v5, v13}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@9b
    move-result-object v16

    #@9c
    .line 301
    .local v16, "translationProperty":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    #@9d
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    #@9f
    .line 302
    const/4 v5, 0x0

    #@a0
    aput-object v17, v4, v5

    #@a2
    const/4 v5, 0x1

    #@a3
    aput-object v16, v4, v5

    #@a5
    .line 301
    invoke-static {v9, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@a8
    move-result-object v10

    #@a9
    .line 304
    .local v10, "animator":Landroid/animation/ObjectAnimator;
    move-object v6, v11

    #@aa
    .line 306
    .local v6, "finalEndMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/transition/ChangeTransform$3;

    #@ac
    move-object/from16 v4, p0

    #@ae
    move/from16 v5, p3

    #@b0
    invoke-direct/range {v3 .. v9}, Landroid/transition/ChangeTransform$3;-><init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V

    #@b3
    .line 347
    .local v3, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v10, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@b6
    .line 348
    invoke-virtual {v10, v3}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    #@b9
    .line 349
    return-object v10
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 3
    .param p1, "startParent"    # Landroid/view/ViewGroup;
    .param p2, "endParent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 353
    const/4 v1, 0x0

    #@1
    .line 354
    .local v1, "parentsMatch":Z
    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    invoke-virtual {p0, p2}, Landroid/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 357
    const/4 v2, 0x1

    #@e
    invoke-virtual {p0, p1, v2}, Landroid/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@11
    move-result-object v0

    #@12
    .line 358
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v0, :cond_0

    #@14
    .line 359
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@16
    if-ne p2, v2, :cond_3

    #@18
    const/4 v1, 0x1

    #@19
    .line 362
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    :goto_0
    return v1

    #@1a
    .line 355
    :cond_1
    if-ne p1, p2, :cond_2

    #@1c
    const/4 v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    :cond_2
    const/4 v1, 0x0

    #@1f
    goto :goto_0

    #@20
    .line 359
    .restart local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_3
    const/4 v1, 0x0

    #@21
    goto :goto_0
.end method

.method private static setIdentityTransforms(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    move-object v0, p0

    #@4
    move v2, v1

    #@5
    move v3, v1

    #@6
    move v5, v4

    #@7
    move v6, v1

    #@8
    move v7, v1

    #@9
    move v8, v1

    #@a
    .line 408
    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    #@d
    .line 407
    return-void
.end method

.method private setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 389
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string/jumbo v5, "android:changeTransform:parentMatrix"

    #@5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/graphics/Matrix;

    #@b
    .line 390
    .local v0, "endParentMatrix":Landroid/graphics/Matrix;
    iget-object v4, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@d
    const v5, 0x1020053

    #@10
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@13
    .line 392
    iget-object v3, p0, Landroid/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    #@15
    .line 393
    .local v3, "toLocal":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    #@18
    .line 394
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@1b
    .line 396
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1d
    const-string/jumbo v5, "android:changeTransform:matrix"

    #@20
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/graphics/Matrix;

    #@26
    .line 397
    .local v1, "startLocal":Landroid/graphics/Matrix;
    if-nez v1, :cond_0

    #@28
    .line 398
    new-instance v1, Landroid/graphics/Matrix;

    #@2a
    .end local v1    # "startLocal":Landroid/graphics/Matrix;
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@2d
    .line 399
    .restart local v1    # "startLocal":Landroid/graphics/Matrix;
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2f
    const-string/jumbo v5, "android:changeTransform:matrix"

    #@32
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 402
    :cond_0
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@37
    const-string/jumbo v5, "android:changeTransform:parentMatrix"

    #@3a
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Landroid/graphics/Matrix;

    #@40
    .line 403
    .local v2, "startParentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@43
    .line 404
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@46
    .line 388
    return-void
.end method

.method private static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "translationZ"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "rotationX"    # F
    .param p7, "rotationY"    # F
    .param p8, "rotationZ"    # F

    #@0
    .prologue
    .line 414
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    #@3
    .line 415
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    #@6
    .line 416
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationZ(F)V

    #@9
    .line 417
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    #@c
    .line 418
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    #@f
    .line 419
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    #@12
    .line 420
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    #@15
    .line 421
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    #@18
    .line 413
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 219
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/transition/ChangeTransform;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 214
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 226
    if-eqz p2, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 229
    :cond_0
    return-object v8

    #@6
    .line 227
    :cond_1
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string/jumbo v7, "android:changeTransform:parent"

    #@b
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_0

    #@11
    .line 228
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@13
    const-string/jumbo v7, "android:changeTransform:parent"

    #@16
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 232
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1e
    const-string/jumbo v7, "android:changeTransform:parent"

    #@21
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/view/ViewGroup;

    #@27
    .line 233
    .local v3, "startParent":Landroid/view/ViewGroup;
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@29
    const-string/jumbo v7, "android:changeTransform:parent"

    #@2c
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/view/ViewGroup;

    #@32
    .line 234
    .local v0, "endParent":Landroid/view/ViewGroup;
    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@34
    if-eqz v6, :cond_2

    #@36
    invoke-direct {p0, v3, v0}, Landroid/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_7

    #@3c
    :cond_2
    const/4 v1, 0x0

    #@3d
    .line 236
    .local v1, "handleParentChange":Z
    :goto_0
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@3f
    const-string/jumbo v7, "android:changeTransform:intermediateMatrix"

    #@42
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/graphics/Matrix;

    #@48
    .line 237
    .local v2, "startMatrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_3

    #@4a
    .line 238
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@4c
    const-string/jumbo v7, "android:changeTransform:matrix"

    #@4f
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 242
    :cond_3
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@54
    const-string/jumbo v7, "android:changeTransform:intermediateParentMatrix"

    #@57
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Landroid/graphics/Matrix;

    #@5d
    .line 243
    .local v4, "startParentMatrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_4

    #@5f
    .line 244
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@61
    const-string/jumbo v7, "android:changeTransform:parentMatrix"

    #@64
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 248
    :cond_4
    if-eqz v1, :cond_5

    #@69
    .line 249
    invoke-direct {p0, p2, p3}, Landroid/transition/ChangeTransform;->setMatricesForParent(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    #@6c
    .line 253
    :cond_5
    invoke-direct {p0, p2, p3, v1}, Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    #@6f
    move-result-object v5

    #@70
    .line 256
    .local v5, "transformAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_6

    #@72
    if-eqz v5, :cond_6

    #@74
    iget-boolean v6, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@76
    if-eqz v6, :cond_6

    #@78
    .line 257
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    #@7b
    .line 260
    :cond_6
    return-object v5

    #@7c
    .line 234
    .end local v1    # "handleParentChange":Z
    .end local v2    # "startMatrix":Landroid/graphics/Matrix;
    .end local v4    # "startParentMatrix":Landroid/graphics/Matrix;
    .end local v5    # "transformAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    const/4 v1, 0x1

    #@7d
    .restart local v1    # "handleParentChange":Z
    goto :goto_0
.end method

.method public getReparent()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@2
    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 181
    sget-object v0, Landroid/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    #@0
    .prologue
    .line 176
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mReparent:Z

    #@2
    .line 175
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0
    .param p1, "reparentWithOverlay"    # Z

    #@0
    .prologue
    .line 149
    iput-boolean p1, p0, Landroid/transition/ChangeTransform;->mUseOverlay:Z

    #@2
    .line 148
    return-void
.end method

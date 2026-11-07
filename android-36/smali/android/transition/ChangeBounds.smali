.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final greylist-max-p BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final greylist-max-p POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final greylist-max-o PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final greylist-max-o PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final greylist-max-o PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final greylist-max-o TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field greylist-max-o mReparent:Z

.field greylist-max-o mResizeClip:Z

.field greylist-max-o tempLocation:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 63
    const-string v0, "android:changeBounds:windowX"

    const-string v1, "android:changeBounds:windowY"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:clip"

    const-string v4, "android:changeBounds:parent"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 89
    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 102
    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 116
    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 133
    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 151
    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 173
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 170
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 170
    iput-boolean v0, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 180
    sget-object v1, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 181
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 182
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    invoke-virtual {p0, v0}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    .line 184
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 9
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 239
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 241
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    .line 242
    :cond_14
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_68

    .line 246
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 247
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_68
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_77

    .line 251
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_77
    return-void
.end method

.method private greylist-max-o parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 8
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .line 267
    const/4 v0, 0x1

    .line 268
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1a

    .line 269
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 270
    .local v2, "endValues":Landroid/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_13

    .line 271
    if-ne p1, p2, :cond_10

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    move v0, v1

    goto :goto_1a

    .line 273
    :cond_13
    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    move v0, v1

    .line 276
    .end local v2    # "endValues":Landroid/transition/TransitionValues;
    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 263
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 264
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 258
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 259
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 39
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 284
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    if-eqz v8, :cond_392

    if-nez v9, :cond_e

    const/16 v17, 0x0

    goto/16 :goto_394

    .line 287
    :cond_e
    iget-object v10, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 288
    .local v10, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v11, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 289
    .local v11, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "android:changeBounds:parent"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup;

    .line 290
    .local v12, "startParent":Landroid/view/ViewGroup;
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/view/ViewGroup;

    .line 291
    .local v13, "endParent":Landroid/view/ViewGroup;
    if-eqz v12, :cond_387

    if-nez v13, :cond_30

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    goto/16 :goto_38f

    .line 294
    :cond_30
    iget-object v2, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 295
    .local v2, "view":Landroid/view/View;
    invoke-direct {v1, v12, v13}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2ac

    .line 296
    iget-object v3, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:bounds"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/Rect;

    .line 297
    .local v14, "startBounds":Landroid/graphics/Rect;
    iget-object v3, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/graphics/Rect;

    .line 298
    .local v15, "endBounds":Landroid/graphics/Rect;
    iget v3, v14, Landroid/graphics/Rect;->left:I

    .line 299
    .local v3, "startLeft":I
    iget v6, v15, Landroid/graphics/Rect;->left:I

    .line 300
    .local v6, "endLeft":I
    iget v7, v14, Landroid/graphics/Rect;->top:I

    .line 301
    .local v7, "startTop":I
    const/16 v16, 0x0

    iget v5, v15, Landroid/graphics/Rect;->top:I

    .line 302
    .local v5, "endTop":I
    iget v0, v14, Landroid/graphics/Rect;->right:I

    .line 303
    .local v0, "startRight":I
    iget v4, v15, Landroid/graphics/Rect;->right:I

    .line 304
    .local v4, "endRight":I
    move-object/from16 v19, v10

    .end local v10    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 305
    .local v10, "startBottom":I
    move-object/from16 v20, v11

    .end local v11    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v20, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v11, v15, Landroid/graphics/Rect;->bottom:I

    .line 306
    .local v11, "endBottom":I
    move-object/from16 v21, v12

    .end local v12    # "startParent":Landroid/view/ViewGroup;
    .local v21, "startParent":Landroid/view/ViewGroup;
    sub-int v12, v0, v3

    .line 307
    .local v12, "startWidth":I
    move-object/from16 v22, v13

    .end local v13    # "endParent":Landroid/view/ViewGroup;
    .local v22, "endParent":Landroid/view/ViewGroup;
    sub-int v13, v10, v7

    .line 308
    .local v13, "startHeight":I
    move-object/from16 v23, v14

    .end local v14    # "startBounds":Landroid/graphics/Rect;
    .local v23, "startBounds":Landroid/graphics/Rect;
    sub-int v14, v4, v6

    .line 309
    .local v14, "endWidth":I
    move-object/from16 v24, v15

    .end local v15    # "endBounds":Landroid/graphics/Rect;
    .local v24, "endBounds":Landroid/graphics/Rect;
    sub-int v15, v11, v5

    .line 310
    .local v15, "endHeight":I
    move/from16 v25, v13

    .end local v13    # "startHeight":I
    .local v25, "startHeight":I
    iget-object v13, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeBounds:clip"

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 311
    .local v13, "startClip":Landroid/graphics/Rect;
    move/from16 v26, v15

    .end local v15    # "endHeight":I
    .local v26, "endHeight":I
    iget-object v15, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 312
    .local v8, "endClip":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 313
    .local v15, "numChanges":I
    if-eqz v12, :cond_8d

    if-nez v25, :cond_91

    :cond_8d
    if-eqz v14, :cond_9d

    if-eqz v26, :cond_9d

    .line 314
    :cond_91
    if-ne v3, v6, :cond_95

    if-eq v7, v5, :cond_97

    :cond_95
    add-int/lit8 v15, v15, 0x1

    .line 315
    :cond_97
    if-ne v0, v4, :cond_9b

    if-eq v10, v11, :cond_9d

    :cond_9b
    add-int/lit8 v15, v15, 0x1

    .line 317
    :cond_9d
    if-eqz v13, :cond_a5

    invoke-virtual {v13, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a9

    :cond_a5
    if-nez v13, :cond_ab

    if-eqz v8, :cond_ab

    .line 319
    :cond_a9
    add-int/lit8 v15, v15, 0x1

    .line 321
    :cond_ab
    if-lez v15, :cond_28b

    .line 322
    move-object/from16 v27, v8

    .end local v8    # "endClip":Landroid/graphics/Rect;
    .local v27, "endClip":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_cc

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 324
    .local v8, "parent":Landroid/view/ViewGroup;
    move-object/from16 v28, v13

    const/4 v13, 0x1

    .end local v13    # "startClip":Landroid/graphics/Rect;
    .local v28, "startClip":Landroid/graphics/Rect;
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 325
    new-instance v13, Landroid/transition/ChangeBounds$7;

    invoke-direct {v13, v1, v8}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 352
    .local v13, "transitionListener":Landroid/transition/Transition$TransitionListener;
    invoke-virtual {v1, v13}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_ce

    .line 322
    .end local v8    # "parent":Landroid/view/ViewGroup;
    .end local v28    # "startClip":Landroid/graphics/Rect;
    .local v13, "startClip":Landroid/graphics/Rect;
    :cond_cc
    move-object/from16 v28, v13

    .line 355
    .end local v13    # "startClip":Landroid/graphics/Rect;
    .restart local v28    # "startClip":Landroid/graphics/Rect;
    :goto_ce
    iget-boolean v8, v1, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-nez v8, :cond_1cf

    .line 356
    invoke-virtual {v2, v3, v7, v0, v10}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 357
    const/4 v8, 0x2

    if-ne v15, v8, :cond_17a

    .line 358
    if-ne v12, v14, :cond_116

    move/from16 v13, v25

    move/from16 v8, v26

    .end local v25    # "startHeight":I
    .end local v26    # "endHeight":I
    .local v8, "endHeight":I
    .local v13, "startHeight":I
    if-ne v13, v8, :cond_10d

    .line 359
    move/from16 v26, v15

    .end local v15    # "numChanges":I
    .local v26, "numChanges":I
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v15

    int-to-float v9, v3

    move/from16 v29, v8

    .end local v8    # "endHeight":I
    .local v29, "endHeight":I
    int-to-float v8, v7

    move/from16 v30, v13

    .end local v13    # "startHeight":I
    .local v30, "startHeight":I
    int-to-float v13, v6

    move/from16 v31, v12

    .end local v12    # "startWidth":I
    .local v31, "startWidth":I
    int-to-float v12, v5

    invoke-virtual {v15, v9, v8, v13, v12}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v8

    .line 361
    .local v8, "topLeftPath":Landroid/graphics/Path;
    sget-object v9, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v12, 0x0

    invoke-static {v2, v9, v12, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 363
    .local v8, "anim":Landroid/animation/Animator;
    move v13, v11

    move v11, v7

    move v7, v13

    move/from16 v18, v0

    move/from16 v32, v14

    move/from16 v14, v29

    move/from16 v13, v30

    move/from16 v29, v3

    move/from16 v30, v4

    move v4, v6

    goto/16 :goto_28a

    .line 358
    .end local v26    # "numChanges":I
    .end local v29    # "endHeight":I
    .end local v30    # "startHeight":I
    .end local v31    # "startWidth":I
    .local v8, "endHeight":I
    .restart local v12    # "startWidth":I
    .restart local v13    # "startHeight":I
    .restart local v15    # "numChanges":I
    :cond_10d
    move/from16 v29, v8

    move/from16 v31, v12

    move/from16 v30, v13

    move/from16 v26, v15

    .end local v8    # "endHeight":I
    .end local v12    # "startWidth":I
    .end local v13    # "startHeight":I
    .end local v15    # "numChanges":I
    .restart local v26    # "numChanges":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startHeight":I
    .restart local v31    # "startWidth":I
    goto :goto_11e

    .end local v29    # "endHeight":I
    .end local v30    # "startHeight":I
    .end local v31    # "startWidth":I
    .restart local v12    # "startWidth":I
    .restart local v15    # "numChanges":I
    .restart local v25    # "startHeight":I
    .local v26, "endHeight":I
    :cond_116
    move/from16 v31, v12

    move/from16 v30, v25

    move/from16 v29, v26

    move/from16 v26, v15

    .line 364
    .end local v12    # "startWidth":I
    .end local v15    # "numChanges":I
    .end local v25    # "startHeight":I
    .local v26, "numChanges":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startHeight":I
    .restart local v31    # "startWidth":I
    :goto_11e
    new-instance v8, Landroid/transition/ChangeBounds$ViewBounds;

    invoke-direct {v8, v2}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 365
    .local v8, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v9

    int-to-float v12, v3

    int-to-float v13, v7

    int-to-float v15, v6

    move/from16 v32, v14

    .end local v14    # "endWidth":I
    .local v32, "endWidth":I
    int-to-float v14, v5

    invoke-virtual {v9, v12, v13, v15, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v9

    .line 367
    .local v9, "topLeftPath":Landroid/graphics/Path;
    sget-object v12, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 368
    const/4 v13, 0x0

    invoke-static {v8, v12, v13, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 370
    .local v12, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v14

    int-to-float v15, v0

    int-to-float v13, v10

    move-object/from16 v33, v9

    .end local v9    # "topLeftPath":Landroid/graphics/Path;
    .local v33, "topLeftPath":Landroid/graphics/Path;
    int-to-float v9, v4

    move-object/from16 v34, v12

    .end local v12    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .local v34, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v12, v11

    invoke-virtual {v14, v15, v13, v9, v12}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v9

    .line 372
    .local v9, "bottomRightPath":Landroid/graphics/Path;
    sget-object v12, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v13, 0x0

    invoke-static {v8, v12, v13, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 374
    .local v12, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 375
    .local v13, "set":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v34, v14, v16

    const/16 v18, 0x1

    aput-object v12, v14, v18

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 376
    move-object v14, v13

    .line 377
    .local v14, "anim":Landroid/animation/Animator;
    new-instance v15, Landroid/transition/ChangeBounds$8;

    invoke-direct {v15, v1, v8}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    .end local v8    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    .end local v9    # "bottomRightPath":Landroid/graphics/Path;
    .end local v12    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v13    # "set":Landroid/animation/AnimatorSet;
    .end local v33    # "topLeftPath":Landroid/graphics/Path;
    .end local v34    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    move v8, v11

    move v11, v7

    move v7, v8

    move/from16 v18, v0

    move-object v8, v14

    move/from16 v14, v29

    move/from16 v13, v30

    move/from16 v29, v3

    move/from16 v30, v4

    move v4, v6

    goto/16 :goto_28a

    .line 383
    .end local v29    # "endHeight":I
    .end local v30    # "startHeight":I
    .end local v31    # "startWidth":I
    .end local v32    # "endWidth":I
    .local v12, "startWidth":I
    .local v14, "endWidth":I
    .restart local v15    # "numChanges":I
    .restart local v25    # "startHeight":I
    .local v26, "endHeight":I
    :cond_17a
    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v30, v25

    move/from16 v29, v26

    move/from16 v26, v15

    .end local v12    # "startWidth":I
    .end local v14    # "endWidth":I
    .end local v15    # "numChanges":I
    .end local v25    # "startHeight":I
    .local v26, "numChanges":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startHeight":I
    .restart local v31    # "startWidth":I
    .restart local v32    # "endWidth":I
    if-ne v3, v6, :cond_1ac

    if-eq v7, v5, :cond_189

    goto :goto_1ac

    .line 389
    :cond_189
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    int-to-float v9, v0

    int-to-float v12, v10

    int-to-float v13, v4

    int-to-float v14, v11

    invoke-virtual {v8, v9, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v8

    .line 391
    .local v8, "bottomRight":Landroid/graphics/Path;
    sget-object v9, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v13, 0x0

    invoke-static {v2, v9, v13, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 393
    .local v8, "anim":Landroid/animation/Animator;
    move v13, v11

    move v11, v7

    move v7, v13

    move/from16 v18, v0

    move/from16 v14, v29

    move/from16 v13, v30

    move/from16 v29, v3

    move/from16 v30, v4

    move v4, v6

    goto/16 :goto_28a

    .line 384
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_1ac
    :goto_1ac
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    int-to-float v9, v3

    int-to-float v12, v7

    int-to-float v13, v6

    int-to-float v14, v5

    invoke-virtual {v8, v9, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v8

    .line 386
    .local v8, "topLeftPath":Landroid/graphics/Path;
    sget-object v9, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v13, 0x0

    invoke-static {v2, v9, v13, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 388
    .local v8, "anim":Landroid/animation/Animator;
    move v13, v11

    move v11, v7

    move v7, v13

    move/from16 v18, v0

    move/from16 v14, v29

    move/from16 v13, v30

    move/from16 v29, v3

    move/from16 v30, v4

    move v4, v6

    goto/16 :goto_28a

    .line 395
    .end local v8    # "anim":Landroid/animation/Animator;
    .end local v29    # "endHeight":I
    .end local v30    # "startHeight":I
    .end local v31    # "startWidth":I
    .end local v32    # "endWidth":I
    .restart local v12    # "startWidth":I
    .restart local v14    # "endWidth":I
    .restart local v15    # "numChanges":I
    .restart local v25    # "startHeight":I
    .local v26, "endHeight":I
    :cond_1cf
    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v30, v25

    move/from16 v29, v26

    move/from16 v26, v15

    .end local v12    # "startWidth":I
    .end local v14    # "endWidth":I
    .end local v15    # "numChanges":I
    .end local v25    # "startHeight":I
    .local v26, "numChanges":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startHeight":I
    .restart local v31    # "startWidth":I
    .restart local v32    # "endWidth":I
    move/from16 v8, v31

    move/from16 v9, v32

    .end local v31    # "startWidth":I
    .end local v32    # "endWidth":I
    .local v8, "startWidth":I
    .local v9, "endWidth":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 396
    .local v12, "maxWidth":I
    move/from16 v14, v29

    move/from16 v13, v30

    .end local v29    # "endHeight":I
    .end local v30    # "startHeight":I
    .local v13, "startHeight":I
    .local v14, "endHeight":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 398
    .local v15, "maxHeight":I
    move/from16 v18, v0

    .end local v0    # "startRight":I
    .local v18, "startRight":I
    add-int v0, v3, v12

    add-int v1, v7, v15

    invoke-virtual {v2, v3, v7, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "positionAnimator":Landroid/animation/ObjectAnimator;
    if-ne v3, v6, :cond_1ff

    if-eq v7, v5, :cond_1f8

    goto :goto_1ff

    :cond_1f8
    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v6

    goto :goto_21b

    .line 403
    :cond_1ff
    :goto_1ff
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v1

    move-object/from16 v25, v0

    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v25, "positionAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v0, v3

    move/from16 v29, v3

    .end local v3    # "startLeft":I
    .local v29, "startLeft":I
    int-to-float v3, v7

    move/from16 v30, v4

    .end local v4    # "endRight":I
    .local v30, "endRight":I
    int-to-float v4, v6

    move/from16 v31, v6

    .end local v6    # "endLeft":I
    .local v31, "endLeft":I
    int-to-float v6, v5

    invoke-virtual {v1, v0, v3, v4, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 405
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v1, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v0, v1

    .line 408
    .end local v25    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v0, "positionAnimator":Landroid/animation/ObjectAnimator;
    :goto_21b
    move-object/from16 v3, v27

    .line 409
    .local v3, "finalClip":Landroid/graphics/Rect;
    if-nez v28, :cond_227

    .line 410
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v4, v16

    invoke-direct {v1, v4, v4, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v28    # "startClip":Landroid/graphics/Rect;
    .local v1, "startClip":Landroid/graphics/Rect;
    goto :goto_22b

    .line 409
    .end local v1    # "startClip":Landroid/graphics/Rect;
    .restart local v28    # "startClip":Landroid/graphics/Rect;
    :cond_227
    move/from16 v4, v16

    move-object/from16 v1, v28

    .line 412
    .end local v28    # "startClip":Landroid/graphics/Rect;
    .restart local v1    # "startClip":Landroid/graphics/Rect;
    :goto_22b
    if-nez v27, :cond_234

    .line 413
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v4, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v6

    .end local v27    # "endClip":Landroid/graphics/Rect;
    .local v6, "endClip":Landroid/graphics/Rect;
    goto :goto_236

    .line 412
    .end local v6    # "endClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    :cond_234
    move-object/from16 v4, v27

    .line 415
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .local v4, "endClip":Landroid/graphics/Rect;
    :goto_236
    const/4 v6, 0x0

    .line 416
    .local v6, "clipAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_270

    .line 417
    invoke-virtual {v2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 418
    move-object/from16 v16, v0

    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v16, "positionAnimator":Landroid/animation/ObjectAnimator;
    sget-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    move-object/from16 v17, v3

    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .local v17, "finalClip":Landroid/graphics/Rect;
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v1

    .end local v1    # "startClip":Landroid/graphics/Rect;
    .local v25, "startClip":Landroid/graphics/Rect;
    const-string v1, "clipBounds"

    invoke-static {v2, v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 420
    new-instance v0, Landroid/transition/ChangeBounds$9;

    move v1, v11

    move v11, v7

    move v7, v1

    move-object/from16 v1, p0

    move-object/from16 v27, v4

    move/from16 v32, v9

    move-object/from16 v9, v16

    move-object/from16 v3, v17

    move/from16 v4, v31

    move/from16 v31, v8

    move-object v8, v6

    move/from16 v6, v30

    .end local v16    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v17    # "finalClip":Landroid/graphics/Rect;
    .end local v30    # "endRight":I
    .restart local v3    # "finalClip":Landroid/graphics/Rect;
    .local v4, "endLeft":I
    .local v6, "endRight":I
    .local v7, "endBottom":I
    .local v8, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v9, "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v11, "startTop":I
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    .local v31, "startWidth":I
    .restart local v32    # "endWidth":I
    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .end local v6    # "endRight":I
    .restart local v17    # "finalClip":Landroid/graphics/Rect;
    .restart local v30    # "endRight":I
    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v6, v8

    goto :goto_284

    .line 416
    .end local v17    # "finalClip":Landroid/graphics/Rect;
    .end local v25    # "startClip":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v32    # "endWidth":I
    .restart local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "startClip":Landroid/graphics/Rect;
    .restart local v3    # "finalClip":Landroid/graphics/Rect;
    .local v4, "endClip":Landroid/graphics/Rect;
    .local v6, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v7, "startTop":I
    .local v8, "startWidth":I
    .local v9, "endWidth":I
    .local v11, "endBottom":I
    .local v31, "endLeft":I
    :cond_270
    move/from16 v17, v11

    move v11, v7

    move/from16 v7, v17

    move-object/from16 v25, v1

    move-object/from16 v17, v3

    move-object/from16 v27, v4

    move/from16 v32, v9

    move/from16 v4, v31

    move-object/from16 v1, p0

    move-object v9, v0

    move/from16 v31, v8

    .line 438
    .end local v0    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "startClip":Landroid/graphics/Rect;
    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .end local v8    # "startWidth":I
    .local v4, "endLeft":I
    .local v7, "endBottom":I
    .local v9, "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v11, "startTop":I
    .restart local v17    # "finalClip":Landroid/graphics/Rect;
    .restart local v25    # "startClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    .local v31, "startWidth":I
    .restart local v32    # "endWidth":I
    :goto_284
    invoke-static {v9, v6}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v8

    move-object/from16 v28, v25

    .line 441
    .end local v6    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v9    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "maxWidth":I
    .end local v15    # "maxHeight":I
    .end local v17    # "finalClip":Landroid/graphics/Rect;
    .end local v25    # "startClip":Landroid/graphics/Rect;
    .local v8, "anim":Landroid/animation/Animator;
    .restart local v28    # "startClip":Landroid/graphics/Rect;
    :goto_28a
    return-object v8

    .line 321
    .end local v18    # "startRight":I
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v28    # "startClip":Landroid/graphics/Rect;
    .end local v29    # "startLeft":I
    .end local v30    # "endRight":I
    .end local v31    # "startWidth":I
    .end local v32    # "endWidth":I
    .local v0, "startRight":I
    .local v3, "startLeft":I
    .local v4, "endRight":I
    .local v6, "endLeft":I
    .local v7, "startTop":I
    .local v8, "endClip":Landroid/graphics/Rect;
    .local v11, "endBottom":I
    .local v12, "startWidth":I
    .local v13, "startClip":Landroid/graphics/Rect;
    .local v14, "endWidth":I
    .local v15, "numChanges":I
    .local v25, "startHeight":I
    .local v26, "endHeight":I
    :cond_28b
    move/from16 v18, v11

    move v11, v7

    move/from16 v7, v18

    move/from16 v18, v0

    move/from16 v29, v3

    move/from16 v30, v4

    move v4, v6

    move-object/from16 v27, v8

    move/from16 v31, v12

    move-object/from16 v28, v13

    move/from16 v32, v14

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v26, v15

    .line 443
    .end local v0    # "startRight":I
    .end local v3    # "startLeft":I
    .end local v4    # "endRight":I
    .end local v5    # "endTop":I
    .end local v6    # "endLeft":I
    .end local v7    # "startTop":I
    .end local v8    # "endClip":Landroid/graphics/Rect;
    .end local v10    # "startBottom":I
    .end local v11    # "endBottom":I
    .end local v12    # "startWidth":I
    .end local v13    # "startClip":Landroid/graphics/Rect;
    .end local v14    # "endWidth":I
    .end local v15    # "numChanges":I
    .end local v23    # "startBounds":Landroid/graphics/Rect;
    .end local v24    # "endBounds":Landroid/graphics/Rect;
    .end local v25    # "startHeight":I
    .end local v26    # "endHeight":I
    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    goto :goto_318

    .line 444
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .local v10, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v11, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "startParent":Landroid/view/ViewGroup;
    .local v13, "endParent":Landroid/view/ViewGroup;
    :cond_2ac
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    .end local v10    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "startParent":Landroid/view/ViewGroup;
    .end local v13    # "endParent":Landroid/view/ViewGroup;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    iget-object v0, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 445
    move-object/from16 v8, p2

    iget-object v0, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowX"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v16, 0x0

    aget v5, v5, v16

    sub-int v6, v0, v5

    .line 446
    .local v6, "startX":I
    iget-object v0, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v18, 0x1

    aget v7, v7, v18

    sub-int v7, v0, v7

    .line 447
    .local v7, "startY":I
    move-object/from16 v9, p3

    iget-object v0, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v16, 0x0

    aget v4, v4, v16

    sub-int v10, v0, v4

    .line 448
    .local v10, "endX":I
    iget-object v0, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, v1, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/16 v18, 0x1

    aget v4, v4, v18

    sub-int v11, v0, v4

    .line 450
    .local v11, "endY":I
    if-ne v6, v10, :cond_31b

    if-eq v7, v11, :cond_318

    goto :goto_31b

    .line 475
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    .end local v10    # "endX":I
    .end local v11    # "endY":I
    :cond_318
    :goto_318
    const/16 v17, 0x0

    return-object v17

    .line 451
    .restart local v6    # "startX":I
    .restart local v7    # "startY":I
    .restart local v10    # "endX":I
    .restart local v11    # "endY":I
    :cond_31b
    :goto_31b
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 452
    .local v12, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 453
    .local v13, "height":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 454
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v15, v0

    .line 455
    .local v15, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v15}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 456
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    add-int v4, v6, v12

    add-int v5, v7, v13

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 458
    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    .line 459
    .local v5, "transitionAlpha":F
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 460
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 461
    invoke-virtual {v1}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    int-to-float v1, v6

    move-object/from16 v23, v2

    .end local v2    # "view":Landroid/view/View;
    .local v23, "view":Landroid/view/View;
    int-to-float v2, v7

    int-to-float v3, v10

    move/from16 v24, v5

    .end local v5    # "transitionAlpha":F
    .local v24, "transitionAlpha":F
    int-to-float v5, v11

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 462
    .local v1, "topLeftPath":Landroid/graphics/Path;
    sget-object v2, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 464
    .local v17, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v17, v2, v16

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 465
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    move-object v3, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroid/transition/ChangeBounds$10;

    move-object/from16 v16, v1

    move/from16 v18, v6

    move-object/from16 v4, v23

    move/from16 v5, v24

    move-object/from16 v1, p0

    move-object v6, v2

    move-object/from16 v2, p1

    .end local v1    # "topLeftPath":Landroid/graphics/Path;
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v23    # "view":Landroid/view/View;
    .end local v24    # "transitionAlpha":F
    .local v4, "view":Landroid/view/View;
    .restart local v5    # "transitionAlpha":F
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    .local v16, "topLeftPath":Landroid/graphics/Path;
    .local v18, "startX":I
    invoke-direct/range {v0 .. v5}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    move-object v2, v4

    .end local v4    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    return-object v6

    .line 291
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "transitionAlpha":F
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v7    # "startY":I
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v16    # "topLeftPath":Landroid/graphics/Path;
    .end local v17    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "startX":I
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .local v10, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v11, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "startParent":Landroid/view/ViewGroup;
    .local v13, "endParent":Landroid/view/ViewGroup;
    :cond_387
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    .line 292
    .end local v10    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "startParent":Landroid/view/ViewGroup;
    .end local v13    # "endParent":Landroid/view/ViewGroup;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    :goto_38f
    const/16 v17, 0x0

    return-object v17

    .line 284
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    :cond_392
    const/16 v17, 0x0

    .line 285
    :goto_394
    return-object v17
.end method

.method public whitelist getResizeClip()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 188
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setReparent(Z)V
    .registers 2
    .param p1, "reparent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 236
    return-void
.end method

.method public whitelist setResizeClip(Z)V
    .registers 2
    .param p1, "resizeClip"    # Z

    .line 206
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 207
    return-void
.end method

.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final greylist-max-o FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final greylist-max-o FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final greylist-max-o FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final greylist-max-o PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final greylist-max-o PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final greylist-max-o RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final greylist-max-o RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static greylist-max-o sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private greylist-max-o mFadeBehavior:I

.field private greylist-max-o mResizeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFadeBehavior(Landroid/transition/Crossfade;)I
    .registers 1

    iget p0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 62
    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 265
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 266
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 270
    :cond_20
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:crossfade:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 277
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_41

    .line 278
    move-object v3, v0

    check-cast v3, Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_49

    .line 280
    :cond_41
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    .local v3, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 283
    .end local v3    # "c":Landroid/graphics/Canvas;
    :goto_49
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:crossfade:bitmap"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 288
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:crossfade:drawable"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 298
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 299
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 293
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 294
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 173
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    const/4 v0, 0x0

    if-eqz v6, :cond_12c

    if-nez v7, :cond_d

    goto/16 :goto_12c

    .line 176
    :cond_d
    iget v2, v1, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v9, 0x1

    if-eq v2, v9, :cond_14

    move v2, v9

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 177
    .local v2, "useParentOverlay":Z
    :goto_15
    iget-object v3, v7, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 178
    .local v3, "view":Landroid/view/View;
    iget-object v10, v6, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 179
    .local v10, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v11, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 180
    .local v11, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "android:crossfade:bounds"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/graphics/Rect;

    .line 181
    .local v12, "startBounds":Landroid/graphics/Rect;
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/graphics/Rect;

    .line 182
    .local v13, "endBounds":Landroid/graphics/Rect;
    const-string v4, "android:crossfade:bitmap"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/graphics/Bitmap;

    .line 183
    .local v14, "startBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/graphics/Bitmap;

    .line 184
    .local v15, "endBitmap":Landroid/graphics/Bitmap;
    const-string v4, "android:crossfade:drawable"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    .local v5, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    .local v4, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_122

    if-eqz v4, :cond_122

    invoke-virtual {v14, v15}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v16

    if-nez v16, :cond_122

    .line 191
    if-eqz v2, :cond_60

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    goto :goto_64

    :cond_60
    invoke-virtual {v3}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    .line 193
    .local v0, "overlay":Landroid/view/ViewOverlay;
    :goto_64
    iget v8, v1, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-ne v8, v9, :cond_6b

    .line 194
    invoke-virtual {v0, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_6b
    invoke-virtual {v0, v5}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget v8, v1, Landroid/transition/Crossfade;->mFadeBehavior:I

    const-string v9, "alpha"

    move-object/from16 v18, v0

    .end local v0    # "overlay":Landroid/view/ViewOverlay;
    .local v18, "overlay":Landroid/view/ViewOverlay;
    const/4 v0, 0x2

    if-ne v8, v0, :cond_83

    .line 204
    const/16 v8, 0xff

    const/4 v0, 0x0

    filled-new-array {v8, v0, v0}, [I

    move-result-object v8

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .local v8, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_8c

    .line 206
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    :cond_83
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v8

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 208
    .restart local v8    # "anim":Landroid/animation/ObjectAnimator;
    :goto_8c
    new-instance v0, Landroid/transition/Crossfade$1;

    invoke-direct {v0, v1, v3, v5}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    iget v9, v1, Landroid/transition/Crossfade;->mFadeBehavior:I

    move-object/from16 v20, v0

    const/4 v0, 0x2

    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .local v20, "anim1":Landroid/animation/ObjectAnimator;
    if-ne v9, v0, :cond_ab

    .line 218
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x3

    new-array v9, v9, [F

    fill-array-data v9, :array_12e

    invoke-static {v3, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v20, v0

    .end local v20    # "anim1":Landroid/animation/ObjectAnimator;
    .restart local v0    # "anim1":Landroid/animation/ObjectAnimator;
    goto :goto_bd

    .line 219
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .restart local v20    # "anim1":Landroid/animation/ObjectAnimator;
    :cond_ab
    iget v0, v1, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-nez v0, :cond_bd

    .line 220
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_138

    invoke-static {v3, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v20, v0

    .line 226
    :cond_bd
    :goto_bd
    new-instance v0, Landroid/transition/Crossfade$2;

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    .local v4, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct/range {v0 .. v5}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 238
    .local v0, "set":Landroid/animation/AnimatorSet;
    move/from16 v17, v2

    const/4 v9, 0x1

    .end local v2    # "useParentOverlay":Z
    .local v17, "useParentOverlay":Z
    new-array v2, v9, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v8, v2, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 239
    if-eqz v20, :cond_e4

    .line 240
    new-array v2, v9, [Landroid/animation/Animator;

    aput-object v20, v2, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 242
    :cond_e4
    iget v2, v1, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne v2, v9, :cond_11f

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    .line 247
    sget-object v2, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v3

    .end local v3    # "view":Landroid/view/View;
    .local v21, "view":Landroid/view/View;
    const-string v3, "bounds"

    invoke-static {v4, v3, v2, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 249
    .local v2, "anim2":Landroid/animation/Animator;
    move-object/from16 v19, v2

    const/4 v9, 0x1

    .end local v2    # "anim2":Landroid/animation/Animator;
    .local v19, "anim2":Landroid/animation/Animator;
    new-array v2, v9, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v19, v2, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 250
    iget v2, v1, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne v2, v9, :cond_121

    .line 253
    sget-object v2, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v3, v2, v9}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 255
    .local v2, "anim3":Landroid/animation/Animator;
    const/4 v9, 0x1

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v2, v3, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_121

    .line 242
    .end local v2    # "anim3":Landroid/animation/Animator;
    .end local v19    # "anim2":Landroid/animation/Animator;
    .end local v21    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    :cond_11f
    move-object/from16 v21, v3

    .line 258
    .end local v3    # "view":Landroid/view/View;
    .restart local v21    # "view":Landroid/view/View;
    :cond_121
    :goto_121
    return-object v0

    .line 190
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    .end local v17    # "useParentOverlay":Z
    .end local v18    # "overlay":Landroid/view/ViewOverlay;
    .end local v20    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v21    # "view":Landroid/view/View;
    .local v2, "useParentOverlay":Z
    .restart local v3    # "view":Landroid/view/View;
    .local v4, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_122
    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    move/from16 v17, v2

    move-object/from16 v21, v3

    .line 260
    .end local v2    # "useParentOverlay":Z
    .end local v3    # "view":Landroid/view/View;
    .local v4, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v17    # "useParentOverlay":Z
    .restart local v21    # "view":Landroid/view/View;
    return-object v0

    .line 174
    .end local v4    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "startBounds":Landroid/graphics/Rect;
    .end local v13    # "endBounds":Landroid/graphics/Rect;
    .end local v14    # "startBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "endBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "useParentOverlay":Z
    .end local v21    # "view":Landroid/view/View;
    :cond_12c
    :goto_12c
    return-object v0

    nop

    :array_12e
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_138
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getFadeBehavior()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public greylist-max-o getResizeBehavior()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public greylist-max-o setFadeBehavior(I)Landroid/transition/Crossfade;
    .registers 3
    .param p1, "fadeBehavior"    # I

    .line 127
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    .line 128
    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 130
    :cond_7
    return-object p0
.end method

.method public greylist-max-o setResizeBehavior(I)Landroid/transition/Crossfade;
    .registers 3
    .param p1, "resizeBehavior"    # I

    .line 152
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 153
    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 155
    :cond_7
    return-object p0
.end method

.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method static synthetic -get0(Landroid/transition/Crossfade;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/animation/RectEvaluator;

    #@2
    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    #@5
    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 47
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@4
    .line 59
    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@6
    .line 60
    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    #@8
    .line 47
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 261
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@3
    .line 262
    .local v4, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@8
    move-result v5

    #@9
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@c
    move-result v6

    #@d
    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@10
    .line 263
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v5, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@12
    const/4 v6, 0x1

    #@13
    if-eq v5, v6, :cond_0

    #@15
    .line 264
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@18
    move-result v5

    #@19
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@1c
    move-result v6

    #@1d
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    #@20
    .line 266
    :cond_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@22
    const-string/jumbo v6, "android:crossfade:bounds"

    #@25
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@2f
    move-result v6

    #@30
    .line 272
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@32
    .line 271
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@35
    move-result-object v0

    #@36
    .line 273
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v5, v4, Landroid/view/TextureView;

    #@38
    if-eqz v5, :cond_1

    #@3a
    .line 274
    check-cast v4, Landroid/view/TextureView;

    #@3c
    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    #@3f
    move-result-object v0

    #@40
    .line 279
    :goto_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@42
    const-string/jumbo v6, "android:crossfade:bitmap"

    #@45
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 281
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    #@4a
    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@4d
    .line 283
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@50
    .line 284
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@52
    const-string/jumbo v6, "android:crossfade:drawable"

    #@55
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 260
    return-void

    #@59
    .line 276
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    #@5b
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@5e
    .line 277
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@61
    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 294
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 293
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 289
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 288
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 169
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 170
    :cond_0
    const/4 v2, 0x0

    #@5
    return-object v2

    #@6
    .line 172
    :cond_1
    move-object/from16 v0, p0

    #@8
    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@a
    const/4 v3, 0x1

    #@b
    if-eq v2, v3, :cond_3

    #@d
    const/4 v4, 0x1

    #@e
    .line 173
    .local v4, "useParentOverlay":Z
    :goto_0
    move-object/from16 v0, p3

    #@10
    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@12
    .line 174
    .local v5, "view":Landroid/view/View;
    move-object/from16 v0, p2

    #@14
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@16
    move-object/from16 v19, v0

    #@18
    .line 175
    .local v19, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    #@1a
    iget-object v14, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c
    .line 176
    .local v14, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "android:crossfade:bounds"

    #@1f
    move-object/from16 v0, v19

    #@21
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v18

    #@25
    check-cast v18, Landroid/graphics/Rect;

    #@27
    .line 177
    .local v18, "startBounds":Landroid/graphics/Rect;
    const-string/jumbo v2, "android:crossfade:bounds"

    #@2a
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v13

    #@2e
    check-cast v13, Landroid/graphics/Rect;

    #@30
    .line 178
    .local v13, "endBounds":Landroid/graphics/Rect;
    const-string/jumbo v2, "android:crossfade:bitmap"

    #@33
    move-object/from16 v0, v19

    #@35
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v17

    #@39
    check-cast v17, Landroid/graphics/Bitmap;

    #@3b
    .line 179
    .local v17, "startBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v2, "android:crossfade:bitmap"

    #@3e
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v12

    #@42
    check-cast v12, Landroid/graphics/Bitmap;

    #@44
    .line 180
    .local v12, "endBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v2, "android:crossfade:drawable"

    #@47
    move-object/from16 v0, v19

    #@49
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v6

    #@4d
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    #@4f
    .line 181
    .local v6, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string/jumbo v2, "android:crossfade:drawable"

    #@52
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v7

    #@56
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    #@58
    .line 186
    .local v7, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v6, :cond_2

    #@5a
    if-eqz v7, :cond_2

    #@5c
    move-object/from16 v0, v17

    #@5e
    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 256
    :cond_2
    const/4 v2, 0x0

    #@65
    return-object v2

    #@66
    .line 172
    .end local v4    # "useParentOverlay":Z
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "endBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "endBounds":Landroid/graphics/Rect;
    .end local v14    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "startBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "startBounds":Landroid/graphics/Rect;
    .end local v19    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const/4 v4, 0x0

    #@67
    .restart local v4    # "useParentOverlay":Z
    goto :goto_0

    #@68
    .line 187
    .restart local v5    # "view":Landroid/view/View;
    .restart local v6    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v12    # "endBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "endBounds":Landroid/graphics/Rect;
    .restart local v14    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17    # "startBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "startBounds":Landroid/graphics/Rect;
    .restart local v19    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v4, :cond_9

    #@6a
    .line 188
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Landroid/view/ViewGroup;

    #@70
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@73
    move-result-object v15

    #@74
    .line 189
    .local v15, "overlay":Landroid/view/ViewOverlay;
    :goto_1
    move-object/from16 v0, p0

    #@76
    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@78
    const/4 v3, 0x1

    #@79
    if-ne v2, v3, :cond_5

    #@7b
    .line 190
    invoke-virtual {v15, v7}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    #@7e
    .line 192
    :cond_5
    invoke-virtual {v15, v6}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    #@81
    .line 198
    move-object/from16 v0, p0

    #@83
    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@85
    const/4 v3, 0x2

    #@86
    if-ne v2, v3, :cond_a

    #@88
    .line 200
    const-string/jumbo v2, "alpha"

    #@8b
    const/16 v3, 0xff

    #@8d
    const/16 v20, 0x0

    #@8f
    const/16 v21, 0x0

    #@91
    move/from16 v0, v20

    #@93
    move/from16 v1, v21

    #@95
    filled-new-array {v3, v0, v1}, [I

    #@98
    move-result-object v3

    #@99
    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@9c
    move-result-object v8

    #@9d
    .line 204
    .local v8, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    new-instance v2, Landroid/transition/Crossfade$1;

    #@9f
    move-object/from16 v0, p0

    #@a1
    invoke-direct {v2, v0, v5, v6}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    #@a4
    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@a7
    .line 211
    const/4 v9, 0x0

    #@a8
    .line 212
    .local v9, "anim1":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    #@aa
    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@ac
    const/4 v3, 0x2

    #@ad
    if-ne v2, v3, :cond_b

    #@af
    .line 214
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@b1
    const/4 v3, 0x3

    #@b2
    new-array v3, v3, [F

    #@b4
    const/16 v20, 0x0

    #@b6
    const/16 v21, 0x0

    #@b8
    aput v20, v3, v21

    #@ba
    const/16 v20, 0x0

    #@bc
    const/16 v21, 0x1

    #@be
    aput v20, v3, v21

    #@c0
    const/high16 v20, 0x3f800000    # 1.0f

    #@c2
    const/16 v21, 0x2

    #@c4
    aput v20, v3, v21

    #@c6
    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@c9
    move-result-object v9

    #@ca
    .line 222
    .end local v9    # "anim1":Landroid/animation/ObjectAnimator;
    :cond_6
    :goto_3
    new-instance v2, Landroid/transition/Crossfade$2;

    #@cc
    move-object/from16 v3, p0

    #@ce
    invoke-direct/range {v2 .. v7}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    #@d1
    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d4
    .line 233
    new-instance v16, Landroid/animation/AnimatorSet;

    #@d6
    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    #@d9
    .line 234
    .local v16, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x1

    #@da
    new-array v2, v2, [Landroid/animation/Animator;

    #@dc
    const/4 v3, 0x0

    #@dd
    aput-object v8, v2, v3

    #@df
    move-object/from16 v0, v16

    #@e1
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@e4
    .line 235
    if-eqz v9, :cond_7

    #@e6
    .line 236
    const/4 v2, 0x1

    #@e7
    new-array v2, v2, [Landroid/animation/Animator;

    #@e9
    const/4 v3, 0x0

    #@ea
    aput-object v9, v2, v3

    #@ec
    move-object/from16 v0, v16

    #@ee
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@f1
    .line 238
    :cond_7
    move-object/from16 v0, p0

    #@f3
    iget v2, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    #@f5
    const/4 v3, 0x1

    #@f6
    if-ne v2, v3, :cond_8

    #@f8
    move-object/from16 v0, v18

    #@fa
    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v2

    #@fe
    if-eqz v2, :cond_c

    #@100
    .line 254
    :cond_8
    :goto_4
    return-object v16

    #@101
    .line 188
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    .end local v15    # "overlay":Landroid/view/ViewOverlay;
    .end local v16    # "set":Landroid/animation/AnimatorSet;
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    #@104
    move-result-object v15

    #@105
    .restart local v15    # "overlay":Landroid/view/ViewOverlay;
    goto/16 :goto_1

    #@107
    .line 202
    :cond_a
    const-string/jumbo v2, "alpha"

    #@10a
    const/4 v3, 0x1

    #@10b
    new-array v3, v3, [I

    #@10d
    const/16 v20, 0x0

    #@10f
    const/16 v21, 0x0

    #@111
    aput v20, v3, v21

    #@113
    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@116
    move-result-object v8

    #@117
    .restart local v8    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    #@118
    .line 215
    .restart local v9    # "anim1":Landroid/animation/ObjectAnimator;
    :cond_b
    move-object/from16 v0, p0

    #@11a
    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@11c
    if-nez v2, :cond_6

    #@11e
    .line 216
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@120
    const/4 v3, 0x2

    #@121
    new-array v3, v3, [F

    #@123
    const/16 v20, 0x0

    #@125
    const/16 v21, 0x0

    #@127
    aput v20, v3, v21

    #@129
    const/high16 v20, 0x3f800000    # 1.0f

    #@12b
    const/16 v21, 0x1

    #@12d
    aput v20, v3, v21

    #@12f
    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@132
    move-result-object v9

    #@133
    .local v9, "anim1":Landroid/animation/ObjectAnimator;
    goto :goto_3

    #@134
    .line 243
    .end local v9    # "anim1":Landroid/animation/ObjectAnimator;
    .restart local v16    # "set":Landroid/animation/AnimatorSet;
    :cond_c
    const-string/jumbo v2, "bounds"

    #@137
    .line 244
    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    #@139
    .line 243
    const/16 v20, 0x2

    #@13b
    move/from16 v0, v20

    #@13d
    new-array v0, v0, [Ljava/lang/Object;

    #@13f
    move-object/from16 v20, v0

    #@141
    .line 244
    const/16 v21, 0x0

    #@143
    aput-object v18, v20, v21

    #@145
    const/16 v21, 0x1

    #@147
    aput-object v13, v20, v21

    #@149
    .line 243
    move-object/from16 v0, v20

    #@14b
    invoke-static {v6, v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@14e
    move-result-object v10

    #@14f
    .line 245
    .local v10, "anim2":Landroid/animation/Animator;
    const/4 v2, 0x1

    #@150
    new-array v2, v2, [Landroid/animation/Animator;

    #@152
    const/4 v3, 0x0

    #@153
    aput-object v10, v2, v3

    #@155
    move-object/from16 v0, v16

    #@157
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@15a
    .line 246
    move-object/from16 v0, p0

    #@15c
    iget v2, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    #@15e
    const/4 v3, 0x1

    #@15f
    if-ne v2, v3, :cond_8

    #@161
    .line 249
    const-string/jumbo v2, "bounds"

    #@164
    .line 250
    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    #@166
    .line 249
    const/16 v20, 0x2

    #@168
    move/from16 v0, v20

    #@16a
    new-array v0, v0, [Ljava/lang/Object;

    #@16c
    move-object/from16 v20, v0

    #@16e
    .line 250
    const/16 v21, 0x0

    #@170
    aput-object v18, v20, v21

    #@172
    const/16 v21, 0x1

    #@174
    aput-object v13, v20, v21

    #@176
    .line 249
    move-object/from16 v0, v20

    #@178
    invoke-static {v7, v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@17b
    move-result-object v11

    #@17c
    .line 251
    .local v11, "anim3":Landroid/animation/Animator;
    const/4 v2, 0x1

    #@17d
    new-array v2, v2, [Landroid/animation/Animator;

    #@17f
    const/4 v3, 0x0

    #@180
    aput-object v11, v2, v3

    #@182
    move-object/from16 v0, v16

    #@184
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@187
    goto/16 :goto_4
.end method

.method public getFadeBehavior()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@2
    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    #@2
    return v0
.end method

.method public setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1
    .param p1, "fadeBehavior"    # I

    #@0
    .prologue
    .line 125
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 126
    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    #@7
    .line 128
    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1
    .param p1, "resizeBehavior"    # I

    #@0
    .prologue
    .line 150
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 151
    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    #@7
    .line 153
    :cond_0
    return-object p0
.end method

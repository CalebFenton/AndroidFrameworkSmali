.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$RippleState;,
        Landroid/graphics/drawable/RippleDrawable$RippleStyle;
    }
.end annotation


# static fields
.field private static final blacklist BACKGROUND_OPACITY_DURATION:I = 0x50

.field private static final blacklist DEFAULT_EFFECT_COLOR:I = -0x72000001

.field private static final blacklist FORCE_PATTERNED_STYLE:Z = true

.field private static final blacklist LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field private static final greylist-max-o MASK_CONTENT:I = 0x1

.field private static final greylist-max-o MASK_EXPLICIT:I = 0x2

.field private static final greylist-max-o MASK_NONE:I = 0x0

.field private static final greylist-max-o MASK_UNKNOWN:I = -0x1

.field private static final greylist-max-o MAX_RIPPLES:I = 0xa

.field public static final whitelist RADIUS_AUTO:I = -0x1

.field public static final blacklist STYLE_PATTERNED:I = 0x1

.field public static final blacklist STYLE_SOLID:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RippleDrawable"


# instance fields
.field private blacklist mAddRipple:Z

.field private greylist-max-o mBackground:Landroid/graphics/drawable/RippleBackground;

.field private blacklist mBackgroundAnimation:Landroid/animation/ValueAnimator;

.field private blacklist mBackgroundOpacity:F

.field private greylist-max-r mDensity:I

.field private final greylist-max-o mDirtyBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mExitingAnimation:Z

.field private greylist-max-o mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

.field private greylist-max-o mExitingRipplesCount:I

.field private blacklist mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private greylist-max-o mForceSoftware:Z

.field private greylist-max-o mHasPending:Z

.field private greylist-max-o mHasValidMask:Z

.field private final greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field private greylist-max-o mMask:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMaskBuffer:Landroid/graphics/Bitmap;

.field private greylist-max-o mMaskCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private greylist-max-o mMaskMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mMaskShader:Landroid/graphics/BitmapShader;

.field private greylist-max-o mOverrideBounds:Z

.field private greylist-max-o mPendingX:F

.field private greylist-max-o mPendingY:F

.field private greylist-max-o mRipple:Landroid/graphics/drawable/RippleForeground;

.field private greylist-max-o mRippleActive:Z

.field private greylist-max-o mRipplePaint:Landroid/graphics/Paint;

.field private blacklist mRunBackgroundAnimation:Z

.field private blacklist mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/RippleAnimationSession;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private blacklist mTargetBackgroundOpacity:F

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$XVQ51SKPpzsuu4270RxLZbfOM7U(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dGxsGxuXDFTTUA4eK5H15etGTHo(Landroid/graphics/drawable/RippleDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$startBackgroundAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wWX-i3HpSpUu6YRQNXPFtF_sMw4(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/drawable/RippleAnimationSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$drawPatterned$2(Landroid/graphics/drawable/RippleAnimationSession;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 239
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    .line 240
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 14
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .line 252
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    .line 254
    if-eqz p1, :cond_34

    .line 258
    if-eqz p2, :cond_18

    .line 259
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 262
    :cond_18
    if-eqz p3, :cond_27

    .line 263
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const v5, 0x102002e

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 266
    :cond_27
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 267
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 268
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    .line 269
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 270
    return-void

    .line 255
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1393
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 227
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    .line 1394
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 1395
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1396
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    .line 1398
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNumChildren:I

    if-lez v0, :cond_4c

    .line 1399
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 1400
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    .line 1403
    :cond_4c
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 1404
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o cancelExitingRipples()V
    .registers 5

    .line 297
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 298
    .local v0, "count":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 299
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 300
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 303
    .end local v2    # "i":I
    :cond_f
    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 304
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 306
    :cond_16
    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 308
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 309
    return-void
.end method

.method private greylist-max-o clearHotspots()V
    .registers 3

    .line 724
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 725
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 727
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 730
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_18

    .line 731
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleBackground;->setState(ZZZ)V

    .line 734
    :cond_18
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    .line 735
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->endPatternedAnimations()V

    .line 736
    return-void
.end method

.method private blacklist computeRadius()F
    .registers 6

    .line 976
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 977
    .local v0, "halfWidth":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 978
    .local v2, "halfHeight":F
    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    return v1
.end method

.method private blacklist createAnimationProperties(FFFFFF)Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
    .registers 23
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cx"    # F
    .param p4, "cy"    # F
    .param p5, "w"    # F
    .param p6, "h"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)",
            "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    .line 989
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object v8, v1

    .line 990
    .local v8, "p":Landroid/graphics/Paint;
    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v1

    int-to-float v1, v1

    .line 992
    .local v1, "radius":F
    new-instance v11, Landroid/graphics/drawable/RippleShader;

    invoke-direct {v11}, Landroid/graphics/drawable/RippleShader;-><init>()V

    .line 995
    .local v11, "shader":Landroid/graphics/drawable/RippleShader;
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/high16 v12, -0x1000000

    if-nez v2, :cond_2a

    .line 996
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v2, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    move v10, v2

    goto :goto_31

    .line 997
    :cond_2a
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v2

    move v10, v2

    :goto_31
    nop

    .line 998
    .local v10, "color":I
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v2, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v3

    const v4, -0xff01

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 999
    .local v2, "effectColor":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    long-to-float v13, v3

    .line 1000
    .local v13, "noisePhase":F
    invoke-virtual {v11, v10, v2}, Landroid/graphics/drawable/RippleShader;->setColor(II)V

    .line 1001
    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v11, v14, v15}, Landroid/graphics/drawable/RippleShader;->setOrigin(FF)V

    .line 1002
    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v11, v3, v4}, Landroid/graphics/drawable/RippleShader;->setTouch(FF)V

    .line 1003
    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual {v11, v5, v6}, Landroid/graphics/drawable/RippleShader;->setResolution(FF)V

    .line 1004
    invoke-virtual {v11, v13}, Landroid/graphics/drawable/RippleShader;->setNoisePhase(F)V

    .line 1005
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/RippleShader;->setRadius(F)V

    .line 1006
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/RippleShader;->setProgress(F)V

    .line 1007
    new-instance v3, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    .line 1008
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move v9, v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct/range {v3 .. v11}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V

    .line 1009
    .local v3, "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    iget-object v4, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    const/4 v5, 0x0

    if-nez v4, :cond_8b

    .line 1010
    invoke-virtual {v11, v5}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    goto :goto_90

    .line 1012
    :cond_8b
    iget-object v4, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v11, v4}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    .line 1014
    :goto_90
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1015
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1017
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1018
    return-object v3
.end method

.method private greylist-max-o drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1167
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 1168
    .local v0, "active":Landroid/graphics/drawable/RippleForeground;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 1169
    .local v1, "background":Landroid/graphics/drawable/RippleBackground;
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1170
    .local v2, "count":I
    if-nez v0, :cond_13

    if-gtz v2, :cond_13

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1172
    :cond_12
    return-void

    .line 1175
    :cond_13
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 1176
    .local v3, "x":F
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 1177
    .local v4, "y":F
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1179
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 1181
    .local v5, "p":Landroid/graphics/Paint;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1182
    invoke-virtual {v1, p1, v5}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1185
    :cond_31
    if-lez v2, :cond_40

    .line 1186
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 1187
    .local v6, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36
    if-ge v7, v2, :cond_40

    .line 1188
    aget-object v8, v6, v7

    invoke-virtual {v8, p1, v5}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1187
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 1192
    .end local v6    # "ripples":[Landroid/graphics/drawable/RippleForeground;
    .end local v7    # "i":I
    :cond_40
    if-eqz v0, :cond_45

    .line 1193
    invoke-virtual {v0, p1, v5}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1196
    :cond_45
    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1197
    return-void
.end method

.method private greylist-max-o drawContent(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1157
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1158
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1159
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1e

    .line 1160
    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_1b

    .line 1161
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1159
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1164
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method private greylist-max-o drawMask(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1200
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1201
    return-void
.end method

.method private blacklist drawPatterned(Landroid/graphics/Canvas;)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 887
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 888
    .local v8, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v9

    .line 889
    .local v9, "saveCount":I
    iget-boolean v1, v0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    const/4 v10, 0x1

    xor-int/2addr v1, v10

    move v11, v1

    .line 890
    .local v11, "useCanvasProps":Z
    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 891
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 894
    :cond_1d
    iget-boolean v12, v0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 895
    .local v12, "addRipple":Z
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v3, v1

    .line 896
    .local v3, "cx":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v4, v1

    .line 897
    .local v4, "cy":F
    iget-boolean v13, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    .line 898
    .local v13, "shouldExit":Z
    const/4 v14, 0x0

    iput-boolean v14, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    .line 899
    iput-boolean v14, v0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 900
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    if-nez v12, :cond_3d

    .line 902
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    .line 904
    :cond_3d
    invoke-direct/range {p0 .. p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 905
    invoke-direct {v0, v7, v3, v4}, Landroid/graphics/drawable/RippleDrawable;->drawPatternedBackground(Landroid/graphics/Canvas;FF)V

    .line 906
    if-eqz v12, :cond_a1

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_a1

    .line 907
    iget-boolean v1, v0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v1, :cond_5a

    .line 908
    iget v1, v0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 909
    .local v1, "x":F
    iget v2, v0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 910
    .local v2, "y":F
    iput-boolean v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    goto :goto_62

    .line 912
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_5a
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 913
    .restart local v1    # "x":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 915
    .restart local v2    # "y":F
    :goto_62
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v6, v5

    .line 916
    .local v6, "h":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 917
    .local v5, "w":F
    nop

    .line 918
    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/RippleDrawable;->createAnimationProperties(FFFFFF)Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v15

    .line 919
    .local v15, "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    iget-object v10, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v14, Landroid/graphics/drawable/RippleAnimationSession;

    move/from16 v18, v1

    if-nez v11, :cond_7b

    const/4 v1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    .end local v1    # "x":F
    .local v18, "x":F
    :goto_7c
    invoke-direct {v14, v15, v1}, Landroid/graphics/drawable/RippleAnimationSession;-><init>(Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;Z)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    .line 920
    invoke-virtual {v14, v1}, Landroid/graphics/drawable/RippleAnimationSession;->setOnAnimationUpdated(Ljava/lang/Runnable;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v1

    new-instance v14, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v14, v0}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    .line 921
    invoke-virtual {v1, v14}, Landroid/graphics/drawable/RippleAnimationSession;->setOnSessionEnd(Ljava/util/function/Consumer;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v1

    if-nez v11, :cond_95

    const/4 v14, 0x1

    goto :goto_96

    :cond_95
    const/4 v14, 0x0

    .line 924
    :goto_96
    invoke-virtual {v1, v14}, Landroid/graphics/drawable/RippleAnimationSession;->setForceSoftwareAnimation(Z)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v1

    .line 925
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/RippleAnimationSession;->enter(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;

    move-result-object v1

    .line 919
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v2    # "y":F
    .end local v5    # "w":F
    .end local v6    # "h":F
    .end local v15    # "properties":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    .end local v18    # "x":F
    :cond_a1
    if-eqz v13, :cond_ba

    .line 928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a4
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ba

    .line 929
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleAnimationSession;

    .line 930
    .local v2, "s":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/RippleAnimationSession;->exit(Landroid/graphics/Canvas;)Landroid/graphics/drawable/RippleAnimationSession;

    .line 928
    .end local v2    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 933
    .end local v1    # "i":I
    :cond_ba
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_bb
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_14d

    .line 934
    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleAnimationSession;

    .line 935
    .restart local v2    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v7}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_d9

    .line 936
    const-string v5, "RippleDrawable"

    const-string v6, "The RippleDrawable.STYLE_PATTERNED animation is not supported for a non-hardware accelerated Canvas. Skipping animation."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    goto :goto_14d

    .line 939
    :cond_d9
    if-eqz v11, :cond_11d

    .line 942
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    .line 943
    .local v5, "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    move-object v14, v7

    check-cast v14, Landroid/graphics/RecordingCanvas;

    .line 944
    .local v14, "can":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getX()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/graphics/CanvasProperty;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getY()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/graphics/CanvasProperty;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroid/graphics/CanvasProperty;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getPaint()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Landroid/graphics/CanvasProperty;

    .line 945
    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getProgress()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Landroid/graphics/CanvasProperty;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getNoisePhase()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Landroid/graphics/CanvasProperty;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getColor()I

    move-result v21

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v22

    .line 944
    invoke-virtual/range {v14 .. v22}, Landroid/graphics/RecordingCanvas;->drawRipple(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;ILandroid/graphics/RuntimeShader;)V

    .line 946
    .end local v5    # "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;>;"
    .end local v14    # "can":Landroid/graphics/RecordingCanvas;
    goto :goto_149

    .line 947
    :cond_11d
    nop

    .line 948
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    .line 949
    .local v5, "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getMaxRadius()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 950
    .local v6, "radius":F
    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getX()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getY()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getPaint()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v14, v6, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 933
    .end local v2    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    .end local v5    # "p":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<Ljava/lang/Float;Landroid/graphics/Paint;>;"
    .end local v6    # "radius":F
    :goto_149
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_bb

    .line 953
    .end local v1    # "i":I
    :cond_14d
    :goto_14d
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 954
    return-void
.end method

.method private blacklist drawPatternedBackground(Landroid/graphics/Canvas;FF)V
    .registers 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .line 957
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    if-eqz v0, :cond_7

    .line 958
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->startBackgroundAnimation()V

    .line 960
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    return-void

    .line 961
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 962
    .local v0, "p":Landroid/graphics/Paint;
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    .line 963
    .local v1, "newOpacity":F
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 964
    .local v2, "origAlpha":I
    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 965
    .local v3, "alpha":I
    if-lez v3, :cond_41

    .line 966
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 967
    .local v4, "origFilter":Landroid/graphics/ColorFilter;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 968
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 969
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, p3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 970
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 971
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 973
    .end local v4    # "origFilter":Landroid/graphics/ColorFilter;
    :cond_41
    return-void
.end method

.method private blacklist drawSolid(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 816
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    .line 820
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 821
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 822
    .local v1, "saveCount":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 823
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 826
    :cond_15
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 827
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    .line 829
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 830
    return-void
.end method

.method private blacklist endPatternedAnimations()V
    .registers 3

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 290
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleAnimationSession;

    .line 291
    .local v1, "session":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleAnimationSession;->end()V

    .line 289
    .end local v1    # "session":Landroid/graphics/drawable/RippleAnimationSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    return-void
.end method

.method private blacklist enterPatternedBackgroundAnimation(ZZZ)V
    .registers 6
    .param p1, "focused"    # Z
    .param p2, "hovered"    # Z
    .param p3, "windowFocused"    # Z

    .line 858
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    .line 859
    const v1, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_10

    .line 860
    if-eqz p3, :cond_d

    const v1, 0x3f19999a    # 0.6f

    :cond_d
    iput v1, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    goto :goto_15

    .line 862
    :cond_10
    if-eqz p2, :cond_13

    move v0, v1

    :cond_13
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    .line 864
    :goto_15
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 866
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 868
    return-void
.end method

.method private blacklist exitPatternedAnimation()V
    .registers 2

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingAnimation:Z

    .line 847
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 848
    return-void
.end method

.method private blacklist exitPatternedBackgroundAnimation()V
    .registers 2

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    .line 834
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 836
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 838
    return-void
.end method

.method private blacklist getComputedRadius()I
    .registers 2

    .line 982
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    if-ltz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0

    .line 983
    :cond_b
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->computeRadius()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private greylist-max-o getMaskType()I
    .registers 7

    .line 1126
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v0, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 1127
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_15
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_1c

    .line 1130
    return v1

    .line 1133
    :cond_1c
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 1134
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 1136
    return v2

    .line 1138
    :cond_2a
    const/4 v0, 0x2

    return v0

    .line 1143
    :cond_2c
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1144
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1145
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    if-ge v4, v3, :cond_46

    .line 1146
    aget-object v5, v0, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v1, :cond_43

    .line 1147
    const/4 v1, 0x1

    return v1

    .line 1145
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 1152
    .end local v4    # "i":I
    :cond_46
    return v2
.end method

.method private greylist-max-o isBounded()Z
    .registers 2

    .line 468
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private synthetic blacklist lambda$drawPatterned$1()V
    .registers 2

    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$drawPatterned$2(Landroid/graphics/drawable/RippleAnimationSession;)V
    .registers 3
    .param p1, "session"    # Landroid/graphics/drawable/RippleAnimationSession;

    .line 922
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 923
    return-void
.end method

.method private synthetic blacklist lambda$startBackgroundAnimation$0(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "update"    # Landroid/animation/ValueAnimator;

    .line 880
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    .line 881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 882
    return-void
.end method

.method private greylist-max-o onHotspotBoundsChanged()V
    .registers 11

    .line 755
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 756
    .local v0, "count":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 757
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 758
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 761
    .end local v2    # "i":I
    :cond_f
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v2, :cond_18

    .line 762
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    .line 765
    :cond_18
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_21

    .line 766
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    .line 768
    :cond_21
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getComputedRadius()I

    move-result v2

    int-to-float v2, v2

    .line 769
    .local v2, "newRadius":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_93

    .line 770
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleAnimationSession;

    .line 771
    .local v4, "s":Landroid/graphics/drawable/RippleAnimationSession;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleAnimationSession;->setRadius(F)V

    .line 772
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 773
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/RippleShader;->setResolution(FF)V

    .line 774
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    .local v5, "cx":F
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    .line 775
    .local v6, "cy":F
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/graphics/drawable/RippleShader;->setOrigin(FF)V

    .line 776
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 777
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->isForceSoftware()Z

    move-result v7

    if-nez v7, :cond_90

    .line 778
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleAnimationSession;->getCanvasProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v7

    .line 779
    invoke-static {v5}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v8

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 769
    .end local v4    # "s":Landroid/graphics/drawable/RippleAnimationSession;
    .end local v5    # "cx":F
    .end local v6    # "cy":F
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 782
    .end local v3    # "i":I
    :cond_93
    return-void
.end method

.method private greylist-max-o pruneRipples()V
    .registers 7

    .line 1037
    const/4 v0, 0x0

    .line 1040
    .local v0, "remaining":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 1041
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1042
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v2, :cond_1a

    .line 1043
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1044
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "remaining":I
    .local v4, "remaining":I
    aget-object v5, v1, v3

    aput-object v5, v1, v0

    move v0, v4

    .line 1042
    .end local v4    # "remaining":I
    .restart local v0    # "remaining":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1049
    .end local v3    # "i":I
    :cond_1a
    move v3, v0

    .restart local v3    # "i":I
    :goto_1b
    if-ge v3, v2, :cond_23

    .line 1050
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1053
    .end local v3    # "i":I
    :cond_23
    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1054
    return-void
.end method

.method private greylist-max-o setRippleActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 347
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_1f

    .line 348
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_16

    .line 350
    if-eqz p1, :cond_12

    .line 351
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    goto :goto_1f

    .line 353
    :cond_12
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_1f

    .line 356
    :cond_16
    if-eqz p1, :cond_1c

    .line 357
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->startPatternedAnimation()V

    goto :goto_1f

    .line 359
    :cond_1c
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->exitPatternedAnimation()V

    .line 363
    :cond_1f
    :goto_1f
    return-void
.end method

.method private blacklist startBackgroundAnimation()V
    .registers 5

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRunBackgroundAnimation:Z

    .line 872
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_11

    .line 873
    const-string v0, "RippleDrawable"

    const-string v1, "Thread doesn\'t have a looper. Skipping animation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void

    .line 876
    :cond_11
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundOpacity:F

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    .line 877
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/graphics/drawable/RippleDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 878
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 879
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 883
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 884
    return-void
.end method

.method private blacklist startPatternedAnimation()V
    .registers 2

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mAddRipple:Z

    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 843
    return-void
.end method

.method private greylist-max-o tryRippleEnter()V
    .registers 9

    .line 679
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7

    .line 682
    return-void

    .line 685
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_34

    .line 688
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_19

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 690
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 691
    .local v0, "x":F
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    move v5, v0

    move v6, v1

    .local v1, "y":F
    goto :goto_27

    .line 693
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_19
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 694
    .restart local v0    # "x":F
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    move v5, v0

    move v6, v1

    .line 697
    .end local v0    # "x":F
    .local v5, "x":F
    .local v6, "y":F
    :goto_27
    new-instance v2, Landroid/graphics/drawable/RippleForeground;

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    iget-boolean v7, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/RippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V

    iput-object v2, v3, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    goto :goto_35

    .line 685
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_34
    move-object v3, p0

    .line 700
    :goto_35
    iget-object v0, v3, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iget-object v1, v3, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FI)V

    .line 701
    iget-object v0, v3, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->enter()V

    .line 702
    return-void
.end method

.method private greylist-max-o tryRippleExit()V
    .registers 4

    .line 709
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_22

    .line 710
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_e

    .line 711
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/RippleForeground;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 713
    :cond_e
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    aput-object v2, v0, v1

    .line 714
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .line 717
    :cond_22
    return-void
.end method

.method private greylist-max-o updateLocalState()V
    .registers 2

    .line 1408
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1409
    return-void
.end method

.method private greylist-max-o updateMaskShaderIfNeeded()V
    .registers 10

    .line 1060
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v0, :cond_5

    .line 1061
    return-void

    .line 1064
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v0

    .line 1065
    .local v0, "maskType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 1066
    return-void

    .line 1069
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 1071
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1072
    .local v2, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_c2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto/16 :goto_c2

    .line 1085
    :cond_1e
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1086
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v3, v5, :cond_42

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1087
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v3, v5, :cond_3c

    goto :goto_42

    .line 1098
    :cond_3c
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_72

    .line 1088
    :cond_42
    :goto_42
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4b

    .line 1089
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1092
    :cond_4b
    nop

    .line 1093
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 1092
    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1094
    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    .line 1096
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1101
    :goto_72
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_7e

    .line 1102
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    goto :goto_83

    .line 1104
    :cond_7e
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1107
    :goto_83
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_99

    .line 1108
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1109
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1113
    :cond_99
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1114
    .local v3, "saveCount":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1115
    .local v4, "left":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1116
    .local v5, "top":I
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1117
    const/4 v6, 0x2

    if-ne v0, v6, :cond_b5

    .line 1118
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    goto :goto_bc

    .line 1119
    :cond_b5
    if-ne v0, v1, :cond_bc

    .line 1120
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 1122
    :cond_bc
    :goto_bc
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1123
    return-void

    .line 1073
    .end local v3    # "saveCount":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    :cond_c2
    :goto_c2
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v1, :cond_d2

    .line 1074
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1075
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 1076
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    .line 1077
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1079
    :cond_d2
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 1080
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1081
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 8
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 599
    .local v0, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    .line 602
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 604
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 605
    .local v1, "color":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1c

    .line 606
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v1, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 609
    :cond_1c
    nop

    .line 610
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 611
    .local v2, "effectColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_28

    .line 612
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v2, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    .line 615
    :cond_28
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 617
    return-void
.end method

.method private greylist-max-o verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_16

    goto :goto_33

    .line 622
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 629
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 631
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 632
    .local v0, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-nez v0, :cond_8

    .line 633
    return-void

    .line 636
    :cond_8
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v1, :cond_29

    .line 637
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 640
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_14
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 641
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_1a} :catch_20
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 645
    :goto_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 646
    goto :goto_29

    .line 645
    :catchall_1e
    move-exception v2

    goto :goto_25

    .line 642
    :catch_20
    move-exception v2

    .line 643
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_21
    invoke-static {v2}, Landroid/graphics/drawable/RippleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1a

    .line 645
    :goto_25
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 646
    throw v2

    .line 649
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_29
    :goto_29
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3d

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 650
    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 653
    :cond_3d
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 654
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method bridge synthetic blacklist createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1327
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 808
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_a

    .line 809
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawSolid(Landroid/graphics/Canvas;)V

    goto :goto_d

    .line 811
    :cond_a
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawPatterned(Landroid/graphics/Canvas;)V

    .line 813
    :goto_d
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1308
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public whitelist getDirtyBounds()Landroid/graphics/Rect;
    .registers 10

    .line 1262
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1263
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1264
    .local v0, "drawingBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 1265
    .local v1, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1266
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1268
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    float-to-int v2, v2

    .line 1269
    .local v2, "cX":I
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-int v3, v3

    .line 1270
    .local v3, "cY":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 1272
    .local v4, "rippleBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 1273
    .local v5, "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    iget v6, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 1274
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_25
    if-ge v7, v6, :cond_35

    .line 1275
    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/RippleForeground;->getBounds(Landroid/graphics/Rect;)V

    .line 1276
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1277
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1274
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1280
    .end local v7    # "i":I
    :cond_35
    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 1281
    .local v7, "background":Landroid/graphics/drawable/RippleBackground;
    if-eqz v7, :cond_42

    .line 1282
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 1283
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1284
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1287
    :cond_42
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1288
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1289
    return-object v1

    .line 1291
    .end local v0    # "drawingBounds":Landroid/graphics/Rect;
    .end local v1    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v2    # "cX":I
    .end local v3    # "cY":I
    .end local v4    # "rippleBounds":Landroid/graphics/Rect;
    .end local v5    # "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    .end local v6    # "N":I
    .end local v7    # "background":Landroid/graphics/drawable/RippleBackground;
    :cond_4d
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEffectColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 515
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 748
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 749
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 314
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 8
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 792
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 793
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 794
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 795
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_23

    .line 796
    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_20

    .line 797
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 798
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    return-void

    .line 795
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 801
    .end local v3    # "i":I
    :cond_23
    return-void
.end method

.method public whitelist getRadius()I
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public blacklist getTargetBackgroundOpacity()F
    .registers 2

    .line 853
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTargetBackgroundOpacity:F

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    sget-object v0, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 547
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    .line 550
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 552
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 553
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 554
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 556
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 557
    return-void
.end method

.method public whitelist invalidateSelf()V
    .registers 2

    .line 1023
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 1024
    return-void
.end method

.method greylist-max-o invalidateSelf(Z)V
    .registers 3
    .param p1, "invalidateMask"    # Z

    .line 1027
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 1029
    if-eqz p1, :cond_8

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 1034
    :cond_8
    return-void
.end method

.method public whitelist isProjected()Z
    .registers 6

    .line 443
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 444
    return v1

    .line 453
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 454
    .local v0, "radius":I
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 455
    .local v2, "drawableBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 456
    .local v3, "hotspotBounds":Landroid/graphics/Rect;
    const/4 v4, -0x1

    if-eq v0, v4, :cond_32

    .line 457
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_32

    .line 458
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_32

    .line 459
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 460
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 461
    :cond_31
    return v1

    .line 464
    :cond_32
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 2

    .line 274
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    .line 276
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_c

    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    .line 280
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_15

    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->jumpToFinal()V

    .line 284
    :cond_15
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    .line 285
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->endPatternedAnimations()V

    .line 286
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1313
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1317
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 1320
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1322
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 390
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 392
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_f

    .line 393
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 397
    :cond_f
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 398
    .local v0, "count":I
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .line 399
    .local v1, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_1e

    .line 400
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 403
    .end local v2    # "i":I
    :cond_1e
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_27

    .line 404
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    .line 407
    :cond_27
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v2, :cond_30

    .line 408
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    .line 410
    :cond_30
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 411
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 13
    .param p1, "stateSet"    # [I

    .line 319
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v0

    .line 321
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 322
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .line 323
    .local v2, "pressed":Z
    const/4 v3, 0x0

    .line 324
    .local v3, "focused":Z
    const/4 v4, 0x0

    .line 325
    .local v4, "hovered":Z
    const/4 v5, 0x0

    .line 327
    .local v5, "windowFocused":Z
    array-length v6, p1

    const/4 v7, 0x0

    move v8, v7

    :goto_c
    if-ge v8, v6, :cond_35

    aget v9, p1, v8

    .line 328
    .local v9, "state":I
    const v10, 0x101009e

    if-ne v9, v10, :cond_17

    .line 329
    const/4 v1, 0x1

    goto :goto_32

    .line 330
    :cond_17
    const v10, 0x101009c

    if-ne v9, v10, :cond_1e

    .line 331
    const/4 v3, 0x1

    goto :goto_32

    .line 332
    :cond_1e
    const v10, 0x10100a7

    if-ne v9, v10, :cond_25

    .line 333
    const/4 v2, 0x1

    goto :goto_32

    .line 334
    :cond_25
    const v10, 0x1010367

    if-ne v9, v10, :cond_2c

    .line 335
    const/4 v4, 0x1

    goto :goto_32

    .line 336
    :cond_2c
    const v10, 0x101009d

    if-ne v9, v10, :cond_32

    .line 337
    const/4 v5, 0x1

    .line 327
    .end local v9    # "state":I
    :cond_32
    :goto_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 340
    :cond_35
    if-eqz v1, :cond_3a

    if-eqz v2, :cond_3a

    const/4 v7, 0x1

    :cond_3a
    invoke-direct {p0, v7}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    .line 341
    invoke-virtual {p0, v4, v3, v2, v5}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZZZ)V

    .line 343
    return v0
.end method

.method public blacklist setBackgroundActive(ZZZZ)V
    .registers 8
    .param p1, "hovered"    # Z
    .param p2, "focused"    # Z
    .param p3, "pressed"    # Z
    .param p4, "windowFocused"    # Z

    .line 369
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v0, :cond_31

    .line 370
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_27

    if-nez p1, :cond_e

    if-eqz p2, :cond_27

    .line 371
    :cond_e
    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(FI)V

    .line 374
    :cond_27
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_3f

    .line 375
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, p2, p1, p3}, Landroid/graphics/drawable/RippleBackground;->setState(ZZZ)V

    goto :goto_3f

    .line 378
    :cond_31
    if-nez p2, :cond_3a

    if-eqz p1, :cond_36

    goto :goto_3a

    .line 383
    :cond_36
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->exitPatternedBackgroundAnimation()V

    goto :goto_3f

    .line 379
    :cond_3a
    :goto_3a
    if-nez p3, :cond_3f

    .line 380
    invoke-direct {p0, p2, p1, p4}, Landroid/graphics/drawable/RippleDrawable;->enterPatternedBackgroundAnimation(ZZZ)V

    .line 386
    :cond_3f
    :goto_3f
    return-void
.end method

.method public whitelist setColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 489
    if-eqz p1, :cond_b

    .line 492
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 494
    return-void

    .line 490
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 561
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 562
    const v0, 0x102002e

    if-ne p1, v0, :cond_10

    .line 563
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 564
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 567
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_12
    return v1
.end method

.method public whitelist setEffectColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 504
    if-eqz p1, :cond_b

    .line 507
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 509
    return-void

    .line 505
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setForceSoftware(Z)V
    .registers 2
    .param p1, "forceSoftware"    # Z

    .line 1303
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    .line 1304
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 663
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 664
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 665
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_f

    .line 666
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 669
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_18

    .line 670
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    .line 672
    :cond_18
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    .line 741
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 743
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 744
    return-void
.end method

.method public whitelist setPaddingMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 589
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 590
    return-void
.end method

.method public whitelist setRadius(I)V
    .registers 3
    .param p1, "radius"    # I

    .line 526
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 528
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 415
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 417
    .local v0, "changed":Z
    if-nez p1, :cond_a

    .line 418
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    goto :goto_20

    .line 419
    :cond_a
    if-eqz v0, :cond_20

    .line 422
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_1d

    .line 423
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-nez v1, :cond_1a

    .line 424
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    goto :goto_1d

    .line 426
    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 431
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    .line 434
    :cond_20
    :goto_20
    return v0
.end method

.method greylist updateRipplePaint()Landroid/graphics/Paint;
    .registers 10

    .line 1205
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 1206
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 1207
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1208
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1211
    :cond_18
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 1212
    .local v0, "x":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 1214
    .local v2, "y":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    .line 1217
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_7c

    .line 1218
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1219
    .local v3, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v4, v1, :cond_41

    .line 1220
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_4e

    .line 1222
    :cond_41
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1224
    :goto_4e
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1226
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v4, v1, :cond_7c

    .line 1227
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5c
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7c

    .line 1228
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleAnimationSession;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession;->getProperties()Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->getShader()Landroid/graphics/drawable/RippleShader;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/RippleShader;->setShader(Landroid/graphics/Shader;)V

    .line 1227
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 1235
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "i":I
    :cond_7c
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1236
    .local v3, "color":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 1238
    .local v4, "p":Landroid/graphics/Paint;
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v6, :cond_cd

    .line 1242
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v6, v6, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    if-ne v6, v1, :cond_98

    move v1, v3

    goto :goto_9a

    :cond_98
    or-int v1, v3, v5

    .line 1243
    .local v1, "maskColor":I
    :goto_9a
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v6

    if-eq v6, v1, :cond_be

    .line 1244
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget-object v7, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1245
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    or-int v7, v3, v5

    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1246
    invoke-virtual {v8}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mFocusColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1248
    :cond_be
    and-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1249
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1250
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1251
    .end local v1    # "maskColor":I
    goto :goto_d7

    .line 1252
    :cond_cd
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1253
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1254
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1257
    :goto_d7
    return-object v4
.end method

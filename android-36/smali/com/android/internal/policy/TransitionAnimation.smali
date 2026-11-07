.class public Lcom/android/internal/policy/TransitionAnimation;
.super Ljava/lang/Object;
.source "TransitionAnimation.java"


# static fields
.field private static final blacklist CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field public static final blacklist DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final blacklist RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final blacklist RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final blacklist THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final blacklist TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final blacklist WALLPAPER_TRANSITION_CHANGE:I = 0x1

.field public static final blacklist WALLPAPER_TRANSITION_CLOSE:I = 0x3

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_CLOSE:I = 0x5

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_OPEN:I = 0x4

.field public static final blacklist WALLPAPER_TRANSITION_NONE:I = 0x0

.field public static final blacklist WALLPAPER_TRANSITION_OPEN:I = 0x2


# instance fields
.field private final blacklist mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mClipRevealTranslationY:I

.field private final blacklist mConfigShortAnimTime:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDebug:Z

.field private final blacklist mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mDefaultWindowAnimationStyleResId:I

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLowRamRecentsEnabled:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTmpFromClipRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpToClipRect:Landroid/graphics/Rect;

.field private final blacklist mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public static synthetic blacklist $r8$lambda$nV5dl0nO-bayQzttfmqKVLs_2gE(Lcom/android/internal/policy/TransitionAnimation;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zYxFxJxkv5EOujazB0_cD5CJZ3Q(Lcom/android/internal/policy/TransitionAnimation;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$1(F)F

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debug"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 116
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 137
    iput-boolean p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    .line 138
    iput-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    .line 140
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 142
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 144
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 169
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 173
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-void
.end method

.method private static blacklist calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 7
    .param p0, "cutOff"    # Z
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "displayFrame"    # Landroid/graphics/Rect;

    .line 1168
    if-nez p0, :cond_5

    .line 1169
    const-wide/16 v0, 0x150

    return-wide v0

    .line 1171
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1172
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1171
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1173
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x43a80000    # 336.0f

    add-float/2addr v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method public static blacklist computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .line 1287
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 1288
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 1289
    int-to-float v1, p0

    return v1

    .line 1291
    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static blacklist configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 4
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "layer"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 1334
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 1335
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1337
    invoke-virtual {p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1340
    :cond_1c
    return-void
.end method

.method private blacklist createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 1055
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 27
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 1079
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 1080
    .local v3, "sourceWidth":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 1081
    .local v4, "sourceHeight":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1082
    .local v5, "destWidth":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1083
    .local v6, "destHeight":F
    if-eqz p4, :cond_1f

    div-float v7, v3, v5

    goto :goto_21

    :cond_1f
    div-float v7, v5, v3

    :goto_21
    move v9, v7

    .line 1084
    .local v9, "scaleH":F
    if-eqz p4, :cond_27

    div-float v7, v4, v6

    goto :goto_29

    :cond_27
    div-float v7, v6, v4

    :goto_29
    move v11, v7

    .line 1085
    .local v11, "scaleV":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1086
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/4 v8, 0x0

    if-nez v2, :cond_35

    .line 1087
    move v10, v8

    goto :goto_3a

    :cond_35
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_3a
    move v15, v10

    .line 1088
    .local v15, "surfaceInsetsH":I
    if-nez v2, :cond_3e

    .line 1089
    goto :goto_43

    :cond_3e
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    .line 1092
    .local v8, "surfaceInsetsV":I
    :goto_43
    if-eqz p4, :cond_47

    move v10, v5

    goto :goto_48

    :cond_47
    move v10, v3

    :goto_48
    int-to-float v12, v15

    add-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v10, v12

    .line 1093
    .local v13, "scaleHCenter":F
    if-eqz p4, :cond_52

    move v10, v6

    goto :goto_53

    :cond_52
    move v10, v4

    :goto_53
    int-to-float v14, v8

    add-float/2addr v10, v14

    div-float v14, v10, v12

    .line 1094
    .local v14, "scaleVCenter":F
    if-eqz p4, :cond_67

    .line 1095
    move v10, v8

    .end local v8    # "surfaceInsetsV":I
    .local v10, "surfaceInsetsV":I
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move v12, v10

    .end local v10    # "surfaceInsetsV":I
    .local v12, "surfaceInsetsV":I
    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v16, v12

    .end local v12    # "surfaceInsetsV":I
    .local v16, "surfaceInsetsV":I
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_76

    .line 1096
    .end local v16    # "surfaceInsetsV":I
    .restart local v8    # "surfaceInsetsV":I
    :cond_67
    move/from16 v16, v8

    .end local v8    # "surfaceInsetsV":I
    .restart local v16    # "surfaceInsetsV":I
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move v10, v9

    .end local v9    # "scaleH":F
    .local v10, "scaleH":F
    const/high16 v9, 0x3f800000    # 1.0f

    move v12, v11

    .end local v11    # "scaleV":F
    .local v12, "scaleV":F
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move v9, v10

    move v11, v12

    .end local v10    # "scaleH":F
    .end local v12    # "scaleV":F
    .restart local v9    # "scaleH":F
    .restart local v11    # "scaleV":F
    :goto_76
    nop

    .line 1097
    .local v8, "scale":Landroid/view/animation/ScaleAnimation;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 1098
    .local v10, "sourceHCenter":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v12, v12, v17

    .line 1099
    .local v12, "sourceVCenter":I
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v0, v0, v17

    .line 1100
    .local v0, "destHCenter":I
    move/from16 v17, v0

    .end local v0    # "destHCenter":I
    .local v17, "destHCenter":I
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v0, v0, v18

    .line 1101
    .local v0, "destVCenter":I
    if-eqz p4, :cond_a5

    sub-int v18, v10, v17

    goto :goto_a7

    :cond_a5
    sub-int v18, v17, v10

    :goto_a7
    move/from16 v19, v18

    .line 1102
    .local v19, "fromX":I
    if-eqz p4, :cond_ae

    sub-int v18, v12, v0

    goto :goto_b0

    :cond_ae
    sub-int v18, v0, v12

    :goto_b0
    move/from16 v20, v18

    .line 1103
    .local v20, "fromY":I
    move/from16 v18, v0

    .end local v0    # "destVCenter":I
    .local v18, "destVCenter":I
    if-eqz p4, :cond_c9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v1, v19

    .end local v19    # "fromX":I
    .local v1, "fromX":I
    int-to-float v2, v1

    move/from16 v19, v3

    move/from16 v3, v20

    move/from16 v20, v4

    .end local v4    # "sourceHeight":F
    .local v3, "fromY":I
    .local v19, "sourceWidth":F
    .local v20, "sourceHeight":F
    int-to-float v4, v3

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "destWidth":F
    .local v21, "destWidth":F
    invoke-direct {v0, v2, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_db

    .line 1104
    .end local v1    # "fromX":I
    .end local v21    # "destWidth":F
    .local v3, "sourceWidth":F
    .restart local v4    # "sourceHeight":F
    .restart local v5    # "destWidth":F
    .local v19, "fromX":I
    .local v20, "fromY":I
    :cond_c9
    move/from16 v21, v5

    move/from16 v1, v19

    const/4 v5, 0x0

    move/from16 v19, v3

    move/from16 v3, v20

    move/from16 v20, v4

    .end local v4    # "sourceHeight":F
    .end local v5    # "destWidth":F
    .restart local v1    # "fromX":I
    .local v3, "fromY":I
    .local v19, "sourceWidth":F
    .local v20, "sourceHeight":F
    .restart local v21    # "destWidth":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v1

    int-to-float v4, v3

    invoke-direct {v0, v5, v2, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_db
    nop

    .line 1105
    .local v0, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1106
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1107
    return-object v7
.end method

.method private static blacklist createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "fromX"    # F
    .param p1, "toX"    # F
    .param p2, "fromY"    # F
    .param p3, "toY"    # F

    .line 1217
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static blacklist createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interpolator"    # Lcom/android/internal/policy/LogDecelerateInterpolator;
    .param p2, "onWallpaper"    # Z
    .param p3, "goingToNotificationShade"    # Z
    .param p4, "subtleAnimation"    # Z

    .line 1307
    if-eqz p3, :cond_a

    .line 1308
    const v0, 0x10a0063

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1312
    :cond_a
    if-eqz p4, :cond_10

    .line 1313
    const v0, 0x10a0064

    .local v0, "resource":I
    goto :goto_19

    .line 1314
    .end local v0    # "resource":I
    :cond_10
    if-eqz p2, :cond_16

    .line 1315
    const v0, 0x10a0065

    .restart local v0    # "resource":I
    goto :goto_19

    .line 1317
    .end local v0    # "resource":I
    :cond_16
    const v0, 0x10a0062

    .line 1320
    .restart local v0    # "resource":I
    :goto_19
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 1323
    .local v1, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    .line 1324
    .local v2, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_29
    if-ltz v3, :cond_37

    .line 1325
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1324
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 1328
    .end local v3    # "i":I
    :cond_37
    return-object v1
.end method

.method public static blacklist getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F
    .registers 21
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1380
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1381
    return v1

    .line 1383
    :cond_6
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    .line 1385
    .local v2, "format":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c3

    invoke-static {v0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v6, p1

    goto/16 :goto_c5

    .line 1389
    :cond_17
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v5

    invoke-static {v4, v5, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    .line 1391
    .local v4, "ir":Landroid/media/ImageReader;
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 1392
    invoke-virtual {v4}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v5

    .line 1393
    .local v5, "image":Landroid/media/Image;
    if-eqz v5, :cond_c2

    invoke-virtual {v5}, Landroid/media/Image;->getPlaneCount()I

    move-result v7

    if-ge v7, v3, :cond_3a

    goto/16 :goto_c2

    .line 1397
    :cond_3a
    invoke-virtual {v5}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v7, 0x0

    aget-object v1, v1, v7

    .line 1398
    .local v1, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1399
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v9

    .line 1400
    .local v9, "width":I
    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v10

    .line 1401
    .local v10, "height":I
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    .line 1402
    .local v11, "pixelStride":I
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 1403
    .local v12, "rowStride":I
    const/16 v13, 0xa

    .line 1404
    .local v13, "sampling":I
    const/16 v14, 0x100

    new-array v14, v14, [I

    .line 1407
    .local v14, "histogram":[I
    const/4 v15, 0x0

    .line 1408
    .local v15, "i":I
    const/16 v16, 0x0

    .local v16, "x":I
    move/from16 v17, v3

    add-int/lit8 v3, v9, -0xa

    move/from16 v7, v16

    .end local v16    # "x":I
    .local v3, "size":I
    .local v7, "x":I
    :goto_64
    if-ge v7, v3, :cond_82

    .line 1409
    const/4 v0, 0x0

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v16

    .line 1410
    .local v16, "topLm":I
    add-int/lit8 v0, v10, -0x1

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v0

    .line 1411
    .local v0, "bottomLm":I
    aget v18, v14, v16

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v16

    .line 1412
    aget v18, v14, v0

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v0

    .line 1408
    .end local v0    # "bottomLm":I
    .end local v16    # "topLm":I
    add-int/lit8 v7, v7, 0xa

    move-object/from16 v0, p0

    goto :goto_64

    .line 1416
    .end local v3    # "size":I
    .end local v7    # "x":I
    :cond_82
    const/4 v0, 0x0

    .local v0, "y":I
    add-int/lit8 v3, v10, -0xa

    .restart local v3    # "size":I
    :goto_85
    if-ge v0, v3, :cond_a1

    .line 1417
    const/4 v7, 0x0

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v16

    .line 1418
    .local v16, "leftLm":I
    add-int/lit8 v7, v9, -0x1

    invoke-static {v8, v7, v0, v11, v12}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v7

    .line 1419
    .local v7, "rightLm":I
    aget v18, v14, v16

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v16

    .line 1420
    aget v18, v14, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v14, v7

    .line 1416
    .end local v7    # "rightLm":I
    .end local v16    # "leftLm":I
    add-int/lit8 v0, v0, 0xa

    goto :goto_85

    .line 1423
    .end local v0    # "y":I
    .end local v3    # "size":I
    :cond_a1
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 1426
    add-int v0, v9, v10

    div-int/lit8 v0, v0, 0xa

    .line 1427
    .local v0, "halfNum":I
    const/4 v3, 0x0

    .line 1428
    .local v3, "sum":I
    const/4 v7, 0x0

    .line 1429
    .local v7, "medianLuminance":I
    const/4 v15, 0x0

    :goto_ab
    move-object/from16 v16, v1

    .end local v1    # "plane":Landroid/media/Image$Plane;
    .local v16, "plane":Landroid/media/Image$Plane;
    array-length v1, v14

    if-ge v15, v1, :cond_bc

    .line 1430
    aget v1, v14, v15

    add-int/2addr v3, v1

    .line 1431
    if-lt v3, v0, :cond_b7

    .line 1432
    move v7, v15

    .line 1433
    goto :goto_bc

    .line 1429
    :cond_b7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    goto :goto_ab

    .line 1436
    :cond_bc
    :goto_bc
    int-to-float v1, v7

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v1, v1, v17

    return v1

    .line 1394
    .end local v0    # "halfNum":I
    .end local v3    # "sum":I
    .end local v7    # "medianLuminance":I
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "pixelStride":I
    .end local v12    # "rowStride":I
    .end local v13    # "sampling":I
    .end local v14    # "histogram":[I
    .end local v15    # "i":I
    .end local v16    # "plane":Landroid/media/Image$Plane;
    :cond_c2
    :goto_c2
    return v1

    .line 1385
    .end local v4    # "ir":Landroid/media/ImageReader;
    .end local v5    # "image":Landroid/media/Image;
    :cond_c3
    move-object/from16 v6, p1

    .line 1386
    :goto_c5
    return v1
.end method

.method public static blacklist getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F
    .registers 5
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p2, "sourceSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 1354
    invoke-static {p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1357
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/view/SurfaceControl;II)F

    move-result v0

    return v0

    .line 1360
    :cond_13
    invoke-static {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    return v0
.end method

.method public static blacklist getBorderLuma(Landroid/view/SurfaceControl;II)F
    .registers 6
    .param p0, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1365
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1366
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 1367
    .local v0, "buffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v0, :cond_10

    .line 1368
    const/4 v1, 0x0

    return v1

    .line 1370
    :cond_10
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 1371
    .local v1, "hwBuffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v2

    .line 1372
    .local v2, "luma":F
    if-eqz v1, :cond_21

    .line 1373
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1375
    :cond_21
    return v2
.end method

.method private blacklist getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 397
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    if-eqz p1, :cond_17

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object v3, v1

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    if-eqz p1, :cond_2b

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2b
    move-object v3, v1

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_37
    if-eqz p1, :cond_7a

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_7a

    .line 406
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_46

    :cond_44
    const-string v0, "android"

    .line 407
    .local v0, "packageName":Ljava/lang/String;
    :goto_46
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 408
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_53

    .line 409
    const-string v0, "android"

    .line 411
    :cond_53
    iget-boolean v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v2, :cond_6f

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6f
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 417
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_7a
    return-object v1
.end method

.method private blacklist getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 442
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCachedAnimations(Ljava/lang/String;II)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "userId"    # I

    .line 422
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_34

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 424
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_34
    if-eqz p1, :cond_66

    .line 427
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_3f

    .line 428
    const-string p1, "android"

    .line 430
    :cond_3f
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_5b

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_5b
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 437
    :cond_66
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "defaultStartRect"    # Landroid/graphics/Rect;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1069
    if-nez p1, :cond_14

    if-nez p2, :cond_14

    .line 1070
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for container not available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c

    .line 1073
    :cond_14
    if-eqz p1, :cond_18

    move-object v0, p1

    goto :goto_19

    :cond_18
    move-object v0, p2

    :goto_19
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1075
    :goto_1c
    return-void
.end method

.method private static blacklist getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I
    .registers 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I

    .line 1442
    mul-int v0, p2, p4

    mul-int v1, p1, p3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 1445
    .local v0, "color":I
    and-int/lit16 v1, v0, 0xff

    .line 1446
    .local v1, "r":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1447
    .local v2, "g":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 1449
    .local v3, "b":I
    mul-int/lit8 v4, v1, 0x8

    mul-int/lit8 v5, v2, 0x16

    add-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x5

    return v4
.end method

.method private blacklist getThumbnailTransitionState(ZZ)I
    .registers 4
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z

    .line 1181
    if-eqz p1, :cond_8

    .line 1182
    if-eqz p2, :cond_6

    .line 1183
    const/4 v0, 0x0

    return v0

    .line 1185
    :cond_6
    const/4 v0, 0x2

    return v0

    .line 1188
    :cond_8
    if-eqz p2, :cond_c

    .line 1189
    const/4 v0, 0x1

    return v0

    .line 1191
    :cond_c
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist getTransitCompatType(II)I
    .registers 3
    .param p0, "transit"    # I
    .param p1, "wallpaperTransit"    # I

    .line 1141
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 1142
    const/16 v0, 0xe

    return v0

    .line 1143
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 1144
    const/16 v0, 0xf

    return v0

    .line 1145
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 1146
    const/4 v0, 0x6

    return v0

    .line 1147
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    .line 1148
    const/4 v0, 0x7

    return v0

    .line 1152
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z
    .registers 5
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 1344
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static blacklist initAttributeCache(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1457
    invoke-static {p0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1458
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/AttributeCache;->monitorPackageRemove(Landroid/os/Handler;)V

    .line 1459
    return-void
.end method

.method private synthetic blacklist lambda$new$0(F)F
    .registers 4
    .param p1, "input"    # F

    .line 148
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_8
    sub-float v1, p1, v0

    div-float/2addr v1, v0

    .line 153
    .local v1, "t":F
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$new$1(F)F
    .registers 4
    .param p1, "input"    # F

    .line 157
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_f

    .line 158
    div-float v0, p1, v0

    .line 159
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    return v1

    .line 161
    .end local v0    # "t":F
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private blacklist loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "animStyleResId"    # I
    .param p3, "animAttr"    # I
    .param p4, "translucent"    # Z
    .param p5, "transit"    # I

    .line 348
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 349
    return-object v0

    .line 351
    :cond_4
    const/4 v1, 0x0

    .line 352
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 353
    .local v2, "context":Landroid/content/Context;
    if-ltz p3, :cond_1f

    .line 354
    if-eqz p1, :cond_d

    move-object v3, p1

    goto :goto_f

    :cond_d
    const-string v3, "android"

    :goto_f
    move-object p1, v3

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v3

    .line 356
    .local v3, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v3, :cond_1f

    .line 357
    iget-object v2, v3, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 358
    iget-object v4, v3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 361
    .end local v3    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_1f
    if-eqz p4, :cond_26

    .line 362
    invoke-static {v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(I)I

    move-result v1

    goto :goto_2d

    .line 363
    :cond_26
    const/4 v3, -0x1

    if-eq p5, v3, :cond_2d

    .line 364
    invoke-static {v1, p5}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v1

    .line 366
    :cond_2d
    :goto_2d
    invoke-static {v1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 369
    :cond_3a
    return-object v0
.end method

.method public static blacklist loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 1297
    :try_start_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1298
    :catch_5
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Unable to load animation resource"

    invoke-static {p2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 12
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 1038
    packed-switch p4, :pswitch_data_14

    .line 1044
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_9

    .line 1041
    .end local v0    # "duration":I
    :pswitch_6
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 1042
    .restart local v0    # "duration":I
    nop

    .line 1047
    :goto_9
    int-to-long v4, v0

    iget-object v6, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "a":Landroid/view/animation/Animation;
    .end local p2    # "appWidth":I
    .end local p3    # "appHeight":I
    .local v1, "a":Landroid/view/animation/Animation;
    .local v2, "appWidth":I
    .local v3, "appHeight":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 8
    .param p0, "a"    # Landroid/view/animation/Animation;
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1201
    if-nez p0, :cond_4

    .line 1202
    const/4 v0, 0x0

    return-object v0

    .line 1205
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_d

    .line 1206
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1208
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1209
    if-eqz p5, :cond_16

    .line 1210
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1212
    :cond_16
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1213
    return-object p0
.end method

.method private blacklist setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 502
    if-nez p1, :cond_12

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_15

    .line 506
    :cond_12
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 508
    :goto_15
    return-void
.end method

.method private blacklist shouldScaleDownThumbnailTransition(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .line 1114
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(I)I
    .registers 2
    .param p0, "anim"    # I

    .line 1130
    const v0, 0x10a000f

    if-ne p0, v0, :cond_9

    .line 1131
    const v0, 0x10a0012

    return v0

    .line 1133
    :cond_9
    const v0, 0x10a000e

    if-ne p0, v0, :cond_12

    .line 1134
    const v0, 0x10a0011

    return v0

    .line 1136
    :cond_12
    return p0
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(II)I
    .registers 3
    .param p0, "anim"    # I
    .param p1, "transit"    # I

    .line 1118
    const/16 v0, 0x18

    if-ne p1, v0, :cond_d

    const v0, 0x10a000f

    if-ne p0, v0, :cond_d

    .line 1120
    const v0, 0x10a0012

    return v0

    .line 1122
    :cond_d
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1a

    const v0, 0x10a000e

    if-ne p0, v0, :cond_1a

    .line 1124
    const v0, 0x10a0011

    return v0

    .line 1126
    :cond_1a
    return p0
.end method


# virtual methods
.method public blacklist createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 41
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "startRect"    # Landroid/graphics/Rect;
    .param p11, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 776
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 777
    .local v9, "appWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 778
    .local v10, "appHeight":I
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v8}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 779
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 780
    .local v14, "thumbWidthI":I
    if-lez v14, :cond_27

    int-to-float v11, v14

    goto :goto_29

    :cond_27
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_29
    move v15, v11

    .line 781
    .local v15, "thumbWidth":F
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 782
    .local v11, "thumbHeightI":I
    if-lez v11, :cond_34

    int-to-float v12, v11

    goto :goto_36

    :cond_34
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_36
    move/from16 v16, v12

    .line 783
    .local v16, "thumbHeight":F
    iget-object v12, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    .line 784
    .local v12, "thumbStartX":I
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v18, v13, v8

    .line 785
    .local v18, "thumbStartY":I
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v19

    .line 787
    .local v19, "thumbTransitState":I
    const/16 v8, 0xe

    const/4 v13, 0x0

    packed-switch v19, :pswitch_data_224

    .line 894
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid thumbnail transition state"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 884
    :pswitch_5c
    if-ne v1, v8, :cond_6b

    .line 887
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    move/from16 v20, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .end local v9    # "appWidth":I
    .local v20, "appWidth":I
    invoke-direct {v8, v13, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move/from16 v9, p3

    .local v8, "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 889
    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v20    # "appWidth":I
    .restart local v9    # "appWidth":I
    :cond_6b
    move/from16 v20, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .end local v9    # "appWidth":I
    .restart local v20    # "appWidth":I
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 891
    .restart local v8    # "a":Landroid/view/animation/Animation;
    move/from16 v9, p3

    goto/16 :goto_217

    .line 873
    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v20    # "appWidth":I
    .restart local v9    # "appWidth":I
    :pswitch_78
    move/from16 v20, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .end local v9    # "appWidth":I
    .restart local v20    # "appWidth":I
    if-ne v1, v8, :cond_87

    .line 876
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v9, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move/from16 v9, p3

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 878
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_87
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 880
    .restart local v8    # "a":Landroid/view/animation/Animation;
    move/from16 v9, p3

    goto/16 :goto_217

    .line 790
    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v20    # "appWidth":I
    .restart local v9    # "appWidth":I
    :pswitch_90
    move/from16 v20, v9

    const/high16 v9, 0x3f800000    # 1.0f

    .end local v9    # "appWidth":I
    .restart local v20    # "appWidth":I
    if-eqz p9, :cond_a0

    if-eqz p2, :cond_a0

    .line 791
    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move/from16 v9, p3

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 793
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_a0
    if-eqz p9, :cond_aa

    .line 794
    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move/from16 v9, p3

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_217

    .line 797
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_aa
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 800
    .local v8, "set":Landroid/view/animation/AnimationSet;
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 801
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 805
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 806
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v13, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 809
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 811
    move/from16 v9, p3

    invoke-direct {v0, v9}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v13

    if-eqz v13, :cond_1c9

    .line 813
    iget v13, v3, Landroid/graphics/Rect;->left:I

    sub-int v13, v20, v13

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v1

    int-to-float v1, v13

    div-float v1, v15, v1

    .line 815
    .local v1, "scale":F
    div-float v13, v16, v1

    float-to-int v13, v13

    .line 816
    .local v13, "unscaledThumbHeight":I
    move/from16 v21, v1

    .end local v1    # "scale":F
    .local v21, "scale":F
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v13

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 818
    new-instance v22, Landroid/view/animation/ScaleAnimation;

    .line 819
    if-eqz p2, :cond_f1

    move/from16 v23, v21

    goto :goto_f3

    :cond_f1
    const/high16 v23, 0x3f800000    # 1.0f

    :goto_f3
    if-eqz p2, :cond_f8

    const/high16 v24, 0x3f800000    # 1.0f

    goto :goto_fa

    :cond_f8
    move/from16 v24, v21

    .line 820
    :goto_fa
    if-eqz p2, :cond_ff

    move/from16 v25, v21

    goto :goto_101

    :cond_ff
    const/high16 v25, 0x3f800000    # 1.0f

    :goto_101
    if-eqz p2, :cond_106

    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_108

    :cond_106
    move/from16 v26, v21

    .line 821
    :goto_108
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v27, v1, v4

    .line 822
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    move/from16 v17, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float v28, v1, v4

    invoke-direct/range {v22 .. v28}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v1, v22

    .line 823
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move/from16 v22, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v22, v4

    int-to-float v4, v4

    .line 824
    .local v4, "targetX":F
    move/from16 v22, v4

    .end local v4    # "targetX":F
    .local v22, "targetX":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    .line 825
    move/from16 v23, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    mul-float v4, v4, v21

    sub-float v4, v23, v4

    .line 826
    .local v4, "x":F
    move/from16 v23, v4

    .end local v4    # "x":F
    .local v23, "x":F
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move/from16 v24, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v24, v4

    int-to-float v4, v4

    .line 827
    .local v4, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v17

    .line 828
    move/from16 v24, v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v17

    mul-float v2, v2, v21

    sub-float v2, v24, v2

    .line 832
    .local v2, "y":F
    move/from16 v17, v2

    .end local v2    # "y":F
    .local v17, "y":F
    iget-boolean v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    if-eqz v2, :cond_185

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_185

    if-eqz p2, :cond_185

    .line 833
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v24, v4

    .end local v4    # "targetY":F
    .local v24, "targetY":F
    iget v4, v2, Landroid/graphics/Rect;->top:I

    move/from16 v25, v4

    iget v4, v5, Landroid/graphics/Rect;->top:I

    add-int v4, v25, v4

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 834
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v2, v17, v2

    .end local v17    # "y":F
    .restart local v2    # "y":F
    goto :goto_189

    .line 832
    .end local v2    # "y":F
    .end local v24    # "targetY":F
    .restart local v4    # "targetY":F
    .restart local v17    # "y":F
    :cond_185
    move/from16 v24, v4

    .line 836
    .end local v4    # "targetY":F
    .restart local v24    # "targetY":F
    move/from16 v2, v17

    .end local v17    # "y":F
    .restart local v2    # "y":F
    :goto_189
    sub-float v4, v22, v23

    .line 837
    .local v4, "startX":F
    sub-float v17, v24, v2

    .line 838
    .local v17, "startY":F
    if-eqz p2, :cond_19b

    .line 839
    move/from16 v25, v2

    .end local v2    # "y":F
    .local v25, "y":F
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v2, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1a6

    .line 840
    .end local v25    # "y":F
    .restart local v2    # "y":F
    :cond_19b
    move/from16 v25, v2

    .end local v2    # "y":F
    .restart local v25    # "y":F
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v2, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1a6
    nop

    .line 841
    .local v2, "clipAnim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1b4

    .line 842
    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v5, v17, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v5

    goto :goto_1be

    .line 843
    :cond_1b4
    const/4 v6, 0x0

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v5, v17, v5

    invoke-static {v6, v4, v6, v5}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v5

    :goto_1be
    nop

    .line 845
    .local v5, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 846
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 847
    invoke-virtual {v8, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 849
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v2    # "clipAnim":Landroid/view/animation/Animation;
    .end local v4    # "startX":F
    .end local v5    # "translateAnim":Landroid/view/animation/Animation;
    .end local v13    # "unscaledThumbHeight":I
    .end local v17    # "startY":F
    .end local v21    # "scale":F
    .end local v22    # "targetX":F
    .end local v23    # "x":F
    .end local v24    # "targetY":F
    .end local v25    # "y":F
    goto :goto_211

    .line 851
    :cond_1c9
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 852
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 854
    if-eqz p2, :cond_1e7

    .line 855
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1f0

    .line 856
    :cond_1e7
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1f0
    nop

    .line 857
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1ff

    .line 858
    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_20a

    .line 860
    :cond_1ff
    const/4 v6, 0x0

    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    invoke-static {v6, v2, v6, v4}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_20a
    nop

    .line 863
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 864
    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 866
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_211
    move-object v1, v8

    .line 867
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 869
    .end local v8    # "set":Landroid/view/animation/AnimationSet;
    nop

    .line 897
    .end local v1    # "a":Landroid/view/animation/Animation;
    .local v8, "a":Landroid/view/animation/Animation;
    :goto_217
    move v1, v11

    move v2, v12

    .end local v11    # "thumbHeightI":I
    .end local v12    # "thumbStartX":I
    .local v1, "thumbHeightI":I
    .local v2, "thumbStartX":I
    const-wide/16 v11, 0x150

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v9, v20

    .end local v20    # "appWidth":I
    .restart local v9    # "appWidth":I
    invoke-static/range {v8 .. v13}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v4

    .end local v9    # "appWidth":I
    .restart local v20    # "appWidth":I
    return-object v4

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_90
        :pswitch_78
        :pswitch_5c
        :pswitch_90
    .end packed-switch
.end method

.method public blacklist createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "transit"    # I
    .param p2, "wallpaperTransit"    # I
    .param p3, "enter"    # Z
    .param p4, "appFrame"    # Landroid/graphics/Rect;
    .param p5, "displayFrame"    # Landroid/graphics/Rect;
    .param p6, "startRect"    # Landroid/graphics/Rect;

    .line 512
    nop

    .line 513
    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v1

    .line 512
    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p3    # "enter":Z
    .end local p4    # "appFrame":Landroid/graphics/Rect;
    .end local p5    # "displayFrame":Landroid/graphics/Rect;
    .end local p6    # "startRect":Landroid/graphics/Rect;
    .local v2, "enter":Z
    .local v3, "appFrame":Landroid/graphics/Rect;
    .local v4, "displayFrame":Landroid/graphics/Rect;
    .local v5, "startRect":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p3

    return-object p3
.end method

.method public blacklist createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 34
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;
    .param p5, "startRect"    # Landroid/graphics/Rect;

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz p2, :cond_13b

    .line 521
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 522
    .local v6, "appWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 526
    .local v11, "appHeight":I
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v15, p5

    invoke-direct {v0, v15, v7}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 528
    const/4 v7, 0x0

    .line 529
    .local v7, "t":F
    if-lez v11, :cond_29

    .line 530
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_2b

    .line 529
    :cond_29
    move/from16 v16, v7

    .line 532
    .end local v7    # "t":F
    .local v16, "t":F
    :goto_2b
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v16

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 533
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 534
    .local v8, "translationX":I
    move v9, v7

    .line 535
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 536
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 537
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 538
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 539
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v12

    .line 540
    .local v10, "clipStartX":I
    sub-int v12, v18, v20

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    .line 541
    .local v12, "clipStartY":I
    const/4 v13, 0x0

    .line 546
    .local v13, "cutOff":Z
    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v18, v20

    if-le v14, v3, :cond_76

    .line 547
    sub-int v3, v18, v20

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v14

    .line 548
    const/4 v9, 0x0

    .line 549
    const/4 v12, 0x0

    .line 550
    const/4 v13, 0x1

    move v3, v7

    move v7, v8

    move v8, v12

    move v12, v9

    goto :goto_7a

    .line 546
    :cond_76
    move v3, v7

    move v7, v8

    move v8, v12

    move v12, v9

    .line 552
    .end local v9    # "translationYCorrection":I
    .local v3, "translationY":I
    .local v7, "translationX":I
    .local v8, "clipStartY":I
    .local v12, "translationYCorrection":I
    :goto_7a
    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v14, v17, v19

    if-le v9, v14, :cond_88

    .line 553
    sub-int v9, v17, v19

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int v7, v9, v14

    .line 554
    const/4 v10, 0x0

    .line 555
    const/4 v13, 0x1

    .line 557
    :cond_88
    iget v9, v2, Landroid/graphics/Rect;->right:I

    add-int v14, v17, v19

    if-ge v9, v14, :cond_a0

    .line 558
    add-int v9, v17, v19

    iget v14, v2, Landroid/graphics/Rect;->right:I

    sub-int v7, v9, v14

    .line 559
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v10, v6, v9

    .line 560
    const/4 v13, 0x1

    move v9, v10

    move v10, v13

    goto :goto_a2

    .line 557
    :cond_a0
    move v9, v10

    move v10, v13

    .line 562
    .end local v13    # "cutOff":Z
    .local v9, "clipStartX":I
    .local v10, "cutOff":Z
    :goto_a2
    int-to-float v13, v7

    int-to-float v14, v3

    move-object/from16 v5, p4

    invoke-static {v10, v13, v14, v5}, Lcom/android/internal/policy/TransitionAnimation;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v13

    .line 566
    .local v13, "duration":J
    new-instance v4, Lcom/android/internal/policy/ClipRectLRAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 567
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v9

    move/from16 v22, v10

    .end local v10    # "cutOff":Z
    .local v22, "cutOff":Z
    const/4 v10, 0x0

    invoke-direct {v4, v9, v2, v10, v6}, Lcom/android/internal/policy/ClipRectLRAnimation;-><init>(IIII)V

    .line 568
    .local v4, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 569
    long-to-float v2, v13

    const/high16 v23, 0x40200000    # 2.5f

    div-float v2, v2, v23

    move/from16 v23, v11

    .end local v11    # "appHeight":I
    .local v23, "appHeight":I
    float-to-long v10, v2

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 571
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v7

    int-to-float v11, v3

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "translationY":I
    .local v25, "translationY":I
    invoke-direct {v2, v10, v3, v11, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 572
    .local v2, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v22, :cond_d8

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_da

    .line 573
    :cond_d8
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 572
    :goto_da
    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 574
    invoke-virtual {v2, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 576
    move v3, v7

    .end local v7    # "translationX":I
    .local v3, "translationX":I
    new-instance v7, Lcom/android/internal/policy/ClipRectTBAnimation;

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 577
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v10, v8

    move-wide/from16 v26, v13

    .end local v13    # "duration":J
    .local v26, "duration":J
    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move v11, v9

    move v9, v10

    .end local v9    # "clipStartX":I
    .local v11, "clipStartX":I
    const/4 v10, 0x0

    move/from16 v5, v23

    move/from16 v23, v11

    move v11, v5

    move/from16 v24, v3

    move/from16 v21, v6

    move-wide/from16 v5, v26

    const/4 v3, 0x0

    .end local v3    # "translationX":I
    .end local v6    # "appWidth":I
    .end local v26    # "duration":J
    .local v5, "duration":J
    .local v11, "appHeight":I
    .local v21, "appWidth":I
    .local v23, "clipStartX":I
    .local v24, "translationX":I
    invoke-direct/range {v7 .. v14}, Lcom/android/internal/policy/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 581
    .local v7, "clipAnimTB":Landroid/view/animation/Animation;
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 582
    invoke-virtual {v7, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 585
    const-wide/16 v9, 0x4

    div-long v13, v5, v9

    .line 586
    .local v13, "alphaDuration":J
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 587
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 588
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 590
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 591
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 592
    invoke-virtual {v3, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 593
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 594
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 595
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 596
    move/from16 v10, v21

    .end local v21    # "appWidth":I
    .local v10, "appWidth":I
    invoke-virtual {v3, v10, v11, v10, v11}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 597
    nop

    .line 598
    .end local v2    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v4    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v5    # "duration":J
    .end local v7    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v8    # "clipStartY":I
    .end local v9    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "appWidth":I
    .end local v11    # "appHeight":I
    .end local v12    # "translationYCorrection":I
    .end local v13    # "alphaDuration":J
    .end local v16    # "t":F
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "halfWidth":I
    .end local v20    # "halfHeight":I
    .end local v22    # "cutOff":Z
    .end local v23    # "clipStartX":I
    .end local v24    # "translationX":I
    .end local v25    # "translationY":I
    .local v3, "anim":Landroid/view/animation/Animation;
    goto :goto_173

    .line 600
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_13b
    move-object/from16 v15, p5

    packed-switch v1, :pswitch_data_174

    .line 606
    const-wide/16 v2, 0x150

    .local v2, "duration":J
    goto :goto_147

    .line 603
    .end local v2    # "duration":J
    :pswitch_143
    iget v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v2, v2

    .line 604
    .restart local v2    # "duration":J
    nop

    .line 609
    :goto_147
    const/16 v4, 0xe

    if-eq v1, v4, :cond_15b

    const/16 v4, 0xf

    if-ne v1, v4, :cond_152

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_15d

    .line 619
    :cond_152
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v10, 0x1

    .local v4, "anim":Landroid/view/animation/Animation;
    goto :goto_167

    .line 609
    .end local v4    # "anim":Landroid/view/animation/Animation;
    :cond_15b
    const/high16 v5, 0x3f800000    # 1.0f

    .line 615
    :goto_15d
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 616
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 621
    :goto_167
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 622
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 623
    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object v3, v4

    .line 625
    .end local v2    # "duration":J
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v3    # "anim":Landroid/view/animation/Animation;
    :goto_173
    return-object v3

    :pswitch_data_174
    .packed-switch 0x6
        :pswitch_143
        :pswitch_143
    .end packed-switch
.end method

.method public blacklist createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .registers 12
    .param p1, "thumbnailDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 1009
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1010
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1012
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 1013
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1014
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1015
    iget-object v4, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105013f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1017
    .local v4, "thumbnailSize":I
    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v0, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v1, v4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1022
    iget-object v5, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1023
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1024
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1026
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    return-object v5
.end method

.method public blacklist createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 257
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 257
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 20
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v4, p3

    invoke-direct {v0, v4, v3}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 461
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 462
    .local v3, "left":I
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 463
    .local v5, "top":I
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v7, v3

    neg-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 465
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 467
    .local v6, "set":Landroid/view/animation/AnimationSet;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 468
    .local v8, "fromWidth":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    .line 469
    .local v9, "toWidth":F
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    .line 473
    .local v10, "fromHeight":F
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    .line 474
    .local v11, "toHeight":F
    const/4 v12, 0x0

    .line 475
    .local v12, "translateAdjustment":I
    cmpg-float v13, v8, v9

    if-gtz v13, :cond_68

    cmpg-float v13, v10, v11

    if-gtz v13, :cond_68

    .line 479
    new-instance v13, Landroid/view/animation/ClipRectAnimation;

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v13, v14, v15}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7c

    .line 483
    :cond_68
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    div-float v14, v8, v9

    div-float v15, v10, v11

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v14, v7, v15, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 487
    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v10

    div-float/2addr v7, v11

    float-to-int v12, v7

    .line 493
    :goto_7c
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    int-to-float v13, v13

    iget v14, v1, Landroid/graphics/Rect;->top:I

    sub-int v14, v5, v14

    sub-int/2addr v14, v12

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v7, v13, v15, v14, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 495
    .local v7, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 496
    const-wide/16 v13, 0x150

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 497
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 498
    return-object v6
.end method

.method public blacklist createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transit"    # I
    .param p2, "wallpaperTransit"    # I
    .param p3, "enter"    # Z
    .param p4, "containingFrame"    # Landroid/graphics/Rect;
    .param p5, "startRect"    # Landroid/graphics/Rect;

    .line 630
    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 22
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "startRect"    # Landroid/graphics/Rect;

    .line 637
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-direct {v0, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 639
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 640
    .local v4, "appHeight":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_66

    .line 642
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float v11, v8, v9

    .line 643
    .local v11, "scaleW":F
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v4

    div-float v13, v8, v9

    .line 644
    .local v13, "scaleH":F
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 645
    invoke-static {v8, v11}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v15

    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 646
    invoke-static {v8, v13}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 647
    .local v10, "scale":Landroid/view/animation/Animation;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 649
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 650
    .local v8, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 652
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 653
    .local v5, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 654
    invoke-virtual {v5, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 655
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 656
    nop

    .line 657
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v10    # "scale":Landroid/view/animation/Animation;
    .end local v11    # "scaleW":F
    .end local v13    # "scaleH":F
    .local v5, "a":Landroid/view/animation/Animation;
    goto :goto_7e

    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_66
    const/16 v8, 0xe

    if-eq v1, v8, :cond_75

    const/16 v8, 0xf

    if-ne v1, v8, :cond_6f

    goto :goto_75

    .line 667
    :cond_6f
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_7e

    .line 663
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_75
    :goto_75
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    .line 664
    .restart local v5    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 674
    :goto_7e
    packed-switch v1, :pswitch_data_98

    .line 680
    const-wide/16 v7, 0x150

    .local v7, "duration":J
    goto :goto_88

    .line 677
    .end local v7    # "duration":J
    :pswitch_84
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v7, v7

    .line 678
    .restart local v7    # "duration":J
    nop

    .line 683
    :goto_88
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 684
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 685
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 686
    invoke-virtual {v5, v2, v4, v2, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 687
    return-object v5

    nop

    :pswitch_data_98
    .packed-switch 0x6
        :pswitch_84
        :pswitch_84
    .end packed-switch
.end method

.method public blacklist createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 33
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p4, "orientation"    # I
    .param p5, "startRect"    # Landroid/graphics/Rect;
    .param p6, "defaultStartRect"    # Landroid/graphics/Rect;
    .param p7, "scaleUp"    # Z

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    .line 910
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_e

    int-to-float v5, v3

    goto :goto_f

    :cond_e
    move v5, v4

    .line 911
    .local v5, "thumbWidth":F
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    .line 912
    .local v6, "thumbHeightI":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 914
    .local v8, "appWidth":I
    int-to-float v7, v8

    div-float v10, v7, v5

    .line 915
    .local v10, "scaleW":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct {v0, v9, v11, v7}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 922
    move/from16 v7, p4

    invoke-direct {v0, v7}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v12

    if-eqz v12, :cond_71

    .line 923
    iget-object v12, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    .line 924
    .local v12, "fromX":F
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    .line 928
    .local v13, "fromY":F
    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float v15, v10, v4

    mul-float/2addr v14, v15

    iget v15, v1, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 929
    .local v14, "toX":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    div-float v16, v4, v10

    sub-float v16, v4, v16

    mul-float v15, v15, v16

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v15, v4

    .line 930
    .local v15, "toY":F
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 931
    .local v4, "pivotX":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v18, v4

    .end local v4    # "pivotX":F
    .local v18, "pivotX":F
    div-int/lit8 v4, v17, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v10

    move/from16 v19, v15

    move v15, v4

    move v4, v12

    move v12, v14

    move/from16 v14, v18

    .local v4, "pivotY":F
    goto :goto_90

    .line 933
    .end local v4    # "pivotY":F
    .end local v12    # "fromX":F
    .end local v13    # "fromY":F
    .end local v14    # "toX":F
    .end local v15    # "toY":F
    .end local v18    # "pivotX":F
    :cond_71
    const/4 v4, 0x0

    .line 934
    .local v4, "pivotX":F
    const/4 v12, 0x0

    .line 935
    .local v12, "pivotY":F
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    .line 936
    .local v13, "fromX":F
    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    .line 937
    .local v14, "fromY":F
    iget v15, v1, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    .line 938
    .local v15, "toX":F
    move/from16 v17, v4

    .end local v4    # "pivotX":F
    .local v17, "pivotX":F
    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move/from16 v19, v15

    move v15, v12

    move/from16 v12, v19

    move/from16 v19, v4

    move v4, v13

    move v13, v14

    move/from16 v14, v17

    .line 940
    .end local v17    # "pivotX":F
    .local v4, "fromX":F
    .local v12, "toX":F
    .local v13, "fromY":F
    .local v14, "pivotX":F
    .local v15, "pivotY":F
    .local v19, "toY":F
    :goto_90
    move/from16 v17, v10

    .end local v10    # "scaleW":F
    .local v17, "scaleW":F
    const-wide/16 v10, 0x150

    if-eqz p7, :cond_160

    .line 942
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    move-wide/from16 v20, v10

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v12

    .end local v12    # "toX":F
    .local v11, "toX":F
    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v22, v13

    .end local v13    # "fromY":F
    .local v22, "fromY":F
    move/from16 v13, v17

    move/from16 v1, v17

    move/from16 v17, v5

    move v5, v11

    move v11, v1

    move/from16 v18, v8

    move-wide/from16 v1, v20

    move/from16 v7, v22

    const/4 v8, 0x0

    .end local v8    # "appWidth":I
    .end local v22    # "fromY":F
    .local v5, "toX":F
    .local v7, "fromY":F
    .local v11, "scaleW":F
    .local v17, "thumbWidth":F
    .local v18, "appWidth":I
    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move v10, v11

    .line 943
    .end local v11    # "scaleW":F
    .local v9, "scale":Landroid/view/animation/Animation;
    .restart local v10    # "scaleW":F
    sget-object v11, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 944
    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 945
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 946
    .local v11, "alpha":Landroid/view/animation/Animation;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 947
    invoke-virtual {v11, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 948
    move/from16 v12, v19

    .end local v19    # "toY":F
    .local v12, "toY":F
    invoke-static {v4, v5, v7, v12}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 949
    .local v8, "translate":Landroid/view/animation/Animation;
    sget-object v13, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 950
    invoke-virtual {v8, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 952
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 953
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 957
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 958
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 959
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 961
    if-eqz p2, :cond_12d

    .line 962
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v2, p2

    move/from16 v19, v3

    .end local v3    # "thumbWidthI":I
    .local v19, "thumbWidthI":I
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v10

    float-to-int v3, v3

    move/from16 v22, v6

    .end local v6    # "thumbHeightI":I
    .local v22, "thumbHeightI":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    move/from16 v23, v10

    .end local v10    # "scaleW":F
    .local v23, "scaleW":F
    iget v10, v2, Landroid/graphics/Rect;->right:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float v10, v10, v23

    float-to-int v10, v10

    move/from16 v24, v12

    .end local v12    # "toY":F
    .local v24, "toY":F
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v12, v12

    int-to-float v12, v12

    mul-float v12, v12, v23

    float-to-int v12, v12

    invoke-virtual {v1, v3, v6, v10, v12}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_137

    .line 961
    .end local v19    # "thumbWidthI":I
    .end local v22    # "thumbHeightI":I
    .end local v23    # "scaleW":F
    .end local v24    # "toY":F
    .restart local v3    # "thumbWidthI":I
    .restart local v6    # "thumbHeightI":I
    .restart local v10    # "scaleW":F
    .restart local v12    # "toY":F
    :cond_12d
    move-object/from16 v2, p2

    move/from16 v19, v3

    move/from16 v22, v6

    move/from16 v23, v10

    move/from16 v24, v12

    .line 968
    .end local v3    # "thumbWidthI":I
    .end local v6    # "thumbHeightI":I
    .end local v10    # "scaleW":F
    .end local v12    # "toY":F
    .restart local v19    # "thumbWidthI":I
    .restart local v22    # "thumbHeightI":I
    .restart local v23    # "scaleW":F
    .restart local v24    # "toY":F
    :goto_137
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 969
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    sget-object v3, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 970
    const-wide/16 v2, 0x150

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 973
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 974
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 975
    invoke-virtual {v2, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 976
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 977
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 978
    nop

    .line 979
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .local v2, "a":Landroid/view/animation/Animation;
    move/from16 v1, v24

    goto :goto_1b4

    .line 981
    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v7    # "fromY":F
    .end local v18    # "appWidth":I
    .end local v22    # "thumbHeightI":I
    .end local v23    # "scaleW":F
    .end local v24    # "toY":F
    .restart local v3    # "thumbWidthI":I
    .local v5, "thumbWidth":F
    .restart local v6    # "thumbHeightI":I
    .local v8, "appWidth":I
    .local v12, "toX":F
    .restart local v13    # "fromY":F
    .local v17, "scaleW":F
    .local v19, "toY":F
    :cond_160
    move/from16 v22, v6

    move/from16 v18, v8

    move v7, v13

    move/from16 v23, v17

    move/from16 v24, v19

    const/4 v8, 0x0

    move-object v13, v1

    move/from16 v19, v3

    move/from16 v17, v5

    move v5, v12

    .end local v3    # "thumbWidthI":I
    .end local v6    # "thumbHeightI":I
    .end local v8    # "appWidth":I
    .end local v12    # "toX":F
    .end local v13    # "fromY":F
    .local v5, "toX":F
    .restart local v7    # "fromY":F
    .local v17, "thumbWidth":F
    .restart local v18    # "appWidth":I
    .local v19, "thumbWidthI":I
    .restart local v22    # "thumbHeightI":I
    .restart local v23    # "scaleW":F
    .restart local v24    # "toY":F
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v12, v23

    move/from16 v10, v23

    move/from16 v1, v24

    .end local v23    # "scaleW":F
    .end local v24    # "toY":F
    .local v1, "toY":F
    .restart local v10    # "scaleW":F
    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 982
    .end local v10    # "scaleW":F
    .restart local v9    # "scale":Landroid/view/animation/Animation;
    .restart local v23    # "scaleW":F
    sget-object v2, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 983
    const-wide/16 v2, 0x150

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 984
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 985
    .local v6, "alpha":Landroid/view/animation/Animation;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 986
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 987
    invoke-static {v5, v4, v1, v7}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 988
    .local v8, "translate":Landroid/view/animation/Animation;
    sget-object v10, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 989
    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 992
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 993
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 994
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 995
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 996
    move-object v3, v2

    .line 999
    .end local v6    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .local v2, "a":Landroid/view/animation/Animation;
    :goto_1b4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move v13, v7

    move/from16 v8, v18

    move-object v7, v2

    .end local v2    # "a":Landroid/view/animation/Animation;
    .end local v18    # "appWidth":I
    .local v7, "a":Landroid/view/animation/Animation;
    .local v8, "appWidth":I
    .restart local v13    # "fromY":F
    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2
.end method

.method public blacklist createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "wallpaperTransit"    # I
    .param p6, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p7, "startRect"    # Landroid/graphics/Rect;

    .line 693
    nop

    .line 694
    invoke-static {p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v4

    .line 693
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "enter":Z
    .end local p2    # "scaleUp":Z
    .end local p3    # "containingFrame":Landroid/graphics/Rect;
    .end local p6    # "thumbnailHeader":Landroid/hardware/HardwareBuffer;
    .end local p7    # "startRect":Landroid/graphics/Rect;
    .local v1, "enter":Z
    .local v2, "scaleUp":Z
    .local v3, "containingFrame":Landroid/graphics/Rect;
    .local v5, "thumbnailHeader":Landroid/hardware/HardwareBuffer;
    .local v6, "startRect":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 27
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p6, "startRect"    # Landroid/graphics/Rect;

    .line 704
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 705
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 707
    .local v3, "appHeight":I
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v5, p6

    invoke-direct {v0, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 708
    if-eqz p5, :cond_1a

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 709
    .local v4, "thumbWidthI":I
    :goto_1b
    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v4, :cond_21

    int-to-float v7, v4

    goto :goto_22

    :cond_21
    move v7, v6

    .line 710
    .local v7, "thumbWidth":F
    :goto_22
    if-eqz p5, :cond_29

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v8

    goto :goto_2a

    :cond_29
    move v8, v3

    .line 711
    .local v8, "thumbHeightI":I
    :goto_2a
    if-lez v8, :cond_2e

    int-to-float v9, v8

    goto :goto_2f

    :cond_2e
    move v9, v6

    .line 712
    .local v9, "thumbHeight":F
    :goto_2f
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v10

    .line 714
    .local v10, "thumbTransitState":I
    const/4 v11, 0x0

    packed-switch v10, :pswitch_data_b2

    .line 761
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v6, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 745
    :pswitch_3f
    int-to-float v12, v2

    div-float v15, v7, v12

    .line 746
    .local v15, "scaleW":F
    int-to-float v12, v3

    div-float v12, v9, v12

    .line 747
    .local v12, "scaleH":F
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    .line 748
    invoke-static {v14, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v18

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    .line 749
    invoke-static {v14, v12}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v19

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v12

    .end local v12    # "scaleH":F
    .local v17, "scaleH":F
    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 751
    .local v13, "scale":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 753
    .local v12, "alpha":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x1

    invoke-direct {v6, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 754
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 755
    invoke-virtual {v6, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    invoke-virtual {v6, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 757
    move-object v11, v6

    .line 758
    .local v11, "a":Landroid/view/animation/Animation;
    goto :goto_ad

    .line 740
    .end local v6    # "set":Landroid/view/animation/AnimationSet;
    .end local v11    # "a":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "scale":Landroid/view/animation/Animation;
    .end local v15    # "scaleW":F
    .end local v17    # "scaleH":F
    :pswitch_76
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 741
    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_ad

    .line 726
    .end local v11    # "a":Landroid/view/animation/Animation;
    :pswitch_7c
    const/16 v12, 0xe

    if-ne v1, v12, :cond_87

    .line 730
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v11, v12

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_ad

    .line 733
    .end local v11    # "a":Landroid/view/animation/Animation;
    :cond_87
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 735
    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_ad

    .line 717
    .end local v11    # "a":Landroid/view/animation/Animation;
    :pswitch_8d
    int-to-float v6, v2

    div-float v12, v7, v6

    .line 718
    .local v12, "scaleW":F
    int-to-float v6, v3

    div-float v14, v9, v6

    .line 719
    .local v14, "scaleH":F
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 720
    invoke-static {v6, v12}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 721
    invoke-static {v6, v14}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v17

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 722
    .restart local v11    # "a":Landroid/view/animation/Animation;
    nop

    .line 764
    .end local v12    # "scaleW":F
    .end local v14    # "scaleH":F
    :goto_ad
    invoke-direct {v0, v11, v2, v3, v1}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_7c
        :pswitch_76
        :pswitch_3f
    .end packed-switch
.end method

.method public blacklist getAnimationResId(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "resId":I
    if-ltz p2, :cond_10

    .line 314
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    .line 315
    .local v1, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v1, :cond_10

    .line 316
    iget-object v2, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 319
    .end local v1    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_10
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 320
    return v0
.end method

.method public blacklist getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 447
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 448
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 453
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 455
    :cond_9
    return v0
.end method

.method public blacklist getDefaultAnimationResId(II)I
    .registers 7
    .param p1, "animAttr"    # I
    .param p2, "transit"    # I

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "resId":I
    if-ltz p1, :cond_14

    .line 327
    const-string v1, "android"

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    .line 329
    .local v1, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v1, :cond_14

    .line 330
    iget-object v2, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 333
    .end local v1    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_14
    invoke-static {v0, p2}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 334
    return v0
.end method

.method public blacklist loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 296
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    .line 298
    .local v2, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 299
    iget-object v1, v2, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 300
    iget-object v3, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 303
    .end local v2    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_14
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 304
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 307
    :cond_25
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "animStyleResId"    # I
    .param p3, "animAttr"    # I
    .param p4, "translucent"    # Z

    .line 377
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "animStyleResId":I
    .end local p3    # "animAttr":I
    .end local p4    # "translucent":Z
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "animStyleResId":I
    .local v3, "animAttr":I
    .local v4, "translucent":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 276
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "userId"    # I

    .line 264
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    .line 266
    .local v0, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v0, :cond_15

    .line 267
    iget-object v1, v0, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 270
    .end local v0    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 245
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppEnterAnimation(I)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "userId"    # I

    .line 238
    const-string v0, "android"

    const v1, 0x10a00bc

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 250
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationAttr(II)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "animAttr"    # I
    .param p2, "transit"    # I

    .line 391
    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    const/4 v4, 0x0

    const-string v1, "android"

    move-object v0, p0

    move v3, p1

    move v5, p2

    .end local p1    # "animAttr":I
    .end local p2    # "transit":I
    .local v3, "animAttr":I
    .local v5, "transit":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;
    .registers 5
    .param p1, "animAttr"    # I
    .param p2, "translucent"    # Z

    .line 384
    const-string v0, "android"

    iget v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationRes(I)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "resId"    # I

    .line 288
    const-string v0, "android"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationRes(II)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "resId"    # I
    .param p2, "userId"    # I

    .line 282
    const-string v0, "android"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transitionFlags"    # I
    .param p2, "onWallpaper"    # Z

    .line 180
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_6
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 185
    .local v0, "toShade":Z
    :goto_f
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_14

    move v1, v2

    .line 187
    .local v1, "subtle":Z
    :cond_14
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2
.end method

.method public blacklist loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 199
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadKeyguardUnoccludeAnimation(I)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "userId"    # I

    .line 193
    const v0, 0x10a00d3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "enter"    # Z

    .line 227
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(ZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityExitAnimation(ZI)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "enter"    # Z
    .param p2, "userId"    # I

    .line 219
    if-eqz p1, :cond_6

    .line 220
    const v0, 0x10a00c4

    goto :goto_9

    .line 221
    :cond_6
    const v0, 0x10a00c5

    .line 219
    :goto_9
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "enter"    # Z

    .line 213
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(ZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityOpenAnimation(ZI)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "enter"    # Z
    .param p2, "userId"    # I

    .line 205
    if-eqz p1, :cond_6

    .line 206
    const v0, 0x10a00c6

    goto :goto_9

    .line 207
    :cond_6
    const v0, 0x10a00c7

    .line 205
    :goto_9
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(II)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

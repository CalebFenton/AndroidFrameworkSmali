.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 135
    const/4 v0, -0x1

    #@8
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@a
    .line 146
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 166
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@13
    .line 168
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1a
    .line 169
    new-instance v0, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@21
    .line 175
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@23
    .line 183
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@25
    const v1, 0x3ecccccd    # 0.4f

    #@28
    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    #@2d
    .line 187
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@2f
    const v1, 0x3e99999a    # 0.3f

    #@32
    const v2, 0x3dcccccd    # 0.1f

    #@35
    invoke-direct {v0, v1, v3, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@38
    .line 186
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@3a
    .line 191
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@3c
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@43
    .line 196
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@45
    .line 197
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    #@47
    .line 199
    const v0, 0x10c000e

    #@4a
    .line 198
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@50
    .line 201
    const v0, 0x10c000f

    #@53
    .line 200
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@59
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v0

    #@5d
    .line 203
    const/high16 v1, 0x10e0000

    #@5f
    .line 202
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@62
    move-result v0

    #@63
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@65
    .line 205
    const v0, 0x10c0003

    #@68
    .line 204
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@6b
    move-result-object v0

    #@6c
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@6e
    .line 206
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    #@70
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    #@73
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    #@75
    .line 218
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    #@77
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    #@7a
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@7c
    .line 230
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@7e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@85
    move-result-object v0

    #@86
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@88
    .line 229
    const/high16 v1, 0x41000000    # 8.0f

    #@8a
    mul-float/2addr v0, v1

    #@8b
    float-to-int v0, v0

    #@8c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    #@8e
    .line 195
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1260
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "unknown state="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 1262
    :pswitch_0
    const-string/jumbo v0, "APP_STATE_IDLE"

    #@1f
    return-object v0

    #@20
    .line 1264
    :pswitch_1
    const-string/jumbo v0, "APP_STATE_READY"

    #@23
    return-object v0

    #@24
    .line 1266
    :pswitch_2
    const-string/jumbo v0, "APP_STATE_RUNNING"

    #@27
    return-object v0

    #@28
    .line 1268
    :pswitch_3
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    #@2b
    return-object v0

    #@2c
    .line 1260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    #@0
    .prologue
    .line 1213
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1254
    :pswitch_0
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 1215
    :pswitch_1
    const-string/jumbo v0, "TRANSIT_UNSET"

    #@a
    return-object v0

    #@b
    .line 1218
    :pswitch_2
    const-string/jumbo v0, "TRANSIT_NONE"

    #@e
    return-object v0

    #@f
    .line 1221
    :pswitch_3
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    #@12
    return-object v0

    #@13
    .line 1224
    :pswitch_4
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    #@16
    return-object v0

    #@17
    .line 1227
    :pswitch_5
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    #@1a
    return-object v0

    #@1b
    .line 1230
    :pswitch_6
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    #@1e
    return-object v0

    #@1f
    .line 1233
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    #@22
    return-object v0

    #@23
    .line 1236
    :pswitch_8
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    #@26
    return-object v0

    #@27
    .line 1239
    :pswitch_9
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    #@2a
    return-object v0

    #@2b
    .line 1242
    :pswitch_a
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    #@2e
    return-object v0

    #@2f
    .line 1245
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    #@32
    return-object v0

    #@33
    .line 1248
    :pswitch_c
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    #@36
    return-object v0

    #@37
    .line 1251
    :pswitch_d
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    #@3a
    return-object v0

    #@3b
    .line 1213
    nop

    #@3c
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    #@0
    .prologue
    .line 454
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    sub-float v0, p1, v1

    #@4
    .line 455
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result v1

    #@8
    const v2, 0x38d1b717    # 1.0E-4f

    #@b
    cmpg-float v1, v1, v2

    #@d
    if-gez v1, :cond_0

    #@f
    .line 456
    int-to-float v1, p0

    #@10
    return v1

    #@11
    .line 458
    :cond_0
    neg-int v1, p0

    #@12
    int-to-float v1, v1

    #@13
    div-float/2addr v1, v0

    #@14
    return v1
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 516
    if-eqz p2, :cond_1

    #@2
    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v10

    #@6
    .line 520
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    #@9
    move-result v9

    #@a
    .line 522
    .local v9, "appHeight":I
    const/16 v18, 0x0

    #@c
    .line 523
    .local v18, "t":F
    if-lez v9, :cond_0

    #@e
    .line 524
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@12
    move/from16 v21, v0

    #@14
    move/from16 v0, v21

    #@16
    int-to-float v0, v0

    #@17
    move/from16 v21, v0

    #@19
    int-to-float v0, v9

    #@1a
    move/from16 v22, v0

    #@1c
    div-float v18, v21, v22

    #@1e
    .line 526
    :cond_0
    move-object/from16 v0, p0

    #@20
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    #@22
    move/from16 v21, v0

    #@24
    .line 527
    int-to-float v0, v9

    #@25
    move/from16 v22, v0

    #@27
    const/high16 v23, 0x40e00000    # 7.0f

    #@29
    div-float v22, v22, v23

    #@2b
    mul-float v22, v22, v18

    #@2d
    move/from16 v0, v22

    #@2f
    float-to-int v0, v0

    #@30
    move/from16 v22, v0

    #@32
    .line 526
    add-int v20, v21, v22

    #@34
    .line 529
    .local v20, "translationY":I
    move-object/from16 v0, p0

    #@36
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@38
    move/from16 v21, v0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@3e
    move/from16 v22, v0

    #@40
    div-int/lit8 v22, v22, 0x2

    #@42
    add-int v11, v21, v22

    #@44
    .line 530
    .local v11, "centerX":I
    move-object/from16 v0, p0

    #@46
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@48
    move/from16 v21, v0

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@4e
    move/from16 v22, v0

    #@50
    div-int/lit8 v22, v22, 0x2

    #@52
    add-int v12, v21, v22

    #@54
    .line 533
    .local v12, "centerY":I
    new-instance v13, Landroid/view/animation/ClipRectLRAnimation;

    #@56
    .line 534
    move-object/from16 v0, p0

    #@58
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@5a
    move/from16 v21, v0

    #@5c
    div-int/lit8 v21, v21, 0x2

    #@5e
    sub-int v21, v11, v21

    #@60
    .line 535
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@64
    move/from16 v22, v0

    #@66
    div-int/lit8 v22, v22, 0x2

    #@68
    add-int v22, v22, v11

    #@6a
    .line 536
    const/16 v23, 0x0

    #@6c
    .line 533
    move/from16 v0, v21

    #@6e
    move/from16 v1, v22

    #@70
    move/from16 v2, v23

    #@72
    invoke-direct {v13, v0, v1, v2, v10}, Landroid/view/animation/ClipRectLRAnimation;-><init>(IIII)V

    #@75
    .line 537
    .local v13, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    #@79
    move-object/from16 v21, v0

    #@7b
    move-object/from16 v0, v21

    #@7d
    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@80
    .line 538
    const-wide/16 v22, 0x86

    #@82
    move-wide/from16 v0, v22

    #@84
    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@87
    .line 539
    new-instance v14, Landroid/view/animation/ClipRectTBAnimation;

    #@89
    .line 540
    move-object/from16 v0, p0

    #@8b
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@8d
    move/from16 v21, v0

    #@8f
    div-int/lit8 v21, v21, 0x2

    #@91
    sub-int v21, v12, v21

    #@93
    sub-int v21, v21, v20

    #@95
    .line 541
    move-object/from16 v0, p0

    #@97
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@99
    move/from16 v22, v0

    #@9b
    div-int/lit8 v22, v22, 0x2

    #@9d
    add-int v22, v22, v12

    #@9f
    sub-int v22, v22, v20

    #@a1
    .line 542
    const/16 v23, 0x0

    #@a3
    .line 539
    move/from16 v0, v21

    #@a5
    move/from16 v1, v22

    #@a7
    move/from16 v2, v23

    #@a9
    invoke-direct {v14, v0, v1, v2, v9}, Landroid/view/animation/ClipRectTBAnimation;-><init>(IIII)V

    #@ac
    .line 543
    .local v14, "clipAnimTB":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@b0
    move-object/from16 v21, v0

    #@b2
    move-object/from16 v0, v21

    #@b4
    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@b7
    .line 544
    const-wide/16 v22, 0x150

    #@b9
    move-wide/from16 v0, v22

    #@bb
    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@be
    .line 546
    new-instance v19, Landroid/view/animation/TranslateYAnimation;

    #@c0
    .line 547
    move/from16 v0, v20

    #@c2
    int-to-float v0, v0

    #@c3
    move/from16 v21, v0

    #@c5
    const/16 v22, 0x0

    #@c7
    const/16 v23, 0x0

    #@c9
    const/16 v24, 0x0

    #@cb
    .line 546
    move-object/from16 v0, v19

    #@cd
    move/from16 v1, v23

    #@cf
    move/from16 v2, v21

    #@d1
    move/from16 v3, v24

    #@d3
    move/from16 v4, v22

    #@d5
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    #@d8
    .line 548
    .local v19, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@dc
    move-object/from16 v21, v0

    #@de
    move-object/from16 v0, v19

    #@e0
    move-object/from16 v1, v21

    #@e2
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@e5
    .line 549
    const-wide/16 v22, 0x150

    #@e7
    move-object/from16 v0, v19

    #@e9
    move-wide/from16 v1, v22

    #@eb
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    #@ee
    .line 552
    const/16 v7, 0x54

    #@f0
    .line 553
    .local v7, "alphaDuration":I
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    #@f2
    const/high16 v21, 0x3f800000    # 1.0f

    #@f4
    const/high16 v22, 0x3f000000    # 0.5f

    #@f6
    move/from16 v0, v22

    #@f8
    move/from16 v1, v21

    #@fa
    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@fd
    .line 554
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v22, 0x54

    #@ff
    move-wide/from16 v0, v22

    #@101
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@104
    .line 555
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@108
    move-object/from16 v21, v0

    #@10a
    move-object/from16 v0, v21

    #@10c
    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@10f
    .line 557
    new-instance v15, Landroid/view/animation/AnimationSet;

    #@111
    const/16 v21, 0x0

    #@113
    move/from16 v0, v21

    #@115
    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@118
    .line 558
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@11b
    .line 559
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@11e
    .line 560
    move-object/from16 v0, v19

    #@120
    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@123
    .line 561
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@126
    .line 562
    const/16 v21, 0x1

    #@128
    move/from16 v0, v21

    #@12a
    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@12d
    .line 563
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@130
    .line 564
    move-object v8, v15

    #@131
    .line 592
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "alphaDuration":I
    .end local v9    # "appHeight":I
    .end local v10    # "appWidth":I
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v13    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v14    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "t":F
    .end local v19    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .end local v20    # "translationY":I
    .local v8, "anim":Landroid/view/animation/Animation;
    :goto_0
    return-object v8

    #@132
    .line 567
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@135
    .line 573
    const-wide/16 v16, 0x150

    #@137
    .line 576
    .local v16, "duration":J
    :goto_1
    const/16 v21, 0xe

    #@139
    move/from16 v0, p1

    #@13b
    move/from16 v1, v21

    #@13d
    if-eq v0, v1, :cond_2

    #@13f
    .line 577
    const/16 v21, 0xf

    #@141
    move/from16 v0, p1

    #@143
    move/from16 v1, v21

    #@145
    if-ne v0, v1, :cond_3

    #@147
    .line 582
    :cond_2
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    #@149
    const/high16 v21, 0x3f800000    # 1.0f

    #@14b
    const/16 v22, 0x0

    #@14d
    move/from16 v0, v21

    #@14f
    move/from16 v1, v22

    #@151
    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@154
    .line 583
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    #@156
    move/from16 v0, v21

    #@158
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@15b
    .line 588
    :goto_2
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@15f
    move-object/from16 v21, v0

    #@161
    move-object/from16 v0, v21

    #@163
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@166
    .line 589
    move-wide/from16 v0, v16

    #@168
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@16b
    .line 590
    const/16 v21, 0x1

    #@16d
    move/from16 v0, v21

    #@16f
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@172
    goto :goto_0

    #@173
    .line 570
    .end local v8    # "anim":Landroid/view/animation/Animation;
    .end local v16    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    #@175
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@177
    move/from16 v21, v0

    #@179
    move/from16 v0, v21

    #@17b
    int-to-long v0, v0

    #@17c
    move-wide/from16 v16, v0

    #@17e
    .line 571
    .restart local v16    # "duration":J
    goto :goto_1

    #@17f
    .line 586
    :cond_3
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    #@181
    const/high16 v21, 0x3f800000    # 1.0f

    #@183
    const/high16 v22, 0x3f800000    # 1.0f

    #@185
    move/from16 v0, v21

    #@187
    move/from16 v1, v22

    #@189
    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@18c
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    #@18d
    .line 567
    nop

    #@18e
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    #@0
    .prologue
    .line 463
    const/4 v11, 0x0

    #@1
    .line 464
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    #@3
    .line 466
    move-object/from16 v0, p0

    #@5
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@7
    int-to-float v6, v6

    #@8
    move/from16 v0, p3

    #@a
    int-to-float v8, v0

    #@b
    div-float v5, v6, v8

    #@d
    .line 467
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    #@f
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@11
    int-to-float v6, v6

    #@12
    move/from16 v0, p4

    #@14
    int-to-float v8, v0

    #@15
    div-float v7, v6, v8

    #@17
    .line 468
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@19
    const/high16 v6, 0x3f800000    # 1.0f

    #@1b
    const/high16 v8, 0x3f800000    # 1.0f

    #@1d
    .line 469
    move-object/from16 v0, p0

    #@1f
    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@21
    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@24
    move-result v9

    #@25
    .line 470
    move-object/from16 v0, p0

    #@27
    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@29
    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@2c
    move-result v10

    #@2d
    .line 468
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@30
    .line 471
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@32
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@34
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@37
    .line 473
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    #@39
    const/4 v6, 0x0

    #@3a
    const/high16 v8, 0x3f800000    # 1.0f

    #@3c
    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@3f
    .line 474
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@41
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@43
    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@46
    .line 476
    new-instance v13, Landroid/view/animation/AnimationSet;

    #@48
    const/4 v6, 0x0

    #@49
    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@4c
    .line 477
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@4f
    .line 478
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@52
    .line 479
    const/4 v6, 0x1

    #@53
    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    #@56
    .line 480
    move-object v11, v13

    #@57
    .line 498
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v11, "a":Landroid/view/animation/Animation;
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@5a
    .line 504
    const-wide/16 v14, 0x150

    #@5c
    .line 507
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    #@5f
    .line 508
    const/4 v6, 0x1

    #@60
    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@63
    .line 509
    move-object/from16 v0, p0

    #@65
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@67
    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@6a
    .line 510
    move/from16 v0, p3

    #@6c
    move/from16 v1, p4

    #@6e
    move/from16 v2, p3

    #@70
    move/from16 v3, p4

    #@72
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@75
    .line 511
    return-object v11

    #@76
    .line 481
    .end local v14    # "duration":J
    .local v11, "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v6, 0xe

    #@78
    move/from16 v0, p1

    #@7a
    if-eq v0, v6, :cond_1

    #@7c
    .line 482
    const/16 v6, 0xf

    #@7e
    move/from16 v0, p1

    #@80
    if-ne v0, v6, :cond_2

    #@82
    .line 487
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    #@84
    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    #@86
    const/4 v8, 0x0

    #@87
    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@8a
    .line 488
    .local v11, "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    #@8b
    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@8e
    goto :goto_0

    #@8f
    .line 491
    .local v11, "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    #@91
    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    #@93
    const/high16 v8, 0x3f800000    # 1.0f

    #@95
    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@98
    .local v11, "a":Landroid/view/animation/Animation;
    goto :goto_0

    #@99
    .line 501
    :pswitch_0
    move-object/from16 v0, p0

    #@9b
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@9d
    int-to-long v14, v6

    #@9e
    .line 502
    .restart local v14    # "duration":J
    goto :goto_1

    #@9f
    .line 498
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 367
    if-eqz p1, :cond_2

    #@3
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 371
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@9
    if-eqz v2, :cond_1

    #@b
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@d
    .line 372
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@f
    .line 373
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    #@11
    and-int/2addr v2, v1

    #@12
    const/high16 v3, 0x1000000

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 374
    const-string/jumbo v0, "android"

    #@19
    .line 378
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@1c
    move-result-object v2

    #@1d
    .line 379
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    #@1f
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@21
    .line 378
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 371
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_1
    const-string/jumbo v0, "android"

    #@29
    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 381
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 387
    if-eqz p1, :cond_1

    #@3
    .line 388
    const/high16 v0, -0x1000000

    #@5
    and-int/2addr v0, p2

    #@6
    const/high16 v1, 0x1000000

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 389
    const-string/jumbo p1, "android"

    #@d
    .line 393
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@10
    move-result-object v0

    #@11
    .line 394
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    #@13
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@15
    .line 393
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 396
    :cond_1
    return-object v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 428
    const/4 v0, 0x0

    #@2
    .line 429
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@4
    .line 430
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    #@6
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    #@9
    move-result-object v2

    #@a
    .line 432
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    #@c
    .line 433
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@e
    .line 434
    move v0, p2

    #@f
    .line 437
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 438
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 440
    :cond_1
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    #@0
    .prologue
    .line 350
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 351
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@11
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    #@14
    .line 350
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 349
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 345
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@11
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    #@14
    .line 344
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 343
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 357
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 358
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@11
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@14
    .line 357
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 356
    :cond_0
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1275
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "unknown type="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 1277
    :pswitch_0
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    #@1f
    return-object v0

    #@20
    .line 1279
    :pswitch_1
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    #@23
    return-object v0

    #@24
    .line 1281
    :pswitch_2
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    #@27
    return-object v0

    #@28
    .line 1283
    :pswitch_3
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    #@2b
    return-object v0

    #@2c
    .line 1285
    :pswitch_4
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    #@2f
    return-object v0

    #@30
    .line 1287
    :pswitch_5
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    #@33
    return-object v0

    #@34
    .line 1289
    :pswitch_6
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    #@37
    return-object v0

    #@38
    .line 1291
    :pswitch_7
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    #@3b
    return-object v0

    #@3c
    .line 1275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 950
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4
    if-eq v2, v0, :cond_1

    #@6
    .line 951
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v3, 0x7

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 952
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@d
    const/16 v3, 0x8

    #@f
    if-eq v2, v3, :cond_0

    #@11
    .line 950
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    .line 952
    goto :goto_0

    #@14
    :cond_1
    move v0, v1

    #@15
    .line 950
    goto :goto_0
.end method

.method clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 321
    const/4 v0, 0x0

    #@2
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4
    .line 322
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@6
    .line 323
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@8
    .line 320
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 20
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 721
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@4
    move/from16 v16, v0

    #@6
    .line 722
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_0

    #@8
    .end local v16    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v16

    #@a
    int-to-float v15, v0

    #@b
    .line 723
    .local v15, "thumbWidth":F
    move-object/from16 v0, p0

    #@d
    iget v14, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@f
    .line 724
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_1

    #@11
    .end local v14    # "thumbHeightI":I
    :goto_1
    int-to-float v13, v14

    #@12
    .line 727
    .local v13, "thumbHeight":F
    const/high16 v2, 0x3f800000    # 1.0f

    #@14
    .line 728
    .local v2, "scale":F
    const/4 v11, 0x0

    #@15
    .line 730
    .local v11, "scaledTopDecor":I
    packed-switch p1, :pswitch_data_0

    #@18
    .line 830
    new-instance v3, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v5, "Invalid thumbnail transition state"

    #@1d
    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3

    #@21
    .line 722
    .end local v2    # "scale":F
    .end local v11    # "scaledTopDecor":I
    .end local v13    # "thumbHeight":F
    .end local v15    # "thumbWidth":F
    .restart local v16    # "thumbWidthI":I
    :cond_0
    const/16 v16, 0x1

    #@23
    goto :goto_0

    #@24
    .line 724
    .end local v16    # "thumbWidthI":I
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_1
    const/4 v14, 0x1

    #@25
    goto :goto_1

    #@26
    .line 733
    .end local v14    # "thumbHeightI":I
    .restart local v2    # "scale":F
    .restart local v11    # "scaledTopDecor":I
    .restart local v13    # "thumbHeight":F
    :pswitch_0
    const/4 v3, 0x1

    #@27
    move/from16 v0, p4

    #@29
    if-ne v0, v3, :cond_2

    #@2b
    .line 735
    move/from16 v0, p2

    #@2d
    int-to-float v3, v0

    #@2e
    div-float v2, v15, v3

    #@30
    .line 736
    move-object/from16 v0, p7

    #@32
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@34
    int-to-float v3, v3

    #@35
    mul-float/2addr v3, v2

    #@36
    float-to-int v11, v3

    #@37
    .line 737
    div-float v3, v13, v2

    #@39
    float-to-int v0, v3

    #@3a
    move/from16 v18, v0

    #@3c
    .line 738
    .local v18, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@40
    move-object/from16 v0, p6

    #@42
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@45
    .line 739
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@4d
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@4f
    add-int v5, v5, v18

    #@51
    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    #@53
    .line 740
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@57
    move-object/from16 v0, p6

    #@59
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5c
    .line 751
    .end local v18    # "unscaledThumbHeight":I
    :goto_2
    move-object/from16 v0, p0

    #@5e
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@60
    move-object/from16 v0, p7

    #@62
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@64
    iput v5, v3, Landroid/graphics/Rect;->top:I

    #@66
    .line 753
    move-object/from16 v0, p0

    #@68
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@6a
    move-object/from16 v0, p7

    #@6c
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6f
    .line 755
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    #@71
    const/high16 v3, 0x3f800000    # 1.0f

    #@73
    const/high16 v5, 0x3f800000    # 1.0f

    #@75
    .line 756
    move-object/from16 v0, p0

    #@77
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@79
    invoke-static {v6, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@7c
    move-result v6

    #@7d
    .line 757
    move-object/from16 v0, p0

    #@7f
    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@81
    invoke-static {v8, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@84
    move-result v7

    #@85
    move v4, v2

    #@86
    .line 755
    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@89
    .line 758
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@93
    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@96
    .line 759
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    #@98
    const/4 v3, 0x0

    #@99
    const/4 v5, 0x0

    #@9a
    neg-int v6, v11

    #@9b
    int-to-float v6, v6

    #@9c
    const/4 v8, 0x0

    #@9d
    move-object/from16 v0, v17

    #@9f
    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@a2
    .line 761
    .local v17, "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    #@a4
    const/4 v3, 0x1

    #@a5
    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@a8
    .line 762
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@ab
    .line 763
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@ae
    .line 764
    move-object/from16 v0, v17

    #@b0
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@b3
    .line 765
    move-object v4, v12

    #@b4
    .line 833
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_3
    const/16 v3, 0x150

    #@b6
    .line 834
    const/16 v5, 0x150

    #@b8
    .line 833
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@bb
    move-result v7

    #@bc
    .line 836
    .local v7, "duration":I
    move-object/from16 v0, p0

    #@be
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@c0
    move-object/from16 v3, p0

    #@c2
    move/from16 v5, p2

    #@c4
    move/from16 v6, p3

    #@c6
    .line 835
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@c9
    move-result-object v3

    #@ca
    return-object v3

    #@cb
    .line 743
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    :cond_2
    move-object/from16 v0, p7

    #@cd
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@cf
    sub-int v3, p3, v3

    #@d1
    int-to-float v3, v3

    #@d2
    div-float v2, v13, v3

    #@d4
    .line 744
    move-object/from16 v0, p7

    #@d6
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@d8
    int-to-float v3, v3

    #@d9
    mul-float/2addr v3, v2

    #@da
    float-to-int v11, v3

    #@db
    .line 745
    div-float v3, v15, v2

    #@dd
    float-to-int v0, v3

    #@de
    move/from16 v19, v0

    #@e0
    .line 746
    .local v19, "unscaledThumbWidth":I
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@e4
    move-object/from16 v0, p6

    #@e6
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@e9
    .line 747
    move-object/from16 v0, p0

    #@eb
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@f1
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@f3
    add-int v5, v5, v19

    #@f5
    iput v5, v3, Landroid/graphics/Rect;->right:I

    #@f7
    .line 748
    move-object/from16 v0, p0

    #@f9
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@fb
    move-object/from16 v0, p6

    #@fd
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@100
    goto/16 :goto_2

    #@102
    .line 770
    .end local v19    # "unscaledThumbWidth":I
    :pswitch_1
    const/16 v3, 0xe

    #@104
    move/from16 v0, p5

    #@106
    if-ne v0, v3, :cond_3

    #@108
    .line 773
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@10a
    const/high16 v3, 0x3f800000    # 1.0f

    #@10c
    const/4 v5, 0x0

    #@10d
    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@110
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    #@111
    .line 775
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@113
    const/high16 v3, 0x3f800000    # 1.0f

    #@115
    const/high16 v5, 0x3f800000    # 1.0f

    #@117
    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@11a
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    #@11b
    .line 781
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v3, 0xe

    #@11d
    move/from16 v0, p5

    #@11f
    if-ne v0, v3, :cond_4

    #@121
    .line 784
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@123
    const/4 v3, 0x0

    #@124
    const/high16 v5, 0x3f800000    # 1.0f

    #@126
    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@129
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    #@12a
    .line 786
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@12c
    const/high16 v3, 0x3f800000    # 1.0f

    #@12e
    const/high16 v5, 0x3f800000    # 1.0f

    #@130
    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@133
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    #@134
    .line 792
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    const/4 v3, 0x1

    #@135
    move/from16 v0, p4

    #@137
    if-ne v0, v3, :cond_5

    #@139
    .line 794
    move/from16 v0, p2

    #@13b
    int-to-float v3, v0

    #@13c
    div-float v2, v15, v3

    #@13e
    .line 795
    move-object/from16 v0, p7

    #@140
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@142
    int-to-float v3, v3

    #@143
    mul-float/2addr v3, v2

    #@144
    float-to-int v11, v3

    #@145
    .line 796
    div-float v3, v13, v2

    #@147
    float-to-int v0, v3

    #@148
    move/from16 v18, v0

    #@14a
    .line 797
    .restart local v18    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    #@14c
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@14e
    move-object/from16 v0, p6

    #@150
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@153
    .line 798
    move-object/from16 v0, p0

    #@155
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@157
    move-object/from16 v0, p6

    #@159
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@15c
    .line 799
    move-object/from16 v0, p0

    #@15e
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@164
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@166
    add-int v5, v5, v18

    #@168
    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    #@16a
    .line 810
    .end local v18    # "unscaledThumbHeight":I
    :goto_4
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@16e
    move-object/from16 v0, p7

    #@170
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@172
    iput v5, v3, Landroid/graphics/Rect;->top:I

    #@174
    .line 812
    move-object/from16 v0, p0

    #@176
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@178
    move-object/from16 v0, p7

    #@17a
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@17d
    .line 814
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    #@17f
    const/high16 v4, 0x3f800000    # 1.0f

    #@181
    const/high16 v6, 0x3f800000    # 1.0f

    #@183
    .line 815
    move-object/from16 v0, p0

    #@185
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@187
    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@18a
    move-result v8

    #@18b
    .line 816
    move-object/from16 v0, p0

    #@18d
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@18f
    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@192
    move-result v9

    #@193
    move-object v3, v1

    #@194
    move v5, v2

    #@195
    move v7, v2

    #@196
    .line 814
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@199
    .line 817
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@1a3
    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@1a6
    .line 818
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    #@1a8
    const/4 v3, 0x0

    #@1a9
    const/4 v5, 0x0

    #@1aa
    const/4 v6, 0x0

    #@1ab
    neg-int v8, v11

    #@1ac
    int-to-float v8, v8

    #@1ad
    move-object/from16 v0, v17

    #@1af
    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@1b2
    .line 820
    .restart local v17    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    #@1b4
    const/4 v3, 0x1

    #@1b5
    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@1b8
    .line 821
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1bb
    .line 822
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1be
    .line 823
    move-object/from16 v0, v17

    #@1c0
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1c3
    .line 825
    move-object v4, v12

    #@1c4
    .line 826
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    #@1c5
    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    #@1c8
    goto/16 :goto_3

    #@1ca
    .line 802
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateAnim":Landroid/view/animation/Animation;
    :cond_5
    move-object/from16 v0, p7

    #@1cc
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@1ce
    sub-int v3, p3, v3

    #@1d0
    int-to-float v3, v3

    #@1d1
    div-float v2, v13, v3

    #@1d3
    .line 803
    move-object/from16 v0, p7

    #@1d5
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@1d7
    int-to-float v3, v3

    #@1d8
    mul-float/2addr v3, v2

    #@1d9
    float-to-int v11, v3

    #@1da
    .line 804
    div-float v3, v15, v2

    #@1dc
    float-to-int v0, v3

    #@1dd
    move/from16 v19, v0

    #@1df
    .line 805
    .restart local v19    # "unscaledThumbWidth":I
    move-object/from16 v0, p0

    #@1e1
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1e3
    move-object/from16 v0, p6

    #@1e5
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1e8
    .line 806
    move-object/from16 v0, p0

    #@1ea
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@1ec
    move-object/from16 v0, p6

    #@1ee
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f1
    .line 807
    move-object/from16 v0, p0

    #@1f3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@1f9
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@1fb
    add-int v5, v5, v19

    #@1fd
    iput v5, v3, Landroid/graphics/Rect;->right:I

    #@1ff
    goto/16 :goto_4

    #@201
    .line 730
    nop

    #@202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    #@0
    .prologue
    .line 656
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v16

    #@8
    .line 657
    .local v16, "thumbWidthI":I
    if-lez v16, :cond_0

    #@a
    .end local v16    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v16

    #@c
    int-to-float v15, v0

    #@d
    .line 658
    .local v15, "thumbWidth":F
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    #@14
    move-result v14

    #@15
    .line 659
    .local v14, "thumbHeightI":I
    if-lez v14, :cond_1

    #@17
    .end local v14    # "thumbHeightI":I
    :goto_1
    int-to-float v13, v14

    #@18
    .line 661
    .local v13, "thumbHeight":F
    move/from16 v0, p3

    #@1a
    int-to-float v3, v0

    #@1b
    div-float v4, v3, v15

    #@1d
    .line 662
    .local v4, "scaleW":F
    move/from16 v0, p3

    #@1f
    int-to-float v0, v0

    #@20
    move/from16 v20, v0

    #@22
    .line 663
    .local v20, "unscaledWidth":F
    mul-float v18, v13, v4

    #@24
    .line 664
    .local v18, "unscaledHeight":F
    move-object/from16 v0, p0

    #@26
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@28
    int-to-float v3, v3

    #@29
    sub-float v5, v18, v13

    #@2b
    const/high16 v7, 0x40000000    # 2.0f

    #@2d
    div-float/2addr v5, v7

    #@2e
    sub-float v19, v3, v5

    #@30
    .line 665
    .local v19, "unscaledStartY":F
    move-object/from16 v0, p0

    #@32
    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 667
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@38
    .line 668
    move-object/from16 v0, p0

    #@3a
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@3c
    int-to-float v3, v3

    #@3d
    const/high16 v5, 0x40000000    # 2.0f

    #@3f
    div-float v5, v15, v5

    #@41
    add-float v7, v3, v5

    #@43
    .line 669
    move-object/from16 v0, p0

    #@45
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@47
    int-to-float v3, v3

    #@48
    const/high16 v5, 0x40000000    # 2.0f

    #@4a
    div-float v5, v13, v5

    #@4c
    add-float v8, v3, v5

    #@4e
    .line 667
    const/high16 v3, 0x3f800000    # 1.0f

    #@50
    const/high16 v5, 0x3f800000    # 1.0f

    #@52
    move v6, v4

    #@53
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@56
    .line 670
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@58
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@5a
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@5d
    .line 671
    const-wide/16 v8, 0x150

    #@5f
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@62
    .line 672
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    #@64
    const/high16 v3, 0x3f800000    # 1.0f

    #@66
    const/4 v5, 0x0

    #@67
    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@6a
    .line 673
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@6c
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@6e
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@71
    .line 674
    const-wide/16 v8, 0x150

    #@73
    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@76
    .line 675
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    #@78
    const/4 v3, 0x0

    #@79
    const/4 v5, 0x0

    #@7a
    const/4 v7, 0x0

    #@7b
    move/from16 v0, v19

    #@7d
    neg-float v8, v0

    #@7e
    .line 676
    move-object/from16 v0, p0

    #@80
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@82
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@84
    int-to-float v9, v9

    #@85
    .line 675
    add-float/2addr v8, v9

    #@86
    move-object/from16 v0, v17

    #@88
    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@8b
    .line 677
    .local v17, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@8d
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@8f
    move-object/from16 v0, v17

    #@91
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@94
    .line 678
    const-wide/16 v8, 0x150

    #@96
    move-object/from16 v0, v17

    #@98
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@9b
    .line 681
    new-instance v12, Landroid/view/animation/AnimationSet;

    #@9d
    const/4 v3, 0x0

    #@9e
    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@a1
    .line 682
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@a4
    .line 683
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@a7
    .line 684
    move-object/from16 v0, v17

    #@a9
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@ac
    .line 685
    move-object v6, v12

    #@ad
    .line 710
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    #@af
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@b1
    .line 709
    const/4 v9, 0x0

    #@b2
    move-object/from16 v5, p0

    #@b4
    move/from16 v7, p1

    #@b6
    move/from16 v8, p2

    #@b8
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@bb
    move-result-object v3

    #@bc
    return-object v3

    #@bd
    .line 657
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v13    # "thumbHeight":F
    .end local v15    # "thumbWidth":F
    .end local v17    # "translate":Landroid/view/animation/Animation;
    .end local v18    # "unscaledHeight":F
    .end local v19    # "unscaledStartY":F
    .end local v20    # "unscaledWidth":F
    .restart local v16    # "thumbWidthI":I
    :cond_0
    const/16 v16, 0x1

    #@bf
    goto/16 :goto_0

    #@c1
    .line 659
    .end local v16    # "thumbWidthI":I
    .restart local v14    # "thumbHeightI":I
    .restart local v15    # "thumbWidth":F
    :cond_1
    const/4 v14, 0x1

    #@c2
    goto/16 :goto_1

    #@c4
    .line 688
    .end local v14    # "thumbHeightI":I
    .restart local v4    # "scaleW":F
    .restart local v13    # "thumbHeight":F
    .restart local v18    # "unscaledHeight":F
    .restart local v19    # "unscaledStartY":F
    .restart local v20    # "unscaledWidth":F
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@c6
    .line 689
    move-object/from16 v0, p0

    #@c8
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@ca
    int-to-float v3, v3

    #@cb
    const/high16 v5, 0x40000000    # 2.0f

    #@cd
    div-float v5, v15, v5

    #@cf
    add-float v8, v3, v5

    #@d1
    .line 690
    move-object/from16 v0, p0

    #@d3
    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@d5
    int-to-float v3, v3

    #@d6
    const/high16 v5, 0x40000000    # 2.0f

    #@d8
    div-float v5, v13, v5

    #@da
    add-float v9, v3, v5

    #@dc
    .line 688
    const/high16 v5, 0x3f800000    # 1.0f

    #@de
    const/high16 v7, 0x3f800000    # 1.0f

    #@e0
    move-object v3, v2

    #@e1
    move v6, v4

    #@e2
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@e5
    .line 691
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@e9
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@ec
    .line 692
    const-wide/16 v8, 0x150

    #@ee
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@f1
    .line 693
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    #@f3
    const/4 v3, 0x0

    #@f4
    const/high16 v5, 0x3f800000    # 1.0f

    #@f6
    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@f9
    .line 694
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    #@fd
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@100
    .line 695
    const-wide/16 v8, 0x150

    #@102
    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@105
    .line 696
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    #@107
    const/4 v3, 0x0

    #@108
    const/4 v5, 0x0

    #@109
    move/from16 v0, v19

    #@10b
    neg-float v7, v0

    #@10c
    .line 697
    move-object/from16 v0, p0

    #@10e
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@110
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@112
    int-to-float v8, v8

    #@113
    .line 696
    add-float/2addr v7, v8

    #@114
    .line 697
    const/4 v8, 0x0

    #@115
    .line 696
    move-object/from16 v0, v17

    #@117
    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@11a
    .line 698
    .restart local v17    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@11c
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    #@11e
    move-object/from16 v0, v17

    #@120
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@123
    .line 699
    const-wide/16 v8, 0x150

    #@125
    move-object/from16 v0, v17

    #@127
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    #@12a
    .line 702
    new-instance v12, Landroid/view/animation/AnimationSet;

    #@12c
    const/4 v3, 0x0

    #@12d
    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@130
    .line 703
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@133
    .line 704
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@136
    .line 705
    move-object/from16 v0, v17

    #@138
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@13b
    .line 706
    move-object v6, v12

    #@13c
    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    #@0
    .prologue
    .line 886
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v20

    #@8
    .line 887
    .local v20, "thumbWidthI":I
    if-lez v20, :cond_0

    #@a
    .end local v20    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v20

    #@c
    int-to-float v0, v0

    #@d
    move/from16 v19, v0

    #@f
    .line 888
    .local v19, "thumbWidth":F
    move-object/from16 v0, p0

    #@11
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@13
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    #@16
    move-result v18

    #@17
    .line 889
    .local v18, "thumbHeightI":I
    if-lez v18, :cond_1

    #@19
    .end local v18    # "thumbHeightI":I
    :goto_1
    move/from16 v0, v18

    #@1b
    int-to-float v0, v0

    #@1c
    move/from16 v17, v0

    #@1e
    .line 891
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_0

    #@21
    .line 938
    new-instance v6, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v9, "Invalid thumbnail transition state"

    #@26
    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v6

    #@2a
    .line 887
    .end local v17    # "thumbHeight":F
    .end local v19    # "thumbWidth":F
    .restart local v20    # "thumbWidthI":I
    :cond_0
    const/16 v20, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 889
    .end local v20    # "thumbWidthI":I
    .restart local v18    # "thumbHeightI":I
    .restart local v19    # "thumbWidth":F
    :cond_1
    const/16 v18, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 894
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    move/from16 v0, p2

    #@32
    int-to-float v6, v0

    #@33
    div-float v5, v19, v6

    #@35
    .line 895
    .local v5, "scaleW":F
    move/from16 v0, p3

    #@37
    int-to-float v6, v0

    #@38
    div-float v7, v17, v6

    #@3a
    .line 896
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@3c
    const/high16 v6, 0x3f800000    # 1.0f

    #@3e
    const/high16 v8, 0x3f800000    # 1.0f

    #@40
    .line 897
    move-object/from16 v0, p0

    #@42
    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@44
    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@47
    move-result v9

    #@48
    .line 898
    move-object/from16 v0, p0

    #@4a
    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@4c
    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@4f
    move-result v10

    #@50
    .line 896
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@53
    .line 941
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    #@55
    move/from16 v1, p2

    #@57
    move/from16 v2, p3

    #@59
    move/from16 v3, p4

    #@5b
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    #@5e
    move-result-object v6

    #@5f
    return-object v6

    #@60
    .line 903
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v6, 0xe

    #@62
    move/from16 v0, p4

    #@64
    if-ne v0, v6, :cond_2

    #@66
    .line 907
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@68
    const/high16 v6, 0x3f800000    # 1.0f

    #@6a
    const/4 v9, 0x0

    #@6b
    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@6e
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    #@6f
    .line 910
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@71
    const/high16 v6, 0x3f800000    # 1.0f

    #@73
    const/high16 v9, 0x3f800000    # 1.0f

    #@75
    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@78
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    #@79
    .line 917
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    #@7b
    const/high16 v6, 0x3f800000    # 1.0f

    #@7d
    const/high16 v9, 0x3f800000    # 1.0f

    #@7f
    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@82
    .line 918
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    #@83
    .line 922
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    move/from16 v0, p2

    #@85
    int-to-float v6, v0

    #@86
    div-float v5, v19, v6

    #@88
    .line 923
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    #@8a
    int-to-float v6, v0

    #@8b
    div-float v7, v17, v6

    #@8d
    .line 924
    .restart local v7    # "scaleH":F
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    #@8f
    const/high16 v9, 0x3f800000    # 1.0f

    #@91
    const/high16 v11, 0x3f800000    # 1.0f

    #@93
    .line 925
    move-object/from16 v0, p0

    #@95
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@97
    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@9a
    move-result v13

    #@9b
    .line 926
    move-object/from16 v0, p0

    #@9d
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@9f
    invoke-static {v6, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@a2
    move-result v14

    #@a3
    move v10, v5

    #@a4
    move v12, v7

    #@a5
    .line 924
    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@a8
    .line 928
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    #@aa
    const/high16 v6, 0x3f800000    # 1.0f

    #@ac
    const/4 v9, 0x0

    #@ad
    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@b0
    .line 930
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    #@b2
    const/4 v6, 0x1

    #@b3
    move-object/from16 v0, v16

    #@b5
    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@b8
    .line 931
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@bd
    .line 932
    move-object/from16 v0, v16

    #@bf
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@c2
    .line 933
    const/4 v6, 0x1

    #@c3
    move-object/from16 v0, v16

    #@c5
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@c8
    .line 934
    move-object/from16 v4, v16

    #@ca
    .line 935
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    #@cb
    .line 891
    nop

    #@cc
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    #@0
    .prologue
    .line 845
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v17

    #@8
    .line 846
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    #@a
    .end local v17    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v17

    #@c
    int-to-float v0, v0

    #@d
    move/from16 v16, v0

    #@f
    .line 847
    .local v16, "thumbWidth":F
    move-object/from16 v0, p0

    #@11
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@13
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    #@16
    move-result v15

    #@17
    .line 848
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    #@19
    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    #@1a
    .line 850
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    #@1c
    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@1e
    if-eqz v7, :cond_2

    #@20
    .line 852
    move/from16 v0, p1

    #@22
    int-to-float v7, v0

    #@23
    div-float v6, v7, v16

    #@25
    .line 853
    .local v6, "scaleW":F
    move/from16 v0, p2

    #@27
    int-to-float v7, v0

    #@28
    div-float v8, v7, v14

    #@2a
    .line 854
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@2c
    const/high16 v5, 0x3f800000    # 1.0f

    #@2e
    const/high16 v7, 0x3f800000    # 1.0f

    #@30
    .line 855
    move-object/from16 v0, p0

    #@32
    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@34
    const/high16 v10, 0x3f800000    # 1.0f

    #@36
    div-float/2addr v10, v6

    #@37
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@3a
    move-result v9

    #@3b
    .line 856
    move-object/from16 v0, p0

    #@3d
    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@3f
    const/high16 v11, 0x3f800000    # 1.0f

    #@41
    div-float/2addr v11, v8

    #@42
    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@45
    move-result v10

    #@46
    .line 854
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@49
    .line 857
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@4b
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@4d
    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@50
    .line 859
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    #@52
    const/high16 v7, 0x3f800000    # 1.0f

    #@54
    const/4 v9, 0x0

    #@55
    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@58
    .line 860
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@5a
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@5c
    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@5f
    .line 863
    new-instance v13, Landroid/view/animation/AnimationSet;

    #@61
    const/4 v7, 0x0

    #@62
    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@65
    .line 864
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@68
    .line 865
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@6b
    .line 866
    move-object v5, v13

    #@6c
    .line 876
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    #@6e
    move/from16 v1, p1

    #@70
    move/from16 v2, p2

    #@72
    move/from16 v3, p3

    #@74
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    #@77
    move-result-object v7

    #@78
    return-object v7

    #@79
    .line 846
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_0
    const/16 v17, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 848
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 869
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    #@80
    int-to-float v7, v0

    #@81
    div-float v6, v7, v16

    #@83
    .line 870
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    #@85
    int-to-float v7, v0

    #@86
    div-float v8, v7, v14

    #@88
    .line 871
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #@8a
    const/high16 v7, 0x3f800000    # 1.0f

    #@8c
    const/high16 v9, 0x3f800000    # 1.0f

    #@8e
    .line 872
    move-object/from16 v0, p0

    #@90
    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@92
    const/high16 v11, 0x3f800000    # 1.0f

    #@94
    div-float/2addr v11, v6

    #@95
    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@98
    move-result v10

    #@99
    .line 873
    move-object/from16 v0, p0

    #@9b
    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@9d
    const/high16 v18, 0x3f800000    # 1.0f

    #@9f
    div-float v18, v18, v8

    #@a1
    move/from16 v0, v18

    #@a3
    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@a6
    move-result v11

    #@a7
    .line 871
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@aa
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1299
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6
    .line 1300
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    const-string/jumbo v0, "mAppTransitionState="

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 1301
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string/jumbo v0, "mNextAppTransitionType="

    #@20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 1303
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1305
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@2c
    packed-switch v0, :pswitch_data_0

    #@2f
    .line 1348
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 1349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    const-string/jumbo v0, "mNextAppTransitionCallback="

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 1350
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@41
    .line 1298
    :cond_1
    return-void

    #@42
    .line 1307
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    const-string/jumbo v0, "mNextAppTransitionPackage="

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 1308
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 1309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    #@56
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 1310
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@5b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 1311
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 1312
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@6a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    goto :goto_0

    #@72
    .line 1315
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    const-string/jumbo v0, "mNextAppTransitionPackage="

    #@78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 1316
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 1317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    #@86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    .line 1318
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@8b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    goto :goto_0

    #@93
    .line 1321
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    const-string/jumbo v0, "mNextAppTransitionStartX="

    #@99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c
    .line 1322
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@9e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@a1
    .line 1323
    const-string/jumbo v0, " mNextAppTransitionStartY="

    #@a4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    .line 1324
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@a9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@ac
    .line 1325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    #@b2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    .line 1326
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@b7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ba
    .line 1327
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    #@bd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c0
    .line 1328
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@c2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@c5
    goto/16 :goto_0

    #@c7
    .line 1334
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    const-string/jumbo v0, "mNextAppTransitionThumbnail="

    #@cd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    .line 1335
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@d5
    .line 1336
    const-string/jumbo v0, " mNextAppTransitionStartX="

    #@d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 1337
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@dd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e0
    .line 1338
    const-string/jumbo v0, " mNextAppTransitionStartY="

    #@e3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6
    .line 1339
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@e8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@eb
    .line 1340
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    #@f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 1341
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@f6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@f9
    .line 1342
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    #@fc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ff
    .line 1343
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@104
    .line 1344
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    #@10a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d
    .line 1345
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@10f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@112
    goto/16 :goto_0

    #@114
    .line 1305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    #@0
    .prologue
    .line 327
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@4
    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@7
    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    #@a
    .line 330
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    #@d
    .line 326
    return-void
.end method

.method getAppTransition()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method getStartingX()I
    .locals 1

    #@0
    .prologue
    .line 294
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@2
    return v0
.end method

.method getStartingY()I
    .locals 1

    #@0
    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@2
    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    #@0
    .prologue
    .line 634
    if-eqz p1, :cond_1

    #@2
    .line 635
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 636
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 638
    :cond_0
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 641
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 642
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 644
    :cond_2
    const/4 v0, 0x3

    #@11
    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;)V
    .locals 4
    .param p1, "openingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "closingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 311
    const/4 v1, -0x1

    #@2
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@4
    .line 312
    const/4 v1, 0x2

    #@5
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@7
    .line 314
    if-eqz p1, :cond_1

    #@9
    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@d
    move-object v3, v1

    #@e
    .line 315
    :goto_0
    if-eqz p2, :cond_2

    #@10
    iget-object v1, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@14
    move-object v2, v1

    #@15
    .line 316
    :goto_1
    if-eqz p1, :cond_3

    #@17
    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@19
    .line 317
    :goto_2
    if-eqz p2, :cond_0

    #@1b
    iget-object v0, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1d
    .line 313
    :cond_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@20
    .line 310
    return-void

    #@21
    :cond_1
    move-object v3, v0

    #@22
    .line 314
    goto :goto_0

    #@23
    :cond_2
    move-object v2, v0

    #@24
    .line 315
    goto :goto_1

    #@25
    :cond_3
    move-object v1, v0

    #@26
    .line 316
    goto :goto_2
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 284
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x5

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 285
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x6

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 284
    :cond_0
    :goto_0
    return v0

    #@c
    .line 285
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    #@0
    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@2
    return v0
.end method

.method isReady()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 254
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    .line 255
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@7
    const/4 v2, 0x3

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 254
    :cond_0
    :goto_0
    return v0

    #@b
    .line 255
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    #@0
    .prologue
    .line 263
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    #@0
    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    #@0
    .prologue
    .line 242
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 238
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method isTransitionSet()Z
    .locals 2

    #@0
    .prologue
    .line 234
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z

    #@0
    .prologue
    .line 959
    if-eqz p10, :cond_2

    #@2
    const/4 v1, 0x6

    #@3
    if-eq p2, v1, :cond_0

    #@5
    .line 960
    const/16 v1, 0x8

    #@7
    if-ne p2, v1, :cond_1

    #@9
    .line 962
    :cond_0
    if-eqz p3, :cond_4

    #@b
    .line 963
    const v1, 0x10a007e

    #@e
    .line 962
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@11
    move-result-object v9

    #@12
    .line 1102
    :goto_1
    return-object v9

    #@13
    .line 961
    :cond_1
    const/16 v1, 0xa

    #@15
    if-eq p2, v1, :cond_0

    #@17
    .line 969
    :cond_2
    if-eqz p10, :cond_6

    #@19
    const/4 v1, 0x7

    #@1a
    if-eq p2, v1, :cond_3

    #@1c
    .line 970
    const/16 v1, 0x9

    #@1e
    if-ne p2, v1, :cond_5

    #@20
    .line 972
    :cond_3
    if-eqz p3, :cond_7

    #@22
    .line 973
    const v1, 0x10a007c

    #@25
    .line 972
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@28
    move-result-object v9

    #@29
    .local v9, "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@2a
    .line 964
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_4
    const v1, 0x10a007f

    #@2d
    goto :goto_0

    #@2e
    .line 971
    :cond_5
    const/16 v1, 0xb

    #@30
    if-eq p2, v1, :cond_3

    #@32
    .line 979
    :cond_6
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@34
    const/4 v2, 0x1

    #@35
    if-ne v1, v2, :cond_9

    #@37
    .line 980
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@39
    if-eqz p3, :cond_8

    #@3b
    .line 981
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@3d
    .line 980
    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    #@40
    move-result-object v9

    #@41
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@42
    .line 974
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v1, 0x10a007d

    #@45
    goto :goto_2

    #@46
    .line 981
    :cond_8
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@48
    goto :goto_3

    #@49
    .line 987
    :cond_9
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4b
    const/4 v2, 0x7

    #@4c
    if-ne v1, v2, :cond_a

    #@4e
    .line 988
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@50
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@52
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    #@55
    move-result-object v9

    #@56
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@57
    .line 994
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_a
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@59
    const/16 v2, 0x8

    #@5b
    if-ne v1, v2, :cond_b

    #@5d
    .line 995
    move-object/from16 v0, p9

    #@5f
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    #@62
    move-result-object v9

    #@63
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@64
    .line 1000
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_b
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@66
    const/4 v2, 0x2

    #@67
    if-ne v1, v2, :cond_c

    #@69
    .line 1001
    move/from16 v0, p5

    #@6b
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    #@6e
    move-result-object v9

    #@6f
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@70
    .line 1007
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_c
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@72
    const/4 v2, 0x3

    #@73
    if-eq v1, v2, :cond_d

    #@75
    .line 1008
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@77
    const/4 v2, 0x4

    #@78
    if-ne v1, v2, :cond_f

    #@7a
    .line 1010
    :cond_d
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@7c
    const/4 v2, 0x3

    #@7d
    if-ne v1, v2, :cond_e

    #@7f
    const/4 v1, 0x1

    #@80
    .line 1009
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@82
    .line 1011
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    #@85
    move-result v1

    #@86
    move/from16 v0, p5

    #@88
    invoke-virtual {p0, v1, p4, v0, p2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    #@8b
    move-result-object v9

    #@8c
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@8d
    .line 1010
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_e
    const/4 v1, 0x0

    #@8e
    goto :goto_4

    #@8f
    .line 1021
    :cond_f
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@91
    const/4 v2, 0x5

    #@92
    if-eq v1, v2, :cond_10

    #@94
    .line 1022
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@96
    const/4 v2, 0x6

    #@97
    if-ne v1, v2, :cond_12

    #@99
    .line 1024
    :cond_10
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@9b
    const/4 v2, 0x5

    #@9c
    if-ne v1, v2, :cond_11

    #@9e
    const/4 v1, 0x1

    #@9f
    .line 1023
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@a1
    .line 1026
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    #@a4
    move-result v2

    #@a5
    move-object v1, p0

    #@a6
    move v3, p4

    #@a7
    move/from16 v4, p5

    #@a9
    move/from16 v5, p6

    #@ab
    move v6, p2

    #@ac
    move-object/from16 v7, p7

    #@ae
    move-object/from16 v8, p8

    #@b0
    .line 1025
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    #@b3
    move-result-object v9

    #@b4
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@b6
    .line 1024
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_11
    const/4 v1, 0x0

    #@b7
    goto :goto_5

    #@b8
    .line 1037
    :cond_12
    const/4 v10, 0x0

    #@b9
    .line 1038
    .local v10, "animAttr":I
    packed-switch p2, :pswitch_data_0

    #@bc
    .line 1094
    :goto_6
    if-eqz v10, :cond_1e

    #@be
    invoke-virtual {p0, p1, v10}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@c1
    move-result-object v9

    #@c2
    .restart local v9    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@c4
    .line 1040
    .end local v9    # "a":Landroid/view/animation/Animation;
    :pswitch_0
    if-eqz p3, :cond_13

    #@c6
    .line 1041
    const/4 v10, 0x4

    #@c7
    goto :goto_6

    #@c8
    .line 1042
    :cond_13
    const/4 v10, 0x5

    #@c9
    goto :goto_6

    #@ca
    .line 1045
    :pswitch_1
    if-eqz p3, :cond_14

    #@cc
    .line 1046
    const/4 v10, 0x6

    #@cd
    goto :goto_6

    #@ce
    .line 1047
    :cond_14
    const/4 v10, 0x7

    #@cf
    goto :goto_6

    #@d0
    .line 1050
    :pswitch_2
    if-eqz p3, :cond_15

    #@d2
    .line 1051
    const/16 v10, 0x8

    #@d4
    goto :goto_6

    #@d5
    .line 1052
    :cond_15
    const/16 v10, 0x9

    #@d7
    goto :goto_6

    #@d8
    .line 1055
    :pswitch_3
    if-eqz p3, :cond_16

    #@da
    .line 1056
    const/16 v10, 0xa

    #@dc
    goto :goto_6

    #@dd
    .line 1057
    :cond_16
    const/16 v10, 0xb

    #@df
    goto :goto_6

    #@e0
    .line 1060
    :pswitch_4
    if-eqz p3, :cond_17

    #@e2
    .line 1061
    const/16 v10, 0xc

    #@e4
    goto :goto_6

    #@e5
    .line 1062
    :cond_17
    const/16 v10, 0xd

    #@e7
    goto :goto_6

    #@e8
    .line 1065
    :pswitch_5
    if-eqz p3, :cond_18

    #@ea
    .line 1066
    const/16 v10, 0xe

    #@ec
    goto :goto_6

    #@ed
    .line 1067
    :cond_18
    const/16 v10, 0xf

    #@ef
    goto :goto_6

    #@f0
    .line 1070
    :pswitch_6
    if-eqz p3, :cond_19

    #@f2
    .line 1071
    const/16 v10, 0x10

    #@f4
    goto :goto_6

    #@f5
    .line 1072
    :cond_19
    const/16 v10, 0x11

    #@f7
    goto :goto_6

    #@f8
    .line 1075
    :pswitch_7
    if-eqz p3, :cond_1a

    #@fa
    .line 1076
    const/16 v10, 0x12

    #@fc
    goto :goto_6

    #@fd
    .line 1077
    :cond_1a
    const/16 v10, 0x13

    #@ff
    goto :goto_6

    #@100
    .line 1080
    :pswitch_8
    if-eqz p3, :cond_1b

    #@102
    .line 1081
    const/16 v10, 0x14

    #@104
    goto :goto_6

    #@105
    .line 1082
    :cond_1b
    const/16 v10, 0x15

    #@107
    goto :goto_6

    #@108
    .line 1085
    :pswitch_9
    if-eqz p3, :cond_1c

    #@10a
    .line 1086
    const/16 v10, 0x16

    #@10c
    goto :goto_6

    #@10d
    .line 1087
    :cond_1c
    const/16 v10, 0x17

    #@10f
    goto :goto_6

    #@110
    .line 1090
    :pswitch_a
    if-eqz p3, :cond_1d

    #@112
    .line 1091
    const/16 v10, 0x19

    #@114
    goto :goto_6

    #@115
    .line 1092
    :cond_1d
    const/16 v10, 0x18

    #@117
    goto :goto_6

    #@118
    .line 1094
    :cond_1e
    const/4 v9, 0x0

    #@119
    .local v9, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@11b
    .line 1038
    nop

    #@11c
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 400
    const/4 v0, 0x0

    #@3
    .line 401
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@5
    .line 402
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    #@7
    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    #@a
    move-result-object v2

    #@b
    .line 404
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    #@d
    .line 405
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@f
    .line 406
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@11
    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v0

    #@15
    .line 409
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    #@17
    .line 410
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 412
    :cond_1
    return-object v5
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 416
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@3
    .line 417
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    #@5
    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    #@8
    move-result-object v1

    #@9
    .line 419
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    #@b
    .line 420
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@d
    .line 422
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 424
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 338
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 339
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@11
    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    #@14
    .line 338
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 337
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    #@0
    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1193
    const/4 v0, 0x7

    #@7
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@9
    .line 1194
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@b
    .line 1195
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@d
    .line 1191
    :goto_0
    return-void

    #@e
    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@11
    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1115
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@9
    .line 1116
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@b
    .line 1117
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@e
    .line 1118
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@10
    .line 1119
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@12
    .line 1120
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@15
    .line 1121
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@17
    .line 1113
    :goto_0
    return-void

    #@18
    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1b
    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    #@0
    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1175
    if-eqz p7, :cond_0

    #@8
    const/4 v0, 0x5

    #@9
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@b
    .line 1177
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@e
    .line 1178
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@10
    .line 1179
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@12
    .line 1180
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@14
    .line 1181
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@16
    .line 1182
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@18
    .line 1183
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@1a
    .line 1184
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1d
    .line 1185
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1f
    .line 1173
    :goto_1
    return-void

    #@20
    .line 1176
    :cond_0
    const/4 v0, 0x6

    #@21
    goto :goto_0

    #@22
    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@25
    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    #@0
    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1145
    const/16 v0, 0x8

    #@8
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@a
    .line 1146
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@c
    .line 1147
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@e
    .line 1148
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@10
    .line 1149
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@12
    .line 1150
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@15
    .line 1151
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@18
    .line 1143
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1129
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1130
    const/4 v0, 0x2

    #@8
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@a
    .line 1131
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@c
    .line 1132
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@e
    .line 1133
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@10
    .line 1134
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@12
    .line 1135
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    #@14
    .line 1136
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    #@16
    .line 1137
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@19
    .line 1138
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1b
    .line 1128
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    #@0
    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1158
    if-eqz p5, :cond_0

    #@8
    const/4 v0, 0x3

    #@9
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@b
    .line 1160
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@e
    .line 1161
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    #@10
    .line 1162
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@12
    .line 1163
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    #@14
    .line 1164
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    #@16
    .line 1165
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@19
    .line 1166
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1b
    .line 1156
    :goto_1
    return-void

    #@1c
    .line 1159
    :cond_0
    const/4 v0, 0x4

    #@1d
    goto :goto_0

    #@1e
    .line 1168
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@21
    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1106
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1107
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    #@7
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    #@9
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@b
    const/16 v3, 0x1a

    #@d
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 1108
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@16
    .line 1105
    :cond_0
    return-void
.end method

.method prepare()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 303
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@9
    .line 304
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    #@c
    .line 305
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 307
    :cond_0
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    #@0
    .prologue
    .line 617
    packed-switch p4, :pswitch_data_0

    #@3
    .line 623
    const/16 v4, 0x150

    #@5
    .line 627
    .local v4, "duration":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move v3, p3

    #@b
    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 620
    .end local v4    # "duration":I
    :pswitch_0
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@12
    .restart local v4    # "duration":I
    goto :goto_0

    #@13
    .line 617
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 600
    if-lez p4, :cond_0

    #@2
    .line 601
    int-to-long v0, p4

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@6
    .line 603
    :cond_0
    const/4 v0, 0x1

    #@7
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@a
    .line 604
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@d
    .line 605
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@10
    .line 606
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 333
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    #@0
    .prologue
    .line 250
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    .line 249
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 1355
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@2
    .line 1354
    return-void
.end method

.method setIdle()V
    .locals 1

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 266
    return-void
.end method

.method setReady()V
    .locals 1

    #@0
    .prologue
    .line 259
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 258
    return-void
.end method

.method setTimeout()V
    .locals 1

    #@0
    .prologue
    .line 275
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mNextAppTransition="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@e
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

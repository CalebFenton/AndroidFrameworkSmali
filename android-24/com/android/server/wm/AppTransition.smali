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

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

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

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_DOCK_TASK_FROM_RECENTS:I = 0x13

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
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastHadClipReveal:Z

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

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mProlongedAnimationsEnded:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AppTransition;)Landroid/os/IRemoteCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/AppTransition;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/AppTransition;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)Landroid/os/IRemoteCallback;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/high16 v3, 0x3f800000    # 1.0f

    #@3
    .line 94
    const-string/jumbo v0, "WindowManager"

    #@6
    sput-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    #@8
    .line 148
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@a
    const v1, 0x3e99999a    # 0.3f

    #@d
    const v2, 0x3dcccccd    # 0.1f

    #@10
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@13
    .line 147
    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@15
    .line 151
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@17
    const v1, 0x3f59999a    # 0.85f

    #@1a
    invoke-direct {v0, v1, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@1d
    .line 150
    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@1f
    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 164
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@8
    .line 175
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@a
    .line 195
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 194
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@11
    .line 200
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@18
    .line 202
    new-instance v0, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1f
    .line 203
    new-instance v0, Landroid/graphics/Rect;

    #@21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@26
    .line 205
    new-instance v0, Landroid/graphics/Rect;

    #@28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2d
    .line 211
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@2f
    .line 220
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@31
    const v1, 0x3ecccccd    # 0.4f

    #@34
    const/high16 v2, 0x3f800000    # 1.0f

    #@36
    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@39
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    #@3b
    .line 224
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@3d
    .line 225
    const-wide/16 v0, 0x150

    #@3f
    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@41
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    #@43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@46
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@48
    .line 228
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    #@4e
    .line 235
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@50
    .line 236
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@52
    .line 238
    const v0, 0x10c000e

    #@55
    .line 237
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@58
    move-result-object v0

    #@59
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@5b
    .line 240
    const v0, 0x10c000f

    #@5e
    .line 239
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@64
    .line 242
    const v0, 0x10c000d

    #@67
    .line 241
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@6a
    move-result-object v0

    #@6b
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@6d
    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@70
    move-result-object v0

    #@71
    .line 244
    const/high16 v1, 0x10e0000

    #@73
    .line 243
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@76
    move-result v0

    #@77
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@79
    .line 246
    const v0, 0x10c0003

    #@7c
    .line 245
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@7f
    move-result-object v0

    #@80
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@82
    .line 247
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    #@84
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    #@87
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    #@89
    .line 259
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    #@8b
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    #@8e
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@90
    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@99
    move-result-object v0

    #@9a
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@9c
    .line 270
    const/high16 v1, 0x41000000    # 8.0f

    #@9e
    mul-float/2addr v0, v1

    #@9f
    float-to-int v0, v0

    #@a0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    #@a2
    .line 234
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1819
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1829
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
    .line 1821
    :pswitch_0
    const-string/jumbo v0, "APP_STATE_IDLE"

    #@1f
    return-object v0

    #@20
    .line 1823
    :pswitch_1
    const-string/jumbo v0, "APP_STATE_READY"

    #@23
    return-object v0

    #@24
    .line 1825
    :pswitch_2
    const-string/jumbo v0, "APP_STATE_RUNNING"

    #@27
    return-object v0

    #@28
    .line 1827
    :pswitch_3
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    #@2b
    return-object v0

    #@2c
    .line 1819
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
    .line 1766
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1813
    :pswitch_0
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 1768
    :pswitch_1
    const-string/jumbo v0, "TRANSIT_UNSET"

    #@a
    return-object v0

    #@b
    .line 1771
    :pswitch_2
    const-string/jumbo v0, "TRANSIT_NONE"

    #@e
    return-object v0

    #@f
    .line 1774
    :pswitch_3
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    #@12
    return-object v0

    #@13
    .line 1777
    :pswitch_4
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    #@16
    return-object v0

    #@17
    .line 1780
    :pswitch_5
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    #@1a
    return-object v0

    #@1b
    .line 1783
    :pswitch_6
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    #@1e
    return-object v0

    #@1f
    .line 1786
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    #@22
    return-object v0

    #@23
    .line 1789
    :pswitch_8
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    #@26
    return-object v0

    #@27
    .line 1792
    :pswitch_9
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    #@2a
    return-object v0

    #@2b
    .line 1795
    :pswitch_a
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    #@2e
    return-object v0

    #@2f
    .line 1798
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    #@32
    return-object v0

    #@33
    .line 1801
    :pswitch_c
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    #@36
    return-object v0

    #@37
    .line 1804
    :pswitch_d
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    #@3a
    return-object v0

    #@3b
    .line 1807
    :pswitch_e
    const-string/jumbo v0, "TRANSIT_ACTIVITY_RELAUNCH"

    #@3e
    return-object v0

    #@3f
    .line 1810
    :pswitch_f
    const-string/jumbo v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    #@42
    return-object v0

    #@43
    .line 1766
    nop

    #@44
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
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 4
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 715
    if-nez p1, :cond_0

    #@2
    .line 716
    const-wide/16 v2, 0x150

    #@4
    return-wide v2

    #@5
    .line 718
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@8
    move-result v1

    #@9
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v2

    #@d
    int-to-float v2, v2

    #@e
    div-float/2addr v1, v2

    #@f
    .line 719
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@12
    move-result v2

    #@13
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@16
    move-result v3

    #@17
    int-to-float v3, v3

    #@18
    div-float/2addr v2, v3

    #@19
    .line 718
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    #@1c
    move-result v0

    #@1d
    .line 721
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    #@1f
    .line 720
    mul-float/2addr v1, v0

    #@20
    const/high16 v2, 0x43a80000    # 336.0f

    #@22
    add-float/2addr v1, v2

    #@23
    float-to-long v2, v1

    #@24
    return-wide v2
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    #@0
    .prologue
    .line 588
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    sub-float v0, p1, v1

    #@4
    .line 589
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
    .line 590
    int-to-float v1, p0

    #@10
    return v1

    #@11
    .line 592
    :cond_0
    neg-int v1, p0

    #@12
    int-to-float v1, v1

    #@13
    div-float/2addr v1, v0

    #@14
    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    #@5
    .line 1177
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@7
    .line 1178
    const/4 v1, 0x1

    #@8
    .line 1177
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    #@0
    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    #@5
    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@7
    .line 1185
    const/4 v1, 0x0

    #@8
    .line 1184
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 31
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    #@0
    .prologue
    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v4

    #@4
    int-to-float v0, v4

    #@5
    move/from16 v27, v0

    #@7
    .line 1191
    .local v27, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@a
    move-result v4

    #@b
    int-to-float v0, v4

    #@c
    move/from16 v25, v0

    #@e
    .line 1192
    .local v25, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    #@11
    move-result v4

    #@12
    int-to-float v0, v4

    #@13
    move/from16 v20, v0

    #@15
    .line 1193
    .local v20, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@18
    move-result v4

    #@19
    int-to-float v0, v4

    #@1a
    move/from16 v18, v0

    #@1c
    .line 1194
    .local v18, "destHeight":F
    if-eqz p4, :cond_1

    #@1e
    div-float v3, v27, v20

    #@20
    .line 1195
    .local v3, "scaleH":F
    :goto_0
    if-eqz p4, :cond_2

    #@22
    div-float v5, v25, v18

    #@24
    .line 1196
    .local v5, "scaleV":F
    :goto_1
    new-instance v23, Landroid/view/animation/AnimationSet;

    #@26
    const/4 v4, 0x1

    #@27
    move-object/from16 v0, v23

    #@29
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@2c
    .line 1197
    .local v23, "set":Landroid/view/animation/AnimationSet;
    if-nez p3, :cond_3

    #@2e
    .line 1198
    const/16 v28, 0x0

    #@30
    .line 1199
    .local v28, "surfaceInsetsH":I
    :goto_2
    if-nez p3, :cond_4

    #@32
    .line 1200
    const/16 v29, 0x0

    #@34
    .line 1203
    .local v29, "surfaceInsetsV":I
    :goto_3
    if-eqz p4, :cond_5

    #@36
    .end local v20    # "destWidth":F
    :goto_4
    move/from16 v0, v28

    #@38
    int-to-float v4, v0

    #@39
    add-float v4, v4, v20

    #@3b
    const/high16 v6, 0x40000000    # 2.0f

    #@3d
    div-float v7, v4, v6

    #@3f
    .line 1204
    .local v7, "scaleHCenter":F
    if-eqz p4, :cond_6

    #@41
    .end local v18    # "destHeight":F
    :goto_5
    move/from16 v0, v29

    #@43
    int-to-float v4, v0

    #@44
    add-float v4, v4, v18

    #@46
    const/high16 v6, 0x40000000    # 2.0f

    #@48
    div-float v8, v4, v6

    #@4a
    .line 1205
    .local v8, "scaleVCenter":F
    if-eqz p4, :cond_7

    #@4c
    .line 1206
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@4e
    const/high16 v4, 0x3f800000    # 1.0f

    #@50
    const/high16 v6, 0x3f800000    # 1.0f

    #@52
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@55
    .line 1208
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    :goto_6
    move-object/from16 v0, p1

    #@57
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@5c
    move-result v6

    #@5d
    div-int/lit8 v6, v6, 0x2

    #@5f
    add-int v24, v4, v6

    #@61
    .line 1209
    .local v24, "sourceHCenter":I
    move-object/from16 v0, p1

    #@63
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@68
    move-result v6

    #@69
    div-int/lit8 v6, v6, 0x2

    #@6b
    add-int v26, v4, v6

    #@6d
    .line 1210
    .local v26, "sourceVCenter":I
    move-object/from16 v0, p2

    #@6f
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@71
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    #@74
    move-result v6

    #@75
    div-int/lit8 v6, v6, 0x2

    #@77
    add-int v17, v4, v6

    #@79
    .line 1211
    .local v17, "destHCenter":I
    move-object/from16 v0, p2

    #@7b
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@7d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@80
    move-result v6

    #@81
    div-int/lit8 v6, v6, 0x2

    #@83
    add-int v19, v4, v6

    #@85
    .line 1212
    .local v19, "destVCenter":I
    if-eqz p4, :cond_8

    #@87
    sub-int v21, v24, v17

    #@89
    .line 1213
    .local v21, "fromX":I
    :goto_7
    if-eqz p4, :cond_9

    #@8b
    sub-int v22, v26, v19

    #@8d
    .line 1214
    .local v22, "fromY":I
    :goto_8
    if-eqz p4, :cond_a

    #@8f
    new-instance v30, Landroid/view/animation/TranslateAnimation;

    #@91
    move/from16 v0, v21

    #@93
    int-to-float v4, v0

    #@94
    const/4 v6, 0x0

    #@95
    move/from16 v0, v22

    #@97
    int-to-float v9, v0

    #@98
    const/4 v10, 0x0

    #@99
    move-object/from16 v0, v30

    #@9b
    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@9e
    .line 1216
    .local v30, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_9
    move-object/from16 v0, v23

    #@a0
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@a3
    .line 1217
    move-object/from16 v0, v23

    #@a5
    move-object/from16 v1, v30

    #@a7
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@aa
    .line 1219
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    #@ae
    move-object/from16 v16, v0

    #@b0
    .line 1220
    .local v16, "callback":Landroid/os/IRemoteCallback;
    if-eqz v16, :cond_0

    #@b2
    .line 1221
    new-instance v4, Lcom/android/server/wm/AppTransition$3;

    #@b4
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v16

    #@b8
    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    #@bb
    move-object/from16 v0, v23

    #@bd
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@c0
    .line 1234
    :cond_0
    return-object v23

    #@c1
    .line 1194
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "scaleH":F
    .end local v5    # "scaleV":F
    .end local v7    # "scaleHCenter":F
    .end local v8    # "scaleVCenter":F
    .end local v16    # "callback":Landroid/os/IRemoteCallback;
    .end local v17    # "destHCenter":I
    .end local v19    # "destVCenter":I
    .end local v21    # "fromX":I
    .end local v22    # "fromY":I
    .end local v23    # "set":Landroid/view/animation/AnimationSet;
    .end local v24    # "sourceHCenter":I
    .end local v26    # "sourceVCenter":I
    .end local v28    # "surfaceInsetsH":I
    .end local v29    # "surfaceInsetsV":I
    .end local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    .restart local v18    # "destHeight":F
    .restart local v20    # "destWidth":F
    :cond_1
    div-float v3, v20, v27

    #@c3
    .restart local v3    # "scaleH":F
    goto/16 :goto_0

    #@c5
    .line 1195
    :cond_2
    div-float v5, v18, v25

    #@c7
    .restart local v5    # "scaleV":F
    goto/16 :goto_1

    #@c9
    .line 1198
    .restart local v23    # "set":Landroid/view/animation/AnimationSet;
    :cond_3
    move-object/from16 v0, p3

    #@cb
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@cd
    move-object/from16 v0, p3

    #@cf
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@d1
    add-int v28, v4, v6

    #@d3
    .restart local v28    # "surfaceInsetsH":I
    goto/16 :goto_2

    #@d5
    .line 1200
    :cond_4
    move-object/from16 v0, p3

    #@d7
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@d9
    move-object/from16 v0, p3

    #@db
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@dd
    add-int v29, v4, v6

    #@df
    .restart local v29    # "surfaceInsetsV":I
    goto/16 :goto_3

    #@e1
    :cond_5
    move/from16 v20, v27

    #@e3
    .line 1203
    goto/16 :goto_4

    #@e5
    .end local v20    # "destWidth":F
    .restart local v7    # "scaleHCenter":F
    :cond_6
    move/from16 v18, v25

    #@e7
    .line 1204
    goto/16 :goto_5

    #@e9
    .line 1207
    .end local v18    # "destHeight":F
    .restart local v8    # "scaleVCenter":F
    :cond_7
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@eb
    const/high16 v10, 0x3f800000    # 1.0f

    #@ed
    const/high16 v12, 0x3f800000    # 1.0f

    #@ef
    move-object v9, v2

    #@f0
    move v11, v3

    #@f1
    move v13, v5

    #@f2
    move v14, v7

    #@f3
    move v15, v8

    #@f4
    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@f7
    .restart local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_6

    #@f9
    .line 1212
    .restart local v17    # "destHCenter":I
    .restart local v19    # "destVCenter":I
    .restart local v24    # "sourceHCenter":I
    .restart local v26    # "sourceVCenter":I
    :cond_8
    sub-int v21, v17, v24

    #@fb
    .restart local v21    # "fromX":I
    goto :goto_7

    #@fc
    .line 1213
    :cond_9
    sub-int v22, v19, v26

    #@fe
    .restart local v22    # "fromY":I
    goto :goto_8

    #@ff
    .line 1215
    :cond_a
    new-instance v30, Landroid/view/animation/TranslateAnimation;

    #@101
    const/4 v4, 0x0

    #@102
    move/from16 v0, v21

    #@104
    int-to-float v6, v0

    #@105
    const/4 v9, 0x0

    #@106
    move/from16 v0, v22

    #@108
    int-to-float v10, v0

    #@109
    move-object/from16 v0, v30

    #@10b
    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@10e
    .restart local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    goto :goto_9
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 31
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 727
    if-eqz p2, :cond_6

    #@2
    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v16

    #@6
    .line 729
    .local v16, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    #@9
    move-result v8

    #@a
    .line 733
    .local v8, "appHeight":I
    move-object/from16 v0, p0

    #@c
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@13
    .line 735
    const/16 v27, 0x0

    #@15
    .line 736
    .local v27, "t":F
    if-lez v8, :cond_0

    #@17
    .line 737
    move-object/from16 v0, p0

    #@19
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@1b
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@1d
    int-to-float v6, v6

    #@1e
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    #@21
    move-result v7

    #@22
    int-to-float v7, v7

    #@23
    div-float v27, v6, v7

    #@25
    .line 739
    :cond_0
    move-object/from16 v0, p0

    #@27
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    #@29
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    #@2c
    move-result v7

    #@2d
    int-to-float v7, v7

    #@2e
    const/high16 v10, 0x40e00000    # 7.0f

    #@30
    div-float/2addr v7, v10

    #@31
    mul-float v7, v7, v27

    #@33
    float-to-int v7, v7

    #@34
    add-int v30, v6, v7

    #@36
    .line 740
    .local v30, "translationY":I
    const/16 v29, 0x0

    #@38
    .line 741
    .local v29, "translationX":I
    move/from16 v9, v30

    #@3a
    .line 742
    .local v9, "translationYCorrection":I
    move-object/from16 v0, p0

    #@3c
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@41
    move-result v17

    #@42
    .line 743
    .local v17, "centerX":I
    move-object/from16 v0, p0

    #@44
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@46
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@49
    move-result v18

    #@4a
    .line 744
    .local v18, "centerY":I
    move-object/from16 v0, p0

    #@4c
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@4e
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@51
    move-result v6

    #@52
    div-int/lit8 v25, v6, 0x2

    #@54
    .line 745
    .local v25, "halfWidth":I
    move-object/from16 v0, p0

    #@56
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@58
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@5b
    move-result v6

    #@5c
    div-int/lit8 v24, v6, 0x2

    #@5e
    .line 746
    .local v24, "halfHeight":I
    sub-int v6, v17, v25

    #@60
    move-object/from16 v0, p3

    #@62
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@64
    sub-int v20, v6, v7

    #@66
    .line 747
    .local v20, "clipStartX":I
    sub-int v6, v18, v24

    #@68
    move-object/from16 v0, p3

    #@6a
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@6c
    sub-int v5, v6, v7

    #@6e
    .line 748
    .local v5, "clipStartY":I
    const/16 v21, 0x0

    #@70
    .line 753
    .local v21, "cutOff":Z
    move-object/from16 v0, p3

    #@72
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@74
    sub-int v7, v18, v24

    #@76
    if-le v6, v7, :cond_1

    #@78
    .line 754
    sub-int v6, v18, v24

    #@7a
    move-object/from16 v0, p3

    #@7c
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@7e
    sub-int v30, v6, v7

    #@80
    .line 755
    const/4 v9, 0x0

    #@81
    .line 756
    const/4 v5, 0x0

    #@82
    .line 757
    const/16 v21, 0x1

    #@84
    .line 759
    :cond_1
    move-object/from16 v0, p3

    #@86
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@88
    sub-int v7, v17, v25

    #@8a
    if-le v6, v7, :cond_2

    #@8c
    .line 760
    sub-int v6, v17, v25

    #@8e
    move-object/from16 v0, p3

    #@90
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@92
    sub-int v29, v6, v7

    #@94
    .line 761
    const/16 v20, 0x0

    #@96
    .line 762
    const/16 v21, 0x1

    #@98
    .line 764
    :cond_2
    move-object/from16 v0, p3

    #@9a
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@9c
    add-int v7, v17, v25

    #@9e
    if-ge v6, v7, :cond_3

    #@a0
    .line 765
    add-int v6, v17, v25

    #@a2
    move-object/from16 v0, p3

    #@a4
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@a6
    sub-int v29, v6, v7

    #@a8
    .line 766
    move-object/from16 v0, p0

    #@aa
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@ac
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@af
    move-result v6

    #@b0
    sub-int v20, v16, v6

    #@b2
    .line 767
    const/16 v21, 0x1

    #@b4
    .line 769
    :cond_3
    move/from16 v0, v29

    #@b6
    int-to-float v6, v0

    #@b7
    .line 770
    move/from16 v0, v30

    #@b9
    int-to-float v7, v0

    #@ba
    .line 769
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v21

    #@be
    move-object/from16 v2, p4

    #@c0
    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    #@c3
    move-result-wide v22

    #@c4
    .line 773
    .local v22, "duration":J
    new-instance v19, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    #@c6
    .line 774
    move-object/from16 v0, p0

    #@c8
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@ca
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@cd
    move-result v6

    #@ce
    add-int v6, v6, v20

    #@d0
    const/4 v7, 0x0

    #@d1
    .line 773
    move-object/from16 v0, v19

    #@d3
    move/from16 v1, v20

    #@d5
    move/from16 v2, v16

    #@d7
    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    #@da
    .line 775
    .local v19, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@dc
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    #@de
    move-object/from16 v0, v19

    #@e0
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@e3
    .line 776
    move-wide/from16 v0, v22

    #@e5
    long-to-float v6, v0

    #@e6
    const/high16 v7, 0x40200000    # 2.5f

    #@e8
    div-float/2addr v6, v7

    #@e9
    float-to-long v6, v6

    #@ea
    move-object/from16 v0, v19

    #@ec
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    #@ef
    .line 778
    new-instance v28, Landroid/view/animation/TranslateAnimation;

    #@f1
    move/from16 v0, v29

    #@f3
    int-to-float v6, v0

    #@f4
    const/4 v7, 0x0

    #@f5
    move/from16 v0, v30

    #@f7
    int-to-float v10, v0

    #@f8
    const/4 v11, 0x0

    #@f9
    move-object/from16 v0, v28

    #@fb
    invoke-direct {v0, v6, v7, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@fe
    .line 779
    .local v28, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v21, :cond_4

    #@100
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@102
    :goto_0
    move-object/from16 v0, v28

    #@104
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@107
    .line 781
    move-object/from16 v0, v28

    #@109
    move-wide/from16 v1, v22

    #@10b
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    #@10e
    .line 783
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    #@110
    .line 784
    move-object/from16 v0, p0

    #@112
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@114
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@117
    move-result v6

    #@118
    add-int/2addr v6, v5

    #@119
    .line 787
    move-object/from16 v0, p0

    #@11b
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@11d
    .line 785
    const/4 v7, 0x0

    #@11e
    .line 786
    const/4 v10, 0x0

    #@11f
    .line 783
    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    #@122
    .line 788
    .local v4, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@124
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@127
    .line 789
    move-wide/from16 v0, v22

    #@129
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@12c
    .line 792
    const-wide/16 v6, 0x4

    #@12e
    div-long v14, v22, v6

    #@130
    .line 793
    .local v14, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    #@132
    const/high16 v6, 0x3f800000    # 1.0f

    #@134
    const/high16 v7, 0x3f000000    # 0.5f

    #@136
    invoke-direct {v12, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@139
    .line 794
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@13c
    .line 795
    move-object/from16 v0, p0

    #@13e
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@140
    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@143
    .line 797
    new-instance v26, Landroid/view/animation/AnimationSet;

    #@145
    const/4 v6, 0x0

    #@146
    move-object/from16 v0, v26

    #@148
    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@14b
    .line 798
    .local v26, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    #@14d
    move-object/from16 v1, v19

    #@14f
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@152
    .line 799
    move-object/from16 v0, v26

    #@154
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@157
    .line 800
    move-object/from16 v0, v26

    #@159
    move-object/from16 v1, v28

    #@15b
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@15e
    .line 801
    move-object/from16 v0, v26

    #@160
    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@163
    .line 802
    const/4 v6, 0x1

    #@164
    move-object/from16 v0, v26

    #@166
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@169
    .line 803
    move-object/from16 v0, v26

    #@16b
    move/from16 v1, v16

    #@16d
    move/from16 v2, v16

    #@16f
    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@172
    .line 804
    move-object/from16 v13, v26

    #@174
    .line 805
    .local v13, "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    #@175
    move-object/from16 v0, p0

    #@177
    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    #@179
    .line 806
    move-wide/from16 v0, v22

    #@17b
    move-object/from16 v2, p0

    #@17d
    iput-wide v0, v2, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@17f
    .line 810
    if-eqz v21, :cond_5

    #@181
    .line 811
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    #@184
    move-result v6

    #@185
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    #@188
    move-result v7

    #@189
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@18c
    move-result v6

    #@18d
    .line 810
    :goto_1
    move-object/from16 v0, p0

    #@18f
    iput v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    #@191
    .line 839
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :goto_2
    return-object v13

    #@192
    .line 780
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v5    # "clipStartY":I
    .restart local v8    # "appHeight":I
    .restart local v9    # "translationYCorrection":I
    .restart local v16    # "appWidth":I
    .restart local v17    # "centerX":I
    .restart local v18    # "centerY":I
    .restart local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .restart local v20    # "clipStartX":I
    .restart local v21    # "cutOff":Z
    .restart local v24    # "halfHeight":I
    .restart local v25    # "halfWidth":I
    .restart local v27    # "t":F
    .restart local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .restart local v29    # "translationX":I
    .restart local v30    # "translationY":I
    :cond_4
    move-object/from16 v0, p0

    #@194
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@196
    goto/16 :goto_0

    #@198
    .line 811
    .restart local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .restart local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v14    # "alphaDuration":J
    .restart local v26    # "set":Landroid/view/animation/AnimationSet;
    :cond_5
    const/4 v6, 0x0

    #@199
    goto :goto_1

    #@19a
    .line 814
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v22    # "duration":J
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :cond_6
    packed-switch p1, :pswitch_data_0

    #@19d
    .line 820
    const-wide/16 v22, 0x150

    #@19f
    .line 823
    .restart local v22    # "duration":J
    :goto_3
    const/16 v6, 0xe

    #@1a1
    move/from16 v0, p1

    #@1a3
    if-eq v0, v6, :cond_7

    #@1a5
    .line 824
    const/16 v6, 0xf

    #@1a7
    move/from16 v0, p1

    #@1a9
    if-ne v0, v6, :cond_8

    #@1ab
    .line 829
    :cond_7
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    #@1ad
    const/high16 v6, 0x3f800000    # 1.0f

    #@1af
    const/4 v7, 0x0

    #@1b0
    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@1b3
    .line 830
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    #@1b4
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@1b7
    .line 835
    :goto_4
    move-object/from16 v0, p0

    #@1b9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@1bb
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1be
    .line 836
    move-wide/from16 v0, v22

    #@1c0
    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@1c3
    .line 837
    const/4 v6, 0x1

    #@1c4
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@1c7
    goto :goto_2

    #@1c8
    .line 817
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v22    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    #@1ca
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@1cc
    int-to-long v0, v6

    #@1cd
    move-wide/from16 v22, v0

    #@1cf
    .line 818
    .restart local v22    # "duration":J
    goto :goto_3

    #@1d0
    .line 833
    :cond_8
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    #@1d2
    const/high16 v6, 0x3f800000    # 1.0f

    #@1d4
    const/high16 v7, 0x3f800000    # 1.0f

    #@1d6
    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@1d9
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    goto :goto_4

    #@1da
    .line 814
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    #@0
    .prologue
    .line 1007
    sub-float v1, p2, p1

    #@2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@5
    move-result v1

    #@6
    const/high16 v2, 0x3f800000    # 1.0f

    #@8
    cmpg-float v1, v1, v2

    #@a
    if-ltz v1, :cond_0

    #@c
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@e
    const/16 v2, 0x13

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 1008
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #@14
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@17
    return-object v1

    #@18
    .line 1010
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    #@1b
    move-result-object v0

    #@1c
    .line 1011
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    #@1e
    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    #@21
    return-object v1
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .locals 7
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    #@0
    .prologue
    const v3, 0x3f666666    # 0.9f

    #@3
    const v2, 0x3dcccccd    # 0.1f

    #@6
    .line 1016
    new-instance v0, Landroid/graphics/Path;

    #@8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@b
    .line 1017
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    #@e
    .line 1019
    cmpl-float v1, p3, p4

    #@10
    if-lez v1, :cond_0

    #@12
    .line 1021
    mul-float v1, v3, p3

    #@14
    mul-float/2addr v2, p4

    #@15
    add-float v4, v1, v2

    #@17
    move v1, p1

    #@18
    move v2, p3

    #@19
    move v3, p2

    #@1a
    move v5, p2

    #@1b
    move v6, p4

    #@1c
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@1f
    .line 1026
    :goto_0
    return-object v0

    #@20
    .line 1024
    :cond_0
    mul-float v1, v2, p3

    #@22
    mul-float v2, v3, p4

    #@24
    add-float v4, v1, v2

    #@26
    move v1, p1

    #@27
    move v2, p3

    #@28
    move v3, p1

    #@29
    move v5, p2

    #@2a
    move v6, p4

    #@2b
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@2e
    goto :goto_0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1349
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@4
    move-object/from16 v0, p0

    #@6
    invoke-direct {v0, v11}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@9
    .line 1350
    move-object/from16 v0, p0

    #@b
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@d
    iget v4, v11, Landroid/graphics/Rect;->left:I

    #@f
    .line 1351
    .local v4, "left":I
    move-object/from16 v0, p0

    #@11
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@13
    iget v8, v11, Landroid/graphics/Rect;->top:I

    #@15
    .line 1352
    .local v8, "top":I
    move-object/from16 v0, p0

    #@17
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@19
    neg-int v12, v4

    #@1a
    neg-int v13, v8

    #@1b
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    #@1e
    .line 1354
    move-object/from16 v0, p0

    #@20
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@25
    move-result v12

    #@26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@29
    move-result v13

    #@2a
    const/4 v14, 0x0

    #@2b
    const/4 v15, 0x0

    #@2c
    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@2f
    .line 1355
    new-instance v5, Landroid/view/animation/AnimationSet;

    #@31
    const/4 v11, 0x1

    #@32
    invoke-direct {v5, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@35
    .line 1356
    .local v5, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    #@37
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    #@3c
    move-result v11

    #@3d
    int-to-float v3, v11

    #@3e
    .line 1357
    .local v3, "fromWidth":F
    move-object/from16 v0, p0

    #@40
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@42
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    #@45
    move-result v11

    #@46
    int-to-float v7, v11

    #@47
    .line 1358
    .local v7, "toWidth":F
    move-object/from16 v0, p0

    #@49
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@4b
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    #@4e
    move-result v11

    #@4f
    int-to-float v2, v11

    #@50
    .line 1362
    .local v2, "fromHeight":F
    move-object/from16 v0, p0

    #@52
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@54
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    #@57
    move-result v11

    #@58
    move-object/from16 v0, p2

    #@5a
    iget v12, v0, Landroid/graphics/Rect;->top:I

    #@5c
    sub-int/2addr v11, v12

    #@5d
    move-object/from16 v0, p2

    #@5f
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    #@61
    sub-int/2addr v11, v12

    #@62
    int-to-float v6, v11

    #@63
    .line 1363
    .local v6, "toHeight":F
    const/4 v10, 0x0

    #@64
    .line 1364
    .local v10, "translateAdjustment":I
    cmpg-float v11, v3, v7

    #@66
    if-gtz v11, :cond_0

    #@68
    cmpg-float v11, v2, v6

    #@6a
    if-gtz v11, :cond_0

    #@6c
    .line 1368
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@76
    invoke-direct {v11, v12, v13}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@79
    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@7c
    .line 1382
    :goto_0
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    #@7e
    move-object/from16 v0, p1

    #@80
    iget v11, v0, Landroid/graphics/Rect;->left:I

    #@82
    sub-int v11, v4, v11

    #@84
    int-to-float v11, v11

    #@85
    .line 1383
    const/4 v12, 0x0

    #@86
    move-object/from16 v0, p1

    #@88
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@8a
    sub-int v13, v8, v13

    #@8c
    sub-int/2addr v13, v10

    #@8d
    int-to-float v13, v13

    #@8e
    const/4 v14, 0x0

    #@8f
    .line 1382
    invoke-direct {v9, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@92
    .line 1384
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@95
    .line 1385
    const-wide/16 v12, 0x150

    #@97
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@9a
    .line 1386
    const/4 v11, 0x1

    #@9b
    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@9e
    .line 1387
    return-object v5

    #@9f
    .line 1372
    .end local v9    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    #@a1
    div-float v12, v3, v7

    #@a3
    const/high16 v13, 0x3f800000    # 1.0f

    #@a5
    div-float v14, v2, v6

    #@a7
    const/high16 v15, 0x3f800000    # 1.0f

    #@a9
    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    #@ac
    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@af
    .line 1376
    move-object/from16 v0, p2

    #@b1
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@b3
    int-to-float v11, v11

    #@b4
    mul-float/2addr v11, v2

    #@b5
    div-float/2addr v11, v6

    #@b6
    float-to-int v10, v11

    #@b7
    goto :goto_0
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 14
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 598
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-direct {p0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@5
    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    #@8
    move-result v10

    #@9
    .line 600
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    #@c
    move-result v9

    #@d
    .line 601
    .local v9, "appHeight":I
    if-eqz p2, :cond_0

    #@f
    .line 603
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@14
    move-result v2

    #@15
    int-to-float v2, v2

    #@16
    int-to-float v4, v10

    #@17
    div-float v1, v2, v4

    #@19
    .line 604
    .local v1, "scaleW":F
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@1e
    move-result v2

    #@1f
    int-to-float v2, v2

    #@20
    int-to-float v4, v9

    #@21
    div-float v3, v2, v4

    #@23
    .line 605
    .local v3, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@25
    const/high16 v2, 0x3f800000    # 1.0f

    #@27
    const/high16 v4, 0x3f800000    # 1.0f

    #@29
    .line 606
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2b
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@2d
    invoke-static {v5, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@30
    move-result v5

    #@31
    .line 607
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@33
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@35
    invoke-static {v6, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@38
    move-result v6

    #@39
    .line 605
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@3c
    .line 608
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@3e
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@41
    .line 610
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    #@43
    const/4 v2, 0x0

    #@44
    const/high16 v4, 0x3f800000    # 1.0f

    #@46
    invoke-direct {v8, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@49
    .line 611
    .local v8, "alpha":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@4b
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@4e
    .line 613
    new-instance v11, Landroid/view/animation/AnimationSet;

    #@50
    const/4 v2, 0x0

    #@51
    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@54
    .line 614
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@57
    .line 615
    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@5a
    .line 616
    const/4 v2, 0x1

    #@5b
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    #@5e
    .line 617
    move-object v7, v11

    #@5f
    .line 635
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v1    # "scaleW":F
    .end local v3    # "scaleH":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@62
    .line 641
    const-wide/16 v12, 0x150

    #@64
    .line 644
    .local v12, "duration":J
    :goto_1
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    #@67
    .line 645
    const/4 v2, 0x1

    #@68
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@6b
    .line 646
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@6d
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@70
    .line 647
    invoke-virtual {v7, v10, v9, v10, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@73
    .line 648
    return-object v7

    #@74
    .line 618
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v12    # "duration":J
    :cond_0
    const/16 v2, 0xe

    #@76
    if-eq p1, v2, :cond_1

    #@78
    .line 619
    const/16 v2, 0xf

    #@7a
    if-ne p1, v2, :cond_2

    #@7c
    .line 624
    :cond_1
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@7e
    const/high16 v2, 0x3f800000    # 1.0f

    #@80
    const/4 v4, 0x0

    #@81
    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@84
    .line 625
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    #@85
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@88
    goto :goto_0

    #@89
    .line 628
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@8b
    const/high16 v2, 0x3f800000    # 1.0f

    #@8d
    const/high16 v4, 0x3f800000    # 1.0f

    #@8f
    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@92
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    #@93
    .line 638
    :pswitch_0
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@95
    int-to-long v12, v2

    #@96
    .line 639
    .restart local v12    # "duration":J
    goto :goto_1

    #@97
    .line 635
    nop

    #@98
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1724
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1725
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    #@8
    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@a
    .line 1728
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iput-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@c
    .line 1729
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    #@e
    new-instance v2, Lcom/android/server/wm/AppTransition$4;

    #@10
    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$4;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@16
    .line 1723
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    #@0
    .prologue
    .line 1030
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1031
    const-wide/16 v0, 0x1c5

    #@8
    return-wide v0

    #@9
    .line 1033
    :cond_0
    const-wide/16 v0, 0x150

    #@b
    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    #@0
    .prologue
    .line 1038
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@8
    return-object v0

    #@9
    .line 1041
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@b
    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 445
    if-eqz p1, :cond_2

    #@3
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 449
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@9
    if-eqz v2, :cond_1

    #@b
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@d
    .line 450
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@f
    .line 451
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    #@11
    and-int/2addr v2, v1

    #@12
    const/high16 v3, 0x1000000

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 452
    const-string/jumbo v0, "android"

    #@19
    .line 456
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@1c
    move-result-object v2

    #@1d
    .line 457
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    #@1f
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@21
    .line 456
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 449
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_1
    const-string/jumbo v0, "android"

    #@29
    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 459
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
    .line 465
    if-eqz p1, :cond_1

    #@3
    .line 466
    const/high16 v0, -0x1000000

    #@5
    and-int/2addr v0, p2

    #@6
    const/high16 v1, 0x1000000

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 467
    const-string/jumbo p1, "android"

    #@d
    .line 471
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@10
    move-result-object v0

    #@11
    .line 472
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    #@13
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@15
    .line 471
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 474
    :cond_1
    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 653
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@6
    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 654
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v1, "Starting rect for app requested, but none available"

    #@f
    new-instance v2, Ljava/lang/Throwable;

    #@11
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@14
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 655
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@1a
    .line 651
    :goto_0
    return-void

    #@1b
    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@1d
    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@22
    goto :goto_0
.end method

.method private isTvUiMode(I)Z
    .locals 2
    .param p1, "uiMode"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1948
    and-int/lit8 v1, p1, 0x4

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 506
    const/4 v0, 0x0

    #@2
    .line 507
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@4
    .line 508
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    #@6
    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    #@9
    move-result-object v2

    #@a
    .line 510
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    #@c
    .line 511
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@e
    .line 512
    move v0, p2

    #@f
    .line 515
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 516
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 518
    :cond_1
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    #@0
    .prologue
    .line 428
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
    .line 429
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
    .line 428
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 427
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    #@0
    .prologue
    .line 422
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
    .line 423
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
    .line 422
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 421
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
    .line 435
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
    .line 436
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
    .line 435
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 434
    :cond_0
    return-void
.end method

.method private prepare()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 354
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 355
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@9
    .line 356
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    #@c
    .line 357
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    #@e
    .line 358
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    #@10
    .line 359
    const-wide/16 v0, 0x150

    #@12
    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@14
    .line 360
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 362
    :cond_0
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 677
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    #@2
    .line 678
    new-instance v1, Landroid/graphics/Rect;

    #@4
    add-int v2, p1, p3

    #@6
    add-int v3, p2, p4

    #@8
    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@b
    .line 677
    const/4 v2, -0x1

    #@c
    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@11
    .line 676
    return-void
.end method

.method private setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    #@0
    .prologue
    .line 287
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    .line 286
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1834
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1852
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
    .line 1836
    :pswitch_0
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    #@1f
    return-object v0

    #@20
    .line 1838
    :pswitch_1
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    #@23
    return-object v0

    #@24
    .line 1840
    :pswitch_2
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    #@27
    return-object v0

    #@28
    .line 1842
    :pswitch_3
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    #@2b
    return-object v0

    #@2c
    .line 1844
    :pswitch_4
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    #@2f
    return-object v0

    #@30
    .line 1846
    :pswitch_5
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    #@33
    return-object v0

    #@34
    .line 1848
    :pswitch_6
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    #@37
    return-object v0

    #@38
    .line 1850
    :pswitch_7
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    #@3b
    return-object v0

    #@3c
    .line 1834
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
    .line 1396
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4
    if-eq v2, v0, :cond_1

    #@6
    .line 1397
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v3, 0x7

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 1398
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@d
    const/16 v3, 0x8

    #@f
    if-eq v2, v3, :cond_0

    #@11
    .line 1396
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    .line 1398
    goto :goto_0

    #@14
    :cond_1
    move v0, v1

    #@15
    .line 1396
    goto :goto_0
.end method

.method clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 395
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4
    .line 396
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@6
    .line 397
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@b
    .line 398
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@d
    .line 399
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@f
    .line 400
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    #@11
    .line 401
    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    #@13
    .line 394
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 33
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "freeform"    # Z
    .param p9, "taskId"    # I

    #@0
    .prologue
    .line 1053
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v14

    #@4
    .line 1054
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v13

    #@8
    .line 1055
    .local v13, "appHeight":I
    move-object/from16 v0, p0

    #@a
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@c
    move-object/from16 v0, p0

    #@e
    invoke-direct {v0, v5}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@11
    .line 1056
    move-object/from16 v0, p0

    #@13
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@18
    move-result v28

    #@19
    .line 1057
    .local v28, "thumbWidthI":I
    if-lez v28, :cond_0

    #@1b
    move/from16 v5, v28

    #@1d
    :goto_0
    int-to-float v0, v5

    #@1e
    move/from16 v27, v0

    #@20
    .line 1058
    .local v27, "thumbWidth":F
    move-object/from16 v0, p0

    #@22
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@27
    move-result v24

    #@28
    .line 1059
    .local v24, "thumbHeightI":I
    if-lez v24, :cond_1

    #@2a
    move/from16 v5, v24

    #@2c
    :goto_1
    int-to-float v0, v5

    #@2d
    move/from16 v23, v0

    #@2f
    .line 1060
    .local v23, "thumbHeight":F
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@33
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@35
    move-object/from16 v0, p5

    #@37
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@39
    sub-int v25, v5, v6

    #@3b
    .line 1061
    .local v25, "thumbStartX":I
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@3f
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@41
    move-object/from16 v0, p5

    #@43
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@45
    sub-int v26, v5, v6

    #@47
    .line 1063
    .local v26, "thumbStartY":I
    packed-switch p1, :pswitch_data_0

    #@4a
    .line 1167
    new-instance v5, Ljava/lang/RuntimeException;

    #@4c
    const-string/jumbo v6, "Invalid thumbnail transition state"

    #@4f
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@52
    throw v5

    #@53
    .line 1057
    .end local v23    # "thumbHeight":F
    .end local v24    # "thumbHeightI":I
    .end local v25    # "thumbStartX":I
    .end local v26    # "thumbStartY":I
    .end local v27    # "thumbWidth":F
    :cond_0
    const/4 v5, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1059
    .restart local v24    # "thumbHeightI":I
    .restart local v27    # "thumbWidth":F
    :cond_1
    const/4 v5, 0x1

    #@56
    goto :goto_1

    #@57
    .line 1066
    .restart local v23    # "thumbHeight":F
    .restart local v25    # "thumbStartX":I
    .restart local v26    # "thumbStartY":I
    :pswitch_0
    if-nez p1, :cond_2

    #@59
    const/16 v17, 0x1

    #@5b
    .line 1067
    .local v17, "scaleUp":Z
    :goto_2
    if-eqz p8, :cond_3

    #@5d
    if-eqz v17, :cond_3

    #@5f
    .line 1068
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, p5

    #@63
    move-object/from16 v2, p7

    #@65
    move/from16 v3, p9

    #@67
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    #@6a
    move-result-object v7

    #@6b
    .line 1171
    .end local v17    # "scaleUp":Z
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    #@6e
    move-result-wide v10

    #@6f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    #@72
    move-result-object v12

    #@73
    move-object/from16 v6, p0

    #@75
    move v8, v14

    #@76
    move v9, v13

    #@77
    .line 1170
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@7a
    move-result-object v5

    #@7b
    return-object v5

    #@7c
    .line 1066
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_2
    const/16 v17, 0x0

    #@7e
    .restart local v17    # "scaleUp":Z
    goto :goto_2

    #@7f
    .line 1070
    :cond_3
    if-eqz p8, :cond_4

    #@81
    .line 1071
    move-object/from16 v0, p0

    #@83
    move-object/from16 v1, p5

    #@85
    move-object/from16 v2, p7

    #@87
    move/from16 v3, p9

    #@89
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    #@8c
    move-result-object v7

    #@8d
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    #@8e
    .line 1074
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v18, Landroid/view/animation/AnimationSet;

    #@90
    const/4 v5, 0x1

    #@91
    move-object/from16 v0, v18

    #@93
    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@96
    .line 1077
    .local v18, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    #@98
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@9a
    move-object/from16 v0, p5

    #@9c
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@9f
    .line 1078
    move-object/from16 v0, p0

    #@a1
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@a3
    move-object/from16 v0, p5

    #@a5
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a8
    .line 1082
    move-object/from16 v0, p0

    #@aa
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@ac
    const/4 v6, 0x0

    #@ad
    const/4 v8, 0x0

    #@ae
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    #@b1
    .line 1083
    move-object/from16 v0, p0

    #@b3
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@b5
    const/4 v6, 0x0

    #@b6
    const/4 v8, 0x0

    #@b7
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    #@ba
    .line 1086
    move-object/from16 v0, p0

    #@bc
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@be
    move-object/from16 v0, p6

    #@c0
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    #@c3
    .line 1087
    move-object/from16 v0, p0

    #@c5
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@c7
    move-object/from16 v0, p6

    #@c9
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@cc
    .line 1089
    move-object/from16 v0, p0

    #@ce
    move/from16 v1, p2

    #@d0
    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    #@d3
    move-result v5

    #@d4
    if-nez v5, :cond_5

    #@d6
    const/4 v5, 0x1

    #@d7
    move/from16 v0, p3

    #@d9
    if-ne v0, v5, :cond_c

    #@db
    .line 1092
    :cond_5
    move-object/from16 v0, p6

    #@dd
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@df
    sub-int v5, v14, v5

    #@e1
    move-object/from16 v0, p6

    #@e3
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@e5
    sub-int/2addr v5, v6

    #@e6
    int-to-float v5, v5

    #@e7
    .line 1091
    div-float v16, v27, v5

    #@e9
    .line 1093
    .local v16, "scale":F
    div-float v5, v23, v16

    #@eb
    float-to-int v0, v5

    #@ec
    move/from16 v30, v0

    #@ee
    .line 1094
    .local v30, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    #@f0
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@f2
    move-object/from16 v0, p0

    #@f4
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@f6
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@f8
    add-int v6, v6, v30

    #@fa
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    #@fc
    .line 1096
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@100
    move-object/from16 v0, p6

    #@102
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@105
    .line 1098
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@107
    .line 1099
    if-eqz v17, :cond_6

    #@109
    move/from16 v5, v16

    #@10b
    :goto_4
    if-eqz v17, :cond_7

    #@10d
    const/high16 v6, 0x3f800000    # 1.0f

    #@10f
    .line 1100
    :goto_5
    if-eqz v17, :cond_8

    #@111
    move/from16 v7, v16

    #@113
    :goto_6
    if-eqz v17, :cond_9

    #@115
    const/high16 v8, 0x3f800000    # 1.0f

    #@117
    .line 1101
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@11a
    move-result v9

    #@11b
    int-to-float v9, v9

    #@11c
    const/high16 v10, 0x40000000    # 2.0f

    #@11e
    div-float/2addr v9, v10

    #@11f
    .line 1102
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@122
    move-result v10

    #@123
    int-to-float v10, v10

    #@124
    const/high16 v11, 0x40000000    # 2.0f

    #@126
    div-float/2addr v10, v11

    #@127
    move-object/from16 v0, p6

    #@129
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@12b
    int-to-float v11, v11

    #@12c
    add-float/2addr v10, v11

    #@12d
    .line 1098
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@130
    .line 1103
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@132
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@134
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@136
    move-object/from16 v0, p5

    #@138
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@13a
    sub-int/2addr v5, v6

    #@13b
    int-to-float v0, v5

    #@13c
    move/from16 v21, v0

    #@13e
    .line 1104
    .local v21, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@141
    move-result v5

    #@142
    int-to-float v5, v5

    #@143
    const/high16 v6, 0x40000000    # 2.0f

    #@145
    div-float/2addr v5, v6

    #@146
    .line 1105
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@149
    move-result v6

    #@14a
    int-to-float v6, v6

    #@14b
    const/high16 v8, 0x40000000    # 2.0f

    #@14d
    div-float/2addr v6, v8

    #@14e
    mul-float v6, v6, v16

    #@150
    .line 1104
    sub-float v31, v5, v6

    #@152
    .line 1106
    .local v31, "x":F
    move-object/from16 v0, p0

    #@154
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@156
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@158
    move-object/from16 v0, p5

    #@15a
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@15c
    sub-int/2addr v5, v6

    #@15d
    int-to-float v0, v5

    #@15e
    move/from16 v22, v0

    #@160
    .line 1107
    .local v22, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@163
    move-result v5

    #@164
    int-to-float v5, v5

    #@165
    const/high16 v6, 0x40000000    # 2.0f

    #@167
    div-float/2addr v5, v6

    #@168
    .line 1108
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@16b
    move-result v6

    #@16c
    int-to-float v6, v6

    #@16d
    const/high16 v8, 0x40000000    # 2.0f

    #@16f
    div-float/2addr v6, v8

    #@170
    mul-float v6, v6, v16

    #@172
    .line 1107
    sub-float v32, v5, v6

    #@174
    .line 1109
    .local v32, "y":F
    sub-float v19, v21, v31

    #@176
    .line 1110
    .local v19, "startX":F
    sub-float v20, v22, v32

    #@178
    .line 1111
    .local v20, "startY":F
    if-eqz v17, :cond_a

    #@17a
    .line 1112
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@180
    move-object/from16 v0, p0

    #@182
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@184
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@187
    .line 1114
    .local v15, "clipAnim":Landroid/view/animation/Animation;
    :goto_8
    if-eqz v17, :cond_b

    #@189
    .line 1115
    const/4 v5, 0x0

    #@18a
    move-object/from16 v0, p6

    #@18c
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@18e
    int-to-float v6, v6

    #@18f
    sub-float v6, v20, v6

    #@191
    const/4 v8, 0x0

    #@192
    move-object/from16 v0, p0

    #@194
    move/from16 v1, v19

    #@196
    invoke-direct {v0, v1, v5, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@199
    move-result-object v29

    #@19a
    .line 1118
    .local v29, "translateAnim":Landroid/view/animation/Animation;
    :goto_9
    move-object/from16 v0, v18

    #@19c
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@19f
    .line 1119
    move-object/from16 v0, v18

    #@1a1
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1a4
    .line 1120
    move-object/from16 v0, v18

    #@1a6
    move-object/from16 v1, v29

    #@1a8
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1ab
    .line 1139
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v30    # "unscaledThumbHeight":I
    .end local v31    # "x":F
    .end local v32    # "y":F
    :goto_a
    move-object/from16 v7, v18

    #@1ad
    .line 1140
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    #@1ae
    move-object/from16 v0, v18

    #@1b0
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    #@1b3
    goto/16 :goto_3

    #@1b5
    .line 1099
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .restart local v16    # "scale":F
    .restart local v30    # "unscaledThumbHeight":I
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    #@1b7
    goto/16 :goto_4

    #@1b9
    :cond_7
    move/from16 v6, v16

    #@1bb
    goto/16 :goto_5

    #@1bd
    .line 1100
    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    #@1bf
    goto/16 :goto_6

    #@1c1
    :cond_9
    move/from16 v8, v16

    #@1c3
    goto/16 :goto_7

    #@1c5
    .line 1113
    .restart local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .restart local v19    # "startX":F
    .restart local v20    # "startY":F
    .restart local v21    # "targetX":F
    .restart local v22    # "targetY":F
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_a
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1cf
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@1d2
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_8

    #@1d3
    .line 1116
    :cond_b
    const/4 v5, 0x0

    #@1d4
    const/4 v6, 0x0

    #@1d5
    move-object/from16 v0, p6

    #@1d7
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@1d9
    int-to-float v8, v8

    #@1da
    sub-float v8, v20, v8

    #@1dc
    move-object/from16 v0, p0

    #@1de
    move/from16 v1, v19

    #@1e0
    invoke-direct {v0, v5, v1, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@1e3
    move-result-object v29

    #@1e4
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_9

    #@1e5
    .line 1124
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .end local v30    # "unscaledThumbHeight":I
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_c
    move-object/from16 v0, p0

    #@1e7
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1ed
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@1ef
    add-int v6, v6, v24

    #@1f1
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    #@1f3
    .line 1125
    move-object/from16 v0, p0

    #@1f5
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1fb
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@1fd
    add-int v6, v6, v28

    #@1ff
    iput v6, v5, Landroid/graphics/Rect;->right:I

    #@201
    .line 1127
    if-eqz v17, :cond_d

    #@203
    .line 1128
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@205
    move-object/from16 v0, p0

    #@207
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@209
    move-object/from16 v0, p0

    #@20b
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@20d
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@210
    .line 1130
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    :goto_b
    if-eqz v17, :cond_e

    #@212
    .line 1131
    move/from16 v0, v25

    #@214
    int-to-float v5, v0

    #@215
    const/4 v6, 0x0

    #@216
    .line 1132
    move-object/from16 v0, p6

    #@218
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@21a
    sub-int v8, v26, v8

    #@21c
    int-to-float v8, v8

    #@21d
    const/4 v9, 0x0

    #@21e
    .line 1131
    move-object/from16 v0, p0

    #@220
    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@223
    move-result-object v29

    #@224
    .line 1136
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    :goto_c
    move-object/from16 v0, v18

    #@226
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@229
    .line 1137
    move-object/from16 v0, v18

    #@22b
    move-object/from16 v1, v29

    #@22d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@230
    goto/16 :goto_a

    #@232
    .line 1129
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :cond_d
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@234
    move-object/from16 v0, p0

    #@236
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@238
    move-object/from16 v0, p0

    #@23a
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@23c
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@23f
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_b

    #@240
    .line 1133
    :cond_e
    const/4 v5, 0x0

    #@241
    move/from16 v0, v25

    #@243
    int-to-float v6, v0

    #@244
    const/4 v8, 0x0

    #@245
    .line 1134
    move-object/from16 v0, p6

    #@247
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@249
    sub-int v9, v26, v9

    #@24b
    int-to-float v9, v9

    #@24c
    .line 1133
    move-object/from16 v0, p0

    #@24e
    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@251
    move-result-object v29

    #@252
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_c

    #@253
    .line 1146
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v17    # "scaleUp":Z
    .end local v18    # "set":Landroid/view/animation/AnimationSet;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v5, 0xe

    #@255
    move/from16 v0, p4

    #@257
    if-ne v0, v5, :cond_f

    #@259
    .line 1149
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@25b
    const/high16 v5, 0x3f800000    # 1.0f

    #@25d
    const/4 v6, 0x0

    #@25e
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@261
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@263
    .line 1151
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_f
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@265
    const/high16 v5, 0x3f800000    # 1.0f

    #@267
    const/high16 v6, 0x3f800000    # 1.0f

    #@269
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@26c
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@26e
    .line 1157
    .end local v7    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v5, 0xe

    #@270
    move/from16 v0, p4

    #@272
    if-ne v0, v5, :cond_10

    #@274
    .line 1160
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@276
    const/4 v5, 0x0

    #@277
    const/high16 v6, 0x3f800000    # 1.0f

    #@279
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@27c
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@27e
    .line 1162
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_10
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@280
    const/high16 v5, 0x3f800000    # 1.0f

    #@282
    const/high16 v6, 0x3f800000    # 1.0f

    #@284
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@287
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@289
    .line 1063
    nop

    #@28a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;
    .locals 36
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/Bitmap;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    #@0
    .prologue
    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v32

    #@4
    .line 906
    .local v32, "thumbWidthI":I
    if-lez v32, :cond_2

    #@6
    move/from16 v7, v32

    #@8
    :goto_0
    int-to-float v0, v7

    #@9
    move/from16 v31, v0

    #@b
    .line 907
    .local v31, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@e
    move-result v30

    #@f
    .line 908
    .local v30, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@12
    move-result v22

    #@13
    .line 910
    .local v22, "appWidth":I
    move/from16 v0, v22

    #@15
    int-to-float v7, v0

    #@16
    div-float v8, v7, v31

    #@18
    .line 911
    .local v8, "scaleW":F
    move-object/from16 v0, p0

    #@1a
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@1c
    move-object/from16 v0, p0

    #@1e
    move/from16 v1, p4

    #@20
    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    #@23
    .line 918
    move-object/from16 v0, p0

    #@25
    move/from16 v1, p5

    #@27
    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_0

    #@2d
    const/4 v7, 0x1

    #@2e
    move/from16 v0, p6

    #@30
    if-ne v0, v7, :cond_3

    #@32
    .line 919
    :cond_0
    move-object/from16 v0, p0

    #@34
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@36
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@38
    int-to-float v0, v7

    #@39
    move/from16 v26, v0

    #@3b
    .line 920
    .local v26, "fromX":F
    move-object/from16 v0, p0

    #@3d
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@3f
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@41
    int-to-float v0, v7

    #@42
    move/from16 v27, v0

    #@44
    .line 924
    .local v27, "fromY":F
    move-object/from16 v0, p0

    #@46
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@4b
    move-result v7

    #@4c
    div-int/lit8 v7, v7, 0x2

    #@4e
    int-to-float v7, v7

    #@4f
    const/high16 v9, 0x3f800000    # 1.0f

    #@51
    sub-float v9, v8, v9

    #@53
    mul-float/2addr v7, v9

    #@54
    move-object/from16 v0, p1

    #@56
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@58
    int-to-float v9, v9

    #@59
    add-float v33, v7, v9

    #@5b
    .line 925
    .local v33, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@5e
    move-result v7

    #@5f
    div-int/lit8 v7, v7, 0x2

    #@61
    int-to-float v7, v7

    #@62
    const/high16 v9, 0x3f800000    # 1.0f

    #@64
    div-float/2addr v9, v8

    #@65
    const/high16 v10, 0x3f800000    # 1.0f

    #@67
    sub-float v9, v10, v9

    #@69
    mul-float/2addr v7, v9

    #@6a
    move-object/from16 v0, p1

    #@6c
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@6e
    int-to-float v9, v9

    #@6f
    add-float v34, v7, v9

    #@71
    .line 926
    .local v34, "toY":F
    move-object/from16 v0, p0

    #@73
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@75
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@78
    move-result v7

    #@79
    div-int/lit8 v7, v7, 0x2

    #@7b
    int-to-float v11, v7

    #@7c
    .line 927
    .local v11, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@7f
    move-result v7

    #@80
    div-int/lit8 v7, v7, 0x2

    #@82
    int-to-float v7, v7

    #@83
    div-float v12, v7, v8

    #@85
    .line 936
    .local v12, "pivotY":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    #@88
    move-result-wide v24

    #@89
    .line 937
    .local v24, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    #@8c
    move-result-object v28

    #@8d
    .line 938
    .local v28, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    #@8f
    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@91
    if-eqz v7, :cond_6

    #@93
    .line 940
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    #@95
    const/high16 v7, 0x3f800000    # 1.0f

    #@97
    const/high16 v9, 0x3f800000    # 1.0f

    #@99
    move v10, v8

    #@9a
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@9d
    .line 941
    .local v6, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    #@9f
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@a2
    .line 942
    move-wide/from16 v0, v24

    #@a4
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@a7
    .line 943
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    #@a9
    const/high16 v7, 0x3f800000    # 1.0f

    #@ab
    const/4 v9, 0x0

    #@ac
    move-object/from16 v0, v21

    #@ae
    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@b1
    .line 944
    .local v21, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@b3
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@b5
    const/16 v9, 0x13

    #@b7
    if-ne v7, v9, :cond_4

    #@b9
    .line 945
    sget-object v7, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@bb
    .line 944
    :goto_2
    move-object/from16 v0, v21

    #@bd
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@c0
    .line 946
    move-object/from16 v0, p0

    #@c2
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@c4
    const/16 v9, 0x13

    #@c6
    if-ne v7, v9, :cond_5

    #@c8
    .line 947
    const-wide/16 v16, 0x2

    #@ca
    div-long v16, v24, v16

    #@cc
    .line 946
    :goto_3
    move-object/from16 v0, v21

    #@ce
    move-wide/from16 v1, v16

    #@d0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@d3
    .line 949
    move-object/from16 v0, p0

    #@d5
    move/from16 v1, v26

    #@d7
    move/from16 v2, v33

    #@d9
    move/from16 v3, v27

    #@db
    move/from16 v4, v34

    #@dd
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@e0
    move-result-object v35

    #@e1
    .line 950
    .local v35, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    #@e3
    move-object/from16 v1, v28

    #@e5
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@e8
    .line 951
    move-object/from16 v0, v35

    #@ea
    move-wide/from16 v1, v24

    #@ec
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@ef
    .line 953
    move-object/from16 v0, p0

    #@f1
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@f3
    const/4 v9, 0x0

    #@f4
    const/4 v10, 0x0

    #@f5
    move/from16 v0, v32

    #@f7
    move/from16 v1, v30

    #@f9
    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@fc
    .line 954
    move-object/from16 v0, p0

    #@fe
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@105
    .line 958
    move-object/from16 v0, p0

    #@107
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@109
    const/4 v9, 0x0

    #@10a
    const/4 v10, 0x0

    #@10b
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    #@10e
    .line 959
    move-object/from16 v0, p0

    #@110
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@112
    move-object/from16 v0, p0

    #@114
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@116
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@118
    int-to-float v9, v9

    #@119
    div-float/2addr v9, v8

    #@11a
    float-to-int v9, v9

    #@11b
    iput v9, v7, Landroid/graphics/Rect;->right:I

    #@11d
    .line 960
    move-object/from16 v0, p0

    #@11f
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@125
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@127
    int-to-float v9, v9

    #@128
    div-float/2addr v9, v8

    #@129
    float-to-int v9, v9

    #@12a
    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    #@12c
    .line 962
    if-eqz p2, :cond_1

    #@12e
    .line 963
    move-object/from16 v0, p0

    #@130
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@132
    move-object/from16 v0, p2

    #@134
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@136
    neg-int v9, v9

    #@137
    int-to-float v9, v9

    #@138
    mul-float/2addr v9, v8

    #@139
    float-to-int v9, v9

    #@13a
    .line 964
    move-object/from16 v0, p2

    #@13c
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@13e
    neg-int v10, v10

    #@13f
    int-to-float v10, v10

    #@140
    mul-float/2addr v10, v8

    #@141
    float-to-int v10, v10

    #@142
    .line 965
    move-object/from16 v0, p2

    #@144
    iget v13, v0, Landroid/graphics/Rect;->right:I

    #@146
    neg-int v13, v13

    #@147
    int-to-float v13, v13

    #@148
    mul-float/2addr v13, v8

    #@149
    float-to-int v13, v13

    #@14a
    .line 966
    move-object/from16 v0, p2

    #@14c
    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    #@14e
    neg-int v14, v14

    #@14f
    int-to-float v14, v14

    #@150
    mul-float/2addr v14, v8

    #@151
    float-to-int v14, v14

    #@152
    .line 963
    invoke-virtual {v7, v9, v10, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    #@155
    .line 969
    :cond_1
    new-instance v23, Landroid/view/animation/ClipRectAnimation;

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@15b
    move-object/from16 v0, p0

    #@15d
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@15f
    move-object/from16 v0, v23

    #@161
    invoke-direct {v0, v7, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@164
    .line 970
    .local v23, "clipAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, v23

    #@166
    move-object/from16 v1, v28

    #@168
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@16b
    .line 971
    invoke-virtual/range {v23 .. v25}, Landroid/view/animation/Animation;->setDuration(J)V

    #@16e
    .line 974
    new-instance v29, Landroid/view/animation/AnimationSet;

    #@170
    const/4 v7, 0x0

    #@171
    move-object/from16 v0, v29

    #@173
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@176
    .line 975
    .local v29, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    #@178
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@17b
    .line 976
    move-object/from16 v0, v29

    #@17d
    move-object/from16 v1, v21

    #@17f
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@182
    .line 977
    move-object/from16 v0, v29

    #@184
    move-object/from16 v1, v35

    #@186
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@189
    .line 978
    move-object/from16 v0, v29

    #@18b
    move-object/from16 v1, v23

    #@18d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@190
    .line 979
    move-object/from16 v15, v29

    #@192
    .line 1000
    .end local v23    # "clipAnim":Landroid/view/animation/Animation;
    .local v15, "a":Landroid/view/animation/Animation;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@195
    move-result v17

    #@196
    const-wide/16 v18, 0x0

    #@198
    .line 1001
    const/16 v20, 0x0

    #@19a
    move-object/from16 v14, p0

    #@19c
    move/from16 v16, v22

    #@19e
    .line 1000
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@1a1
    move-result-object v7

    #@1a2
    return-object v7

    #@1a3
    .line 906
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v8    # "scaleW":F
    .end local v11    # "pivotX":F
    .end local v12    # "pivotY":F
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v22    # "appWidth":I
    .end local v24    # "duration":J
    .end local v26    # "fromX":F
    .end local v27    # "fromY":F
    .end local v28    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v29    # "set":Landroid/view/animation/AnimationSet;
    .end local v30    # "thumbHeightI":I
    .end local v31    # "thumbWidth":F
    .end local v33    # "toX":F
    .end local v34    # "toY":F
    .end local v35    # "translate":Landroid/view/animation/Animation;
    :cond_2
    const/4 v7, 0x1

    #@1a4
    goto/16 :goto_0

    #@1a6
    .line 929
    .restart local v8    # "scaleW":F
    .restart local v22    # "appWidth":I
    .restart local v30    # "thumbHeightI":I
    .restart local v31    # "thumbWidth":F
    :cond_3
    const/4 v11, 0x0

    #@1a7
    .line 930
    .restart local v11    # "pivotX":F
    const/4 v12, 0x0

    #@1a8
    .line 931
    .restart local v12    # "pivotY":F
    move-object/from16 v0, p0

    #@1aa
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@1ac
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@1ae
    int-to-float v0, v7

    #@1af
    move/from16 v26, v0

    #@1b1
    .line 932
    .restart local v26    # "fromX":F
    move-object/from16 v0, p0

    #@1b3
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@1b5
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@1b7
    int-to-float v0, v7

    #@1b8
    move/from16 v27, v0

    #@1ba
    .line 933
    .restart local v27    # "fromY":F
    move-object/from16 v0, p1

    #@1bc
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@1be
    int-to-float v0, v7

    #@1bf
    move/from16 v33, v0

    #@1c1
    .line 934
    .restart local v33    # "toX":F
    move-object/from16 v0, p1

    #@1c3
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@1c5
    int-to-float v0, v7

    #@1c6
    move/from16 v34, v0

    #@1c8
    .restart local v34    # "toY":F
    goto/16 :goto_1

    #@1ca
    .line 945
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    .restart local v24    # "duration":J
    .restart local v28    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    move-object/from16 v0, p0

    #@1cc
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@1ce
    goto/16 :goto_2

    #@1d0
    :cond_5
    move-wide/from16 v16, v24

    #@1d2
    .line 948
    goto/16 :goto_3

    #@1d4
    .line 982
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    :cond_6
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    #@1d6
    const/high16 v15, 0x3f800000    # 1.0f

    #@1d8
    const/high16 v17, 0x3f800000    # 1.0f

    #@1da
    move-object v13, v6

    #@1db
    move v14, v8

    #@1dc
    move/from16 v16, v8

    #@1de
    move/from16 v18, v11

    #@1e0
    move/from16 v19, v12

    #@1e2
    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@1e5
    .line 983
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    #@1e7
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1ea
    .line 984
    move-wide/from16 v0, v24

    #@1ec
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@1ef
    .line 985
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    #@1f1
    const/4 v7, 0x0

    #@1f2
    const/high16 v9, 0x3f800000    # 1.0f

    #@1f4
    move-object/from16 v0, v21

    #@1f6
    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@1f9
    .line 986
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@1fb
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    #@1fd
    move-object/from16 v0, v21

    #@1ff
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@202
    .line 987
    move-object/from16 v0, v21

    #@204
    move-wide/from16 v1, v24

    #@206
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@209
    .line 988
    move-object/from16 v0, p0

    #@20b
    move/from16 v1, v33

    #@20d
    move/from16 v2, v26

    #@20f
    move/from16 v3, v34

    #@211
    move/from16 v4, v27

    #@213
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@216
    move-result-object v35

    #@217
    .line 989
    .restart local v35    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    #@219
    move-object/from16 v1, v28

    #@21b
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@21e
    .line 990
    move-object/from16 v0, v35

    #@220
    move-wide/from16 v1, v24

    #@222
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@225
    .line 993
    new-instance v29, Landroid/view/animation/AnimationSet;

    #@227
    const/4 v7, 0x0

    #@228
    move-object/from16 v0, v29

    #@22a
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@22d
    .line 994
    .restart local v29    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    #@22f
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@232
    .line 995
    move-object/from16 v0, v29

    #@234
    move-object/from16 v1, v21

    #@236
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@239
    .line 996
    move-object/from16 v0, v29

    #@23b
    move-object/from16 v1, v35

    #@23d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@240
    .line 997
    move-object/from16 v15, v29

    #@242
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_4
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .locals 22
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

    #@0
    .prologue
    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v15

    #@4
    .line 1286
    .local v15, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v14

    #@8
    .line 1287
    .local v14, "appHeight":I
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p4

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    #@f
    move-result-object v21

    #@10
    .line 1289
    .local v21, "thumbnailHeader":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@14
    move-object/from16 v0, p0

    #@16
    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@19
    .line 1290
    if-eqz v21, :cond_0

    #@1b
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    #@1e
    move-result v20

    #@1f
    .line 1291
    .local v20, "thumbWidthI":I
    :goto_0
    if-lez v20, :cond_1

    #@21
    .end local v20    # "thumbWidthI":I
    :goto_1
    move/from16 v0, v20

    #@23
    int-to-float v0, v0

    #@24
    move/from16 v19, v0

    #@26
    .line 1292
    .local v19, "thumbWidth":F
    if-eqz v21, :cond_2

    #@28
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    #@2b
    move-result v18

    #@2c
    .line 1293
    .local v18, "thumbHeightI":I
    :goto_2
    if-lez v18, :cond_3

    #@2e
    .end local v18    # "thumbHeightI":I
    :goto_3
    move/from16 v0, v18

    #@30
    int-to-float v0, v0

    #@31
    move/from16 v17, v0

    #@33
    .line 1295
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_0

    #@36
    .line 1342
    new-instance v4, Ljava/lang/RuntimeException;

    #@38
    const-string/jumbo v7, "Invalid thumbnail transition state"

    #@3b
    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v4

    #@3f
    .end local v17    # "thumbHeight":F
    .end local v19    # "thumbWidth":F
    :cond_0
    move/from16 v20, v15

    #@41
    .line 1290
    goto :goto_0

    #@42
    .line 1291
    .restart local v20    # "thumbWidthI":I
    :cond_1
    const/16 v20, 0x1

    #@44
    goto :goto_1

    #@45
    .end local v20    # "thumbWidthI":I
    .restart local v19    # "thumbWidth":F
    :cond_2
    move/from16 v18, v14

    #@47
    .line 1292
    goto :goto_2

    #@48
    .line 1293
    .restart local v18    # "thumbHeightI":I
    :cond_3
    const/16 v18, 0x1

    #@4a
    goto :goto_3

    #@4b
    .line 1298
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    int-to-float v4, v15

    #@4c
    div-float v3, v19, v4

    #@4e
    .line 1299
    .local v3, "scaleW":F
    int-to-float v4, v14

    #@4f
    div-float v5, v17, v4

    #@51
    .line 1300
    .local v5, "scaleH":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@53
    const/high16 v4, 0x3f800000    # 1.0f

    #@55
    const/high16 v6, 0x3f800000    # 1.0f

    #@57
    .line 1301
    move-object/from16 v0, p0

    #@59
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@5b
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@5d
    invoke-static {v7, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@60
    move-result v7

    #@61
    .line 1302
    move-object/from16 v0, p0

    #@63
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@65
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@67
    invoke-static {v8, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@6a
    move-result v8

    #@6b
    .line 1300
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@6e
    .line 1345
    .end local v3    # "scaleW":F
    .end local v5    # "scaleH":F
    .local v2, "a":Landroid/view/animation/Animation;
    :goto_4
    move-object/from16 v0, p0

    #@70
    move/from16 v1, p3

    #@72
    invoke-virtual {v0, v2, v15, v14, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    #@75
    move-result-object v4

    #@76
    return-object v4

    #@77
    .line 1307
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v4, 0xe

    #@79
    move/from16 v0, p3

    #@7b
    if-ne v0, v4, :cond_4

    #@7d
    .line 1311
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    #@7f
    const/high16 v4, 0x3f800000    # 1.0f

    #@81
    const/4 v7, 0x0

    #@82
    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@85
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    #@86
    .line 1314
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    #@88
    const/high16 v4, 0x3f800000    # 1.0f

    #@8a
    const/high16 v7, 0x3f800000    # 1.0f

    #@8c
    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@8f
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    #@90
    .line 1321
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    #@92
    const/high16 v4, 0x3f800000    # 1.0f

    #@94
    const/high16 v7, 0x3f800000    # 1.0f

    #@96
    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@99
    .line 1322
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    #@9a
    .line 1326
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    int-to-float v4, v15

    #@9b
    div-float v3, v19, v4

    #@9d
    .line 1327
    .restart local v3    # "scaleW":F
    int-to-float v4, v14

    #@9e
    div-float v5, v17, v4

    #@a0
    .line 1328
    .restart local v5    # "scaleH":F
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    #@a2
    const/high16 v7, 0x3f800000    # 1.0f

    #@a4
    const/high16 v9, 0x3f800000    # 1.0f

    #@a6
    .line 1329
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@aa
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@ac
    invoke-static {v4, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@af
    move-result v11

    #@b0
    .line 1330
    move-object/from16 v0, p0

    #@b2
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@b4
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@b6
    invoke-static {v4, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@b9
    move-result v12

    #@ba
    move v8, v3

    #@bb
    move v10, v5

    #@bc
    .line 1328
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@bf
    .line 1332
    .local v6, "scale":Landroid/view/animation/Animation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    #@c1
    const/high16 v4, 0x3f800000    # 1.0f

    #@c3
    const/4 v7, 0x0

    #@c4
    invoke-direct {v13, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@c7
    .line 1334
    .local v13, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    #@c9
    const/4 v4, 0x1

    #@ca
    move-object/from16 v0, v16

    #@cc
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@cf
    .line 1335
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    #@d1
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@d4
    .line 1336
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@d9
    .line 1337
    const/4 v4, 0x1

    #@da
    move-object/from16 v0, v16

    #@dc
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@df
    .line 1338
    move-object/from16 v2, v16

    #@e1
    .line 1339
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    #@e2
    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    .locals 19
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1244
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@4
    move-object/from16 v0, p0

    #@6
    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@9
    .line 1245
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v17

    #@d
    .line 1246
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    #@f
    .end local v17    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v17

    #@11
    int-to-float v0, v0

    #@12
    move/from16 v16, v0

    #@14
    .line 1247
    .local v16, "thumbWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    #@17
    move-result v15

    #@18
    .line 1248
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    #@1a
    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    #@1b
    .line 1250
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    #@1d
    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@1f
    if-eqz v7, :cond_2

    #@21
    .line 1252
    move/from16 v0, p1

    #@23
    int-to-float v7, v0

    #@24
    div-float v6, v7, v16

    #@26
    .line 1253
    .local v6, "scaleW":F
    move/from16 v0, p2

    #@28
    int-to-float v7, v0

    #@29
    div-float v8, v7, v14

    #@2b
    .line 1254
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@2d
    const/high16 v5, 0x3f800000    # 1.0f

    #@2f
    const/high16 v7, 0x3f800000    # 1.0f

    #@31
    .line 1255
    move-object/from16 v0, p0

    #@33
    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@35
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@37
    const/high16 v10, 0x3f800000    # 1.0f

    #@39
    div-float/2addr v10, v6

    #@3a
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@3d
    move-result v9

    #@3e
    .line 1256
    move-object/from16 v0, p0

    #@40
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@42
    iget v10, v10, Landroid/graphics/Rect;->top:I

    #@44
    const/high16 v11, 0x3f800000    # 1.0f

    #@46
    div-float/2addr v11, v8

    #@47
    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@4a
    move-result v10

    #@4b
    .line 1254
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@4e
    .line 1257
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@50
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@52
    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@55
    .line 1259
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    #@57
    const/high16 v7, 0x3f800000    # 1.0f

    #@59
    const/4 v9, 0x0

    #@5a
    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@5d
    .line 1260
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@5f
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@61
    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@64
    .line 1263
    new-instance v13, Landroid/view/animation/AnimationSet;

    #@66
    const/4 v7, 0x0

    #@67
    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@6a
    .line 1264
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@6d
    .line 1265
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@70
    .line 1266
    move-object v5, v13

    #@71
    .line 1276
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    #@73
    move/from16 v1, p1

    #@75
    move/from16 v2, p2

    #@77
    move/from16 v3, p3

    #@79
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    #@7c
    move-result-object v7

    #@7d
    return-object v7

    #@7e
    .line 1246
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_0
    const/16 v17, 0x1

    #@80
    goto :goto_0

    #@81
    .line 1248
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    #@82
    goto :goto_1

    #@83
    .line 1269
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    #@85
    int-to-float v7, v0

    #@86
    div-float v6, v7, v16

    #@88
    .line 1270
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    #@8a
    int-to-float v7, v0

    #@8b
    div-float v8, v7, v14

    #@8d
    .line 1271
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #@8f
    const/high16 v7, 0x3f800000    # 1.0f

    #@91
    const/high16 v9, 0x3f800000    # 1.0f

    #@93
    .line 1272
    move-object/from16 v0, p0

    #@95
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@97
    iget v10, v10, Landroid/graphics/Rect;->left:I

    #@99
    const/high16 v11, 0x3f800000    # 1.0f

    #@9b
    div-float/2addr v11, v6

    #@9c
    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@9f
    move-result v10

    #@a0
    .line 1273
    move-object/from16 v0, p0

    #@a2
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@a4
    iget v11, v11, Landroid/graphics/Rect;->top:I

    #@a6
    const/high16 v18, 0x3f800000    # 1.0f

    #@a8
    div-float v18, v18, v8

    #@aa
    move/from16 v0, v18

    #@ac
    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@af
    move-result v11

    #@b0
    .line 1271
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@b3
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1858
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6
    .line 1859
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
    .line 1860
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1861
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string/jumbo v0, "mNextAppTransitionType="

    #@20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 1862
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1864
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@2c
    packed-switch v0, :pswitch_data_0

    #@2f
    .line 1904
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 1905
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    const-string/jumbo v0, "mNextAppTransitionCallback="

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 1906
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@41
    .line 1857
    :cond_1
    return-void

    #@42
    .line 1866
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    const-string/jumbo v0, "mNextAppTransitionPackage="

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    .line 1867
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 1868
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    #@56
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    .line 1869
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@5b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 1870
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    #@65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 1871
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
    .line 1874
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    const-string/jumbo v0, "mNextAppTransitionPackage="

    #@78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 1875
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 1876
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    #@86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    .line 1877
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
    .line 1880
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@95
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@98
    .line 1881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    const-string/jumbo v0, "mNextAppTransitionStartX="

    #@9e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    .line 1882
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@a3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@a8
    .line 1883
    const-string/jumbo v0, " mNextAppTransitionStartY="

    #@ab
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 1884
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@b0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@b2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@b5
    .line 1885
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    #@bb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    .line 1886
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@c0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@c3
    move-result v0

    #@c4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@c7
    .line 1887
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    #@ca
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    .line 1888
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@cf
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@d2
    move-result v0

    #@d3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 1895
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    #@de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@e3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e6
    .line 1897
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    #@ec
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@f1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@f4
    .line 1899
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7
    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    #@fa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    .line 1900
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@ff
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@102
    goto/16 :goto_0

    #@104
    .line 1864
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
    .line 405
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@4
    .line 406
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@7
    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    #@a
    .line 408
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    #@d
    .line 404
    return-void
.end method

.method getAppStackClipMode()I
    .locals 2

    #@0
    .prologue
    .line 1583
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/16 v1, 0x12

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1584
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@8
    const/16 v1, 0x13

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1586
    :cond_0
    const/4 v0, 0x2

    #@d
    .line 1583
    :goto_0
    return v0

    #@e
    .line 1585
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@10
    const/16 v1, 0x8

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 1587
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method getAppTransition()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "taskId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    #@9
    .line 318
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    #@b
    .line 319
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@d
    .line 321
    :cond_0
    if-eqz v0, :cond_1

    #@f
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    #@11
    :cond_1
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    #@0
    .prologue
    .line 692
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    #@2
    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    #@0
    .prologue
    .line 685
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@2
    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    #@8
    .line 663
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    #@a
    .line 664
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@c
    .line 666
    :cond_0
    if-eqz v0, :cond_1

    #@e
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@10
    if-nez v1, :cond_2

    #@12
    .line 667
    :cond_1
    sget-object v1, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Starting rect for task: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " requested, but not available"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 668
    new-instance v3, Ljava/lang/Throwable;

    #@31
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@34
    .line 667
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 669
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@3a
    .line 661
    :goto_0
    return-void

    #@3b
    .line 671
    :cond_2
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@3d
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@40
    goto :goto_0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    #@0
    .prologue
    .line 883
    if-eqz p1, :cond_1

    #@2
    .line 884
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 885
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 887
    :cond_0
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 890
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 891
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 893
    :cond_2
    const/4 v0, 0x3

    #@11
    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 7
    .param p1, "topOpeningAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "topClosingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p4, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v6, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 367
    const/4 v3, -0x1

    #@3
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@5
    .line 368
    iput v6, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@7
    .line 370
    if-eqz p1, :cond_2

    #@9
    iget-object v3, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@d
    move-object v5, v3

    #@e
    .line 371
    :goto_0
    if-eqz p2, :cond_3

    #@10
    iget-object v3, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@14
    move-object v4, v3

    #@15
    .line 372
    :goto_1
    if-eqz p1, :cond_4

    #@17
    iget-object v3, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@19
    .line 373
    :goto_2
    if-eqz p2, :cond_0

    #@1b
    iget-object v2, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1d
    .line 369
    :cond_0
    invoke-direct {p0, v5, v4, v3, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@20
    .line 374
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting()V

    #@2d
    .line 379
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2f
    const/16 v3, 0x13

    #@31
    if-ne v2, v3, :cond_1

    #@33
    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    #@35
    if-eqz v2, :cond_5

    #@37
    .line 366
    :cond_1
    return-void

    #@38
    :cond_2
    move-object v5, v2

    #@39
    .line 370
    goto :goto_0

    #@3a
    :cond_3
    move-object v4, v2

    #@3b
    .line 371
    goto :goto_1

    #@3c
    :cond_4
    move-object v3, v2

    #@3d
    .line 372
    goto :goto_2

    #@3e
    .line 380
    :cond_5
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    #@41
    move-result v2

    #@42
    add-int/lit8 v1, v2, -0x1

    #@44
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_1

    #@46
    .line 381
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    #@4c
    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@4e
    .line 382
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v0, v6}, Lcom/android/server/wm/AppWindowAnimator;->startProlongAnimation(I)V

    #@51
    .line 380
    add-int/lit8 v1, v1, -0x1

    #@53
    goto :goto_3
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    #@0
    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    #@2
    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    #@0
    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    #@2
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 341
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x4

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 342
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x6

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 341
    :cond_0
    :goto_0
    return v0

    #@c
    .line 342
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 336
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x3

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 337
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x5

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 336
    :cond_0
    :goto_0
    return v0

    #@c
    .line 337
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 326
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x5

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 327
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x6

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 326
    :cond_0
    :goto_0
    return v0

    #@c
    .line 327
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    #@0
    .prologue
    .line 332
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
    .line 291
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    .line 292
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@7
    const/4 v2, 0x3

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 291
    :cond_0
    :goto_0
    return v0

    #@b
    .line 292
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    #@0
    .prologue
    .line 301
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
    .line 309
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
    .line 279
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

.method isTransitionSet()Z
    .locals 2

    #@0
    .prologue
    .line 275
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

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .locals 17
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z
    .param p11, "freeform"    # Z
    .param p12, "taskId"    # I

    #@0
    .prologue
    .line 1427
    if-eqz p10, :cond_2

    #@2
    const/4 v5, 0x6

    #@3
    move/from16 v0, p2

    #@5
    if-eq v0, v5, :cond_0

    #@7
    .line 1428
    const/16 v5, 0x8

    #@9
    move/from16 v0, p2

    #@b
    if-ne v0, v5, :cond_1

    #@d
    .line 1430
    :cond_0
    if-eqz p3, :cond_4

    #@f
    .line 1431
    const v5, 0x10a00a0

    #@12
    .line 1430
    :goto_0
    move-object/from16 v0, p0

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@19
    move-result-object v15

    #@1a
    .line 1579
    :goto_1
    return-object v15

    #@1b
    .line 1429
    :cond_1
    const/16 v5, 0xa

    #@1d
    move/from16 v0, p2

    #@1f
    if-eq v0, v5, :cond_0

    #@21
    .line 1437
    :cond_2
    if-eqz p10, :cond_6

    #@23
    const/4 v5, 0x7

    #@24
    move/from16 v0, p2

    #@26
    if-eq v0, v5, :cond_3

    #@28
    .line 1438
    const/16 v5, 0x9

    #@2a
    move/from16 v0, p2

    #@2c
    if-ne v0, v5, :cond_5

    #@2e
    .line 1440
    :cond_3
    if-eqz p3, :cond_7

    #@30
    .line 1441
    const v5, 0x10a009e

    #@33
    .line 1440
    :goto_2
    move-object/from16 v0, p0

    #@35
    move-object/from16 v1, p1

    #@37
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@3a
    move-result-object v15

    #@3b
    .local v15, "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@3c
    .line 1432
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_4
    const v5, 0x10a00a1

    #@3f
    goto :goto_0

    #@40
    .line 1439
    :cond_5
    const/16 v5, 0xb

    #@42
    move/from16 v0, p2

    #@44
    if-eq v0, v5, :cond_3

    #@46
    .line 1447
    :cond_6
    const/16 v5, 0x12

    #@48
    move/from16 v0, p2

    #@4a
    if-ne v0, v5, :cond_8

    #@4c
    .line 1448
    move-object/from16 v0, p0

    #@4e
    move-object/from16 v1, p6

    #@50
    move-object/from16 v2, p8

    #@52
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    #@55
    move-result-object v15

    #@56
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@57
    .line 1442
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v5, 0x10a009f

    #@5a
    goto :goto_2

    #@5b
    .line 1454
    :cond_8
    move-object/from16 v0, p0

    #@5d
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@5f
    const/4 v6, 0x1

    #@60
    if-ne v5, v6, :cond_a

    #@62
    .line 1455
    move-object/from16 v0, p0

    #@64
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@66
    if-eqz p3, :cond_9

    #@68
    .line 1456
    move-object/from16 v0, p0

    #@6a
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@6c
    .line 1455
    :goto_3
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    #@71
    move-result-object v15

    #@72
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@73
    .line 1456
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_9
    move-object/from16 v0, p0

    #@75
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@77
    goto :goto_3

    #@78
    .line 1462
    :cond_a
    move-object/from16 v0, p0

    #@7a
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@7c
    const/4 v6, 0x7

    #@7d
    if-ne v5, v6, :cond_b

    #@7f
    .line 1463
    move-object/from16 v0, p0

    #@81
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@83
    move-object/from16 v0, p0

    #@85
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@87
    move-object/from16 v0, p0

    #@89
    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    #@8c
    move-result-object v15

    #@8d
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    #@8e
    .line 1469
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_b
    move-object/from16 v0, p0

    #@90
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@92
    const/16 v6, 0x8

    #@94
    if-ne v5, v6, :cond_c

    #@96
    .line 1470
    move-object/from16 v0, p0

    #@98
    move/from16 v1, p2

    #@9a
    move/from16 v2, p3

    #@9c
    move-object/from16 v3, p6

    #@9e
    move-object/from16 v4, p7

    #@a0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    #@a3
    move-result-object v15

    #@a4
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@a6
    .line 1476
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_c
    move-object/from16 v0, p0

    #@a8
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@aa
    const/4 v6, 0x2

    #@ab
    if-ne v5, v6, :cond_d

    #@ad
    .line 1477
    move-object/from16 v0, p0

    #@af
    move/from16 v1, p2

    #@b1
    move/from16 v2, p3

    #@b3
    move-object/from16 v3, p6

    #@b5
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    #@b8
    move-result-object v15

    #@b9
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@bb
    .line 1483
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_d
    move-object/from16 v0, p0

    #@bd
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@bf
    const/4 v6, 0x3

    #@c0
    if-eq v5, v6, :cond_e

    #@c2
    .line 1484
    move-object/from16 v0, p0

    #@c4
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c6
    const/4 v6, 0x4

    #@c7
    if-ne v5, v6, :cond_10

    #@c9
    .line 1486
    :cond_e
    move-object/from16 v0, p0

    #@cb
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@cd
    const/4 v6, 0x3

    #@ce
    if-ne v5, v6, :cond_f

    #@d0
    const/4 v5, 0x1

    #@d1
    .line 1485
    :goto_4
    move-object/from16 v0, p0

    #@d3
    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@d5
    .line 1487
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, p3

    #@d9
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    #@dc
    move-result v5

    #@dd
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, p6

    #@e1
    move/from16 v2, p2

    #@e3
    move/from16 v3, p12

    #@e5
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    #@e8
    move-result-object v15

    #@e9
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@eb
    .line 1486
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_f
    const/4 v5, 0x0

    #@ec
    goto :goto_4

    #@ed
    .line 1497
    :cond_10
    move-object/from16 v0, p0

    #@ef
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@f1
    const/4 v6, 0x5

    #@f2
    if-eq v5, v6, :cond_11

    #@f4
    .line 1498
    move-object/from16 v0, p0

    #@f6
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@f8
    const/4 v6, 0x6

    #@f9
    if-ne v5, v6, :cond_13

    #@fb
    .line 1500
    :cond_11
    move-object/from16 v0, p0

    #@fd
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@ff
    const/4 v6, 0x5

    #@100
    if-ne v5, v6, :cond_12

    #@102
    const/4 v5, 0x1

    #@103
    .line 1499
    :goto_5
    move-object/from16 v0, p0

    #@105
    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@107
    .line 1502
    move-object/from16 v0, p0

    #@109
    move/from16 v1, p3

    #@10b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    #@10e
    move-result v6

    #@10f
    move-object/from16 v5, p0

    #@111
    move/from16 v7, p4

    #@113
    move/from16 v8, p5

    #@115
    move/from16 v9, p2

    #@117
    move-object/from16 v10, p6

    #@119
    move-object/from16 v11, p8

    #@11b
    move-object/from16 v12, p9

    #@11d
    move/from16 v13, p11

    #@11f
    move/from16 v14, p12

    #@121
    .line 1501
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    #@124
    move-result-object v15

    #@125
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@127
    .line 1500
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_12
    const/4 v5, 0x0

    #@128
    goto :goto_5

    #@129
    .line 1513
    :cond_13
    const/16 v16, 0x0

    #@12b
    .line 1514
    .local v16, "animAttr":I
    packed-switch p2, :pswitch_data_0

    #@12e
    .line 1571
    :goto_6
    :pswitch_0
    if-eqz v16, :cond_1f

    #@130
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, p1

    #@134
    move/from16 v2, v16

    #@136
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@139
    move-result-object v15

    #@13a
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@13c
    .line 1516
    .end local v15    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    if-eqz p3, :cond_14

    #@13e
    .line 1517
    const/16 v16, 0x4

    #@140
    goto :goto_6

    #@141
    .line 1518
    :cond_14
    const/16 v16, 0x5

    #@143
    goto :goto_6

    #@144
    .line 1521
    :pswitch_2
    if-eqz p3, :cond_15

    #@146
    .line 1522
    const/16 v16, 0x6

    #@148
    goto :goto_6

    #@149
    .line 1523
    :cond_15
    const/16 v16, 0x7

    #@14b
    goto :goto_6

    #@14c
    .line 1527
    :pswitch_3
    if-eqz p3, :cond_16

    #@14e
    .line 1528
    const/16 v16, 0x8

    #@150
    goto :goto_6

    #@151
    .line 1529
    :cond_16
    const/16 v16, 0x9

    #@153
    goto :goto_6

    #@154
    .line 1532
    :pswitch_4
    if-eqz p3, :cond_17

    #@156
    .line 1533
    const/16 v16, 0xa

    #@158
    goto :goto_6

    #@159
    .line 1534
    :cond_17
    const/16 v16, 0xb

    #@15b
    goto :goto_6

    #@15c
    .line 1537
    :pswitch_5
    if-eqz p3, :cond_18

    #@15e
    .line 1538
    const/16 v16, 0xc

    #@160
    goto :goto_6

    #@161
    .line 1539
    :cond_18
    const/16 v16, 0xd

    #@163
    goto :goto_6

    #@164
    .line 1542
    :pswitch_6
    if-eqz p3, :cond_19

    #@166
    .line 1543
    const/16 v16, 0xe

    #@168
    goto :goto_6

    #@169
    .line 1544
    :cond_19
    const/16 v16, 0xf

    #@16b
    goto :goto_6

    #@16c
    .line 1547
    :pswitch_7
    if-eqz p3, :cond_1a

    #@16e
    .line 1548
    const/16 v16, 0x10

    #@170
    goto :goto_6

    #@171
    .line 1549
    :cond_1a
    const/16 v16, 0x11

    #@173
    goto :goto_6

    #@174
    .line 1552
    :pswitch_8
    if-eqz p3, :cond_1b

    #@176
    .line 1553
    const/16 v16, 0x12

    #@178
    goto :goto_6

    #@179
    .line 1554
    :cond_1b
    const/16 v16, 0x13

    #@17b
    goto :goto_6

    #@17c
    .line 1557
    :pswitch_9
    if-eqz p3, :cond_1c

    #@17e
    .line 1558
    const/16 v16, 0x14

    #@180
    goto :goto_6

    #@181
    .line 1559
    :cond_1c
    const/16 v16, 0x15

    #@183
    goto :goto_6

    #@184
    .line 1562
    :pswitch_a
    if-eqz p3, :cond_1d

    #@186
    .line 1563
    const/16 v16, 0x16

    #@188
    goto :goto_6

    #@189
    .line 1564
    :cond_1d
    const/16 v16, 0x17

    #@18b
    goto :goto_6

    #@18c
    .line 1567
    :pswitch_b
    if-eqz p3, :cond_1e

    #@18e
    .line 1568
    const/16 v16, 0x19

    #@190
    goto :goto_6

    #@191
    .line 1569
    :cond_1e
    const/16 v16, 0x18

    #@193
    goto :goto_6

    #@194
    .line 1571
    :cond_1f
    const/4 v15, 0x0

    #@195
    .local v15, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@197
    .line 1514
    nop

    #@198
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_3
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
    .line 478
    const/4 v0, 0x0

    #@3
    .line 479
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@5
    .line 480
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    #@7
    .line 481
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    #@a
    move-result-object v2

    #@b
    .line 482
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    #@d
    .line 483
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@f
    .line 484
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@11
    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v0

    #@15
    .line 487
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    #@17
    .line 488
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 490
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
    .line 494
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@3
    .line 495
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    #@5
    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    #@8
    move-result-object v1

    #@9
    .line 497
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    #@b
    .line 498
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@d
    .line 500
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 502
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 416
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
    .line 417
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
    .line 416
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 415
    :cond_0
    return-void
.end method

.method notifyProlongedAnimationsEnded()V
    .locals 1

    #@0
    .prologue
    .line 391
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    #@3
    .line 390
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    #@0
    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1711
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1712
    const/4 v0, 0x7

    #@a
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 1713
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@e
    .line 1714
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@10
    .line 1709
    :goto_0
    return-void

    #@11
    .line 1716
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@14
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
    .line 1600
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1601
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1602
    const/4 v0, 0x1

    #@a
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 1603
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@e
    .line 1604
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@10
    .line 1605
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@12
    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@15
    .line 1607
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@17
    .line 1599
    :goto_0
    return-void

    #@18
    .line 1609
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1b
    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    #@0
    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1652
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1653
    if-eqz p7, :cond_0

    #@b
    const/4 v0, 0x5

    #@c
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@e
    .line 1655
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@10
    move-object v0, p0

    #@11
    move v1, p2

    #@12
    move v2, p3

    #@13
    move v3, p4

    #@14
    move v4, p5

    #@15
    move-object v5, p1

    #@16
    .line 1656
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@19
    .line 1658
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1c
    .line 1659
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1e
    .line 1650
    :goto_1
    return-void

    #@1f
    .line 1654
    :cond_0
    const/4 v0, 0x6

    #@20
    goto :goto_0

    #@21
    .line 1661
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@24
    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    #@0
    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1627
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1628
    const/16 v0, 0x8

    #@b
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@d
    .line 1629
    const/4 v5, 0x0

    #@e
    move-object v0, p0

    #@f
    move v1, p1

    #@10
    move v2, p2

    #@11
    move v3, p3

    #@12
    move v4, p4

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@16
    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@19
    .line 1625
    :cond_0
    return-void
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 9
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    #@0
    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 1669
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1670
    if-eqz p4, :cond_1

    #@b
    const/4 v0, 0x5

    #@c
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@e
    .line 1672
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@10
    .line 1673
    if-eqz p1, :cond_2

    #@12
    .line 1674
    const/4 v6, 0x0

    #@13
    .local v6, "i":I
    :goto_1
    array-length v0, p1

    #@14
    if-ge v6, v0, :cond_2

    #@16
    .line 1675
    aget-object v8, p1, v6

    #@18
    .line 1676
    .local v8, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v8, :cond_0

    #@1a
    .line 1677
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@1c
    iget v1, v8, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    #@1e
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@21
    .line 1678
    if-nez v6, :cond_0

    #@23
    .line 1681
    iget-object v7, v8, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@25
    .line 1682
    .local v7, "rect":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    #@27
    iget v2, v7, Landroid/graphics/Rect;->top:I

    #@29
    .line 1683
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@30
    move-result v4

    #@31
    iget-object v5, v8, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    #@33
    move-object v0, p0

    #@34
    .line 1682
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@37
    .line 1674
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 1671
    .end local v6    # "i":I
    .end local v8    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_1
    const/4 v0, 0x6

    #@3b
    goto :goto_0

    #@3c
    .line 1688
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@3f
    .line 1689
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@41
    .line 1690
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    #@43
    .line 1667
    :goto_2
    return-void

    #@44
    .line 1692
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@47
    goto :goto_2
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    #@0
    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1700
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1701
    if-eqz p3, :cond_1

    #@b
    const/4 v0, 0x5

    #@c
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@e
    .line 1703
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@10
    .line 1704
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@12
    .line 1705
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    #@14
    .line 1698
    :cond_0
    return-void

    #@15
    .line 1702
    :cond_1
    const/4 v0, 0x6

    #@16
    goto :goto_0
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    #@0
    .prologue
    .line 1615
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1617
    const/4 v0, 0x2

    #@a
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 1618
    add-int v3, p1, p3

    #@e
    .line 1619
    add-int v4, p2, p4

    #@10
    const/4 v5, 0x0

    #@11
    move-object v0, p0

    #@12
    move v1, p1

    #@13
    move v2, p2

    #@14
    .line 1618
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@17
    .line 1620
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1a
    .line 1614
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1636
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1637
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@a
    .line 1638
    if-eqz p5, :cond_0

    #@c
    const/4 v0, 0x3

    #@d
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@f
    .line 1640
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@11
    move-object v0, p0

    #@12
    move v1, p2

    #@13
    move v2, p3

    #@14
    move v4, v3

    #@15
    move-object v5, p1

    #@16
    .line 1641
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@19
    .line 1642
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1c
    .line 1643
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1e
    .line 1635
    :goto_1
    return-void

    #@1f
    .line 1639
    :cond_0
    const/4 v0, 0x4

    #@20
    goto :goto_0

    #@21
    .line 1645
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@24
    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1591
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1592
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@9
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@d
    .line 1593
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@f
    .line 1592
    const/16 v3, 0x1a

    #@11
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 1594
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1a
    .line 1590
    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZ)Z
    .locals 5
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    #@0
    .prologue
    const/16 v4, 0xd

    #@2
    .line 1924
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@a
    if-nez v1, :cond_3

    #@c
    .line 1925
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@f
    .line 1936
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    #@12
    move-result v0

    #@13
    .line 1937
    .local v0, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1938
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@1d
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@20
    .line 1939
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@24
    const-wide/16 v2, 0x1388

    #@26
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    #@29
    .line 1941
    :cond_2
    return v0

    #@2a
    .line 1926
    .end local v0    # "prepared":Z
    :cond_3
    if-nez p2, :cond_1

    #@2c
    .line 1927
    const/16 v1, 0x8

    #@2e
    if-ne p1, v1, :cond_4

    #@30
    const/16 v1, 0x9

    #@32
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 1929
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 1930
    :cond_4
    const/4 v1, 0x6

    #@3d
    if-ne p1, v1, :cond_1

    #@3f
    .line 1931
    const/4 v1, 0x7

    #@40
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    #@43
    move-result v1

    #@44
    .line 1930
    if-eqz v1, :cond_1

    #@46
    .line 1933
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@49
    goto :goto_0
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    #@0
    .prologue
    .line 866
    packed-switch p4, :pswitch_data_0

    #@3
    .line 872
    const/16 v7, 0x150

    #@5
    .line 875
    .local v7, "duration":I
    :goto_0
    int-to-long v4, v7

    #@6
    .line 876
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move v2, p2

    #@b
    move v3, p3

    #@c
    .line 875
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 869
    .end local v7    # "duration":I
    :pswitch_0
    iget v7, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@13
    .restart local v7    # "duration":I
    goto :goto_0

    #@14
    .line 866
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 847
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p4, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 848
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@9
    .line 850
    :cond_0
    const/4 v0, 0x1

    #@a
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@d
    .line 851
    if-eqz p6, :cond_1

    #@f
    .line 852
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@12
    .line 854
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@15
    .line 855
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 411
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 1911
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@2
    .line 1910
    return-void
.end method

.method setIdle()V
    .locals 1

    #@0
    .prologue
    .line 305
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 304
    return-void
.end method

.method setReady()V
    .locals 1

    #@0
    .prologue
    .line 296
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    #@6
    .line 295
    return-void
.end method

.method setTimeout()V
    .locals 1

    #@0
    .prologue
    .line 313
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 312
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1756
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

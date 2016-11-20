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

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

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
    const/4 v0, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 164
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@8
    .line 165
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    #@a
    .line 178
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 198
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    .line 197
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@13
    .line 203
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@1a
    .line 205
    new-instance v0, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@21
    .line 206
    new-instance v0, Landroid/graphics/Rect;

    #@23
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@28
    .line 208
    new-instance v0, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2f
    .line 214
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@31
    .line 223
    new-instance v0, Landroid/view/animation/PathInterpolator;

    #@33
    const v1, 0x3ecccccd    # 0.4f

    #@36
    const/high16 v2, 0x3f800000    # 1.0f

    #@38
    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    #@3b
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    #@3d
    .line 227
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@3f
    .line 228
    const-wide/16 v0, 0x150

    #@41
    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@43
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    #@45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@48
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@4a
    .line 231
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    #@50
    .line 238
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@52
    .line 239
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@54
    .line 241
    const v0, 0x10c000e

    #@57
    .line 240
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@5d
    .line 243
    const v0, 0x10c000f

    #@60
    .line 242
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    #@66
    .line 245
    const v0, 0x10c000d

    #@69
    .line 244
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@6c
    move-result-object v0

    #@6d
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@6f
    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@72
    move-result-object v0

    #@73
    .line 247
    const/high16 v1, 0x10e0000

    #@75
    .line 246
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@78
    move-result v0

    #@79
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@7b
    .line 249
    const v0, 0x10c0003

    #@7e
    .line 248
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@81
    move-result-object v0

    #@82
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@84
    .line 250
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    #@86
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    #@89
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    #@8b
    .line 262
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    #@8d
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    #@90
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@92
    .line 274
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@94
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9b
    move-result-object v0

    #@9c
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@9e
    .line 273
    const/high16 v1, 0x41000000    # 8.0f

    #@a0
    mul-float/2addr v0, v1

    #@a1
    float-to-int v0, v0

    #@a2
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    #@a4
    .line 237
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1829
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1839
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
    .line 1831
    :pswitch_0
    const-string/jumbo v0, "APP_STATE_IDLE"

    #@1f
    return-object v0

    #@20
    .line 1833
    :pswitch_1
    const-string/jumbo v0, "APP_STATE_READY"

    #@23
    return-object v0

    #@24
    .line 1835
    :pswitch_2
    const-string/jumbo v0, "APP_STATE_RUNNING"

    #@27
    return-object v0

    #@28
    .line 1837
    :pswitch_3
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    #@2b
    return-object v0

    #@2c
    .line 1829
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
    .line 1776
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1823
    :pswitch_0
    const-string/jumbo v0, "<UNKNOWN>"

    #@6
    return-object v0

    #@7
    .line 1778
    :pswitch_1
    const-string/jumbo v0, "TRANSIT_UNSET"

    #@a
    return-object v0

    #@b
    .line 1781
    :pswitch_2
    const-string/jumbo v0, "TRANSIT_NONE"

    #@e
    return-object v0

    #@f
    .line 1784
    :pswitch_3
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    #@12
    return-object v0

    #@13
    .line 1787
    :pswitch_4
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    #@16
    return-object v0

    #@17
    .line 1790
    :pswitch_5
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    #@1a
    return-object v0

    #@1b
    .line 1793
    :pswitch_6
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    #@1e
    return-object v0

    #@1f
    .line 1796
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    #@22
    return-object v0

    #@23
    .line 1799
    :pswitch_8
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    #@26
    return-object v0

    #@27
    .line 1802
    :pswitch_9
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    #@2a
    return-object v0

    #@2b
    .line 1805
    :pswitch_a
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    #@2e
    return-object v0

    #@2f
    .line 1808
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    #@32
    return-object v0

    #@33
    .line 1811
    :pswitch_c
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    #@36
    return-object v0

    #@37
    .line 1814
    :pswitch_d
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    #@3a
    return-object v0

    #@3b
    .line 1817
    :pswitch_e
    const-string/jumbo v0, "TRANSIT_ACTIVITY_RELAUNCH"

    #@3e
    return-object v0

    #@3f
    .line 1820
    :pswitch_f
    const-string/jumbo v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    #@42
    return-object v0

    #@43
    .line 1776
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
    .line 726
    if-nez p1, :cond_0

    #@2
    .line 727
    const-wide/16 v2, 0x150

    #@4
    return-wide v2

    #@5
    .line 729
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
    .line 730
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
    .line 729
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    #@1c
    move-result v0

    #@1d
    .line 732
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    #@1f
    .line 731
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
    .line 599
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    sub-float v0, p1, v1

    #@4
    .line 600
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
    .line 601
    int-to-float v1, p0

    #@10
    return v1

    #@11
    .line 603
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
    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    #@5
    .line 1188
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@7
    .line 1189
    const/4 v1, 0x1

    #@8
    .line 1188
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
    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    #@5
    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@7
    .line 1196
    const/4 v1, 0x0

    #@8
    .line 1195
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
    .line 1201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v4

    #@4
    int-to-float v0, v4

    #@5
    move/from16 v27, v0

    #@7
    .line 1202
    .local v27, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@a
    move-result v4

    #@b
    int-to-float v0, v4

    #@c
    move/from16 v25, v0

    #@e
    .line 1203
    .local v25, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    #@11
    move-result v4

    #@12
    int-to-float v0, v4

    #@13
    move/from16 v20, v0

    #@15
    .line 1204
    .local v20, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@18
    move-result v4

    #@19
    int-to-float v0, v4

    #@1a
    move/from16 v18, v0

    #@1c
    .line 1205
    .local v18, "destHeight":F
    if-eqz p4, :cond_1

    #@1e
    div-float v3, v27, v20

    #@20
    .line 1206
    .local v3, "scaleH":F
    :goto_0
    if-eqz p4, :cond_2

    #@22
    div-float v5, v25, v18

    #@24
    .line 1207
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
    .line 1208
    .local v23, "set":Landroid/view/animation/AnimationSet;
    if-nez p3, :cond_3

    #@2e
    .line 1209
    const/16 v28, 0x0

    #@30
    .line 1210
    .local v28, "surfaceInsetsH":I
    :goto_2
    if-nez p3, :cond_4

    #@32
    .line 1211
    const/16 v29, 0x0

    #@34
    .line 1214
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
    .line 1215
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
    .line 1216
    .local v8, "scaleVCenter":F
    if-eqz p4, :cond_7

    #@4c
    .line 1217
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@4e
    const/high16 v4, 0x3f800000    # 1.0f

    #@50
    const/high16 v6, 0x3f800000    # 1.0f

    #@52
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@55
    .line 1219
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
    .line 1220
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
    .line 1221
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
    .line 1222
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
    .line 1223
    .local v19, "destVCenter":I
    if-eqz p4, :cond_8

    #@87
    sub-int v21, v24, v17

    #@89
    .line 1224
    .local v21, "fromX":I
    :goto_7
    if-eqz p4, :cond_9

    #@8b
    sub-int v22, v26, v19

    #@8d
    .line 1225
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
    .line 1227
    .local v30, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_9
    move-object/from16 v0, v23

    #@a0
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@a3
    .line 1228
    move-object/from16 v0, v23

    #@a5
    move-object/from16 v1, v30

    #@a7
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@aa
    .line 1230
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    #@ae
    move-object/from16 v16, v0

    #@b0
    .line 1231
    .local v16, "callback":Landroid/os/IRemoteCallback;
    if-eqz v16, :cond_0

    #@b2
    .line 1232
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
    .line 1245
    :cond_0
    return-object v23

    #@c1
    .line 1205
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
    .line 1206
    :cond_2
    div-float v5, v18, v25

    #@c7
    .restart local v5    # "scaleV":F
    goto/16 :goto_1

    #@c9
    .line 1209
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
    .line 1211
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
    .line 1214
    goto/16 :goto_4

    #@e5
    .end local v20    # "destWidth":F
    .restart local v7    # "scaleHCenter":F
    :cond_6
    move/from16 v18, v25

    #@e7
    .line 1215
    goto/16 :goto_5

    #@e9
    .line 1218
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
    .line 1223
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
    .line 1224
    :cond_9
    sub-int v22, v19, v26

    #@fe
    .restart local v22    # "fromY":I
    goto :goto_8

    #@ff
    .line 1226
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
    .line 738
    if-eqz p2, :cond_6

    #@2
    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v16

    #@6
    .line 740
    .local v16, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    #@9
    move-result v8

    #@a
    .line 744
    .local v8, "appHeight":I
    move-object/from16 v0, p0

    #@c
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@13
    .line 746
    const/16 v27, 0x0

    #@15
    .line 747
    .local v27, "t":F
    if-lez v8, :cond_0

    #@17
    .line 748
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
    .line 750
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
    .line 751
    .local v30, "translationY":I
    const/16 v29, 0x0

    #@38
    .line 752
    .local v29, "translationX":I
    move/from16 v9, v30

    #@3a
    .line 753
    .local v9, "translationYCorrection":I
    move-object/from16 v0, p0

    #@3c
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@41
    move-result v17

    #@42
    .line 754
    .local v17, "centerX":I
    move-object/from16 v0, p0

    #@44
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@46
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    #@49
    move-result v18

    #@4a
    .line 755
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
    .line 756
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
    .line 757
    .local v24, "halfHeight":I
    sub-int v6, v17, v25

    #@60
    move-object/from16 v0, p3

    #@62
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@64
    sub-int v20, v6, v7

    #@66
    .line 758
    .local v20, "clipStartX":I
    sub-int v6, v18, v24

    #@68
    move-object/from16 v0, p3

    #@6a
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@6c
    sub-int v5, v6, v7

    #@6e
    .line 759
    .local v5, "clipStartY":I
    const/16 v21, 0x0

    #@70
    .line 764
    .local v21, "cutOff":Z
    move-object/from16 v0, p3

    #@72
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@74
    sub-int v7, v18, v24

    #@76
    if-le v6, v7, :cond_1

    #@78
    .line 765
    sub-int v6, v18, v24

    #@7a
    move-object/from16 v0, p3

    #@7c
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@7e
    sub-int v30, v6, v7

    #@80
    .line 766
    const/4 v9, 0x0

    #@81
    .line 767
    const/4 v5, 0x0

    #@82
    .line 768
    const/16 v21, 0x1

    #@84
    .line 770
    :cond_1
    move-object/from16 v0, p3

    #@86
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@88
    sub-int v7, v17, v25

    #@8a
    if-le v6, v7, :cond_2

    #@8c
    .line 771
    sub-int v6, v17, v25

    #@8e
    move-object/from16 v0, p3

    #@90
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@92
    sub-int v29, v6, v7

    #@94
    .line 772
    const/16 v20, 0x0

    #@96
    .line 773
    const/16 v21, 0x1

    #@98
    .line 775
    :cond_2
    move-object/from16 v0, p3

    #@9a
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@9c
    add-int v7, v17, v25

    #@9e
    if-ge v6, v7, :cond_3

    #@a0
    .line 776
    add-int v6, v17, v25

    #@a2
    move-object/from16 v0, p3

    #@a4
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@a6
    sub-int v29, v6, v7

    #@a8
    .line 777
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
    .line 778
    const/16 v21, 0x1

    #@b4
    .line 780
    :cond_3
    move/from16 v0, v29

    #@b6
    int-to-float v6, v0

    #@b7
    .line 781
    move/from16 v0, v30

    #@b9
    int-to-float v7, v0

    #@ba
    .line 780
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
    .line 784
    .local v22, "duration":J
    new-instance v19, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    #@c6
    .line 785
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
    .line 784
    move-object/from16 v0, v19

    #@d3
    move/from16 v1, v20

    #@d5
    move/from16 v2, v16

    #@d7
    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    #@da
    .line 786
    .local v19, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@dc
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    #@de
    move-object/from16 v0, v19

    #@e0
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@e3
    .line 787
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
    .line 789
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
    .line 790
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
    .line 792
    move-object/from16 v0, v28

    #@109
    move-wide/from16 v1, v22

    #@10b
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    #@10e
    .line 794
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    #@110
    .line 795
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
    .line 798
    move-object/from16 v0, p0

    #@11b
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@11d
    .line 796
    const/4 v7, 0x0

    #@11e
    .line 797
    const/4 v10, 0x0

    #@11f
    .line 794
    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    #@122
    .line 799
    .local v4, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@124
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@127
    .line 800
    move-wide/from16 v0, v22

    #@129
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@12c
    .line 803
    const-wide/16 v6, 0x4

    #@12e
    div-long v14, v22, v6

    #@130
    .line 804
    .local v14, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    #@132
    const/high16 v6, 0x3f800000    # 1.0f

    #@134
    const/high16 v7, 0x3f000000    # 0.5f

    #@136
    invoke-direct {v12, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@139
    .line 805
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@13c
    .line 806
    move-object/from16 v0, p0

    #@13e
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@140
    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@143
    .line 808
    new-instance v26, Landroid/view/animation/AnimationSet;

    #@145
    const/4 v6, 0x0

    #@146
    move-object/from16 v0, v26

    #@148
    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@14b
    .line 809
    .local v26, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    #@14d
    move-object/from16 v1, v19

    #@14f
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@152
    .line 810
    move-object/from16 v0, v26

    #@154
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@157
    .line 811
    move-object/from16 v0, v26

    #@159
    move-object/from16 v1, v28

    #@15b
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@15e
    .line 812
    move-object/from16 v0, v26

    #@160
    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@163
    .line 813
    const/4 v6, 0x1

    #@164
    move-object/from16 v0, v26

    #@166
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@169
    .line 814
    move-object/from16 v0, v26

    #@16b
    move/from16 v1, v16

    #@16d
    move/from16 v2, v16

    #@16f
    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    #@172
    .line 815
    move-object/from16 v13, v26

    #@174
    .line 816
    .local v13, "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    #@175
    move-object/from16 v0, p0

    #@177
    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    #@179
    .line 817
    move-wide/from16 v0, v22

    #@17b
    move-object/from16 v2, p0

    #@17d
    iput-wide v0, v2, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@17f
    .line 821
    if-eqz v21, :cond_5

    #@181
    .line 822
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
    .line 821
    :goto_1
    move-object/from16 v0, p0

    #@18f
    iput v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    #@191
    .line 850
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
    .line 791
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
    .line 822
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
    .line 825
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
    .line 831
    const-wide/16 v22, 0x150

    #@19f
    .line 834
    .restart local v22    # "duration":J
    :goto_3
    const/16 v6, 0xe

    #@1a1
    move/from16 v0, p1

    #@1a3
    if-eq v0, v6, :cond_7

    #@1a5
    .line 835
    const/16 v6, 0xf

    #@1a7
    move/from16 v0, p1

    #@1a9
    if-ne v0, v6, :cond_8

    #@1ab
    .line 840
    :cond_7
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    #@1ad
    const/high16 v6, 0x3f800000    # 1.0f

    #@1af
    const/4 v7, 0x0

    #@1b0
    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@1b3
    .line 841
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    #@1b4
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@1b7
    .line 846
    :goto_4
    move-object/from16 v0, p0

    #@1b9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@1bb
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1be
    .line 847
    move-wide/from16 v0, v22

    #@1c0
    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@1c3
    .line 848
    const/4 v6, 0x1

    #@1c4
    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@1c7
    goto :goto_2

    #@1c8
    .line 828
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
    .line 829
    .restart local v22    # "duration":J
    goto :goto_3

    #@1d0
    .line 844
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
    .line 825
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
    .line 1018
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
    .line 1019
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    #@14
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@17
    return-object v1

    #@18
    .line 1021
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    #@1b
    move-result-object v0

    #@1c
    .line 1022
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
    .line 1027
    new-instance v0, Landroid/graphics/Path;

    #@8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@b
    .line 1028
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    #@e
    .line 1030
    cmpl-float v1, p3, p4

    #@10
    if-lez v1, :cond_0

    #@12
    .line 1032
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
    .line 1037
    :goto_0
    return-object v0

    #@20
    .line 1035
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
    .line 1360
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@4
    move-object/from16 v0, p0

    #@6
    invoke-direct {v0, v11}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@9
    .line 1361
    move-object/from16 v0, p0

    #@b
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@d
    iget v4, v11, Landroid/graphics/Rect;->left:I

    #@f
    .line 1362
    .local v4, "left":I
    move-object/from16 v0, p0

    #@11
    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@13
    iget v8, v11, Landroid/graphics/Rect;->top:I

    #@15
    .line 1363
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
    .line 1365
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
    .line 1366
    new-instance v5, Landroid/view/animation/AnimationSet;

    #@31
    const/4 v11, 0x1

    #@32
    invoke-direct {v5, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@35
    .line 1367
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
    .line 1368
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
    .line 1369
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
    .line 1373
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
    .line 1374
    .local v6, "toHeight":F
    const/4 v10, 0x0

    #@64
    .line 1375
    .local v10, "translateAdjustment":I
    cmpg-float v11, v3, v7

    #@66
    if-gtz v11, :cond_0

    #@68
    cmpg-float v11, v2, v6

    #@6a
    if-gtz v11, :cond_0

    #@6c
    .line 1379
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
    .line 1393
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
    .line 1394
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
    .line 1393
    invoke-direct {v9, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@92
    .line 1395
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@95
    .line 1396
    const-wide/16 v12, 0x150

    #@97
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    #@9a
    .line 1397
    const/4 v11, 0x1

    #@9b
    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@9e
    .line 1398
    return-object v5

    #@9f
    .line 1383
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
    .line 1387
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
    .line 609
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2
    invoke-direct {p0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@5
    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    #@8
    move-result v10

    #@9
    .line 611
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    #@c
    move-result v9

    #@d
    .line 612
    .local v9, "appHeight":I
    if-eqz p2, :cond_0

    #@f
    .line 614
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
    .line 615
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
    .line 616
    .local v3, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@25
    const/high16 v2, 0x3f800000    # 1.0f

    #@27
    const/high16 v4, 0x3f800000    # 1.0f

    #@29
    .line 617
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@2b
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@2d
    invoke-static {v5, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@30
    move-result v5

    #@31
    .line 618
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@33
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@35
    invoke-static {v6, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    #@38
    move-result v6

    #@39
    .line 616
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@3c
    .line 619
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@3e
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@41
    .line 621
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    #@43
    const/4 v2, 0x0

    #@44
    const/high16 v4, 0x3f800000    # 1.0f

    #@46
    invoke-direct {v8, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@49
    .line 622
    .local v8, "alpha":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@4b
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@4e
    .line 624
    new-instance v11, Landroid/view/animation/AnimationSet;

    #@50
    const/4 v2, 0x0

    #@51
    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@54
    .line 625
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@57
    .line 626
    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@5a
    .line 627
    const/4 v2, 0x1

    #@5b
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    #@5e
    .line 628
    move-object v7, v11

    #@5f
    .line 646
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v1    # "scaleW":F
    .end local v3    # "scaleH":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@62
    .line 652
    const-wide/16 v12, 0x150

    #@64
    .line 655
    .local v12, "duration":J
    :goto_1
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    #@67
    .line 656
    const/4 v2, 0x1

    #@68
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@6b
    .line 657
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@6d
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@70
    .line 658
    invoke-virtual {v7, v10, v9, v10, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@73
    .line 659
    return-object v7

    #@74
    .line 629
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v12    # "duration":J
    :cond_0
    const/16 v2, 0xe

    #@76
    if-eq p1, v2, :cond_1

    #@78
    .line 630
    const/16 v2, 0xf

    #@7a
    if-ne p1, v2, :cond_2

    #@7c
    .line 635
    :cond_1
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@7e
    const/high16 v2, 0x3f800000    # 1.0f

    #@80
    const/4 v4, 0x0

    #@81
    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@84
    .line 636
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    #@85
    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    #@88
    goto :goto_0

    #@89
    .line 639
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
    .line 649
    :pswitch_0
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@95
    int-to-long v12, v2

    #@96
    .line 650
    .restart local v12    # "duration":J
    goto :goto_1

    #@97
    .line 646
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
    .line 1734
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1735
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    #@8
    .line 1736
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@a
    .line 1738
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iput-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@c
    .line 1739
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    #@e
    new-instance v2, Lcom/android/server/wm/AppTransition$4;

    #@10
    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$4;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@16
    .line 1733
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    #@0
    .prologue
    .line 1041
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1042
    const-wide/16 v0, 0x1c5

    #@8
    return-wide v0

    #@9
    .line 1044
    :cond_0
    const-wide/16 v0, 0x150

    #@b
    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    #@0
    .prologue
    .line 1049
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    #@8
    return-object v0

    #@9
    .line 1052
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
    .line 456
    if-eqz p1, :cond_2

    #@3
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 460
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@9
    if-eqz v2, :cond_1

    #@b
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@d
    .line 461
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@f
    .line 462
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    #@11
    and-int/2addr v2, v1

    #@12
    const/high16 v3, 0x1000000

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 463
    const-string/jumbo v0, "android"

    #@19
    .line 467
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@1c
    move-result-object v2

    #@1d
    .line 468
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    #@1f
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@21
    .line 467
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 460
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_1
    const-string/jumbo v0, "android"

    #@29
    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 470
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
    .line 476
    if-eqz p1, :cond_1

    #@3
    .line 477
    const/high16 v0, -0x1000000

    #@5
    and-int/2addr v0, p2

    #@6
    const/high16 v1, 0x1000000

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 478
    const-string/jumbo p1, "android"

    #@d
    .line 482
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    #@10
    move-result-object v0

    #@11
    .line 483
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    #@13
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@15
    .line 482
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 485
    :cond_1
    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 664
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@6
    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 665
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
    .line 666
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@1a
    .line 662
    :goto_0
    return-void

    #@1b
    .line 668
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
    .line 1966
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
    .line 517
    const/4 v0, 0x0

    #@2
    .line 518
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@4
    .line 519
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    #@6
    .line 520
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    #@9
    move-result-object v2

    #@a
    .line 521
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    #@c
    .line 522
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@e
    .line 523
    move v0, p2

    #@f
    .line 526
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 527
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 529
    :cond_1
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    #@0
    .prologue
    .line 439
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
    .line 440
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
    .line 439
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 438
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    #@0
    .prologue
    .line 433
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
    .line 434
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
    .line 433
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 432
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
    .line 446
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
    .line 447
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
    .line 446
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 445
    :cond_0
    return-void
.end method

.method private prepare()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 365
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@9
    .line 366
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    #@c
    .line 367
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    #@e
    .line 368
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    #@10
    .line 369
    const-wide/16 v0, 0x150

    #@12
    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    #@14
    .line 370
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 372
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
    .line 688
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    #@2
    .line 689
    new-instance v1, Landroid/graphics/Rect;

    #@4
    add-int v2, p1, p3

    #@6
    add-int v3, p2, p4

    #@8
    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@b
    .line 688
    const/4 v2, -0x1

    #@c
    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@11
    .line 687
    return-void
.end method

.method private setAppTransition(I)V
    .locals 2
    .param p1, "transit"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 290
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@3
    .line 291
    const/4 v0, -0x1

    #@4
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    #@7
    .line 289
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1844
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1862
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
    .line 1846
    :pswitch_0
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    #@1f
    return-object v0

    #@20
    .line 1848
    :pswitch_1
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    #@23
    return-object v0

    #@24
    .line 1850
    :pswitch_2
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    #@27
    return-object v0

    #@28
    .line 1852
    :pswitch_3
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    #@2b
    return-object v0

    #@2c
    .line 1854
    :pswitch_4
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    #@2f
    return-object v0

    #@30
    .line 1856
    :pswitch_5
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    #@33
    return-object v0

    #@34
    .line 1858
    :pswitch_6
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    #@37
    return-object v0

    #@38
    .line 1860
    :pswitch_7
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    #@3b
    return-object v0

    #@3c
    .line 1844
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
    .line 1407
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4
    if-eq v2, v0, :cond_1

    #@6
    .line 1408
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v3, 0x7

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 1409
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@d
    const/16 v3, 0x8

    #@f
    if-eq v2, v3, :cond_0

    #@11
    .line 1407
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    .line 1409
    goto :goto_0

    #@14
    :cond_1
    move v0, v1

    #@15
    .line 1407
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
    .line 406
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@4
    .line 407
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@6
    .line 408
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@b
    .line 409
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@d
    .line 410
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@f
    .line 411
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    #@11
    .line 412
    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    #@13
    .line 405
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
    .line 1064
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v14

    #@4
    .line 1065
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v13

    #@8
    .line 1066
    .local v13, "appHeight":I
    move-object/from16 v0, p0

    #@a
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@c
    move-object/from16 v0, p0

    #@e
    invoke-direct {v0, v5}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@11
    .line 1067
    move-object/from16 v0, p0

    #@13
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@18
    move-result v28

    #@19
    .line 1068
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
    .line 1069
    .local v27, "thumbWidth":F
    move-object/from16 v0, p0

    #@22
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@27
    move-result v24

    #@28
    .line 1070
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
    .line 1071
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
    sub-int/2addr v5, v6

    #@3a
    move-object/from16 v0, p6

    #@3c
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@3e
    sub-int v25, v5, v6

    #@40
    .line 1072
    .local v25, "thumbStartX":I
    move-object/from16 v0, p0

    #@42
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@44
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@46
    move-object/from16 v0, p5

    #@48
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@4a
    sub-int v26, v5, v6

    #@4c
    .line 1074
    .local v26, "thumbStartY":I
    packed-switch p1, :pswitch_data_0

    #@4f
    .line 1178
    new-instance v5, Ljava/lang/RuntimeException;

    #@51
    const-string/jumbo v6, "Invalid thumbnail transition state"

    #@54
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v5

    #@58
    .line 1068
    .end local v23    # "thumbHeight":F
    .end local v24    # "thumbHeightI":I
    .end local v25    # "thumbStartX":I
    .end local v26    # "thumbStartY":I
    .end local v27    # "thumbWidth":F
    :cond_0
    const/4 v5, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1070
    .restart local v24    # "thumbHeightI":I
    .restart local v27    # "thumbWidth":F
    :cond_1
    const/4 v5, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 1077
    .restart local v23    # "thumbHeight":F
    .restart local v25    # "thumbStartX":I
    .restart local v26    # "thumbStartY":I
    :pswitch_0
    if-nez p1, :cond_2

    #@5e
    const/16 v17, 0x1

    #@60
    .line 1078
    .local v17, "scaleUp":Z
    :goto_2
    if-eqz p8, :cond_3

    #@62
    if-eqz v17, :cond_3

    #@64
    .line 1079
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p5

    #@68
    move-object/from16 v2, p7

    #@6a
    move/from16 v3, p9

    #@6c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    #@6f
    move-result-object v7

    #@70
    .line 1182
    .end local v17    # "scaleUp":Z
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    #@73
    move-result-wide v10

    #@74
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    #@77
    move-result-object v12

    #@78
    move-object/from16 v6, p0

    #@7a
    move v8, v14

    #@7b
    move v9, v13

    #@7c
    .line 1181
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@7f
    move-result-object v5

    #@80
    return-object v5

    #@81
    .line 1077
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_2
    const/16 v17, 0x0

    #@83
    .restart local v17    # "scaleUp":Z
    goto :goto_2

    #@84
    .line 1081
    :cond_3
    if-eqz p8, :cond_4

    #@86
    .line 1082
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, p5

    #@8a
    move-object/from16 v2, p7

    #@8c
    move/from16 v3, p9

    #@8e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    #@91
    move-result-object v7

    #@92
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    #@93
    .line 1085
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v18, Landroid/view/animation/AnimationSet;

    #@95
    const/4 v5, 0x1

    #@96
    move-object/from16 v0, v18

    #@98
    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@9b
    .line 1088
    .local v18, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    #@9d
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@9f
    move-object/from16 v0, p5

    #@a1
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a4
    .line 1089
    move-object/from16 v0, p0

    #@a6
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@a8
    move-object/from16 v0, p5

    #@aa
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@ad
    .line 1093
    move-object/from16 v0, p0

    #@af
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@b1
    const/4 v6, 0x0

    #@b2
    const/4 v8, 0x0

    #@b3
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    #@b6
    .line 1094
    move-object/from16 v0, p0

    #@b8
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@ba
    const/4 v6, 0x0

    #@bb
    const/4 v8, 0x0

    #@bc
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    #@bf
    .line 1097
    move-object/from16 v0, p0

    #@c1
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@c3
    move-object/from16 v0, p6

    #@c5
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    #@c8
    .line 1098
    move-object/from16 v0, p0

    #@ca
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@cc
    move-object/from16 v0, p6

    #@ce
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d1
    .line 1100
    move-object/from16 v0, p0

    #@d3
    move/from16 v1, p2

    #@d5
    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    #@d8
    move-result v5

    #@d9
    if-nez v5, :cond_5

    #@db
    const/4 v5, 0x1

    #@dc
    move/from16 v0, p3

    #@de
    if-ne v0, v5, :cond_c

    #@e0
    .line 1103
    :cond_5
    move-object/from16 v0, p6

    #@e2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@e4
    sub-int v5, v14, v5

    #@e6
    move-object/from16 v0, p6

    #@e8
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@ea
    sub-int/2addr v5, v6

    #@eb
    int-to-float v5, v5

    #@ec
    .line 1102
    div-float v16, v27, v5

    #@ee
    .line 1104
    .local v16, "scale":F
    div-float v5, v23, v16

    #@f0
    float-to-int v0, v5

    #@f1
    move/from16 v30, v0

    #@f3
    .line 1105
    .local v30, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    #@f5
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@f7
    move-object/from16 v0, p0

    #@f9
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@fb
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@fd
    add-int v6, v6, v30

    #@ff
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    #@101
    .line 1107
    move-object/from16 v0, p0

    #@103
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    #@105
    move-object/from16 v0, p6

    #@107
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10a
    .line 1109
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@10c
    .line 1110
    if-eqz v17, :cond_6

    #@10e
    move/from16 v5, v16

    #@110
    :goto_4
    if-eqz v17, :cond_7

    #@112
    const/high16 v6, 0x3f800000    # 1.0f

    #@114
    .line 1111
    :goto_5
    if-eqz v17, :cond_8

    #@116
    move/from16 v7, v16

    #@118
    :goto_6
    if-eqz v17, :cond_9

    #@11a
    const/high16 v8, 0x3f800000    # 1.0f

    #@11c
    .line 1112
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@11f
    move-result v9

    #@120
    int-to-float v9, v9

    #@121
    const/high16 v10, 0x40000000    # 2.0f

    #@123
    div-float/2addr v9, v10

    #@124
    .line 1113
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@127
    move-result v10

    #@128
    int-to-float v10, v10

    #@129
    const/high16 v11, 0x40000000    # 2.0f

    #@12b
    div-float/2addr v10, v11

    #@12c
    move-object/from16 v0, p6

    #@12e
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@130
    int-to-float v11, v11

    #@131
    add-float/2addr v10, v11

    #@132
    .line 1109
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@135
    .line 1114
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@137
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@139
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@13b
    move-object/from16 v0, p5

    #@13d
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@13f
    sub-int/2addr v5, v6

    #@140
    int-to-float v0, v5

    #@141
    move/from16 v21, v0

    #@143
    .line 1115
    .local v21, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@146
    move-result v5

    #@147
    int-to-float v5, v5

    #@148
    const/high16 v6, 0x40000000    # 2.0f

    #@14a
    div-float/2addr v5, v6

    #@14b
    .line 1116
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    #@14e
    move-result v6

    #@14f
    int-to-float v6, v6

    #@150
    const/high16 v8, 0x40000000    # 2.0f

    #@152
    div-float/2addr v6, v8

    #@153
    mul-float v6, v6, v16

    #@155
    .line 1115
    sub-float v31, v5, v6

    #@157
    .line 1117
    .local v31, "x":F
    move-object/from16 v0, p0

    #@159
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@15b
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@15d
    move-object/from16 v0, p5

    #@15f
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@161
    sub-int/2addr v5, v6

    #@162
    int-to-float v0, v5

    #@163
    move/from16 v22, v0

    #@165
    .line 1118
    .local v22, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@168
    move-result v5

    #@169
    int-to-float v5, v5

    #@16a
    const/high16 v6, 0x40000000    # 2.0f

    #@16c
    div-float/2addr v5, v6

    #@16d
    .line 1119
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    #@170
    move-result v6

    #@171
    int-to-float v6, v6

    #@172
    const/high16 v8, 0x40000000    # 2.0f

    #@174
    div-float/2addr v6, v8

    #@175
    mul-float v6, v6, v16

    #@177
    .line 1118
    sub-float v32, v5, v6

    #@179
    .line 1120
    .local v32, "y":F
    sub-float v19, v21, v31

    #@17b
    .line 1121
    .local v19, "startX":F
    sub-float v20, v22, v32

    #@17d
    .line 1122
    .local v20, "startY":F
    if-eqz v17, :cond_a

    #@17f
    .line 1123
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@181
    move-object/from16 v0, p0

    #@183
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@185
    move-object/from16 v0, p0

    #@187
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@189
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@18c
    .line 1125
    .local v15, "clipAnim":Landroid/view/animation/Animation;
    :goto_8
    if-eqz v17, :cond_b

    #@18e
    .line 1126
    const/4 v5, 0x0

    #@18f
    move-object/from16 v0, p6

    #@191
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@193
    int-to-float v6, v6

    #@194
    sub-float v6, v20, v6

    #@196
    const/4 v8, 0x0

    #@197
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v19

    #@19b
    invoke-direct {v0, v1, v5, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@19e
    move-result-object v29

    #@19f
    .line 1129
    .local v29, "translateAnim":Landroid/view/animation/Animation;
    :goto_9
    move-object/from16 v0, v18

    #@1a1
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1a4
    .line 1130
    move-object/from16 v0, v18

    #@1a6
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1a9
    .line 1131
    move-object/from16 v0, v18

    #@1ab
    move-object/from16 v1, v29

    #@1ad
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1b0
    .line 1150
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

    #@1b2
    .line 1151
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    #@1b3
    move-object/from16 v0, v18

    #@1b5
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    #@1b8
    goto/16 :goto_3

    #@1ba
    .line 1110
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .restart local v16    # "scale":F
    .restart local v30    # "unscaledThumbHeight":I
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    #@1bc
    goto/16 :goto_4

    #@1be
    :cond_7
    move/from16 v6, v16

    #@1c0
    goto/16 :goto_5

    #@1c2
    .line 1111
    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    #@1c4
    goto/16 :goto_6

    #@1c6
    :cond_9
    move/from16 v8, v16

    #@1c8
    goto/16 :goto_7

    #@1ca
    .line 1124
    .restart local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .restart local v19    # "startX":F
    .restart local v20    # "startY":F
    .restart local v21    # "targetX":F
    .restart local v22    # "targetY":F
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_a
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1d4
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@1d7
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_8

    #@1d8
    .line 1127
    :cond_b
    const/4 v5, 0x0

    #@1d9
    const/4 v6, 0x0

    #@1da
    move-object/from16 v0, p6

    #@1dc
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@1de
    int-to-float v8, v8

    #@1df
    sub-float v8, v20, v8

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    move/from16 v1, v19

    #@1e5
    invoke-direct {v0, v5, v1, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@1e8
    move-result-object v29

    #@1e9
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_9

    #@1ea
    .line 1135
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

    #@1ec
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1f2
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@1f4
    add-int v6, v6, v24

    #@1f6
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    #@1f8
    .line 1136
    move-object/from16 v0, p0

    #@1fa
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@200
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@202
    add-int v6, v6, v28

    #@204
    iput v6, v5, Landroid/graphics/Rect;->right:I

    #@206
    .line 1138
    if-eqz v17, :cond_d

    #@208
    .line 1139
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@20a
    move-object/from16 v0, p0

    #@20c
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@212
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@215
    .line 1141
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    :goto_b
    if-eqz v17, :cond_e

    #@217
    .line 1142
    move/from16 v0, v25

    #@219
    int-to-float v5, v0

    #@21a
    const/4 v6, 0x0

    #@21b
    .line 1143
    move-object/from16 v0, p6

    #@21d
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@21f
    sub-int v8, v26, v8

    #@221
    int-to-float v8, v8

    #@222
    const/4 v9, 0x0

    #@223
    .line 1142
    move-object/from16 v0, p0

    #@225
    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@228
    move-result-object v29

    #@229
    .line 1147
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    :goto_c
    move-object/from16 v0, v18

    #@22b
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@22e
    .line 1148
    move-object/from16 v0, v18

    #@230
    move-object/from16 v1, v29

    #@232
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@235
    goto/16 :goto_a

    #@237
    .line 1140
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :cond_d
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@23d
    move-object/from16 v0, p0

    #@23f
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    #@241
    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@244
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_b

    #@245
    .line 1144
    :cond_e
    const/4 v5, 0x0

    #@246
    move/from16 v0, v25

    #@248
    int-to-float v6, v0

    #@249
    const/4 v8, 0x0

    #@24a
    .line 1145
    move-object/from16 v0, p6

    #@24c
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@24e
    sub-int v9, v26, v9

    #@250
    int-to-float v9, v9

    #@251
    .line 1144
    move-object/from16 v0, p0

    #@253
    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    #@256
    move-result-object v29

    #@257
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_c

    #@258
    .line 1157
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v17    # "scaleUp":Z
    .end local v18    # "set":Landroid/view/animation/AnimationSet;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v5, 0xe

    #@25a
    move/from16 v0, p4

    #@25c
    if-ne v0, v5, :cond_f

    #@25e
    .line 1160
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@260
    const/high16 v5, 0x3f800000    # 1.0f

    #@262
    const/4 v6, 0x0

    #@263
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@266
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@268
    .line 1162
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_f
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@26a
    const/high16 v5, 0x3f800000    # 1.0f

    #@26c
    const/high16 v6, 0x3f800000    # 1.0f

    #@26e
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@271
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@273
    .line 1168
    .end local v7    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v5, 0xe

    #@275
    move/from16 v0, p4

    #@277
    if-ne v0, v5, :cond_10

    #@279
    .line 1171
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@27b
    const/4 v5, 0x0

    #@27c
    const/high16 v6, 0x3f800000    # 1.0f

    #@27e
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@281
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@283
    .line 1173
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_10
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    #@285
    const/high16 v5, 0x3f800000    # 1.0f

    #@287
    const/high16 v6, 0x3f800000    # 1.0f

    #@289
    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@28c
    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_3

    #@28e
    .line 1074
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
    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v32

    #@4
    .line 917
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
    .line 918
    .local v31, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@e
    move-result v30

    #@f
    .line 919
    .local v30, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@12
    move-result v22

    #@13
    .line 921
    .local v22, "appWidth":I
    move/from16 v0, v22

    #@15
    int-to-float v7, v0

    #@16
    div-float v8, v7, v31

    #@18
    .line 922
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
    .line 929
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
    .line 930
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
    .line 931
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
    .line 935
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
    .line 936
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
    .line 937
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
    .line 938
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
    .line 947
    .local v12, "pivotY":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    #@88
    move-result-wide v24

    #@89
    .line 948
    .local v24, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    #@8c
    move-result-object v28

    #@8d
    .line 949
    .local v28, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    #@8f
    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@91
    if-eqz v7, :cond_6

    #@93
    .line 951
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
    .line 952
    .local v6, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    #@9f
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@a2
    .line 953
    move-wide/from16 v0, v24

    #@a4
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@a7
    .line 954
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
    .line 955
    .local v21, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@b3
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@b5
    const/16 v9, 0x13

    #@b7
    if-ne v7, v9, :cond_4

    #@b9
    .line 956
    sget-object v7, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@bb
    .line 955
    :goto_2
    move-object/from16 v0, v21

    #@bd
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@c0
    .line 957
    move-object/from16 v0, p0

    #@c2
    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@c4
    const/16 v9, 0x13

    #@c6
    if-ne v7, v9, :cond_5

    #@c8
    .line 958
    const-wide/16 v16, 0x2

    #@ca
    div-long v16, v24, v16

    #@cc
    .line 957
    :goto_3
    move-object/from16 v0, v21

    #@ce
    move-wide/from16 v1, v16

    #@d0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@d3
    .line 960
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
    .line 961
    .local v35, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    #@e3
    move-object/from16 v1, v28

    #@e5
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@e8
    .line 962
    move-object/from16 v0, v35

    #@ea
    move-wide/from16 v1, v24

    #@ec
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@ef
    .line 964
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
    .line 965
    move-object/from16 v0, p0

    #@fe
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@105
    .line 969
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
    .line 970
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
    .line 971
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
    .line 973
    if-eqz p2, :cond_1

    #@12e
    .line 974
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
    .line 975
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
    .line 976
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
    .line 977
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
    .line 974
    invoke-virtual {v7, v9, v10, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    #@155
    .line 980
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
    .line 981
    .local v23, "clipAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, v23

    #@166
    move-object/from16 v1, v28

    #@168
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@16b
    .line 982
    invoke-virtual/range {v23 .. v25}, Landroid/view/animation/Animation;->setDuration(J)V

    #@16e
    .line 985
    new-instance v29, Landroid/view/animation/AnimationSet;

    #@170
    const/4 v7, 0x0

    #@171
    move-object/from16 v0, v29

    #@173
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@176
    .line 986
    .local v29, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    #@178
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@17b
    .line 987
    move-object/from16 v0, v29

    #@17d
    move-object/from16 v1, v21

    #@17f
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@182
    .line 988
    move-object/from16 v0, v29

    #@184
    move-object/from16 v1, v35

    #@186
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@189
    .line 989
    move-object/from16 v0, v29

    #@18b
    move-object/from16 v1, v23

    #@18d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@190
    .line 990
    move-object/from16 v15, v29

    #@192
    .line 1011
    .end local v23    # "clipAnim":Landroid/view/animation/Animation;
    .local v15, "a":Landroid/view/animation/Animation;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@195
    move-result v17

    #@196
    const-wide/16 v18, 0x0

    #@198
    .line 1012
    const/16 v20, 0x0

    #@19a
    move-object/from16 v14, p0

    #@19c
    move/from16 v16, v22

    #@19e
    .line 1011
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@1a1
    move-result-object v7

    #@1a2
    return-object v7

    #@1a3
    .line 917
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
    .line 940
    .restart local v8    # "scaleW":F
    .restart local v22    # "appWidth":I
    .restart local v30    # "thumbHeightI":I
    .restart local v31    # "thumbWidth":F
    :cond_3
    const/4 v11, 0x0

    #@1a7
    .line 941
    .restart local v11    # "pivotX":F
    const/4 v12, 0x0

    #@1a8
    .line 942
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
    .line 943
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
    .line 944
    .restart local v27    # "fromY":F
    move-object/from16 v0, p1

    #@1bc
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@1be
    int-to-float v0, v7

    #@1bf
    move/from16 v33, v0

    #@1c1
    .line 945
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
    .line 956
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
    .line 959
    goto/16 :goto_3

    #@1d4
    .line 993
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
    .line 994
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    #@1e7
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1ea
    .line 995
    move-wide/from16 v0, v24

    #@1ec
    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@1ef
    .line 996
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
    .line 997
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@1fb
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    #@1fd
    move-object/from16 v0, v21

    #@1ff
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@202
    .line 998
    move-object/from16 v0, v21

    #@204
    move-wide/from16 v1, v24

    #@206
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@209
    .line 999
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
    .line 1000
    .restart local v35    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    #@219
    move-object/from16 v1, v28

    #@21b
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@21e
    .line 1001
    move-object/from16 v0, v35

    #@220
    move-wide/from16 v1, v24

    #@222
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    #@225
    .line 1004
    new-instance v29, Landroid/view/animation/AnimationSet;

    #@227
    const/4 v7, 0x0

    #@228
    move-object/from16 v0, v29

    #@22a
    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@22d
    .line 1005
    .restart local v29    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    #@22f
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@232
    .line 1006
    move-object/from16 v0, v29

    #@234
    move-object/from16 v1, v21

    #@236
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@239
    .line 1007
    move-object/from16 v0, v29

    #@23b
    move-object/from16 v1, v35

    #@23d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@240
    .line 1008
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
    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v15

    #@4
    .line 1297
    .local v15, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v14

    #@8
    .line 1298
    .local v14, "appHeight":I
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p4

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    #@f
    move-result-object v21

    #@10
    .line 1300
    .local v21, "thumbnailHeader":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@14
    move-object/from16 v0, p0

    #@16
    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@19
    .line 1301
    if-eqz v21, :cond_0

    #@1b
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    #@1e
    move-result v20

    #@1f
    .line 1302
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
    .line 1303
    .local v19, "thumbWidth":F
    if-eqz v21, :cond_2

    #@28
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    #@2b
    move-result v18

    #@2c
    .line 1304
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
    .line 1306
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_0

    #@36
    .line 1353
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
    .line 1301
    goto :goto_0

    #@42
    .line 1302
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
    .line 1303
    goto :goto_2

    #@48
    .line 1304
    .restart local v18    # "thumbHeightI":I
    :cond_3
    const/16 v18, 0x1

    #@4a
    goto :goto_3

    #@4b
    .line 1309
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_0
    int-to-float v4, v15

    #@4c
    div-float v3, v19, v4

    #@4e
    .line 1310
    .local v3, "scaleW":F
    int-to-float v4, v14

    #@4f
    div-float v5, v17, v4

    #@51
    .line 1311
    .local v5, "scaleH":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #@53
    const/high16 v4, 0x3f800000    # 1.0f

    #@55
    const/high16 v6, 0x3f800000    # 1.0f

    #@57
    .line 1312
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
    .line 1313
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
    .line 1311
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@6e
    .line 1356
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
    .line 1318
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v4, 0xe

    #@79
    move/from16 v0, p3

    #@7b
    if-ne v0, v4, :cond_4

    #@7d
    .line 1322
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
    .line 1325
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
    .line 1332
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
    .line 1333
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    #@9a
    .line 1337
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    int-to-float v4, v15

    #@9b
    div-float v3, v19, v4

    #@9d
    .line 1338
    .restart local v3    # "scaleW":F
    int-to-float v4, v14

    #@9e
    div-float v5, v17, v4

    #@a0
    .line 1339
    .restart local v5    # "scaleH":F
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    #@a2
    const/high16 v7, 0x3f800000    # 1.0f

    #@a4
    const/high16 v9, 0x3f800000    # 1.0f

    #@a6
    .line 1340
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
    .line 1341
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
    .line 1339
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@bf
    .line 1343
    .local v6, "scale":Landroid/view/animation/Animation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    #@c1
    const/high16 v4, 0x3f800000    # 1.0f

    #@c3
    const/4 v7, 0x0

    #@c4
    invoke-direct {v13, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@c7
    .line 1345
    .local v13, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    #@c9
    const/4 v4, 0x1

    #@ca
    move-object/from16 v0, v16

    #@cc
    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@cf
    .line 1346
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    #@d1
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@d4
    .line 1347
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@d9
    .line 1348
    const/4 v4, 0x1

    #@da
    move-object/from16 v0, v16

    #@dc
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    #@df
    .line 1349
    move-object/from16 v2, v16

    #@e1
    .line 1350
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    #@e2
    .line 1306
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
    .line 1255
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@4
    move-object/from16 v0, p0

    #@6
    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@9
    .line 1256
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v17

    #@d
    .line 1257
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
    .line 1258
    .local v16, "thumbWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    #@17
    move-result v15

    #@18
    .line 1259
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    #@1a
    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    #@1b
    .line 1261
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    #@1d
    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@1f
    if-eqz v7, :cond_2

    #@21
    .line 1263
    move/from16 v0, p1

    #@23
    int-to-float v7, v0

    #@24
    div-float v6, v7, v16

    #@26
    .line 1264
    .local v6, "scaleW":F
    move/from16 v0, p2

    #@28
    int-to-float v7, v0

    #@29
    div-float v8, v7, v14

    #@2b
    .line 1265
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    #@2d
    const/high16 v5, 0x3f800000    # 1.0f

    #@2f
    const/high16 v7, 0x3f800000    # 1.0f

    #@31
    .line 1266
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
    .line 1267
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
    .line 1265
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@4e
    .line 1268
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@50
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    #@52
    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@55
    .line 1270
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    #@57
    const/high16 v7, 0x3f800000    # 1.0f

    #@59
    const/4 v9, 0x0

    #@5a
    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@5d
    .line 1271
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    #@5f
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    #@61
    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@64
    .line 1274
    new-instance v13, Landroid/view/animation/AnimationSet;

    #@66
    const/4 v7, 0x0

    #@67
    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@6a
    .line 1275
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@6d
    .line 1276
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@70
    .line 1277
    move-object v5, v13

    #@71
    .line 1287
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
    .line 1257
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
    .line 1259
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    #@82
    goto :goto_1

    #@83
    .line 1280
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    #@85
    int-to-float v7, v0

    #@86
    div-float v6, v7, v16

    #@88
    .line 1281
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    #@8a
    int-to-float v7, v0

    #@8b
    div-float v8, v7, v14

    #@8d
    .line 1282
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #@8f
    const/high16 v7, 0x3f800000    # 1.0f

    #@91
    const/high16 v9, 0x3f800000    # 1.0f

    #@93
    .line 1283
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
    .line 1284
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
    .line 1282
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
    .line 1868
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6
    .line 1869
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
    .line 1870
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1871
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    const-string/jumbo v0, "mNextAppTransitionType="

    #@20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 1872
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1874
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@2c
    packed-switch v0, :pswitch_data_0

    #@2f
    .line 1914
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 1915
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    const-string/jumbo v0, "mNextAppTransitionCallback="

    #@39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 1916
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@3e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@41
    .line 1918
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    #@43
    if-eqz v0, :cond_2

    #@45
    .line 1919
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v0, "mLastUsedAppTransition="

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 1920
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    #@50
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 1921
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    const-string/jumbo v0, "mLastOpeningApp="

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 1922
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    #@62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65
    .line 1923
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    const-string/jumbo v0, "mLastClosingApp="

    #@6b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 1924
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    .line 1867
    :cond_2
    return-void

    #@74
    .line 1876
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    const-string/jumbo v0, "mNextAppTransitionPackage="

    #@7a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    .line 1877
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@7f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 1878
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    #@88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    .line 1879
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@8d
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 1880
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    #@97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 1881
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@9c
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    goto :goto_0

    #@a4
    .line 1884
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    const-string/jumbo v0, "mNextAppTransitionPackage="

    #@aa
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 1886
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    #@b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bb
    .line 1887
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@bd
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 1890
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@c8
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    #@cb
    .line 1891
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ce
    const-string/jumbo v0, "mNextAppTransitionStartX="

    #@d1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d4
    .line 1892
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@d6
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@d8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@db
    .line 1893
    const-string/jumbo v0, " mNextAppTransitionStartY="

    #@de
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    .line 1894
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@e3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@e8
    .line 1895
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    #@ee
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@f3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@f6
    move-result v0

    #@f7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@fa
    .line 1897
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    #@fd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    #@102
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@105
    move-result v0

    #@106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@109
    goto/16 :goto_0

    #@10b
    .line 1905
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e
    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    #@111
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    .line 1906
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@116
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@119
    .line 1907
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    #@11f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    .line 1908
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@127
    .line 1909
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    #@12d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@130
    .line 1910
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@135
    goto/16 :goto_0

    #@137
    .line 1874
    nop

    #@138
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
    .line 416
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@4
    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@7
    .line 418
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    #@a
    .line 419
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    #@d
    .line 415
    return-void
.end method

.method getAppStackClipMode()I
    .locals 2

    #@0
    .prologue
    .line 1594
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@2
    const/16 v1, 0x12

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1595
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@8
    const/16 v1, 0x13

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1597
    :cond_0
    const/4 v0, 0x2

    #@d
    .line 1594
    :goto_0
    return v0

    #@e
    .line 1596
    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@10
    const/16 v1, 0x8

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 1598
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method getAppTransition()I
    .locals 1

    #@0
    .prologue
    .line 286
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
    .line 327
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    #@9
    .line 328
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    #@b
    .line 329
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@d
    .line 331
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
    .line 703
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    #@2
    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    #@0
    .prologue
    .line 696
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
    .line 673
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    #@8
    .line 674
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_0

    #@a
    .line 675
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    #@c
    .line 677
    :cond_0
    if-eqz v0, :cond_1

    #@e
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@10
    if-nez v1, :cond_2

    #@12
    .line 678
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
    .line 679
    new-instance v3, Ljava/lang/Throwable;

    #@31
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@34
    .line 678
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 680
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    #@3a
    .line 672
    :goto_0
    return-void

    #@3b
    .line 682
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
    .line 894
    if-eqz p1, :cond_1

    #@2
    .line 895
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 896
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 898
    :cond_0
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 901
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 902
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 904
    :cond_2
    const/4 v0, 0x3

    #@11
    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 8
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
    const/4 v7, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 377
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@4
    .line 378
    .local v1, "appTransition":I
    const/4 v4, -0x1

    #@5
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@7
    .line 379
    iput v7, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@9
    .line 381
    if-eqz p1, :cond_2

    #@b
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@f
    move-object v6, v4

    #@10
    .line 382
    :goto_0
    if-eqz p2, :cond_3

    #@12
    iget-object v4, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@16
    move-object v5, v4

    #@17
    .line 383
    :goto_1
    if-eqz p1, :cond_4

    #@19
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1b
    .line 384
    :goto_2
    if-eqz p2, :cond_0

    #@1d
    iget-object v3, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1f
    .line 380
    :cond_0
    invoke-direct {p0, v6, v5, v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@22
    .line 385
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@24
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p3, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    #@2f
    .line 390
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    #@31
    const/16 v4, 0x13

    #@33
    if-ne v3, v4, :cond_1

    #@35
    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    #@37
    if-eqz v3, :cond_5

    #@39
    .line 376
    :cond_1
    return-void

    #@3a
    :cond_2
    move-object v6, v3

    #@3b
    .line 381
    goto :goto_0

    #@3c
    :cond_3
    move-object v5, v3

    #@3d
    .line 382
    goto :goto_1

    #@3e
    :cond_4
    move-object v4, v3

    #@3f
    .line 383
    goto :goto_2

    #@40
    .line 391
    :cond_5
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    #@43
    move-result v3

    #@44
    add-int/lit8 v2, v3, -0x1

    #@46
    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_1

    #@48
    .line 392
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    #@4e
    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@50
    .line 393
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v0, v7}, Lcom/android/server/wm/AppWindowAnimator;->startProlongAnimation(I)V

    #@53
    .line 391
    add-int/lit8 v2, v2, -0x1

    #@55
    goto :goto_3
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    #@0
    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    #@2
    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    #@0
    .prologue
    .line 360
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
    .line 351
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x4

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 352
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x6

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 351
    :cond_0
    :goto_0
    return v0

    #@c
    .line 352
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
    .line 346
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x3

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 347
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x5

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 346
    :cond_0
    :goto_0
    return v0

    #@c
    .line 347
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
    .line 336
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@3
    const/4 v2, 0x5

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 337
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@8
    const/4 v2, 0x6

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

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    #@0
    .prologue
    .line 342
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
    .line 301
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    .line 302
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@7
    const/4 v2, 0x3

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 301
    :cond_0
    :goto_0
    return v0

    #@b
    .line 302
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    #@0
    .prologue
    .line 311
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
    .line 319
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
    .line 282
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
    .line 278
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
    .line 1438
    if-eqz p10, :cond_2

    #@2
    const/4 v5, 0x6

    #@3
    move/from16 v0, p2

    #@5
    if-eq v0, v5, :cond_0

    #@7
    .line 1439
    const/16 v5, 0x8

    #@9
    move/from16 v0, p2

    #@b
    if-ne v0, v5, :cond_1

    #@d
    .line 1441
    :cond_0
    if-eqz p3, :cond_4

    #@f
    .line 1442
    const v5, 0x10a00a1

    #@12
    .line 1441
    :goto_0
    move-object/from16 v0, p0

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    #@19
    move-result-object v15

    #@1a
    .line 1590
    :goto_1
    return-object v15

    #@1b
    .line 1440
    :cond_1
    const/16 v5, 0xa

    #@1d
    move/from16 v0, p2

    #@1f
    if-eq v0, v5, :cond_0

    #@21
    .line 1448
    :cond_2
    if-eqz p10, :cond_6

    #@23
    const/4 v5, 0x7

    #@24
    move/from16 v0, p2

    #@26
    if-eq v0, v5, :cond_3

    #@28
    .line 1449
    const/16 v5, 0x9

    #@2a
    move/from16 v0, p2

    #@2c
    if-ne v0, v5, :cond_5

    #@2e
    .line 1451
    :cond_3
    if-eqz p3, :cond_7

    #@30
    .line 1452
    const v5, 0x10a009f

    #@33
    .line 1451
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
    .line 1443
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_4
    const v5, 0x10a00a2

    #@3f
    goto :goto_0

    #@40
    .line 1450
    :cond_5
    const/16 v5, 0xb

    #@42
    move/from16 v0, p2

    #@44
    if-eq v0, v5, :cond_3

    #@46
    .line 1458
    :cond_6
    const/16 v5, 0x12

    #@48
    move/from16 v0, p2

    #@4a
    if-ne v0, v5, :cond_8

    #@4c
    .line 1459
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
    .line 1453
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v5, 0x10a00a0

    #@5a
    goto :goto_2

    #@5b
    .line 1465
    :cond_8
    move-object/from16 v0, p0

    #@5d
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@5f
    const/4 v6, 0x1

    #@60
    if-ne v5, v6, :cond_a

    #@62
    .line 1466
    move-object/from16 v0, p0

    #@64
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@66
    if-eqz p3, :cond_9

    #@68
    .line 1467
    move-object/from16 v0, p0

    #@6a
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@6c
    .line 1466
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
    .line 1467
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_9
    move-object/from16 v0, p0

    #@75
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@77
    goto :goto_3

    #@78
    .line 1473
    :cond_a
    move-object/from16 v0, p0

    #@7a
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@7c
    const/4 v6, 0x7

    #@7d
    if-ne v5, v6, :cond_b

    #@7f
    .line 1474
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
    .line 1480
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
    .line 1481
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
    .line 1487
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
    .line 1488
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
    .line 1494
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
    .line 1495
    move-object/from16 v0, p0

    #@c4
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c6
    const/4 v6, 0x4

    #@c7
    if-ne v5, v6, :cond_10

    #@c9
    .line 1497
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
    .line 1496
    :goto_4
    move-object/from16 v0, p0

    #@d3
    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@d5
    .line 1498
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
    .line 1497
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_f
    const/4 v5, 0x0

    #@ec
    goto :goto_4

    #@ed
    .line 1508
    :cond_10
    move-object/from16 v0, p0

    #@ef
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@f1
    const/4 v6, 0x5

    #@f2
    if-eq v5, v6, :cond_11

    #@f4
    .line 1509
    move-object/from16 v0, p0

    #@f6
    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@f8
    const/4 v6, 0x6

    #@f9
    if-ne v5, v6, :cond_13

    #@fb
    .line 1511
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
    .line 1510
    :goto_5
    move-object/from16 v0, p0

    #@105
    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@107
    .line 1513
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
    .line 1512
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    #@124
    move-result-object v15

    #@125
    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@127
    .line 1511
    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_12
    const/4 v5, 0x0

    #@128
    goto :goto_5

    #@129
    .line 1524
    :cond_13
    const/16 v16, 0x0

    #@12b
    .line 1525
    .local v16, "animAttr":I
    packed-switch p2, :pswitch_data_0

    #@12e
    .line 1582
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
    .line 1527
    .end local v15    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    if-eqz p3, :cond_14

    #@13e
    .line 1528
    const/16 v16, 0x4

    #@140
    goto :goto_6

    #@141
    .line 1529
    :cond_14
    const/16 v16, 0x5

    #@143
    goto :goto_6

    #@144
    .line 1532
    :pswitch_2
    if-eqz p3, :cond_15

    #@146
    .line 1533
    const/16 v16, 0x6

    #@148
    goto :goto_6

    #@149
    .line 1534
    :cond_15
    const/16 v16, 0x7

    #@14b
    goto :goto_6

    #@14c
    .line 1538
    :pswitch_3
    if-eqz p3, :cond_16

    #@14e
    .line 1539
    const/16 v16, 0x8

    #@150
    goto :goto_6

    #@151
    .line 1540
    :cond_16
    const/16 v16, 0x9

    #@153
    goto :goto_6

    #@154
    .line 1543
    :pswitch_4
    if-eqz p3, :cond_17

    #@156
    .line 1544
    const/16 v16, 0xa

    #@158
    goto :goto_6

    #@159
    .line 1545
    :cond_17
    const/16 v16, 0xb

    #@15b
    goto :goto_6

    #@15c
    .line 1548
    :pswitch_5
    if-eqz p3, :cond_18

    #@15e
    .line 1549
    const/16 v16, 0xc

    #@160
    goto :goto_6

    #@161
    .line 1550
    :cond_18
    const/16 v16, 0xd

    #@163
    goto :goto_6

    #@164
    .line 1553
    :pswitch_6
    if-eqz p3, :cond_19

    #@166
    .line 1554
    const/16 v16, 0xe

    #@168
    goto :goto_6

    #@169
    .line 1555
    :cond_19
    const/16 v16, 0xf

    #@16b
    goto :goto_6

    #@16c
    .line 1558
    :pswitch_7
    if-eqz p3, :cond_1a

    #@16e
    .line 1559
    const/16 v16, 0x10

    #@170
    goto :goto_6

    #@171
    .line 1560
    :cond_1a
    const/16 v16, 0x11

    #@173
    goto :goto_6

    #@174
    .line 1563
    :pswitch_8
    if-eqz p3, :cond_1b

    #@176
    .line 1564
    const/16 v16, 0x12

    #@178
    goto :goto_6

    #@179
    .line 1565
    :cond_1b
    const/16 v16, 0x13

    #@17b
    goto :goto_6

    #@17c
    .line 1568
    :pswitch_9
    if-eqz p3, :cond_1c

    #@17e
    .line 1569
    const/16 v16, 0x14

    #@180
    goto :goto_6

    #@181
    .line 1570
    :cond_1c
    const/16 v16, 0x15

    #@183
    goto :goto_6

    #@184
    .line 1573
    :pswitch_a
    if-eqz p3, :cond_1d

    #@186
    .line 1574
    const/16 v16, 0x16

    #@188
    goto :goto_6

    #@189
    .line 1575
    :cond_1d
    const/16 v16, 0x17

    #@18b
    goto :goto_6

    #@18c
    .line 1578
    :pswitch_b
    if-eqz p3, :cond_1e

    #@18e
    .line 1579
    const/16 v16, 0x19

    #@190
    goto :goto_6

    #@191
    .line 1580
    :cond_1e
    const/16 v16, 0x18

    #@193
    goto :goto_6

    #@194
    .line 1582
    :cond_1f
    const/4 v15, 0x0

    #@195
    .local v15, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    #@197
    .line 1525
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
    .line 489
    const/4 v0, 0x0

    #@3
    .line 490
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@5
    .line 491
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    #@7
    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    #@a
    move-result-object v2

    #@b
    .line 493
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    #@d
    .line 494
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@f
    .line 495
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    #@11
    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v0

    #@15
    .line 498
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    #@17
    .line 499
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 501
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
    .line 505
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    #@3
    .line 506
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    #@5
    .line 507
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    #@8
    move-result-object v1

    #@9
    .line 508
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    #@b
    .line 509
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    #@d
    .line 511
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 513
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 427
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
    .line 428
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
    .line 427
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 426
    :cond_0
    return-void
.end method

.method notifyProlongedAnimationsEnded()V
    .locals 1

    #@0
    .prologue
    .line 402
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    #@3
    .line 401
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    #@0
    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1721
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1722
    const/4 v0, 0x7

    #@a
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 1723
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@e
    .line 1724
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    #@10
    .line 1719
    :goto_0
    return-void

    #@11
    .line 1726
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
    .line 1611
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1612
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1613
    const/4 v0, 0x1

    #@a
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 1614
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    #@e
    .line 1615
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    #@10
    .line 1616
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    #@12
    .line 1617
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@15
    .line 1618
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@17
    .line 1610
    :goto_0
    return-void

    #@18
    .line 1620
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
    .line 1661
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1662
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1663
    if-eqz p7, :cond_0

    #@b
    const/4 v0, 0x5

    #@c
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@e
    .line 1665
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
    .line 1666
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@19
    .line 1668
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1c
    .line 1669
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1e
    .line 1660
    :goto_1
    return-void

    #@1f
    .line 1664
    :cond_0
    const/4 v0, 0x6

    #@20
    goto :goto_0

    #@21
    .line 1671
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
    .line 1636
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1637
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1638
    const/16 v0, 0x8

    #@b
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@d
    .line 1639
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
    .line 1640
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@19
    .line 1635
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
    .line 1678
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 1679
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1680
    if-eqz p4, :cond_1

    #@b
    const/4 v0, 0x5

    #@c
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@e
    .line 1682
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@10
    .line 1683
    if-eqz p1, :cond_2

    #@12
    .line 1684
    const/4 v6, 0x0

    #@13
    .local v6, "i":I
    :goto_1
    array-length v0, p1

    #@14
    if-ge v6, v0, :cond_2

    #@16
    .line 1685
    aget-object v8, p1, v6

    #@18
    .line 1686
    .local v8, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v8, :cond_0

    #@1a
    .line 1687
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    #@1c
    iget v1, v8, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    #@1e
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@21
    .line 1688
    if-nez v6, :cond_0

    #@23
    .line 1691
    iget-object v7, v8, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    #@25
    .line 1692
    .local v7, "rect":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    #@27
    iget v2, v7, Landroid/graphics/Rect;->top:I

    #@29
    .line 1693
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
    .line 1692
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@37
    .line 1684
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 1681
    .end local v6    # "i":I
    .end local v8    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_1
    const/4 v0, 0x6

    #@3b
    goto :goto_0

    #@3c
    .line 1698
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@3f
    .line 1699
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@41
    .line 1700
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    #@43
    .line 1677
    :goto_2
    return-void

    #@44
    .line 1702
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
    .line 1709
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1710
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@9
    .line 1711
    if-eqz p3, :cond_1

    #@b
    const/4 v0, 0x5

    #@c
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@e
    .line 1713
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@10
    .line 1714
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    #@12
    .line 1715
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    #@14
    .line 1708
    :cond_0
    return-void

    #@15
    .line 1712
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
    const/4 v0, 0x2

    #@a
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@c
    .line 1629
    const/4 v5, 0x0

    #@d
    move-object v0, p0

    #@e
    move v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p3

    #@11
    move v4, p4

    #@12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@15
    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@18
    .line 1625
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
    .line 1646
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    #@a
    .line 1648
    if-eqz p5, :cond_0

    #@c
    const/4 v0, 0x3

    #@d
    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    #@f
    .line 1650
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
    .line 1651
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    #@19
    .line 1652
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@1c
    .line 1653
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1e
    .line 1645
    :goto_1
    return-void

    #@1f
    .line 1649
    :cond_0
    const/4 v0, 0x4

    #@20
    goto :goto_0

    #@21
    .line 1655
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
    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1603
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@9
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@d
    .line 1604
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@f
    .line 1603
    const/16 v3, 0x1a

    #@11
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 1605
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    #@1a
    .line 1601
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
    .line 1942
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
    .line 1943
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@f
    .line 1954
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    #@12
    move-result v0

    #@13
    .line 1955
    .local v0, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1956
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@1d
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@20
    .line 1957
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@24
    const-wide/16 v2, 0x1388

    #@26
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    #@29
    .line 1959
    :cond_2
    return v0

    #@2a
    .line 1944
    .end local v0    # "prepared":Z
    :cond_3
    if-nez p2, :cond_1

    #@2c
    .line 1945
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
    .line 1947
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 1948
    :cond_4
    const/4 v1, 0x6

    #@3d
    if-ne p1, v1, :cond_1

    #@3f
    .line 1949
    const/4 v1, 0x7

    #@40
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    #@43
    move-result v1

    #@44
    .line 1948
    if-eqz v1, :cond_1

    #@46
    .line 1951
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
    .line 877
    packed-switch p4, :pswitch_data_0

    #@3
    .line 883
    const/16 v7, 0x150

    #@5
    .line 886
    .local v7, "duration":I
    :goto_0
    int-to-long v4, v7

    #@6
    .line 887
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
    .line 886
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 880
    .end local v7    # "duration":I
    :pswitch_0
    iget v7, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    #@13
    .restart local v7    # "duration":I
    goto :goto_0

    #@14
    .line 877
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
    .line 858
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p4, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 859
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@9
    .line 861
    :cond_0
    const/4 v0, 0x1

    #@a
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@d
    .line 862
    if-eqz p6, :cond_1

    #@f
    .line 863
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@12
    .line 865
    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@15
    .line 866
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 422
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 1929
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    #@2
    .line 1928
    return-void
.end method

.method setIdle()V
    .locals 1

    #@0
    .prologue
    .line 315
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 314
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    .line 295
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    #@2
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, ""

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    #@18
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v1, ""

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    #@2e
    .line 294
    return-void
.end method

.method setReady()V
    .locals 1

    #@0
    .prologue
    .line 306
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 307
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    #@6
    .line 305
    return-void
.end method

.method setTimeout()V
    .locals 1

    #@0
    .prologue
    .line 323
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    #@3
    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1766
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

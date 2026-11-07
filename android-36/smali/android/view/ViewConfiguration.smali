.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewConfiguration$ResourceCache;
    }
.end annotation


# static fields
.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final greylist-max-o ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final blacklist AMBIGUOUS_GESTURE_MULTIPLIER:F = 2.0f

.field private static final blacklist DEFAULT_KEY_REPEAT_DELAY_MS:I = 0x32

.field private static final blacklist DEFAULT_KEY_REPEAT_TIMEOUT_MS:I = 0x190

.field public static final greylist-max-o DEFAULT_LONG_PRESS_TIMEOUT:I = 0x190

.field private static final greylist-max-o DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final greylist-max-o DOUBLE_TAP_SLOP:I = 0x64

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o EDGE_SLOP:I = 0xc

.field private static final greylist-max-o FADING_EDGE_LENGTH:I = 0xc

.field private static final greylist-max-o GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final blacklist HANDWRITING_GESTURE_LINE_MARGIN:I = 0x10

.field private static final blacklist HANDWRITING_SLOP:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final greylist-max-o HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o HOVER_TAP_SLOP:I = 0x14

.field private static final greylist-max-o HOVER_TAP_TIMEOUT:I = 0x96

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final greylist-max-o HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final greylist-max-o MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final greylist-max-o MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final greylist-max-o MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final blacklist NO_FLING_MAX_VELOCITY:I = -0x80000000

.field private static final blacklist NO_FLING_MIN_VELOCITY:I = 0x7fffffff

.field public static final blacklist NO_HAPTIC_SCROLL_TICK_INTERVAL:I = 0x7fffffff

.field private static final greylist-max-o OVERFLING_DISTANCE:I = 0x6

.field private static final greylist-max-o OVERSCROLL_DISTANCE:I = 0x0

.field private static final greylist-max-o PAGING_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o PRESSED_STATE_DURATION:I = 0x40

.field private static final blacklist SCREENSHOT_CHORD_KEY_TIMEOUT:I = 0x0

.field private static final greylist-max-o SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final greylist-max-o SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final greylist-max-o SCROLL_BAR_SIZE:I = 0x4

.field private static final greylist SCROLL_FRICTION:F = 0.015f

.field private static final greylist-max-o SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final blacklist SMART_SELECTION_INITIALIZED_TIMEOUT_IN_MILLISECOND:I = 0xc8

.field private static final blacklist SMART_SELECTION_INITIALIZING_TIMEOUT_IN_MILLISECOND:I = 0x1f4

.field private static final greylist-max-o TAP_TIMEOUT:I = 0x64

.field private static final greylist-max-o TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o WINDOW_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final greylist sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;


# instance fields
.field private final blacklist mAmbiguousGestureMultiplier:F

.field private final blacklist mConstructedWithContext:Z

.field private final greylist-max-o mDoubleTapSlop:I

.field private final greylist-max-o mDoubleTapTouchSlop:I

.field private final greylist-max-o mEdgeSlop:I

.field private final greylist-max-o mFadingEdgeLength:I

.field private final blacklist mFadingMarqueeEnabled:Z

.field private final greylist-max-o mGlobalActionsKeyTimeout:J

.field private final blacklist mHandwritingGestureLineMargin:I

.field private final blacklist mHandwritingSlop:I

.field private final greylist-max-o mHorizontalScrollFactor:F

.field private final greylist-max-o mHoverSlop:I

.field private final greylist-max-o mMaximumDrawingCacheSize:I

.field private final greylist-max-o mMaximumFlingVelocity:I

.field private final blacklist mMaximumRotaryEncoderFlingVelocity:I

.field private final blacklist mMinScalingSpan:I

.field private final greylist-max-o mMinScrollbarTouchTarget:I

.field private final greylist-max-o mMinimumFlingVelocity:I

.field private final blacklist mMinimumRotaryEncoderFlingVelocity:I

.field private final greylist-max-o mOverflingDistance:I

.field private final greylist-max-o mOverscrollDistance:I

.field private final greylist-max-o mPagingTouchSlop:I

.field private final blacklist mPreferKeepClearForFocusEnabled:Z

.field private final blacklist mRotaryEncoderHapticScrollFeedbackEnabled:Z

.field private final blacklist mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

.field private final blacklist mScreenshotChordKeyTimeout:J

.field private final greylist-max-o mScrollbarSize:I

.field private final greylist-max-o mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final blacklist mSmartSelectionInitializedTimeout:I

.field private final blacklist mSmartSelectionInitializingTimeout:I

.field private final greylist-max-o mTouchSlop:I

.field private final greylist-max-o mVerticalScrollFactor:F

.field private final blacklist mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

.field private final blacklist mViewTouchScreenHapticScrollFeedbackEnabled:Z

.field private final greylist-max-o mWindowTouchSlop:I

.field private greylist-max-p sHasPermanentMenuKey:Z

.field private greylist sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 353
    new-instance v0, Landroid/view/ViewConfiguration$ResourceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewConfiguration$ResourceCache;-><init>(Landroid/view/ViewConfiguration-IA;)V

    sput-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    .line 397
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 406
    const/16 v1, 0xc

    iput v1, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 407
    iput v1, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 408
    const/16 v1, 0x32

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 409
    const/16 v2, 0x1f40

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 410
    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    .line 411
    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    .line 412
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    .line 413
    const v1, 0x7fffffff

    iput v1, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    .line 414
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    .line 415
    const/4 v1, 0x4

    iput v1, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 416
    const/16 v2, 0x8

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 417
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    .line 418
    iput v1, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 419
    const/16 v1, 0x30

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 420
    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 421
    const/16 v1, 0x10

    iput v1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 422
    const/16 v2, 0x64

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 423
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 424
    iput v1, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    .line 425
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 427
    const v1, 0x177000

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 428
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 429
    const/4 v1, 0x6

    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 430
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 431
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 432
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 433
    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 434
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 435
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 439
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 440
    const/16 v1, 0xc8

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 441
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 442
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 443
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    .line 444
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 461
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 462
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 463
    .local v3, "config":Landroid/content/res/Configuration;
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 465
    .local v4, "density":F
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 466
    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v4

    .local v6, "sizeAndDensity":F
    goto :goto_20

    .line 468
    .end local v6    # "sizeAndDensity":F
    :cond_1f
    move v6, v4

    .line 471
    .restart local v6    # "sizeAndDensity":F
    :goto_20
    const/high16 v7, 0x41400000    # 12.0f

    mul-float v8, v6, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 472
    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 473
    const v7, 0x1050114

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 474
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 475
    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 477
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 478
    .local v7, "multiplierValue":Landroid/util/TypedValue;
    const v8, 0x10500d8

    invoke-virtual {v1, v8, v7, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 481
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    .line 484
    iget-object v8, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 485
    .local v8, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    mul-int/2addr v10, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v10, v5

    iput v10, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 487
    const/4 v5, 0x0

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 488
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 490
    iget-boolean v5, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    const/4 v9, 0x0

    if-nez v5, :cond_b0

    .line 491
    const v5, 0x10e00fc

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 493
    .local v5, "configVal":I
    packed-switch v5, :pswitch_data_1b0

    .line 496
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .local v10, "wm":Landroid/view/IWindowManager;
    goto :goto_9a

    .line 512
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :pswitch_90
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 513
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_b0

    .line 507
    :pswitch_95
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 508
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    .line 509
    goto :goto_b0

    .line 498
    .restart local v10    # "wm":Landroid/view/IWindowManager;
    :goto_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v11

    if-nez v11, :cond_a6

    move v11, v0

    goto :goto_a7

    :cond_a6
    move v11, v9

    :goto_a7
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 499
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_ab} :catch_ac

    .line 502
    goto :goto_af

    .line 500
    :catch_ac
    move-exception v0

    .line 501
    .local v0, "ex":Landroid/os/RemoteException;
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 504
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :goto_af
    nop

    .line 518
    .end local v5    # "configVal":I
    :cond_b0
    :goto_b0
    const v0, 0x1110281

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 519
    const v0, 0x105011a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 520
    const v0, 0x1050118

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    .line 522
    const v0, 0x1050119

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    .line 523
    const v0, 0x10500ff

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 525
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 527
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 529
    const v0, 0x105000a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    .line 532
    const v0, 0x105011d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 533
    const v0, 0x105011b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 535
    const v0, 0x105011e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 537
    .local v0, "configMinRotaryEncoderFlingVelocity":I
    const v5, 0x105011c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 539
    .local v5, "configMaxRotaryEncoderFlingVelocity":I
    const v10, 0x7fffffff

    if-ltz v0, :cond_11d

    if-gez v5, :cond_118

    goto :goto_11d

    .line 543
    :cond_118
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    .line 544
    iput v5, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    goto :goto_123

    .line 540
    :cond_11d
    :goto_11d
    iput v10, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    .line 541
    const/high16 v11, -0x80000000

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    .line 547
    :goto_123
    nop

    .line 548
    const v11, 0x105010a

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 550
    .local v11, "configRotaryEncoderHapticScrollFeedbackTickIntervalPixels":I
    nop

    .line 551
    if-lez v11, :cond_130

    .line 552
    move v10, v11

    goto :goto_131

    .line 553
    :cond_130
    nop

    :goto_131
    iput v10, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    .line 555
    nop

    .line 556
    const v10, 0x111029e

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    .line 559
    const v10, 0x10e00a2

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v12, v10

    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 561
    const v10, 0x10500ec

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 562
    const v10, 0x1050117

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 564
    const v10, 0x111023b

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    .line 567
    const v10, 0x10500fd

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    .line 569
    const v10, 0x10e0131

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v12, v10

    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    .line 571
    const v10, 0x10e0140

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    .line 573
    const v10, 0x10e0141

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    .line 575
    const v10, 0x1110212

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    .line 576
    nop

    .line 577
    const v10, 0x111029d

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    .line 578
    nop

    .line 579
    invoke-static {}, Landroid/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v10

    if-eqz v10, :cond_1ab

    .line 580
    const v9, 0x111029f

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    goto :goto_1ac

    .line 581
    :cond_1ab
    nop

    :goto_1ac
    iput-boolean v9, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    .line 582
    return-void

    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_95
        :pswitch_90
    .end packed-switch
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 595
    const-string v0, "ViewConfiguration"

    invoke-static {p0, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 597
    invoke-static {p0}, Landroid/view/ViewConfiguration;->getDisplayDensity(Landroid/content/Context;)I

    move-result v0

    .line 599
    .local v0, "density":I
    sget-object v1, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewConfiguration;

    .line 600
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    if-nez v1, :cond_1e

    .line 601
    new-instance v2, Landroid/view/ViewConfiguration;

    invoke-direct {v2, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 602
    sget-object v2, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    :cond_1e
    return-object v1
.end method

.method public static whitelist getAmbiguousGestureMultiplier()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1123
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public static whitelist getDefaultActionModeHideDuration()J
    .registers 2

    .line 1107
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDefaultActionModeHideDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getDisplayDensity(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1459
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1460
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    return v1
.end method

.method public static greylist getDoubleTapMinTime()I
    .registers 1

    .line 769
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapMinTime()I

    move-result v0

    return v0
.end method

.method public static greylist getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getDoubleTapTimeout()I
    .registers 1

    .line 757
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 679
    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getGlobalActionKeyTimeout()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1044
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static greylist-max-r getHoverTapSlop()I
    .registers 1

    .line 790
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getHoverTapTimeout()I
    .registers 1

    .line 779
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method public static blacklist getHoverTooltipHideShortTimeout()I
    .registers 1

    .line 1455
    const/16 v0, 0xbb8

    return v0
.end method

.method public static blacklist getHoverTooltipHideTimeout()I
    .registers 1

    .line 1445
    const/16 v0, 0x3a98

    return v0
.end method

.method public static blacklist getHoverTooltipShowTimeout()I
    .registers 1

    .line 1435
    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getJumpTapTimeout()I
    .registers 1

    .line 748
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getJumpTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getKeyRepeatDelay()I
    .registers 2

    .line 729
    const-string v0, "key_repeat_delay"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getKeyRepeatTimeout()I
    .registers 2

    .line 721
    const-string v0, "key_repeat_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getLongPressTimeout()I
    .registers 2

    .line 704
    const-string v0, "long_press_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getLongPressTooltipHideTimeout()I
    .registers 1

    .line 1426
    const/16 v0, 0x5dc

    return v0
.end method

.method public static whitelist getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 995
    const v0, 0x177000

    return v0
.end method

.method public static whitelist getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    const/16 v0, 0x1f40

    return v0
.end method

.method public static whitelist getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 932
    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getMultiPressTimeout()I
    .registers 2

    .line 713
    const-string v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getPressedStateDuration()I
    .registers 1

    .line 694
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getPressedStateDuration()I

    move-result v0

    return v0
.end method

.method public static whitelist getScrollBarFadeDuration()I
    .registers 1

    .line 662
    const/16 v0, 0xfa

    return v0
.end method

.method public static whitelist getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 639
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getScrollDefaultDelay()I
    .registers 1

    .line 669
    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getScrollFriction()F
    .registers 1

    .line 1100
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getScrollFriction()F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    .line 902
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static whitelist getTapTimeout()I
    .registers 1

    .line 739
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist getZoomControlsTimeout()J
    .registers 2

    .line 1031
    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getZoomControlsTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist isInputDeviceInfoValid(III)Z
    .registers 5
    .param p0, "id"    # I
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .line 1349
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1350
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static blacklist resetCacheForTesting()V
    .registers 2

    .line 617
    sget-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 618
    new-instance v0, Landroid/view/ViewConfiguration$ResourceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewConfiguration$ResourceCache;-><init>(Landroid/view/ViewConfiguration-IA;)V

    sput-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    .line 619
    return-void
.end method

.method public static blacklist setInstanceForTesting(Landroid/content/Context;Landroid/view/ViewConfiguration;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Landroid/view/ViewConfiguration;

    .line 628
    sget-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->getDisplayDensity(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    return-void
.end method


# virtual methods
.method public greylist-max-o getAccessibilityShortcutKeyTimeout()J
    .registers 3

    .line 1081
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public greylist-max-o getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .registers 3

    .line 1090
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public blacklist getDeviceGlobalActionKeyTimeout()J
    .registers 3

    .line 1057
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getHapticScrollFeedbackTickInterval(III)I
    .registers 6
    .param p1, "inputDeviceId"    # I
    .param p2, "axis"    # I
    .param p3, "source"    # I

    .line 1322
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    const v1, 0x7fffffff

    if-nez v0, :cond_8

    .line 1323
    return v1

    .line 1326
    :cond_8
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1327
    return v1

    .line 1330
    :cond_f
    const/high16 v0, 0x400000

    if-ne p3, v0, :cond_1a

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1a

    .line 1331
    iget v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    return v0

    .line 1334
    :cond_1a
    return v1
.end method

.method public whitelist getScaledAmbiguousGestureMultiplier()F
    .registers 2

    .line 1136
    iget v0, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    return v0
.end method

.method public whitelist getScaledDoubleTapSlop()I
    .registers 2

    .line 881
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public greylist getScaledDoubleTapTouchSlop()I
    .registers 2

    .line 852
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public whitelist getScaledEdgeSlop()I
    .registers 2

    .line 809
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public whitelist getScaledFadingEdgeLength()I
    .registers 2

    .line 686
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public whitelist getScaledHandwritingGestureLineMargin()I
    .registers 2

    .line 889
    iget v0, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    return v0
.end method

.method public whitelist getScaledHandwritingSlop()I
    .registers 2

    .line 834
    iget v0, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    return v0
.end method

.method public whitelist getScaledHorizontalScrollFactor()F
    .registers 2

    .line 974
    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledHoverSlop()I
    .registers 2

    .line 842
    iget v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return v0
.end method

.method public whitelist getScaledMaximumDrawingCacheSize()I
    .registers 2

    .line 1004
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public whitelist getScaledMaximumFlingVelocity()I
    .registers 2

    .line 956
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMaximumFlingVelocity(III)I
    .registers 5
    .param p1, "inputDeviceId"    # I
    .param p2, "axis"    # I
    .param p3, "source"    # I

    .line 1235
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, -0x80000000

    return v0

    .line 1237
    :cond_9
    const/high16 v0, 0x400000

    if-ne p3, v0, :cond_10

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    return v0

    .line 1239
    :cond_10
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public greylist-max-o getScaledMinScrollbarTouchTarget()I
    .registers 2

    .line 655
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return v0
.end method

.method public whitelist getScaledMinimumFlingVelocity()I
    .registers 2

    .line 939
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMinimumFlingVelocity(III)I
    .registers 5
    .param p1, "inputDeviceId"    # I
    .param p2, "axis"    # I
    .param p3, "source"    # I

    .line 1217
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7fffffff

    return v0

    .line 1219
    :cond_a
    const/high16 v0, 0x400000

    if-ne p3, v0, :cond_11

    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    return v0

    .line 1221
    :cond_11
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public whitelist getScaledMinimumScalingSpan()I
    .registers 3

    .line 1374
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    if-eqz v0, :cond_7

    .line 1379
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    return v0

    .line 1375
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Min scaling span cannot be determined when this method is called on a ViewConfiguration that was instantiated using a constructor with no Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getScaledOverflingDistance()I
    .registers 2

    .line 1020
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public whitelist getScaledOverscrollDistance()I
    .registers 2

    .line 1012
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public whitelist getScaledPagingTouchSlop()I
    .registers 2

    .line 860
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public whitelist getScaledScrollBarSize()I
    .registers 2

    .line 647
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public greylist getScaledScrollFactor()I
    .registers 2

    .line 966
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getScaledTouchSlop()I
    .registers 2

    .line 826
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public whitelist getScaledVerticalScrollFactor()F
    .registers 2

    .line 982
    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public whitelist getScaledWindowTouchSlop()I
    .registers 2

    .line 922
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public blacklist getScreenshotChordKeyTimeout()J
    .registers 3

    .line 1069
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getSmartSelectionInitializedTimeout()I
    .registers 2

    .line 1397
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    return v0
.end method

.method public blacklist getSmartSelectionInitializingTimeout()I
    .registers 2

    .line 1406
    iget v0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    return v0
.end method

.method public whitelist hasPermanentMenuKey()Z
    .registers 2

    .line 1152
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public greylist isFadingMarqueeEnabled()Z
    .registers 2

    .line 1388
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method

.method public blacklist isHapticScrollFeedbackEnabled(III)Z
    .registers 6
    .param p1, "inputDeviceId"    # I
    .param p2, "axis"    # I
    .param p3, "source"    # I

    .line 1274
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1276
    :cond_8
    const/high16 v0, 0x400000

    if-ne p3, v0, :cond_13

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_13

    .line 1277
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    return v0

    .line 1280
    :cond_13
    and-int/lit16 v0, p3, 0x1002

    if-eqz v0, :cond_1a

    .line 1281
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    return v0

    .line 1284
    :cond_1a
    return v1
.end method

.method public blacklist isPreferKeepClearForFocusEnabled()Z
    .registers 2

    .line 1416
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    return v0
.end method

.method public blacklist isViewBasedRotaryEncoderHapticScrollFeedbackEnabled()Z
    .registers 2

    .line 1344
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    if-eqz v0, :cond_c

    .line 1345
    invoke-static {}, Landroid/view/flags/Flags;->useViewBasedRotaryEncoderScrollHaptics()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1344
    :goto_d
    return v0
.end method

.method public whitelist shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .registers 2

    .line 1359
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return v0
.end method

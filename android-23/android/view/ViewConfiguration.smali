.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 248
    new-instance v0, Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@6
    .line 247
    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    #@8
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    const/16 v0, 0xc

    #@4
    const/16 v1, 0x8

    #@6
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 255
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    #@b
    .line 256
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    #@d
    .line 257
    const/16 v0, 0x32

    #@f
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    #@11
    .line 258
    const/16 v0, 0x1f40

    #@13
    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    #@15
    .line 259
    const/16 v0, 0xa

    #@17
    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    #@19
    .line 260
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    #@1b
    .line 261
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    #@1d
    .line 262
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    #@1f
    .line 263
    const/16 v0, 0x64

    #@21
    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    #@23
    .line 264
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    #@25
    .line 266
    const v0, 0x177000

    #@28
    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    #@2a
    .line 267
    const/4 v0, 0x0

    #@2b
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    #@2d
    .line 268
    const/4 v0, 0x6

    #@2e
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    #@30
    .line 269
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    #@33
    .line 270
    const-wide/16 v0, 0x1f4

    #@35
    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    #@37
    .line 254
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v6

    #@7
    .line 285
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a
    move-result-object v5

    #@b
    .line 286
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@e
    move-result-object v0

    #@f
    .line 287
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    #@11
    .line 289
    .local v2, "density":F
    const/4 v11, 0x4

    #@12
    invoke-virtual {v0, v11}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    #@15
    move-result v11

    #@16
    if-eqz v11, :cond_1

    #@18
    .line 290
    const/high16 v11, 0x3fc00000    # 1.5f

    #@1a
    mul-float v8, v2, v11

    #@1c
    .line 295
    .local v8, "sizeAndDensity":F
    :goto_0
    const/high16 v11, 0x41400000    # 12.0f

    #@1e
    mul-float/2addr v11, v8

    #@1f
    const/high16 v12, 0x3f000000    # 0.5f

    #@21
    add-float/2addr v11, v12

    #@22
    float-to-int v11, v11

    #@23
    iput v11, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    #@25
    .line 296
    const/high16 v11, 0x41400000    # 12.0f

    #@27
    mul-float/2addr v11, v8

    #@28
    const/high16 v12, 0x3f000000    # 0.5f

    #@2a
    add-float/2addr v11, v12

    #@2b
    float-to-int v11, v11

    #@2c
    iput v11, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    #@2e
    .line 297
    const/high16 v11, 0x41200000    # 10.0f

    #@30
    mul-float/2addr v11, v2

    #@31
    const/high16 v12, 0x3f000000    # 0.5f

    #@33
    add-float/2addr v11, v12

    #@34
    float-to-int v11, v11

    #@35
    iput v11, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    #@37
    .line 298
    const/high16 v11, 0x42c80000    # 100.0f

    #@39
    mul-float/2addr v11, v8

    #@3a
    const/high16 v12, 0x3f000000    # 0.5f

    #@3c
    add-float/2addr v11, v12

    #@3d
    float-to-int v11, v11

    #@3e
    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    #@40
    .line 299
    const/high16 v11, 0x41800000    # 16.0f

    #@42
    mul-float/2addr v11, v8

    #@43
    const/high16 v12, 0x3f000000    # 0.5f

    #@45
    add-float/2addr v11, v12

    #@46
    float-to-int v11, v11

    #@47
    iput v11, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    #@49
    .line 302
    const-string/jumbo v11, "window"

    #@4c
    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4f
    move-result-object v9

    #@50
    check-cast v9, Landroid/view/WindowManager;

    #@52
    .line 303
    .local v9, "win":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@55
    move-result-object v3

    #@56
    .line 304
    .local v3, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    #@58
    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    #@5b
    .line 305
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@5e
    .line 306
    iget v11, v7, Landroid/graphics/Point;->x:I

    #@60
    mul-int/lit8 v11, v11, 0x4

    #@62
    iget v12, v7, Landroid/graphics/Point;->y:I

    #@64
    mul-int/2addr v11, v12

    #@65
    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    #@67
    .line 308
    const/4 v11, 0x0

    #@68
    mul-float/2addr v11, v8

    #@69
    const/high16 v12, 0x3f000000    # 0.5f

    #@6b
    add-float/2addr v11, v12

    #@6c
    float-to-int v11, v11

    #@6d
    iput v11, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    #@6f
    .line 309
    const/high16 v11, 0x40c00000    # 6.0f

    #@71
    mul-float/2addr v11, v8

    #@72
    const/high16 v12, 0x3f000000    # 0.5f

    #@74
    add-float/2addr v11, v12

    #@75
    float-to-int v11, v11

    #@76
    iput v11, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    #@78
    .line 311
    iget-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    #@7a
    if-nez v11, :cond_0

    #@7c
    .line 313
    const v11, 0x10e008b

    #@7f
    .line 312
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    #@82
    move-result v1

    #@83
    .line 315
    .local v1, "configVal":I
    packed-switch v1, :pswitch_data_0

    #@86
    .line 318
    :pswitch_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@89
    move-result-object v10

    #@8a
    .line 320
    .local v10, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v10}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    #@8d
    move-result v11

    #@8e
    if-eqz v11, :cond_2

    #@90
    const/4 v11, 0x0

    #@91
    :goto_1
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    #@93
    .line 321
    const/4 v11, 0x1

    #@94
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@96
    .line 341
    .end local v1    # "configVal":I
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_2
    const v11, 0x1120012

    #@99
    .line 340
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@9c
    move-result v11

    #@9d
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    #@9f
    .line 343
    const v11, 0x105000f

    #@a2
    .line 342
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@a5
    move-result v11

    #@a6
    iput v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    #@a8
    .line 344
    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    #@aa
    mul-int/lit8 v11, v11, 0x2

    #@ac
    iput v11, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    #@ae
    .line 346
    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    #@b0
    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    #@b2
    .line 349
    const v11, 0x1050010

    #@b5
    .line 348
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b8
    move-result v11

    #@b9
    iput v11, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    #@bb
    .line 351
    const v11, 0x1050011

    #@be
    .line 350
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c1
    move-result v11

    #@c2
    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    #@c4
    .line 353
    const v11, 0x10e0083

    #@c7
    .line 352
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    #@ca
    move-result v11

    #@cb
    int-to-long v12, v11

    #@cc
    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    #@ce
    .line 283
    return-void

    #@cf
    .line 292
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "sizeAndDensity":F
    .end local v9    # "win":Landroid/view/WindowManager;
    :cond_1
    move v8, v2

    #@d0
    .restart local v8    # "sizeAndDensity":F
    goto/16 :goto_0

    #@d2
    .line 320
    .restart local v1    # "configVal":I
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v7    # "size":Landroid/graphics/Point;
    .restart local v9    # "win":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/IWindowManager;
    :cond_2
    const/4 v11, 0x1

    #@d3
    goto :goto_1

    #@d4
    .line 322
    :catch_0
    move-exception v4

    #@d5
    .line 323
    .local v4, "ex":Landroid/os/RemoteException;
    const/4 v11, 0x0

    #@d6
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    #@d8
    goto :goto_2

    #@d9
    .line 329
    .end local v4    # "ex":Landroid/os/RemoteException;
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :pswitch_1
    const/4 v11, 0x1

    #@da
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    #@dc
    .line 330
    const/4 v11, 0x1

    #@dd
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    #@df
    goto :goto_2

    #@e0
    .line 334
    :pswitch_2
    const/4 v11, 0x0

    #@e1
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    #@e3
    .line 335
    const/4 v11, 0x1

    #@e4
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    #@e6
    goto :goto_2

    #@e7
    .line 315
    nop

    #@e8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v2

    #@8
    .line 365
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    #@a
    const/high16 v4, 0x42c80000    # 100.0f

    #@c
    mul-float/2addr v3, v4

    #@d
    float-to-int v1, v3

    #@e
    .line 367
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/ViewConfiguration;

    #@16
    .line 368
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    #@18
    .line 369
    new-instance v0, Landroid/view/ViewConfiguration;

    #@1a
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    #@1d
    .line 370
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    .line 373
    :cond_0
    return-object v0
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    #@0
    .prologue
    .line 743
    const-wide/16 v0, 0x7d0

    #@2
    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    #@0
    .prologue
    .line 492
    const/16 v0, 0x28

    #@2
    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 577
    const/16 v0, 0x64

    #@2
    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 481
    const/16 v0, 0x12c

    #@2
    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 523
    const/16 v0, 0xc

    #@2
    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 416
    const/16 v0, 0xc

    #@2
    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 714
    const-wide/16 v0, 0x1f4

    #@2
    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    #@0
    .prologue
    .line 512
    const/16 v0, 0x14

    #@2
    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 502
    const/16 v0, 0x96

    #@2
    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 472
    const/16 v0, 0x1f4

    #@2
    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    #@0
    .prologue
    .line 454
    const/16 v0, 0x32

    #@2
    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    #@0
    .prologue
    .line 447
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    #@0
    .prologue
    .line 439
    const-string/jumbo v0, "long_press_timeout"

    #@3
    .line 440
    const/16 v1, 0x1f4

    #@5
    .line 439
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 665
    const v0, 0x177000

    #@3
    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 645
    const/16 v0, 0x1f40

    #@2
    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 628
    const/16 v0, 0x32

    #@2
    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    #@0
    .prologue
    .line 431
    const/16 v0, 0x40

    #@2
    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    #@0
    .prologue
    .line 399
    const/16 v0, 0xfa

    #@2
    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 384
    const/16 v0, 0xa

    #@2
    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    #@0
    .prologue
    .line 406
    const/16 v0, 0x12c

    #@2
    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    #@0
    .prologue
    .line 736
    const v0, 0x3c75c28f    # 0.015f

    #@3
    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    #@0
    .prologue
    .line 598
    const-wide/16 v0, 0x64

    #@2
    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    #@0
    .prologue
    .line 463
    const/16 v0, 0x64

    #@2
    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 541
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 610
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    #@0
    .prologue
    .line 701
    const-wide/16 v0, 0xbb8

    #@2
    return-wide v0
.end method


# virtual methods
.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    #@0
    .prologue
    .line 726
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    #@2
    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    #@0
    .prologue
    .line 585
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    #@2
    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    #@0
    .prologue
    .line 557
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    #@2
    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    #@0
    .prologue
    .line 531
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    #@2
    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    #@0
    .prologue
    .line 423
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    #@2
    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    #@0
    .prologue
    .line 674
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    #@2
    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    #@0
    .prologue
    .line 652
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    #@2
    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    #@0
    .prologue
    .line 635
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    #@2
    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    #@0
    .prologue
    .line 690
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    #@2
    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    #@0
    .prologue
    .line 682
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    #@2
    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    #@0
    .prologue
    .line 565
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    #@2
    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    #@0
    .prologue
    .line 392
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    #@2
    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    #@0
    .prologue
    .line 548
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    #@2
    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    #@0
    .prologue
    .line 618
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    #@2
    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    #@0
    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    #@2
    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 767
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    #@2
    return v0
.end method

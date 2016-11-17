.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonBrightness:F

.field private mDeferDepth:I

.field private mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mInLayout:Z

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mLayoutRepeatCount:I

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mObsuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private final mPendingDestroyingSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredModeId:I

.field private mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mSyswin:Z

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private final mTmpStartRect:Landroid/graphics/Rect;

.field private mTraversalScheduled:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@5
    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 91
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    #@9
    .line 103
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    #@b
    .line 104
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    #@e
    .line 105
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    #@10
    .line 107
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    #@12
    .line 108
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@14
    .line 109
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    #@16
    .line 110
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@18
    .line 111
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    #@1a
    .line 112
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@1c
    .line 113
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@1e
    .line 114
    const-wide/16 v0, -0x1

    #@20
    iput-wide v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    #@22
    .line 115
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    #@24
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    #@26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    #@2b
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@2d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    #@32
    .line 121
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    #@34
    .line 125
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    #@36
    .line 127
    const/4 v0, 0x0

    #@37
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    #@39
    .line 129
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    #@3b
    .line 132
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@3d
    .line 134
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    #@3f
    .line 135
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    #@41
    .line 139
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    #@43
    .line 141
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    #@45
    .line 147
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@47
    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    #@4a
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@4c
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@51
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    #@53
    .line 152
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@55
    .line 153
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@57
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@59
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@5b
    .line 151
    return-void
.end method

.method private applySurfaceChangesTransaction(ZIII)V
    .locals 34
    .param p1, "recoveringMemory"    # Z
    .param p2, "numDisplays"    # I
    .param p3, "defaultDw"    # I
    .param p4, "defaultDh"    # I

    #@0
    .prologue
    .line 585
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 586
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    #@e
    move/from16 v0, p3

    #@10
    move/from16 v1, p4

    #@12
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    #@15
    .line 588
    :cond_0
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 589
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@21
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    #@23
    move/from16 v0, p3

    #@25
    move/from16 v1, p4

    #@27
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    #@2a
    .line 591
    :cond_1
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    #@30
    if-eqz v4, :cond_2

    #@32
    .line 592
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    #@38
    .line 593
    move-object/from16 v0, p0

    #@3a
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3c
    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    #@3e
    .line 592
    move/from16 v0, p3

    #@40
    move/from16 v1, p4

    #@42
    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    #@45
    .line 595
    :cond_2
    move-object/from16 v0, p0

    #@47
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@49
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    #@4b
    if-eqz v4, :cond_3

    #@4d
    .line 596
    move-object/from16 v0, p0

    #@4f
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    #@53
    .line 597
    move-object/from16 v0, p0

    #@55
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@57
    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    #@59
    .line 596
    move/from16 v0, p3

    #@5b
    move/from16 v1, p4

    #@5d
    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    #@60
    .line 600
    :cond_3
    const/16 v19, 0x0

    #@62
    .line 602
    .local v19, "focusDisplayed":Z
    const/16 v16, 0x0

    #@64
    .local v16, "displayNdx":I
    :goto_0
    move/from16 v0, v16

    #@66
    move/from16 v1, p2

    #@68
    if-ge v0, v1, :cond_28

    #@6a
    .line 603
    move-object/from16 v0, p0

    #@6c
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6e
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@70
    move/from16 v0, v16

    #@72
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@75
    move-result-object v14

    #@76
    check-cast v14, Lcom/android/server/wm/DisplayContent;

    #@78
    .line 604
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v30, 0x0

    #@7a
    .line 605
    .local v30, "updateAllDrawn":Z
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@7d
    move-result-object v33

    #@7e
    .line 606
    .local v33, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@81
    move-result-object v15

    #@82
    .line 607
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@85
    move-result v5

    #@86
    .line 608
    .local v5, "displayId":I
    iget v0, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    #@88
    move/from16 v17, v0

    #@8a
    .line 609
    .local v17, "dw":I
    iget v13, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    #@8c
    .line 610
    .local v13, "dh":I
    iget v0, v15, Landroid/view/DisplayInfo;->appWidth:I

    #@8e
    move/from16 v22, v0

    #@90
    .line 611
    .local v22, "innerDw":I
    iget v0, v15, Landroid/view/DisplayInfo;->appHeight:I

    #@92
    move/from16 v21, v0

    #@94
    .line 612
    .local v21, "innerDh":I
    if-nez v5, :cond_13

    #@96
    const/16 v23, 0x1

    #@98
    .line 615
    .local v23, "isDefaultDisplay":Z
    :goto_1
    const/4 v4, 0x0

    #@99
    move-object/from16 v0, p0

    #@9b
    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    #@9d
    .line 616
    const/4 v4, 0x0

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    #@a2
    .line 617
    const/4 v4, 0x0

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    #@a7
    .line 619
    const/16 v26, 0x0

    #@a9
    .line 621
    .local v26, "repeats":I
    :goto_2
    add-int/lit8 v26, v26, 0x1

    #@ab
    .line 622
    const/4 v4, 0x6

    #@ac
    move/from16 v0, v26

    #@ae
    if-le v0, v4, :cond_14

    #@b0
    .line 623
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@b2
    const-string/jumbo v6, "Animation repeat aborted after too many iterations"

    #@b5
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 624
    const/4 v4, 0x0

    #@b9
    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@bb
    .line 678
    :cond_4
    const/4 v4, 0x0

    #@bc
    move-object/from16 v0, p0

    #@be
    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@c0
    .line 679
    const/4 v4, 0x0

    #@c1
    move-object/from16 v0, p0

    #@c3
    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    #@c5
    .line 680
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    #@c8
    .line 683
    move-object/from16 v0, p0

    #@ca
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@cc
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@d1
    move-result v4

    #@d2
    if-eqz v4, :cond_1d

    #@d4
    const/16 v27, 0x0

    #@d6
    .line 685
    .local v27, "someoneLosingFocus":Z
    :goto_3
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    #@d9
    move-result v4

    #@da
    add-int/lit8 v20, v4, -0x1

    #@dc
    .local v20, "i":I
    :goto_4
    if-ltz v20, :cond_26

    #@de
    .line 686
    move-object/from16 v0, v33

    #@e0
    move/from16 v1, v20

    #@e2
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@e5
    move-result-object v31

    #@e6
    check-cast v31, Lcom/android/server/wm/WindowState;

    #@e8
    .line 687
    .local v31, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@eb
    move-result-object v28

    #@ec
    .line 688
    .local v28, "task":Lcom/android/server/wm/Task;
    move-object/from16 v0, v31

    #@ee
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@f4
    if-eq v4, v6, :cond_1e

    #@f6
    const/16 v25, 0x1

    #@f8
    .line 691
    .local v25, "obscuredChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@fa
    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@fc
    move-object/from16 v0, v31

    #@fe
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    #@100
    .line 692
    move-object/from16 v0, p0

    #@102
    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@104
    if-nez v4, :cond_5

    #@106
    .line 693
    move-object/from16 v0, p0

    #@108
    move-object/from16 v1, v31

    #@10a
    invoke-direct {v0, v1, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V

    #@10d
    .line 696
    :cond_5
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    #@110
    .line 698
    if-eqz v23, :cond_6

    #@112
    if-eqz v25, :cond_6

    #@114
    .line 699
    move-object/from16 v0, p0

    #@116
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@118
    move-object/from16 v0, v31

    #@11a
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    #@11d
    move-result v4

    #@11e
    .line 698
    if-eqz v4, :cond_6

    #@120
    .line 699
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@123
    move-result v4

    #@124
    .line 698
    if-eqz v4, :cond_6

    #@126
    .line 703
    move-object/from16 v0, p0

    #@128
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@12a
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    #@12d
    .line 706
    :cond_6
    move-object/from16 v0, v31

    #@12f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@131
    move-object/from16 v32, v0

    #@133
    .line 712
    .local v32, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    #@136
    move-result v4

    #@137
    if-eqz v4, :cond_9

    #@139
    .line 715
    move-object/from16 v0, v31

    #@13b
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@13d
    iget v0, v4, Landroid/graphics/Rect;->left:I

    #@13f
    move/from16 v24, v0

    #@141
    .line 716
    .local v24, "left":I
    move-object/from16 v0, v31

    #@143
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@145
    iget v0, v4, Landroid/graphics/Rect;->top:I

    #@147
    move/from16 v29, v0

    #@149
    .line 717
    .local v29, "top":I
    if-eqz v28, :cond_20

    #@14b
    .line 718
    move-object/from16 v0, v28

    #@14d
    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@14f
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    #@152
    move-result v4

    #@153
    if-nez v4, :cond_1f

    #@155
    .line 719
    move-object/from16 v0, v28

    #@157
    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@159
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@15c
    move-result v10

    #@15d
    .line 720
    :goto_6
    move-object/from16 v0, v31

    #@15f
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@161
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@163
    and-int/lit8 v4, v4, 0x40

    #@165
    if-nez v4, :cond_7

    #@167
    .line 721
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@16a
    move-result v4

    #@16b
    if-eqz v4, :cond_21

    #@16d
    .line 728
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    #@16f
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@171
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@173
    if-eqz v4, :cond_8

    #@175
    .line 729
    if-nez v5, :cond_8

    #@177
    .line 730
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17b
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@17d
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@180
    .line 734
    :cond_8
    :try_start_0
    move-object/from16 v0, v31

    #@182
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@184
    move/from16 v0, v24

    #@186
    move/from16 v1, v29

    #@188
    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18b
    .line 737
    :goto_8
    const/4 v4, 0x0

    #@18c
    move-object/from16 v0, v31

    #@18e
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    #@190
    .line 741
    .end local v24    # "left":I
    .end local v29    # "top":I
    :cond_9
    const/4 v4, 0x0

    #@191
    move-object/from16 v0, v31

    #@193
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@195
    .line 744
    move-object/from16 v0, v31

    #@197
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@199
    if-eqz v4, :cond_d

    #@19b
    .line 747
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->deferToPendingTransaction()V

    #@19e
    .line 750
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    #@1a1
    move-result v12

    #@1a2
    .line 751
    .local v12, "committed":Z
    if-eqz v23, :cond_b

    #@1a4
    if-eqz v12, :cond_b

    #@1a6
    .line 752
    move-object/from16 v0, v31

    #@1a8
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1aa
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ac
    const/16 v6, 0x7e7

    #@1ae
    if-ne v4, v6, :cond_a

    #@1b0
    .line 757
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1b2
    or-int/lit8 v4, v4, 0x1

    #@1b4
    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1b6
    .line 764
    :cond_a
    move-object/from16 v0, v31

    #@1b8
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ba
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1bc
    const/high16 v6, 0x100000

    #@1be
    and-int/2addr v4, v6

    #@1bf
    if-eqz v4, :cond_b

    #@1c1
    .line 767
    const/4 v4, 0x1

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    #@1c6
    .line 768
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1c8
    or-int/lit8 v4, v4, 0x4

    #@1ca
    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1cc
    .line 775
    :cond_b
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    #@1cf
    move-result v4

    #@1d0
    if-nez v4, :cond_c

    #@1d2
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    #@1d5
    move-result v4

    #@1d6
    if-eqz v4, :cond_23

    #@1d8
    .line 786
    :cond_c
    :goto_9
    move-object/from16 v0, v32

    #@1da
    move/from16 v1, p1

    #@1dc
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    #@1df
    .line 789
    .end local v12    # "committed":Z
    :cond_d
    move-object/from16 v0, v31

    #@1e1
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e3
    .line 795
    .local v11, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v11, :cond_11

    #@1e5
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@1e7
    if-eqz v4, :cond_e

    #@1e9
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    #@1eb
    if-eqz v4, :cond_e

    #@1ed
    .line 796
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1ef
    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@1f1
    .line 795
    if-eqz v4, :cond_11

    #@1f3
    .line 797
    :cond_e
    iget-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f9
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    #@1fb
    int-to-long v8, v4

    #@1fc
    cmp-long v4, v6, v8

    #@1fe
    if-eqz v4, :cond_f

    #@200
    .line 798
    move-object/from16 v0, p0

    #@202
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@204
    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    #@206
    int-to-long v6, v4

    #@207
    iput-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    #@209
    .line 799
    const/4 v4, 0x0

    #@20a
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@20c
    const/4 v4, 0x0

    #@20d
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@20f
    .line 800
    const/4 v4, 0x0

    #@210
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    #@212
    .line 801
    const/4 v4, 0x0

    #@213
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    #@215
    .line 802
    const/4 v4, 0x0

    #@216
    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@218
    .line 804
    :cond_f
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@21a
    if-nez v4, :cond_10

    #@21c
    const/4 v4, 0x0

    #@21d
    move-object/from16 v0, v31

    #@21f
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    #@222
    move-result v4

    #@223
    if-eqz v4, :cond_10

    #@225
    .line 819
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@227
    move-object/from16 v0, v31

    #@229
    if-eq v0, v4, :cond_24

    #@22b
    .line 820
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    #@22e
    move-result v4

    #@22f
    if-eqz v4, :cond_10

    #@231
    .line 821
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@233
    add-int/lit8 v4, v4, 0x1

    #@235
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@237
    .line 822
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@23a
    move-result v4

    #@23b
    if-eqz v4, :cond_10

    #@23d
    .line 823
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@23f
    add-int/lit8 v4, v4, 0x1

    #@241
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@243
    .line 831
    const/16 v30, 0x1

    #@245
    .line 839
    :cond_10
    :goto_a
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    #@247
    if-nez v4, :cond_11

    #@249
    .line 840
    const/4 v4, 0x1

    #@24a
    move-object/from16 v0, v31

    #@24c
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    #@24f
    move-result v4

    #@250
    .line 839
    if-eqz v4, :cond_11

    #@252
    .line 841
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@254
    move-object/from16 v0, v31

    #@256
    if-eq v0, v4, :cond_11

    #@258
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    #@25b
    move-result v4

    #@25c
    if-eqz v4, :cond_11

    #@25e
    .line 842
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    #@260
    add-int/lit8 v4, v4, 0x1

    #@262
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    #@264
    .line 843
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@267
    move-result v4

    #@268
    if-eqz v4, :cond_11

    #@26a
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    #@26d
    move-result v4

    #@26e
    if-eqz v4, :cond_25

    #@270
    .line 858
    :cond_11
    :goto_b
    if-eqz v23, :cond_12

    #@272
    if-eqz v27, :cond_12

    #@274
    move-object/from16 v0, p0

    #@276
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@278
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@27a
    move-object/from16 v0, v31

    #@27c
    if-ne v0, v4, :cond_12

    #@27e
    .line 859
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    #@281
    move-result v4

    #@282
    .line 858
    if-eqz v4, :cond_12

    #@284
    .line 860
    const/16 v19, 0x1

    #@286
    .line 863
    :cond_12
    move-object/from16 v0, p0

    #@288
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28a
    move-object/from16 v0, v31

    #@28c
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateResizingWindows(Lcom/android/server/wm/WindowState;)V

    #@28f
    .line 685
    add-int/lit8 v20, v20, -0x1

    #@291
    goto/16 :goto_4

    #@293
    .line 612
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v20    # "i":I
    .end local v23    # "isDefaultDisplay":Z
    .end local v25    # "obscuredChanged":Z
    .end local v26    # "repeats":I
    .end local v27    # "someoneLosingFocus":Z
    .end local v28    # "task":Lcom/android/server/wm/Task;
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    .end local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_13
    const/16 v23, 0x0

    #@295
    .restart local v23    # "isDefaultDisplay":Z
    goto/16 :goto_1

    #@297
    .line 631
    .restart local v26    # "repeats":I
    :cond_14
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@299
    and-int/lit8 v4, v4, 0x4

    #@29b
    if-eqz v4, :cond_15

    #@29d
    .line 632
    move-object/from16 v0, p0

    #@29f
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@2a1
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()Z

    #@2a4
    move-result v4

    #@2a5
    .line 631
    if-eqz v4, :cond_15

    #@2a7
    .line 633
    move-object/from16 v0, p0

    #@2a9
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2ab
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@2ad
    move-object/from16 v0, v33

    #@2af
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    #@2b2
    .line 634
    const/4 v4, 0x1

    #@2b3
    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@2b5
    .line 637
    :cond_15
    if-eqz v23, :cond_16

    #@2b7
    .line 638
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@2b9
    and-int/lit8 v4, v4, 0x2

    #@2bb
    if-eqz v4, :cond_16

    #@2bd
    .line 640
    move-object/from16 v0, p0

    #@2bf
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c1
    const/4 v6, 0x1

    #@2c2
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    #@2c5
    move-result v4

    #@2c6
    if-eqz v4, :cond_16

    #@2c8
    .line 641
    const/4 v4, 0x1

    #@2c9
    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@2cb
    .line 642
    move-object/from16 v0, p0

    #@2cd
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2cf
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@2d1
    const/16 v6, 0x12

    #@2d3
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@2d6
    .line 646
    :cond_16
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@2d8
    and-int/lit8 v4, v4, 0x1

    #@2da
    if-eqz v4, :cond_17

    #@2dc
    .line 647
    const/4 v4, 0x1

    #@2dd
    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@2df
    .line 651
    :cond_17
    const/4 v4, 0x4

    #@2e0
    move/from16 v0, v26

    #@2e2
    if-ge v0, v4, :cond_1a

    #@2e4
    .line 652
    const/4 v4, 0x1

    #@2e5
    move/from16 v0, v26

    #@2e7
    if-ne v0, v4, :cond_19

    #@2e9
    const/4 v4, 0x1

    #@2ea
    .line 653
    :goto_c
    const/4 v6, 0x0

    #@2eb
    .line 652
    move-object/from16 v0, p0

    #@2ed
    invoke-virtual {v0, v14, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    #@2f0
    .line 660
    :goto_d
    const/4 v4, 0x0

    #@2f1
    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@2f3
    .line 662
    if-eqz v23, :cond_1c

    #@2f5
    .line 663
    move-object/from16 v0, p0

    #@2f7
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f9
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@2fb
    move/from16 v0, v17

    #@2fd
    invoke-interface {v4, v0, v13}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    #@300
    .line 664
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    #@303
    move-result v4

    #@304
    add-int/lit8 v20, v4, -0x1

    #@306
    .restart local v20    # "i":I
    :goto_e
    if-ltz v20, :cond_1b

    #@308
    .line 665
    move-object/from16 v0, v33

    #@30a
    move/from16 v1, v20

    #@30c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@30f
    move-result-object v31

    #@310
    check-cast v31, Lcom/android/server/wm/WindowState;

    #@312
    .line 666
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v31

    #@314
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@316
    if-eqz v4, :cond_18

    #@318
    .line 667
    move-object/from16 v0, p0

    #@31a
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@31c
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@31e
    move-object/from16 v0, v31

    #@320
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@322
    .line 668
    move-object/from16 v0, v31

    #@324
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@326
    .line 667
    move-object/from16 v0, v31

    #@328
    invoke-interface {v4, v0, v6, v7}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@32b
    .line 664
    :cond_18
    add-int/lit8 v20, v20, -0x1

    #@32d
    goto :goto_e

    #@32e
    .line 652
    .end local v20    # "i":I
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    :cond_19
    const/4 v4, 0x0

    #@32f
    goto :goto_c

    #@330
    .line 655
    :cond_1a
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@332
    const-string/jumbo v6, "Layout repeat skipped after too many iterations"

    #@335
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@338
    goto :goto_d

    #@339
    .line 671
    .restart local v20    # "i":I
    :cond_1b
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@33b
    .line 672
    move-object/from16 v0, p0

    #@33d
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33f
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@341
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    #@344
    move-result v6

    #@345
    .line 671
    or-int/2addr v4, v6

    #@346
    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@348
    .line 676
    .end local v20    # "i":I
    :cond_1c
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@34a
    if-eqz v4, :cond_4

    #@34c
    goto/16 :goto_2

    #@34e
    .line 683
    :cond_1d
    const/16 v27, 0x1

    #@350
    .restart local v27    # "someoneLosingFocus":Z
    goto/16 :goto_3

    #@352
    .line 688
    .restart local v20    # "i":I
    .restart local v28    # "task":Lcom/android/server/wm/Task;
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    :cond_1e
    const/16 v25, 0x0

    #@354
    .restart local v25    # "obscuredChanged":Z
    goto/16 :goto_5

    #@356
    .line 718
    .restart local v24    # "left":I
    .restart local v29    # "top":I
    .restart local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1f
    const/4 v10, 0x1

    #@357
    .local v10, "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_6

    #@359
    .line 717
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_20
    const/4 v10, 0x0

    #@35a
    .restart local v10    # "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_6

    #@35c
    .line 721
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_21
    if-nez v10, :cond_7

    #@35e
    .line 722
    if-eqz v28, :cond_22

    #@360
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@363
    move-result-object v4

    #@364
    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@366
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->hasMovementAnimations()Z

    #@369
    move-result v4

    #@36a
    .line 720
    if-eqz v4, :cond_7

    #@36c
    .line 723
    :cond_22
    move-object/from16 v0, v31

    #@36e
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@370
    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@372
    if-nez v4, :cond_7

    #@374
    .line 724
    move-object/from16 v0, v32

    #@376
    move/from16 v1, v24

    #@378
    move/from16 v2, v29

    #@37a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setMoveAnimation(II)V

    #@37d
    goto/16 :goto_7

    #@37f
    .line 784
    .end local v24    # "left":I
    .end local v29    # "top":I
    .restart local v12    # "committed":Z
    :cond_23
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    #@382
    goto/16 :goto_9

    #@384
    .line 834
    .end local v12    # "committed":Z
    .restart local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_24
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@387
    move-result v4

    #@388
    if-eqz v4, :cond_10

    #@38a
    .line 835
    move-object/from16 v0, p0

    #@38c
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38e
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@390
    const/16 v6, 0x32

    #@392
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@395
    .line 836
    const/4 v4, 0x1

    #@396
    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@398
    goto/16 :goto_a

    #@39a
    .line 844
    :cond_25
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    #@39c
    add-int/lit8 v4, v4, 0x1

    #@39e
    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    #@3a0
    .line 852
    const/16 v30, 0x1

    #@3a2
    goto/16 :goto_b

    #@3a4
    .line 866
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v25    # "obscuredChanged":Z
    .end local v28    # "task":Lcom/android/server/wm/Task;
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    .end local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_26
    move-object/from16 v0, p0

    #@3a6
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3a8
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@3aa
    .line 867
    move-object/from16 v0, p0

    #@3ac
    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    #@3ae
    .line 868
    move-object/from16 v0, p0

    #@3b0
    iget v7, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    #@3b2
    .line 869
    move-object/from16 v0, p0

    #@3b4
    iget v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    #@3b6
    .line 870
    const/4 v9, 0x1

    #@3b7
    .line 866
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    #@3ba
    .line 872
    move-object/from16 v0, p0

    #@3bc
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3be
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    #@3c1
    move-result-object v4

    #@3c2
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    #@3c5
    .line 874
    if-eqz v30, :cond_27

    #@3c7
    .line 875
    move-object/from16 v0, p0

    #@3c9
    invoke-direct {v0, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V

    #@3cc
    .line 602
    :cond_27
    add-int/lit8 v16, v16, 0x1

    #@3ce
    goto/16 :goto_0

    #@3d0
    .line 879
    .end local v5    # "displayId":I
    .end local v13    # "dh":I
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "dw":I
    .end local v20    # "i":I
    .end local v21    # "innerDh":I
    .end local v22    # "innerDw":I
    .end local v23    # "isDefaultDisplay":Z
    .end local v26    # "repeats":I
    .end local v27    # "someoneLosingFocus":Z
    .end local v30    # "updateAllDrawn":Z
    .end local v33    # "windows":Lcom/android/server/wm/WindowList;
    :cond_28
    if-eqz v19, :cond_29

    #@3d2
    .line 880
    move-object/from16 v0, p0

    #@3d4
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3d6
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3d8
    const/4 v6, 0x3

    #@3d9
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@3dc
    .line 885
    :cond_29
    move-object/from16 v0, p0

    #@3de
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3e0
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@3e2
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    #@3e5
    .line 584
    return-void

    #@3e6
    .line 735
    .restart local v5    # "displayId":I
    .restart local v13    # "dh":I
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v17    # "dw":I
    .restart local v20    # "i":I
    .restart local v21    # "innerDh":I
    .restart local v22    # "innerDw":I
    .restart local v23    # "isDefaultDisplay":Z
    .restart local v24    # "left":I
    .restart local v25    # "obscuredChanged":Z
    .restart local v26    # "repeats":I
    .restart local v27    # "someoneLosingFocus":Z
    .restart local v28    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "top":I
    .restart local v30    # "updateAllDrawn":Z
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    .restart local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v33    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v18

    #@3e7
    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_8
.end method

.method private createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V
    .locals 22
    .param p1, "transit"    # I
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "openingLayer"    # I
    .param p4, "closingLayer"    # I

    #@0
    .prologue
    .line 1622
    if-nez p2, :cond_1

    #@2
    const/16 v18, 0x0

    #@4
    .line 1623
    .local v18, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_0
    if-eqz v18, :cond_0

    #@6
    move-object/from16 v0, v18

    #@8
    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@a
    if-nez v3, :cond_2

    #@c
    .line 1624
    :cond_0
    return-void

    #@d
    .line 1622
    .end local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1
    move-object/from16 v0, p2

    #@f
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@11
    move-object/from16 v18, v0

    #@13
    goto :goto_0

    #@14
    .line 1626
    .restart local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    move-object/from16 v0, p2

    #@16
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@18
    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    #@1a
    move/from16 v19, v0

    #@1c
    .line 1627
    .local v19, "taskId":I
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@22
    move/from16 v0, v19

    #@24
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    #@27
    move-result-object v20

    #@28
    .line 1628
    .local v20, "thumbnailHeader":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_3

    #@2a
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@2d
    move-result-object v3

    #@2e
    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@30
    if-ne v3, v6, :cond_4

    #@32
    .line 1630
    :cond_3
    return-void

    #@33
    .line 1634
    :cond_4
    new-instance v12, Landroid/graphics/Rect;

    #@35
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    #@38
    move-result v3

    #@39
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    #@3c
    move-result v6

    #@3d
    const/4 v7, 0x0

    #@3e
    const/4 v8, 0x0

    #@3f
    invoke-direct {v12, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@42
    .line 1637
    .local v12, "dirty":Landroid/graphics/Rect;
    :try_start_0
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@46
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@49
    move-result-object v14

    #@4a
    .line 1638
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    #@4d
    move-result-object v13

    #@4e
    .line 1639
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@51
    move-result-object v15

    #@52
    .line 1642
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/view/SurfaceControl;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@58
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    #@5a
    .line 1643
    const-string/jumbo v4, "thumbnail anim"

    #@5d
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    #@60
    move-result v5

    #@61
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    #@64
    move-result v6

    #@65
    .line 1644
    const/4 v7, -0x3

    #@66
    const/4 v8, 0x4

    #@67
    .line 1642
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@6a
    .line 1645
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/view/Display;->getLayerStack()I

    #@6d
    move-result v3

    #@6e
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@71
    .line 1651
    new-instance v16, Landroid/view/Surface;

    #@73
    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    #@76
    .line 1652
    .local v16, "drawSurface":Landroid/view/Surface;
    move-object/from16 v0, v16

    #@78
    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    #@7b
    .line 1653
    move-object/from16 v0, v16

    #@7d
    invoke-virtual {v0, v12}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@80
    move-result-object v11

    #@81
    .line 1654
    .local v11, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    #@82
    const/4 v6, 0x0

    #@83
    const/4 v7, 0x0

    #@84
    move-object/from16 v0, v20

    #@86
    invoke-virtual {v11, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@89
    .line 1655
    move-object/from16 v0, v16

    #@8b
    invoke-virtual {v0, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@8e
    .line 1656
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->release()V

    #@91
    .line 1660
    move-object/from16 v0, p0

    #@93
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@95
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@97
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionAspectScaled()Z

    #@9a
    move-result v3

    #@9b
    if-eqz v3, :cond_8

    #@9d
    .line 1664
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    #@a0
    move-result-object v21

    #@a1
    .line 1665
    .local v21, "win":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_5

    #@a3
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    #@a6
    move-result-object v4

    #@a7
    .line 1667
    .local v4, "appRect":Landroid/graphics/Rect;
    :goto_1
    if-eqz v21, :cond_6

    #@a9
    move-object/from16 v0, v21

    #@ab
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@ad
    .line 1672
    :goto_2
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b1
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@b3
    .line 1673
    move-object/from16 v0, p0

    #@b5
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b7
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@b9
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    #@bb
    .line 1674
    move-object/from16 v0, p0

    #@bd
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@bf
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@c1
    iget v9, v6, Landroid/content/res/Configuration;->orientation:I

    #@c3
    move-object/from16 v6, v20

    #@c5
    move/from16 v7, v19

    #@c7
    .line 1672
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;

    #@ca
    move-result-object v10

    #@cb
    .line 1675
    .local v10, "anim":Landroid/view/animation/Animation;
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    #@ce
    move-result v3

    #@cf
    move-object/from16 v0, v18

    #@d1
    iput v3, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@d3
    .line 1677
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d7
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@d9
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionScaleUp()Z

    #@dc
    move-result v3

    #@dd
    if-eqz v3, :cond_7

    #@df
    const/4 v3, 0x0

    #@e0
    .line 1676
    :goto_3
    move-object/from16 v0, v18

    #@e2
    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    #@e4
    .line 1682
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :goto_4
    const-wide/16 v6, 0x2710

    #@e6
    invoke-virtual {v10, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@e9
    .line 1683
    move-object/from16 v0, p0

    #@eb
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ed
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    #@f0
    move-result v3

    #@f1
    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@f4
    .line 1685
    move-object/from16 v0, v18

    #@f6
    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    #@f8
    .line 1686
    move/from16 v0, p3

    #@fa
    move-object/from16 v1, v18

    #@fc
    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    #@fe
    .line 1687
    move-object/from16 v0, v18

    #@100
    iput-object v10, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    #@102
    .line 1688
    move-object/from16 v0, p0

    #@104
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@106
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@108
    move-object/from16 v0, p0

    #@10a
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    #@10c
    move/from16 v0, v19

    #@10e
    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    #@111
    .line 1621
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :goto_5
    return-void

    #@112
    .line 1666
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v13    # "display":Landroid/view/Display;
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v16    # "drawSurface":Landroid/view/Surface;
    .restart local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    #@114
    iget v3, v15, Landroid/view/DisplayInfo;->appWidth:I

    #@116
    iget v6, v15, Landroid/view/DisplayInfo;->appHeight:I

    #@118
    const/4 v7, 0x0

    #@119
    const/4 v8, 0x0

    #@11a
    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@11d
    .restart local v4    # "appRect":Landroid/graphics/Rect;
    goto :goto_1

    #@11e
    .line 1667
    :cond_6
    const/4 v5, 0x0

    #@11f
    .local v5, "insets":Landroid/graphics/Rect;
    goto :goto_2

    #@120
    .line 1677
    .end local v5    # "insets":Landroid/graphics/Rect;
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    :cond_7
    const/4 v3, 0x1

    #@121
    goto :goto_3

    #@122
    .line 1679
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_8
    move-object/from16 v0, p0

    #@124
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@126
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@128
    .line 1680
    iget v6, v15, Landroid/view/DisplayInfo;->appWidth:I

    #@12a
    iget v7, v15, Landroid/view/DisplayInfo;->appHeight:I

    #@12c
    .line 1679
    move/from16 v0, p1

    #@12e
    move-object/from16 v1, v20

    #@130
    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@133
    move-result-object v10

    #@134
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    goto :goto_4

    #@135
    .line 1689
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :catch_0
    move-exception v17

    #@136
    .line 1690
    .local v17, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@138
    new-instance v6, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v7, "Can\'t allocate thumbnail/Canvas surface w="

    #@140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v6

    #@144
    .line 1691
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    #@147
    move-result v7

    #@148
    .line 1690
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v6

    #@14c
    .line 1691
    const-string/jumbo v7, " h="

    #@14f
    .line 1690
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v6

    #@153
    .line 1691
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    #@156
    move-result v7

    #@157
    .line 1690
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v6

    #@15b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v6

    #@15f
    move-object/from16 v0, v17

    #@161
    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@164
    .line 1692
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@167
    goto :goto_5
.end method

.method private handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I
    .locals 27
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    #@0
    .prologue
    .line 1073
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@6
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@9
    move-result v10

    #@a
    .line 1074
    .local v10, "appsCount":I
    move-object/from16 v0, p0

    #@c
    invoke-direct {v0, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(I)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 1075
    const/4 v3, 0x0

    #@13
    return v3

    #@14
    .line 1078
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@1a
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    #@1d
    move-result v4

    #@1e
    .line 1079
    .local v4, "transit":I
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 1080
    const/4 v4, -0x1

    #@27
    .line 1082
    :cond_1
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2b
    const/16 v25, 0x0

    #@2d
    move/from16 v0, v25

    #@2f
    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    #@31
    .line 1083
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@35
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    #@37
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@3a
    .line 1085
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3e
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@40
    const/16 v25, 0xd

    #@42
    move/from16 v0, v25

    #@44
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@47
    .line 1087
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    #@4e
    .line 1089
    const/4 v3, 0x0

    #@4f
    move-object/from16 v0, p0

    #@51
    iput-boolean v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    #@53
    .line 1093
    const/4 v9, 0x0

    #@54
    .line 1094
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, -0x1

    #@55
    .line 1095
    .local v11, "bestAnimLayer":I
    const/4 v14, 0x0

    #@56
    .line 1096
    .local v14, "fullscreenAnim":Z
    const/16 v22, 0x0

    #@58
    .line 1099
    .local v22, "voiceInteraction":Z
    move-object/from16 v0, p0

    #@5a
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@5c
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;

    #@5f
    move-result-object v7

    #@60
    .line 1101
    .local v7, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@64
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;

    #@67
    move-result-object v8

    #@68
    .line 1103
    .local v8, "upperWallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    #@69
    .line 1104
    .local v5, "openingAppHasWallpaper":Z
    const/4 v6, 0x0

    #@6a
    .line 1107
    .local v6, "closingAppHasWallpaper":Z
    if-nez v7, :cond_5

    #@6c
    .line 1108
    const/16 v21, 0x0

    #@6e
    .local v21, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    const/16 v16, 0x0

    #@70
    .line 1125
    .end local v21    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    move-object/from16 v0, p0

    #@72
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@74
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@76
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@79
    move-result v13

    #@7a
    .line 1126
    .local v13, "closingAppsCount":I
    move-object/from16 v0, p0

    #@7c
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7e
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@80
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@83
    move-result v3

    #@84
    add-int v10, v13, v3

    #@86
    .line 1127
    const/4 v15, 0x0

    #@87
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "voiceInteraction":Z
    .local v15, "i":I
    :goto_1
    if-ge v15, v10, :cond_9

    #@89
    .line 1129
    if-ge v15, v13, :cond_6

    #@8b
    .line 1130
    move-object/from16 v0, p0

    #@8d
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8f
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@91
    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@94
    move-result-object v24

    #@95
    check-cast v24, Lcom/android/server/wm/AppWindowToken;

    #@97
    .line 1131
    .local v24, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    #@99
    move-object/from16 v1, v16

    #@9b
    if-eq v0, v1, :cond_2

    #@9d
    move-object/from16 v0, v24

    #@9f
    move-object/from16 v1, v21

    #@a1
    if-ne v0, v1, :cond_3

    #@a3
    .line 1132
    :cond_2
    const/4 v6, 0x1

    #@a4
    .line 1141
    :cond_3
    :goto_2
    move-object/from16 v0, v24

    #@a6
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@a8
    or-int v22, v22, v3

    #@aa
    .line 1143
    .local v22, "voiceInteraction":Z
    move-object/from16 v0, v24

    #@ac
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    #@ae
    if-eqz v3, :cond_8

    #@b0
    .line 1144
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    #@b3
    move-result-object v23

    #@b4
    .line 1145
    .local v23, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v23, :cond_4

    #@b6
    .line 1146
    move-object/from16 v0, v23

    #@b8
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@ba
    .line 1147
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    #@bc
    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@be
    .line 1148
    const/4 v14, 0x1

    #@bf
    .line 1127
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "ws":Lcom/android/server/wm/WindowState;
    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    #@c1
    goto :goto_1

    #@c2
    .line 1110
    .end local v13    # "closingAppsCount":I
    .end local v15    # "i":I
    .end local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v22, "voiceInteraction":Z
    :cond_5
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c4
    move-object/from16 v16, v0

    #@c6
    .line 1111
    .local v16, "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c8
    move-object/from16 v21, v0

    #@ca
    .local v21, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    #@cb
    .line 1135
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v21    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v22    # "voiceInteraction":Z
    .restart local v13    # "closingAppsCount":I
    .restart local v15    # "i":I
    :cond_6
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@cf
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@d1
    sub-int v25, v15, v13

    #@d3
    move/from16 v0, v25

    #@d5
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@d8
    move-result-object v24

    #@d9
    check-cast v24, Lcom/android/server/wm/AppWindowToken;

    #@db
    .line 1136
    .restart local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v24

    #@dd
    move-object/from16 v1, v16

    #@df
    if-eq v0, v1, :cond_7

    #@e1
    move-object/from16 v0, v24

    #@e3
    move-object/from16 v1, v21

    #@e5
    if-ne v0, v1, :cond_3

    #@e7
    .line 1137
    :cond_7
    const/4 v5, 0x1

    #@e8
    goto :goto_2

    #@e9
    .line 1150
    .local v22, "voiceInteraction":Z
    :cond_8
    if-nez v14, :cond_4

    #@eb
    .line 1151
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    #@ee
    move-result-object v23

    #@ef
    .line 1152
    .restart local v23    # "ws":Lcom/android/server/wm/WindowState;
    if-eqz v23, :cond_4

    #@f1
    .line 1153
    move-object/from16 v0, v23

    #@f3
    iget v3, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@f5
    if-le v3, v11, :cond_4

    #@f7
    .line 1154
    move-object/from16 v0, v23

    #@f9
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@fb
    .line 1155
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    #@fd
    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@ff
    goto :goto_3

    #@100
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "voiceInteraction":Z
    .end local v23    # "ws":Lcom/android/server/wm/WindowState;
    .end local v24    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    move-object/from16 v3, p0

    #@102
    .line 1161
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    #@105
    move-result v4

    #@106
    .line 1168
    move-object/from16 v0, p0

    #@108
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10a
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@10c
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    #@10f
    move-result v3

    #@110
    if-nez v3, :cond_a

    #@112
    .line 1171
    const/4 v9, 0x0

    #@113
    .line 1174
    :cond_a
    move-object/from16 v0, p0

    #@115
    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    #@118
    .line 1176
    move-object/from16 v0, p0

    #@11a
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@11c
    const/16 v25, 0x0

    #@11e
    move-object/from16 v0, v25

    #@120
    iput-object v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    #@122
    .line 1177
    move-object/from16 v0, p0

    #@124
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@126
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v22

    #@12a
    invoke-direct {v0, v4, v9, v1, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    #@12d
    .line 1178
    move-object/from16 v0, p0

    #@12f
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@131
    iget-object v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    #@133
    move-object/from16 v18, v0

    #@135
    .line 1179
    .local v18, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    #@137
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@139
    iget v0, v3, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    #@13b
    move/from16 v19, v0

    #@13d
    .line 1181
    .local v19, "topClosingLayer":I
    move-object/from16 v0, p0

    #@13f
    move/from16 v1, v22

    #@141
    move/from16 v2, v19

    #@143
    invoke-direct {v0, v4, v9, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;

    #@146
    move-result-object v20

    #@147
    .line 1184
    .local v20, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    if-nez v20, :cond_c

    #@149
    const/16 v17, 0x0

    #@14b
    .line 1186
    :goto_4
    if-nez v18, :cond_d

    #@14d
    const/4 v12, 0x0

    #@14e
    .line 1189
    :goto_5
    move-object/from16 v0, p0

    #@150
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@152
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@154
    .line 1190
    move-object/from16 v0, p0

    #@156
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@158
    move-object/from16 v25, v0

    #@15a
    move-object/from16 v0, v25

    #@15c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@15e
    move-object/from16 v25, v0

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@164
    move-object/from16 v26, v0

    #@166
    move-object/from16 v0, v26

    #@168
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@16a
    move-object/from16 v26, v0

    #@16c
    .line 1189
    move-object/from16 v0, v17

    #@16e
    move-object/from16 v1, v25

    #@170
    move-object/from16 v2, v26

    #@172
    invoke-virtual {v3, v0, v12, v1, v2}, Lcom/android/server/wm/AppTransition;->goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    #@175
    .line 1191
    move-object/from16 v0, p0

    #@177
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@179
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@17b
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    #@17e
    .line 1192
    move-object/from16 v0, p0

    #@180
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@182
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@184
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->clear()V

    #@187
    .line 1194
    move-object/from16 v0, p0

    #@189
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18b
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@18d
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    #@190
    .line 1195
    move-object/from16 v0, p0

    #@192
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@194
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@196
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    #@199
    .line 1199
    move-object/from16 v0, p0

    #@19b
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@1a0
    move-result-object v3

    #@1a1
    const/16 v25, 0x1

    #@1a3
    move/from16 v0, v25

    #@1a5
    iput-boolean v0, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1a7
    .line 1202
    move-object/from16 v0, p0

    #@1a9
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1ab
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    #@1ae
    move-result-object v3

    #@1af
    move-object/from16 v0, p1

    #@1b1
    if-ne v0, v3, :cond_b

    #@1b3
    .line 1203
    move-object/from16 v0, p0

    #@1b5
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b7
    const/16 v25, 0x1

    #@1b9
    move/from16 v0, v25

    #@1bb
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    #@1be
    move-result v3

    #@1bf
    if-eqz v3, :cond_e

    #@1c1
    .line 1206
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    #@1c3
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c5
    const/16 v25, 0x2

    #@1c7
    .line 1207
    const/16 v26, 0x1

    #@1c9
    .line 1206
    move/from16 v0, v25

    #@1cb
    move/from16 v1, v26

    #@1cd
    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    #@1d0
    .line 1208
    move-object/from16 v0, p0

    #@1d2
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d4
    const/16 v25, 0x0

    #@1d6
    move/from16 v0, v25

    #@1d8
    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1da
    .line 1209
    move-object/from16 v0, p0

    #@1dc
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1de
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    #@1e1
    .line 1210
    const/4 v3, 0x3

    #@1e2
    return v3

    #@1e3
    .line 1185
    :cond_c
    move-object/from16 v0, v20

    #@1e5
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1e7
    move-object/from16 v17, v0

    #@1e9
    .local v17, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_4

    #@1eb
    .line 1187
    .end local v17    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_d
    move-object/from16 v0, v18

    #@1ed
    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1ef
    .local v12, "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_5

    #@1f1
    .line 1204
    .end local v12    # "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_e
    move-object/from16 v0, p0

    #@1f3
    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f5
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@1f7
    move-object/from16 v0, p1

    #@1f9
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    #@1fc
    goto :goto_6
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 14
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    #@0
    .prologue
    .line 1299
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@7
    move-result v9

    #@8
    .line 1300
    .local v9, "appsCount":I
    const/4 v10, 0x0

    #@9
    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_7

    #@b
    .line 1301
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@f
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    #@15
    .line 1308
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->markSavedSurfaceExiting()V

    #@18
    .line 1310
    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1a
    .line 1312
    .local v8, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@1d
    .line 1313
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    #@20
    .line 1314
    const/4 v1, 0x0

    #@21
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@23
    .line 1315
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@25
    const/4 v4, 0x0

    #@26
    const/4 v6, 0x0

    #@27
    move-object/from16 v3, p2

    #@29
    move v5, p1

    #@2a
    move/from16 v7, p3

    #@2c
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    #@2f
    .line 1317
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@32
    .line 1321
    const/4 v1, 0x1

    #@33
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@35
    .line 1322
    const/4 v1, 0x0

    #@36
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    #@38
    .line 1325
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@3a
    if-eqz v1, :cond_0

    #@3c
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@3e
    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@40
    if-eqz v1, :cond_2

    #@42
    .line 1328
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@44
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@46
    iget-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@48
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    #@4b
    move-result v4

    #@4c
    or-int/2addr v3, v4

    #@4d
    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@4f
    .line 1330
    if-eqz p2, :cond_5

    #@51
    .line 1331
    const/4 v12, -0x1

    #@52
    .line 1332
    .local v12, "layer":I
    const/4 v11, 0x0

    #@53
    .local v11, "j":I
    :goto_2
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@55
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    #@58
    move-result v1

    #@59
    if-ge v11, v1, :cond_3

    #@5b
    .line 1333
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@5d
    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v13

    #@61
    check-cast v13, Lcom/android/server/wm/WindowState;

    #@63
    .line 1334
    .local v13, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@65
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@67
    if-le v1, v12, :cond_1

    #@69
    .line 1335
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6b
    iget v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@6d
    .line 1332
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@6f
    goto :goto_2

    #@70
    .line 1326
    .end local v11    # "j":I
    .end local v12    # "layer":I
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@72
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    #@75
    goto :goto_1

    #@76
    .line 1338
    .restart local v11    # "j":I
    .restart local v12    # "layer":I
    :cond_3
    move-object/from16 v0, p4

    #@78
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    #@7a
    if-eqz v1, :cond_4

    #@7c
    move-object/from16 v0, p4

    #@7e
    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    #@80
    if-le v12, v1, :cond_5

    #@82
    .line 1339
    :cond_4
    move-object/from16 v0, p4

    #@84
    iput-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    #@86
    .line 1340
    move-object/from16 v0, p4

    #@88
    iput v12, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    #@8a
    .line 1343
    .end local v11    # "j":I
    .end local v12    # "layer":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8c
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@8e
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    #@91
    move-result v1

    #@92
    if-eqz v1, :cond_6

    #@94
    .line 1344
    move-object/from16 v0, p4

    #@96
    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    #@98
    const/4 v3, 0x0

    #@99
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    #@9c
    .line 1300
    :cond_6
    add-int/lit8 v10, v10, 0x1

    #@9e
    goto/16 :goto_0

    #@a0
    .line 1297
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v8    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_7
    return-void
.end method

.method private handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V
    .locals 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "dispInfo"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 1464
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6
    .line 1465
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    .line 1466
    .local v0, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    #@b
    move-result v2

    #@c
    .line 1467
    .local v2, "canBeSeen":Z
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@e
    .line 1469
    .local v4, "privateflags":I
    if-eqz v2, :cond_1

    #@10
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->isObscuringFullscreen(Landroid/view/DisplayInfo;)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 1473
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@18
    if-nez v6, :cond_0

    #@1a
    .line 1474
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    #@1c
    .line 1477
    :cond_0
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@1e
    .line 1480
    :cond_1
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@20
    if-eqz v6, :cond_d

    #@22
    .line 1481
    and-int/lit16 v6, v0, 0x80

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 1482
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@28
    iput-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    #@2a
    .line 1483
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    #@2c
    .line 1489
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    #@2e
    if-nez v6, :cond_3

    #@30
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@32
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@34
    cmpl-float v6, v6, v8

    #@36
    if-ltz v6, :cond_3

    #@38
    .line 1490
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@3a
    cmpg-float v6, v6, v8

    #@3c
    if-gez v6, :cond_3

    #@3e
    .line 1491
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@40
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@42
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@44
    .line 1493
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    #@46
    if-nez v6, :cond_4

    #@48
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4a
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@4c
    cmpl-float v6, v6, v8

    #@4e
    if-ltz v6, :cond_4

    #@50
    .line 1494
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@52
    cmpg-float v6, v6, v8

    #@54
    if-gez v6, :cond_4

    #@56
    .line 1495
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@58
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@5a
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@5c
    .line 1497
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    #@5e
    if-nez v6, :cond_5

    #@60
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@62
    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@64
    cmp-long v6, v6, v10

    #@66
    if-ltz v6, :cond_5

    #@68
    .line 1498
    iget-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    #@6a
    cmp-long v6, v6, v10

    #@6c
    if-gez v6, :cond_5

    #@6e
    .line 1499
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@70
    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@72
    iput-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    #@74
    .line 1502
    :cond_5
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@76
    .line 1503
    .local v5, "type":I
    if-eqz v2, :cond_7

    #@78
    .line 1504
    const/16 v6, 0x7d8

    #@7a
    if-eq v5, v6, :cond_6

    #@7c
    .line 1505
    const/16 v6, 0x7da

    #@7e
    if-ne v5, v6, :cond_e

    #@80
    .line 1507
    :cond_6
    :goto_0
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    #@82
    .line 1510
    :cond_7
    if-eqz v2, :cond_d

    #@84
    .line 1513
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@87
    move-result-object v3

    #@88
    .line 1514
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_f

    #@8a
    iget-boolean v6, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@8c
    if-eqz v6, :cond_f

    #@8e
    .line 1519
    const/16 v6, 0x7e7

    #@90
    if-eq v5, v6, :cond_8

    #@92
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@94
    and-int/lit16 v6, v6, 0x400

    #@96
    if-eqz v6, :cond_9

    #@98
    .line 1520
    :cond_8
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    #@9a
    .line 1522
    :cond_9
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    #@9c
    .line 1529
    :cond_a
    :goto_1
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    #@9e
    cmpl-float v6, v6, v8

    #@a0
    if-nez v6, :cond_b

    #@a2
    .line 1530
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a4
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@a6
    cmpl-float v6, v6, v8

    #@a8
    if-eqz v6, :cond_b

    #@aa
    .line 1531
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@ac
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@ae
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    #@b0
    .line 1533
    :cond_b
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    #@b2
    if-nez v6, :cond_c

    #@b4
    .line 1534
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b6
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@b8
    if-eqz v6, :cond_c

    #@ba
    .line 1535
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@bc
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@be
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    #@c0
    .line 1537
    :cond_c
    const/high16 v6, 0x40000

    #@c2
    and-int/2addr v6, v4

    #@c3
    if-eqz v6, :cond_d

    #@c5
    .line 1538
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    #@c7
    .line 1463
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "type":I
    :cond_d
    return-void

    #@c8
    .line 1506
    .restart local v5    # "type":I
    :cond_e
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@ca
    and-int/lit16 v6, v6, 0x400

    #@cc
    if-eqz v6, :cond_7

    #@ce
    goto :goto_0

    #@cf
    .line 1523
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_f
    if-eqz v3, :cond_a

    #@d1
    .line 1524
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    #@d3
    if-eqz v6, :cond_10

    #@d5
    .line 1525
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    #@d7
    if-eqz v6, :cond_a

    #@d9
    const/16 v6, 0x7d9

    #@db
    if-ne v5, v6, :cond_a

    #@dd
    .line 1527
    :cond_10
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    #@df
    goto :goto_1
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;
    .locals 20
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "topClosingLayer"    # I

    #@0
    .prologue
    .line 1215
    const/16 v16, 0x0

    #@2
    .line 1216
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    #@4
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@8
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@b
    move-result v12

    #@c
    .line 1217
    .local v12, "appsCount":I
    const/4 v13, 0x0

    #@d
    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_a

    #@f
    .line 1218
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    #@1b
    .line 1219
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v11, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1d
    .line 1222
    .local v11, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    #@1f
    if-nez v4, :cond_0

    #@21
    .line 1223
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@24
    .line 1224
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    #@27
    .line 1226
    :cond_0
    const/4 v4, 0x0

    #@28
    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    #@2a
    .line 1228
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    .line 1229
    const/4 v7, 0x1

    #@2f
    const/4 v9, 0x0

    #@30
    move-object/from16 v6, p2

    #@32
    move/from16 v8, p1

    #@34
    move/from16 v10, p3

    #@36
    .line 1228
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_1

    #@3c
    .line 1233
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@40
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    #@42
    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@44
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    .line 1235
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@4a
    .line 1236
    const/4 v4, 0x0

    #@4b
    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    #@4d
    .line 1238
    iget-object v4, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@52
    .line 1239
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@54
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@57
    move-result v19

    #@58
    .line 1240
    .local v19, "windowsCount":I
    const/4 v14, 0x0

    #@59
    .local v14, "j":I
    :goto_1
    move/from16 v0, v19

    #@5b
    if-ge v14, v0, :cond_2

    #@5d
    .line 1241
    iget-object v6, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@5f
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@61
    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@67
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@69
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c
    .line 1240
    add-int/lit8 v14, v14, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 1245
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@72
    .line 1247
    :try_start_0
    move-object/from16 v0, p0

    #@74
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@76
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@78
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@7b
    move-result v6

    #@7c
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .line 1249
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@82
    .line 1253
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@86
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@88
    iget-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@8a
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    #@8d
    move-result v7

    #@8e
    or-int/2addr v6, v7

    #@8f
    iput-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@91
    .line 1255
    const/16 v17, 0x0

    #@93
    .line 1256
    .local v17, "topOpeningLayer":I
    if-eqz p2, :cond_8

    #@95
    .line 1257
    const/4 v15, -0x1

    #@96
    .line 1258
    .local v15, "layer":I
    const/4 v14, 0x0

    #@97
    :goto_2
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@99
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@9c
    move-result v4

    #@9d
    if-ge v14, v4, :cond_6

    #@9f
    .line 1259
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@a1
    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v18

    #@a5
    check-cast v18, Lcom/android/server/wm/WindowState;

    #@a7
    .line 1269
    .local v18, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    #@a9
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@ab
    if-nez v4, :cond_3

    #@ad
    move-object/from16 v0, v18

    #@af
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@b1
    if-eqz v4, :cond_5

    #@b3
    .line 1280
    :cond_3
    :goto_3
    move-object/from16 v0, v18

    #@b5
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@b7
    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@b9
    if-le v4, v15, :cond_4

    #@bb
    .line 1281
    move-object/from16 v0, v18

    #@bd
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@bf
    iget v15, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@c1
    .line 1258
    :cond_4
    add-int/lit8 v14, v14, 0x1

    #@c3
    goto :goto_2

    #@c4
    .line 1248
    .end local v15    # "layer":I
    .end local v17    # "topOpeningLayer":I
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    #@c5
    .line 1249
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@c8
    .line 1248
    throw v4

    #@c9
    .line 1270
    .restart local v15    # "layer":I
    .restart local v17    # "topOpeningLayer":I
    .restart local v18    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    const/4 v4, 0x0

    #@ca
    move-object/from16 v0, v18

    #@cc
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@ce
    .line 1278
    move-object/from16 v0, v18

    #@d0
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@d2
    const/4 v6, 0x0

    #@d3
    iput-boolean v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@d5
    goto :goto_3

    #@d6
    .line 1284
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    if-eqz v16, :cond_7

    #@d8
    if-lez v15, :cond_8

    #@da
    .line 1285
    :cond_7
    move-object/from16 v16, v5

    #@dc
    .line 1286
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move/from16 v17, v15

    #@de
    .line 1289
    .end local v15    # "layer":I
    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move-object/from16 v0, p0

    #@e0
    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e2
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@e4
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    #@e7
    move-result v4

    #@e8
    if-eqz v4, :cond_9

    #@ea
    .line 1290
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, p1

    #@ee
    move/from16 v2, v17

    #@f0
    move/from16 v3, p4

    #@f2
    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    #@f5
    .line 1217
    :cond_9
    add-int/lit8 v13, v13, 0x1

    #@f7
    goto/16 :goto_0

    #@f9
    .line 1293
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v11    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v14    # "j":I
    .end local v17    # "topOpeningLayer":I
    .end local v19    # "windowsCount":I
    :cond_a
    return-object v16
.end method

.method private maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 6
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z
    .param p4, "lowerWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p5, "upperWallpaperTarget"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 1406
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    #@5
    move-result-object v3

    #@6
    .line 1408
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@8
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1409
    const/4 v1, 0x0

    #@f
    .line 1410
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11
    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@13
    .line 1411
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@17
    .line 1419
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    const/4 v5, 0x0

    #@1a
    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    #@1c
    .line 1420
    if-eqz p3, :cond_1

    #@1e
    if-eqz p2, :cond_1

    #@20
    .line 1423
    packed-switch p1, :pswitch_data_0

    #@23
    .line 1456
    :goto_1
    return p1

    #@24
    .line 1409
    .end local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_0
    move-object v1, v3

    #@25
    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    goto :goto_0

    #@26
    .line 1427
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .restart local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :pswitch_0
    const/16 p1, 0xe

    #@28
    .line 1428
    goto :goto_1

    #@29
    .line 1432
    :pswitch_1
    const/16 p1, 0xf

    #@2b
    .line 1433
    goto :goto_1

    #@2c
    .line 1437
    :cond_1
    if-eqz v1, :cond_2

    #@2e
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@30
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_3

    #@38
    .line 1445
    :cond_2
    if-eqz v3, :cond_4

    #@3a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_4

    #@40
    .line 1446
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@42
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v4

    #@46
    .line 1445
    if-eqz v4, :cond_4

    #@48
    .line 1449
    const/16 p1, 0xd

    #@4a
    goto :goto_1

    #@4b
    .line 1438
    :cond_3
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4d
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    if-nez v4, :cond_2

    #@53
    .line 1439
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@55
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    .line 1437
    if-eqz v4, :cond_2

    #@5b
    .line 1441
    const/16 p1, 0xc

    #@5d
    goto :goto_1

    #@5e
    .line 1454
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@60
    const/4 v5, 0x1

    #@61
    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    #@63
    goto :goto_1

    #@64
    .line 1423
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSurfacePlacementInner(Z)V
    .locals 31
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 272
    const/16 v23, 0x0

    #@2
    .line 274
    .local v23, "updateInputWindowsNeeded":Z
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    move-object/from16 v27, v0

    #@8
    move-object/from16 v0, v27

    #@a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@c
    move/from16 v27, v0

    #@e
    if-eqz v27, :cond_0

    #@10
    .line 275
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    move-object/from16 v27, v0

    #@16
    const/16 v28, 0x0

    #@18
    move/from16 v0, v28

    #@1a
    move-object/from16 v1, v27

    #@1c
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1e
    .line 276
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22
    move-object/from16 v27, v0

    #@24
    .line 277
    const/16 v28, 0x3

    #@26
    const/16 v29, 0x0

    #@28
    .line 276
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    #@2b
    move-result v23

    #@2c
    .line 281
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@30
    move-object/from16 v27, v0

    #@32
    move-object/from16 v0, v27

    #@34
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@36
    move-object/from16 v27, v0

    #@38
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@3b
    move-result v18

    #@3c
    .line 282
    .local v18, "numDisplays":I
    const/4 v13, 0x0

    #@3d
    .local v13, "displayNdx":I
    :goto_0
    move/from16 v0, v18

    #@3f
    if-ge v13, v0, :cond_2

    #@41
    .line 283
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    move-object/from16 v27, v0

    #@47
    move-object/from16 v0, v27

    #@49
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@4b
    move-object/from16 v27, v0

    #@4d
    move-object/from16 v0, v27

    #@4f
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@52
    move-result-object v10

    #@53
    check-cast v10, Lcom/android/server/wm/DisplayContent;

    #@55
    .line 284
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@57
    move-object/from16 v27, v0

    #@59
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@5c
    move-result v27

    #@5d
    add-int/lit8 v17, v27, -0x1

    #@5f
    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_1

    #@61
    .line 285
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@63
    move-object/from16 v27, v0

    #@65
    move-object/from16 v0, v27

    #@67
    move/from16 v1, v17

    #@69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v27

    #@6d
    check-cast v27, Lcom/android/server/wm/WindowToken;

    #@6f
    const/16 v28, 0x0

    #@71
    move/from16 v0, v28

    #@73
    move-object/from16 v1, v27

    #@75
    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@77
    .line 284
    add-int/lit8 v17, v17, -0x1

    #@79
    goto :goto_1

    #@7a
    .line 282
    :cond_1
    add-int/lit8 v13, v13, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 289
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@81
    move-object/from16 v27, v0

    #@83
    move-object/from16 v0, v27

    #@85
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@87
    move-object/from16 v27, v0

    #@89
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@8c
    move-result v27

    #@8d
    add-int/lit8 v19, v27, -0x1

    #@8f
    .local v19, "stackNdx":I
    :goto_2
    if-ltz v19, :cond_4

    #@91
    .line 292
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@95
    move-object/from16 v27, v0

    #@97
    move-object/from16 v0, v27

    #@99
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@9b
    move-object/from16 v27, v0

    #@9d
    move-object/from16 v0, v27

    #@9f
    move/from16 v1, v19

    #@a1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@a4
    move-result-object v27

    #@a5
    check-cast v27, Lcom/android/server/wm/TaskStack;

    #@a7
    .line 291
    move-object/from16 v0, v27

    #@a9
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@ab
    .line 293
    .local v15, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    #@ae
    move-result v27

    #@af
    add-int/lit8 v22, v27, -0x1

    #@b1
    .local v22, "tokenNdx":I
    :goto_3
    if-ltz v22, :cond_3

    #@b3
    .line 294
    move/from16 v0, v22

    #@b5
    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@b8
    move-result-object v27

    #@b9
    check-cast v27, Lcom/android/server/wm/AppWindowToken;

    #@bb
    const/16 v28, 0x0

    #@bd
    move/from16 v0, v28

    #@bf
    move-object/from16 v1, v27

    #@c1
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    #@c3
    .line 293
    add-int/lit8 v22, v22, -0x1

    #@c5
    goto :goto_3

    #@c6
    .line 289
    :cond_3
    add-int/lit8 v19, v19, -0x1

    #@c8
    goto :goto_2

    #@c9
    .line 298
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v22    # "tokenNdx":I
    :cond_4
    const/16 v27, 0x0

    #@cb
    move-object/from16 v0, v27

    #@cd
    move-object/from16 v1, p0

    #@cf
    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    #@d1
    .line 299
    const/16 v27, 0x0

    #@d3
    move-object/from16 v0, v27

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    #@d9
    .line 300
    const/16 v27, 0x0

    #@db
    move-object/from16 v0, v27

    #@dd
    move-object/from16 v1, p0

    #@df
    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    #@e1
    .line 301
    const/high16 v27, -0x40800000    # -1.0f

    #@e3
    move/from16 v0, v27

    #@e5
    move-object/from16 v1, p0

    #@e7
    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@e9
    .line 302
    const/high16 v27, -0x40800000    # -1.0f

    #@eb
    move/from16 v0, v27

    #@ed
    move-object/from16 v1, p0

    #@ef
    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@f1
    .line 303
    const-wide/16 v28, -0x1

    #@f3
    move-wide/from16 v0, v28

    #@f5
    move-object/from16 v2, p0

    #@f7
    iput-wide v0, v2, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    #@f9
    .line 304
    const/16 v27, 0x0

    #@fb
    move/from16 v0, v27

    #@fd
    move-object/from16 v1, p0

    #@ff
    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    #@101
    .line 305
    const/16 v27, 0x0

    #@103
    move/from16 v0, v27

    #@105
    move-object/from16 v1, p0

    #@107
    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    #@109
    .line 306
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10d
    move-object/from16 v27, v0

    #@10f
    move-object/from16 v0, v27

    #@111
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    #@113
    move/from16 v28, v0

    #@115
    add-int/lit8 v28, v28, 0x1

    #@117
    move/from16 v0, v28

    #@119
    move-object/from16 v1, v27

    #@11b
    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    #@11d
    .line 308
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@121
    move-object/from16 v27, v0

    #@123
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@126
    move-result-object v6

    #@127
    .line 309
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@12a
    move-result-object v8

    #@12b
    .line 310
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    #@12d
    .line 311
    .local v7, "defaultDw":I
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    #@12f
    .line 315
    .local v5, "defaultDh":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@132
    .line 317
    :try_start_0
    move-object/from16 v0, p0

    #@134
    move/from16 v1, p1

    #@136
    move/from16 v2, v18

    #@138
    invoke-direct {v0, v1, v2, v7, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->applySurfaceChangesTransaction(ZIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13b
    .line 321
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@13e
    .line 326
    :goto_4
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@141
    move-result-object v9

    #@142
    .line 331
    .local v9, "defaultWindows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@146
    move-object/from16 v27, v0

    #@148
    move-object/from16 v0, v27

    #@14a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@14c
    move-object/from16 v27, v0

    #@14e
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    #@151
    move-result v27

    #@152
    if-eqz v27, :cond_5

    #@154
    .line 332
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@156
    move/from16 v27, v0

    #@158
    move-object/from16 v0, p0

    #@15a
    invoke-direct {v0, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I

    #@15d
    move-result v28

    #@15e
    or-int v27, v27, v28

    #@160
    move/from16 v0, v27

    #@162
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@164
    .line 338
    :cond_5
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@168
    move-object/from16 v27, v0

    #@16a
    move-object/from16 v0, v27

    #@16c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@16e
    move-object/from16 v27, v0

    #@170
    move-object/from16 v0, v27

    #@172
    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@174
    move/from16 v27, v0

    #@176
    if-nez v27, :cond_6

    #@178
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17c
    move-object/from16 v27, v0

    #@17e
    move-object/from16 v0, v27

    #@180
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@182
    move-object/from16 v27, v0

    #@184
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    #@187
    move-result v27

    #@188
    if-eqz v27, :cond_6

    #@18a
    .line 345
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@18c
    move/from16 v27, v0

    #@18e
    .line 346
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@192
    move-object/from16 v28, v0

    #@194
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    #@197
    move-result v28

    #@198
    .line 345
    or-int v27, v27, v28

    #@19a
    move/from16 v0, v27

    #@19c
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@19e
    .line 352
    :cond_6
    move-object/from16 v0, p0

    #@1a0
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    #@1a2
    move/from16 v27, v0

    #@1a4
    if-eqz v27, :cond_7

    #@1a6
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1a8
    move/from16 v27, v0

    #@1aa
    if-nez v27, :cond_7

    #@1ac
    .line 353
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b0
    move-object/from16 v27, v0

    #@1b2
    move-object/from16 v0, v27

    #@1b4
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@1b6
    move-object/from16 v27, v0

    #@1b8
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    #@1bb
    move-result v27

    #@1bc
    if-eqz v27, :cond_b

    #@1be
    .line 365
    :cond_7
    :goto_5
    const/16 v27, 0x0

    #@1c0
    move/from16 v0, v27

    #@1c2
    move-object/from16 v1, p0

    #@1c4
    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    #@1c6
    .line 367
    move-object/from16 v0, p0

    #@1c8
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    #@1ca
    move/from16 v27, v0

    #@1cc
    if-eqz v27, :cond_8

    #@1ce
    .line 370
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1d0
    move/from16 v27, v0

    #@1d2
    or-int/lit8 v27, v27, 0x4

    #@1d4
    move/from16 v0, v27

    #@1d6
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@1d8
    .line 375
    :cond_8
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1dc
    move-object/from16 v27, v0

    #@1de
    move-object/from16 v0, v27

    #@1e0
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1e2
    move/from16 v27, v0

    #@1e4
    if-eqz v27, :cond_9

    #@1e6
    .line 376
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1ea
    move-object/from16 v27, v0

    #@1ec
    const/16 v28, 0x0

    #@1ee
    move/from16 v0, v28

    #@1f0
    move-object/from16 v1, v27

    #@1f2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1f4
    .line 377
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f8
    move-object/from16 v27, v0

    #@1fa
    const/16 v28, 0x2

    #@1fc
    .line 378
    const/16 v29, 0x0

    #@1fe
    .line 377
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    #@201
    move-result v27

    #@202
    if-eqz v27, :cond_9

    #@204
    .line 379
    const/16 v23, 0x1

    #@206
    .line 380
    .restart local v23    # "updateInputWindowsNeeded":Z
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@208
    move/from16 v27, v0

    #@20a
    or-int/lit8 v27, v27, 0x8

    #@20c
    move/from16 v0, v27

    #@20e
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@210
    .line 384
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_9
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@214
    move-object/from16 v27, v0

    #@216
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    #@219
    move-result v27

    #@21a
    if-eqz v27, :cond_a

    #@21c
    .line 385
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@21e
    move/from16 v27, v0

    #@220
    or-int/lit8 v27, v27, 0x1

    #@222
    move/from16 v0, v27

    #@224
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@226
    .line 390
    :cond_a
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@22a
    move-object/from16 v27, v0

    #@22c
    move-object/from16 v0, v27

    #@22e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@230
    move-object/from16 v27, v0

    #@232
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@235
    move-result v27

    #@236
    add-int/lit8 v17, v27, -0x1

    #@238
    .restart local v17    # "i":I
    :goto_6
    if-ltz v17, :cond_e

    #@23a
    .line 391
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23e
    move-object/from16 v27, v0

    #@240
    move-object/from16 v0, v27

    #@242
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@244
    move-object/from16 v27, v0

    #@246
    move-object/from16 v0, v27

    #@248
    move/from16 v1, v17

    #@24a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24d
    move-result-object v26

    #@24e
    check-cast v26, Lcom/android/server/wm/WindowState;

    #@250
    .line 392
    .local v26, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    #@252
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@254
    move/from16 v27, v0

    #@256
    if-eqz v27, :cond_c

    #@258
    .line 390
    :goto_7
    add-int/lit8 v17, v17, -0x1

    #@25a
    goto :goto_6

    #@25b
    .line 318
    .end local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    .end local v17    # "i":I
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v14

    #@25c
    .line 319
    .local v14, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@25e
    const-string/jumbo v28, "Unhandled exception in Window Manager"

    #@261
    move-object/from16 v0, v27

    #@263
    move-object/from16 v1, v28

    #@265
    invoke-static {v0, v1, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@268
    .line 321
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@26b
    goto/16 :goto_4

    #@26d
    .line 320
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v27

    #@26e
    .line 321
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@271
    .line 320
    throw v27

    #@272
    .line 360
    .restart local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    :cond_b
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@274
    move/from16 v27, v0

    #@276
    or-int/lit8 v27, v27, 0x1

    #@278
    move/from16 v0, v27

    #@27a
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@27c
    goto/16 :goto_5

    #@27e
    .line 397
    .restart local v17    # "i":I
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_c
    move-object/from16 v0, v26

    #@280
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@282
    move-object/from16 v27, v0

    #@284
    if-eqz v27, :cond_d

    #@286
    .line 398
    move-object/from16 v0, v26

    #@288
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@28a
    move-object/from16 v27, v0

    #@28c
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    #@28f
    .line 400
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->reportResized()V

    #@292
    .line 401
    move-object/from16 v0, p0

    #@294
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@296
    move-object/from16 v27, v0

    #@298
    move-object/from16 v0, v27

    #@29a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@29c
    move-object/from16 v27, v0

    #@29e
    move-object/from16 v0, v27

    #@2a0
    move/from16 v1, v17

    #@2a2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2a5
    goto :goto_7

    #@2a6
    .line 406
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_e
    move-object/from16 v0, p0

    #@2a8
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    #@2aa
    move/from16 v27, v0

    #@2ac
    if-eqz v27, :cond_10

    #@2ae
    .line 407
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2b2
    move-object/from16 v27, v0

    #@2b4
    move-object/from16 v0, v27

    #@2b6
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    #@2b8
    move/from16 v27, v0

    #@2ba
    if-eqz v27, :cond_f

    #@2bc
    .line 408
    move-object/from16 v0, p0

    #@2be
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c0
    move-object/from16 v27, v0

    #@2c2
    const/16 v28, 0x0

    #@2c4
    move/from16 v0, v28

    #@2c6
    move-object/from16 v1, v27

    #@2c8
    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    #@2ca
    .line 409
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2ce
    move-object/from16 v27, v0

    #@2d0
    move-object/from16 v0, p0

    #@2d2
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@2d4
    move-object/from16 v28, v0

    #@2d6
    move-object/from16 v0, v28

    #@2d8
    move-object/from16 v1, v27

    #@2da
    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    #@2dc
    .line 410
    move-object/from16 v0, p0

    #@2de
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e0
    move-object/from16 v27, v0

    #@2e2
    move-object/from16 v0, v27

    #@2e4
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@2e6
    move-object/from16 v27, v0

    #@2e8
    const/16 v28, 0xb

    #@2ea
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@2ed
    .line 412
    :cond_f
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f1
    move-object/from16 v27, v0

    #@2f3
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    #@2f6
    .line 416
    :cond_10
    const/16 v25, 0x0

    #@2f8
    .line 417
    .local v25, "wallpaperDestroyed":Z
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2fc
    move-object/from16 v27, v0

    #@2fe
    move-object/from16 v0, v27

    #@300
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@302
    move-object/from16 v27, v0

    #@304
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@307
    move-result v17

    #@308
    .line 418
    if-lez v17, :cond_14

    #@30a
    .line 420
    :cond_11
    add-int/lit8 v17, v17, -0x1

    #@30c
    .line 421
    move-object/from16 v0, p0

    #@30e
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@310
    move-object/from16 v27, v0

    #@312
    move-object/from16 v0, v27

    #@314
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@316
    move-object/from16 v27, v0

    #@318
    move-object/from16 v0, v27

    #@31a
    move/from16 v1, v17

    #@31c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31f
    move-result-object v26

    #@320
    check-cast v26, Lcom/android/server/wm/WindowState;

    #@322
    .line 422
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    const/16 v27, 0x0

    #@324
    move/from16 v0, v27

    #@326
    move-object/from16 v1, v26

    #@328
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@32a
    .line 423
    move-object/from16 v0, p0

    #@32c
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@32e
    move-object/from16 v27, v0

    #@330
    move-object/from16 v0, v27

    #@332
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    #@334
    move-object/from16 v27, v0

    #@336
    move-object/from16 v0, v27

    #@338
    move-object/from16 v1, v26

    #@33a
    if-ne v0, v1, :cond_12

    #@33c
    .line 424
    move-object/from16 v0, p0

    #@33e
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@340
    move-object/from16 v27, v0

    #@342
    const/16 v28, 0x0

    #@344
    move-object/from16 v0, v28

    #@346
    move-object/from16 v1, v27

    #@348
    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    #@34a
    .line 426
    :cond_12
    move-object/from16 v0, p0

    #@34c
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@34e
    move-object/from16 v27, v0

    #@350
    move-object/from16 v0, v27

    #@352
    move-object/from16 v1, v26

    #@354
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    #@357
    move-result v27

    #@358
    if-eqz v27, :cond_13

    #@35a
    .line 427
    const/16 v25, 0x1

    #@35c
    .line 429
    :cond_13
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    #@35f
    .line 430
    if-gtz v17, :cond_11

    #@361
    .line 431
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@365
    move-object/from16 v27, v0

    #@367
    move-object/from16 v0, v27

    #@369
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    #@36b
    move-object/from16 v27, v0

    #@36d
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    #@370
    .line 435
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_14
    const/4 v13, 0x0

    #@371
    :goto_8
    move/from16 v0, v18

    #@373
    if-ge v13, v0, :cond_17

    #@375
    .line 436
    move-object/from16 v0, p0

    #@377
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@379
    move-object/from16 v27, v0

    #@37b
    move-object/from16 v0, v27

    #@37d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@37f
    move-object/from16 v27, v0

    #@381
    move-object/from16 v0, v27

    #@383
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@386
    move-result-object v10

    #@387
    check-cast v10, Lcom/android/server/wm/DisplayContent;

    #@389
    .line 437
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@38b
    move-object/from16 v16, v0

    #@38d
    .line 438
    .local v16, "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@390
    move-result v27

    #@391
    add-int/lit8 v17, v27, -0x1

    #@393
    :goto_9
    if-ltz v17, :cond_16

    #@395
    .line 439
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@398
    move-result-object v21

    #@399
    check-cast v21, Lcom/android/server/wm/WindowToken;

    #@39b
    .line 440
    .local v21, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v21

    #@39d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@39f
    move/from16 v27, v0

    #@3a1
    if-nez v27, :cond_15

    #@3a3
    .line 441
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3a6
    .line 442
    move-object/from16 v0, v21

    #@3a8
    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    #@3aa
    move/from16 v27, v0

    #@3ac
    const/16 v28, 0x7dd

    #@3ae
    move/from16 v0, v27

    #@3b0
    move/from16 v1, v28

    #@3b2
    if-ne v0, v1, :cond_15

    #@3b4
    .line 443
    move-object/from16 v0, p0

    #@3b6
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@3b8
    move-object/from16 v27, v0

    #@3ba
    move-object/from16 v0, v27

    #@3bc
    move-object/from16 v1, v21

    #@3be
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V

    #@3c1
    .line 438
    :cond_15
    add-int/lit8 v17, v17, -0x1

    #@3c3
    goto :goto_9

    #@3c4
    .line 435
    .end local v21    # "token":Lcom/android/server/wm/WindowToken;
    :cond_16
    add-int/lit8 v13, v13, 0x1

    #@3c6
    goto :goto_8

    #@3c7
    .line 450
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    :cond_17
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3cb
    move-object/from16 v27, v0

    #@3cd
    move-object/from16 v0, v27

    #@3cf
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@3d1
    move-object/from16 v27, v0

    #@3d3
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@3d6
    move-result v27

    #@3d7
    add-int/lit8 v19, v27, -0x1

    #@3d9
    :goto_a
    if-ltz v19, :cond_1c

    #@3db
    .line 453
    move-object/from16 v0, p0

    #@3dd
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3df
    move-object/from16 v27, v0

    #@3e1
    move-object/from16 v0, v27

    #@3e3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@3e5
    move-object/from16 v27, v0

    #@3e7
    move-object/from16 v0, v27

    #@3e9
    move/from16 v1, v19

    #@3eb
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3ee
    move-result-object v27

    #@3ef
    check-cast v27, Lcom/android/server/wm/TaskStack;

    #@3f1
    .line 452
    move-object/from16 v0, v27

    #@3f3
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3f5
    .line 454
    .restart local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    #@3f8
    move-result v27

    #@3f9
    add-int/lit8 v17, v27, -0x1

    #@3fb
    :goto_b
    if-ltz v17, :cond_1b

    #@3fd
    .line 455
    move/from16 v0, v17

    #@3ff
    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@402
    move-result-object v20

    #@403
    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    #@405
    .line 456
    .local v20, "token":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v20

    #@407
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    #@409
    move/from16 v27, v0

    #@40b
    if-nez v27, :cond_18

    #@40d
    move-object/from16 v0, p0

    #@40f
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@411
    move-object/from16 v27, v0

    #@413
    move-object/from16 v0, v27

    #@415
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@417
    move-object/from16 v27, v0

    #@419
    move-object/from16 v0, v27

    #@41b
    move-object/from16 v1, v20

    #@41d
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@420
    move-result v27

    #@421
    if-eqz v27, :cond_19

    #@423
    .line 454
    :cond_18
    :goto_c
    add-int/lit8 v17, v17, -0x1

    #@425
    goto :goto_b

    #@426
    .line 457
    :cond_19
    move-object/from16 v0, v20

    #@428
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@42a
    move/from16 v27, v0

    #@42c
    if-eqz v27, :cond_1a

    #@42e
    move-object/from16 v0, v20

    #@430
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@432
    move-object/from16 v27, v0

    #@434
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    #@437
    move-result v27

    #@438
    .line 456
    if-eqz v27, :cond_18

    #@43a
    .line 461
    :cond_1a
    move-object/from16 v0, v20

    #@43c
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@43e
    move-object/from16 v27, v0

    #@440
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    #@443
    .line 462
    move-object/from16 v0, v20

    #@445
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@447
    move-object/from16 v27, v0

    #@449
    const/16 v28, 0x0

    #@44b
    move/from16 v0, v28

    #@44d
    move-object/from16 v1, v27

    #@44f
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@451
    .line 465
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    #@454
    goto :goto_c

    #@455
    .line 450
    .end local v20    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1b
    add-int/lit8 v19, v19, -0x1

    #@457
    goto :goto_a

    #@458
    .line 470
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    :cond_1c
    if-eqz v25, :cond_1d

    #@45a
    .line 471
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@45c
    move/from16 v27, v0

    #@45e
    or-int/lit8 v27, v27, 0x4

    #@460
    move/from16 v0, v27

    #@462
    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@464
    .line 472
    const/16 v27, 0x1

    #@466
    move/from16 v0, v27

    #@468
    iput-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@46a
    .line 475
    :cond_1d
    const/4 v13, 0x0

    #@46b
    :goto_d
    move/from16 v0, v18

    #@46d
    if-ge v13, v0, :cond_1f

    #@46f
    .line 476
    move-object/from16 v0, p0

    #@471
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@473
    move-object/from16 v27, v0

    #@475
    move-object/from16 v0, v27

    #@477
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@479
    move-object/from16 v27, v0

    #@47b
    move-object/from16 v0, v27

    #@47d
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@480
    move-result-object v10

    #@481
    check-cast v10, Lcom/android/server/wm/DisplayContent;

    #@483
    .line 477
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v0, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@485
    move/from16 v27, v0

    #@487
    if-eqz v27, :cond_1e

    #@489
    .line 478
    const/16 v27, 0x1

    #@48b
    move/from16 v0, v27

    #@48d
    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@48f
    .line 475
    :cond_1e
    add-int/lit8 v13, v13, 0x1

    #@491
    goto :goto_d

    #@492
    .line 483
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    move-object/from16 v0, p0

    #@494
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@496
    move-object/from16 v27, v0

    #@498
    move-object/from16 v0, v27

    #@49a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@49c
    move-object/from16 v27, v0

    #@49e
    const/16 v28, 0x1

    #@4a0
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@4a3
    .line 485
    move-object/from16 v0, p0

    #@4a5
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a7
    move-object/from16 v27, v0

    #@4a9
    move-object/from16 v0, p0

    #@4ab
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    #@4ad
    move-object/from16 v28, v0

    #@4af
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    #@4b2
    .line 486
    move-object/from16 v0, p0

    #@4b4
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b6
    move-object/from16 v27, v0

    #@4b8
    move-object/from16 v0, v27

    #@4ba
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    #@4bc
    move/from16 v27, v0

    #@4be
    if-nez v27, :cond_22

    #@4c0
    .line 487
    move-object/from16 v0, p0

    #@4c2
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@4c4
    move/from16 v27, v0

    #@4c6
    const/16 v28, 0x0

    #@4c8
    cmpg-float v27, v27, v28

    #@4ca
    if-ltz v27, :cond_20

    #@4cc
    move-object/from16 v0, p0

    #@4ce
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@4d0
    move/from16 v27, v0

    #@4d2
    const/high16 v28, 0x3f800000    # 1.0f

    #@4d4
    cmpl-float v27, v27, v28

    #@4d6
    if-lez v27, :cond_2b

    #@4d8
    .line 488
    :cond_20
    move-object/from16 v0, p0

    #@4da
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4dc
    move-object/from16 v27, v0

    #@4de
    move-object/from16 v0, v27

    #@4e0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@4e2
    move-object/from16 v27, v0

    #@4e4
    const/16 v28, -0x1

    #@4e6
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    #@4e9
    .line 493
    :goto_e
    move-object/from16 v0, p0

    #@4eb
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@4ed
    move/from16 v27, v0

    #@4ef
    const/16 v28, 0x0

    #@4f1
    cmpg-float v27, v27, v28

    #@4f3
    if-ltz v27, :cond_21

    #@4f5
    .line 494
    move-object/from16 v0, p0

    #@4f7
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@4f9
    move/from16 v27, v0

    #@4fb
    const/high16 v28, 0x3f800000    # 1.0f

    #@4fd
    cmpl-float v27, v27, v28

    #@4ff
    if-lez v27, :cond_2c

    #@501
    .line 495
    :cond_21
    move-object/from16 v0, p0

    #@503
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@505
    move-object/from16 v27, v0

    #@507
    move-object/from16 v0, v27

    #@509
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@50b
    move-object/from16 v27, v0

    #@50d
    const/16 v28, -0x1

    #@50f
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    #@512
    .line 500
    :goto_f
    move-object/from16 v0, p0

    #@514
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@516
    move-object/from16 v27, v0

    #@518
    move-object/from16 v0, v27

    #@51a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@51c
    move-object/from16 v27, v0

    #@51e
    .line 501
    move-object/from16 v0, p0

    #@520
    iget-wide v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    #@522
    move-wide/from16 v28, v0

    #@524
    .line 500
    invoke-virtual/range {v27 .. v29}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    #@527
    .line 504
    :cond_22
    move-object/from16 v0, p0

    #@529
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    #@52b
    move/from16 v27, v0

    #@52d
    move-object/from16 v0, p0

    #@52f
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    #@531
    move/from16 v28, v0

    #@533
    move/from16 v0, v27

    #@535
    move/from16 v1, v28

    #@537
    if-eq v0, v1, :cond_23

    #@539
    .line 505
    move-object/from16 v0, p0

    #@53b
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    #@53d
    move/from16 v27, v0

    #@53f
    move/from16 v0, v27

    #@541
    move-object/from16 v1, p0

    #@543
    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    #@545
    .line 506
    move-object/from16 v0, p0

    #@547
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@549
    move-object/from16 v27, v0

    #@54b
    move-object/from16 v0, v27

    #@54d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@54f
    move-object/from16 v28, v0

    #@551
    .line 508
    move-object/from16 v0, p0

    #@553
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    #@555
    move/from16 v27, v0

    #@557
    if-eqz v27, :cond_2d

    #@559
    const/16 v27, 0x1

    #@55b
    .line 507
    :goto_10
    const/16 v29, 0x6

    #@55d
    .line 506
    move-object/from16 v0, v28

    #@55f
    move/from16 v1, v29

    #@561
    move/from16 v2, v27

    #@563
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    #@566
    .line 511
    :cond_23
    move-object/from16 v0, p0

    #@568
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@56a
    move-object/from16 v27, v0

    #@56c
    move-object/from16 v0, v27

    #@56e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    #@570
    move/from16 v27, v0

    #@572
    if-eqz v27, :cond_26

    #@574
    .line 512
    move-object/from16 v0, p0

    #@576
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@578
    move-object/from16 v27, v0

    #@57a
    move-object/from16 v0, v27

    #@57c
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    #@57e
    move/from16 v27, v0

    #@580
    if-nez v27, :cond_24

    #@582
    .line 513
    move-object/from16 v0, p0

    #@584
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@586
    move-object/from16 v27, v0

    #@588
    move-object/from16 v0, v27

    #@58a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@58c
    move-object/from16 v27, v0

    #@58e
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@591
    move-result-object v27

    #@592
    .line 514
    const-string/jumbo v28, "theater_mode_on"

    #@595
    const/16 v29, 0x0

    #@597
    .line 513
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@59a
    move-result v27

    #@59b
    if-nez v27, :cond_25

    #@59d
    .line 518
    :cond_24
    move-object/from16 v0, p0

    #@59f
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5a1
    move-object/from16 v27, v0

    #@5a3
    move-object/from16 v0, v27

    #@5a5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@5a7
    move-object/from16 v27, v0

    #@5a9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5ac
    move-result-wide v28

    #@5ad
    .line 519
    const-string/jumbo v30, "android.server.wm:TURN_ON"

    #@5b0
    .line 518
    invoke-virtual/range {v27 .. v30}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@5b3
    .line 521
    :cond_25
    move-object/from16 v0, p0

    #@5b5
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5b7
    move-object/from16 v27, v0

    #@5b9
    const/16 v28, 0x0

    #@5bb
    move/from16 v0, v28

    #@5bd
    move-object/from16 v1, v27

    #@5bf
    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    #@5c1
    .line 524
    :cond_26
    move-object/from16 v0, p0

    #@5c3
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    #@5c5
    move/from16 v27, v0

    #@5c7
    if-eqz v27, :cond_27

    #@5c9
    .line 526
    move-object/from16 v0, p0

    #@5cb
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5cd
    move-object/from16 v27, v0

    #@5cf
    const/16 v28, 0x0

    #@5d1
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    #@5d4
    move-result v27

    #@5d5
    if-eqz v27, :cond_2e

    #@5d7
    .line 527
    move-object/from16 v0, p0

    #@5d9
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5db
    move-object/from16 v27, v0

    #@5dd
    move-object/from16 v0, v27

    #@5df
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@5e1
    move-object/from16 v27, v0

    #@5e3
    const/16 v28, 0x12

    #@5e5
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@5e8
    .line 533
    :cond_27
    :goto_11
    move-object/from16 v0, p0

    #@5ea
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5ec
    move-object/from16 v27, v0

    #@5ee
    move-object/from16 v0, v27

    #@5f0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@5f2
    move-object/from16 v27, v0

    #@5f4
    if-nez v27, :cond_30

    #@5f6
    .line 534
    move-object/from16 v0, p0

    #@5f8
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    #@5fa
    move/from16 v27, v0

    #@5fc
    if-eqz v27, :cond_28

    #@5fe
    iget-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@600
    move/from16 v27, v0

    #@602
    if-eqz v27, :cond_2f

    #@604
    .line 539
    :cond_28
    :goto_12
    move-object/from16 v0, p0

    #@606
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@608
    move-object/from16 v27, v0

    #@60a
    move-object/from16 v0, v27

    #@60c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@60e
    move-object/from16 v27, v0

    #@610
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@613
    move-result v4

    #@614
    .line 540
    .local v4, "N":I
    if-lez v4, :cond_33

    #@616
    .line 541
    move-object/from16 v0, p0

    #@618
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@61a
    move-object/from16 v27, v0

    #@61c
    move-object/from16 v0, v27

    #@61e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    #@620
    move-object/from16 v27, v0

    #@622
    move-object/from16 v0, v27

    #@624
    array-length v0, v0

    #@625
    move/from16 v27, v0

    #@627
    move/from16 v0, v27

    #@629
    if-ge v0, v4, :cond_29

    #@62b
    .line 542
    move-object/from16 v0, p0

    #@62d
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@62f
    move-object/from16 v27, v0

    #@631
    add-int/lit8 v28, v4, 0xa

    #@633
    move/from16 v0, v28

    #@635
    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    #@637
    move-object/from16 v28, v0

    #@639
    move-object/from16 v0, v28

    #@63b
    move-object/from16 v1, v27

    #@63d
    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    #@63f
    .line 544
    :cond_29
    move-object/from16 v0, p0

    #@641
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@643
    move-object/from16 v27, v0

    #@645
    move-object/from16 v0, v27

    #@647
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@649
    move-object/from16 v27, v0

    #@64b
    move-object/from16 v0, p0

    #@64d
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@64f
    move-object/from16 v28, v0

    #@651
    move-object/from16 v0, v28

    #@653
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    #@655
    move-object/from16 v28, v0

    #@657
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@65a
    .line 545
    move-object/from16 v0, p0

    #@65c
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@65e
    move-object/from16 v27, v0

    #@660
    move-object/from16 v0, v27

    #@662
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@664
    move-object/from16 v27, v0

    #@666
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    #@669
    .line 546
    new-instance v12, Lcom/android/server/wm/DisplayContentList;

    #@66b
    invoke-direct {v12}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    #@66e
    .line 547
    .local v12, "displayList":Lcom/android/server/wm/DisplayContentList;
    const/16 v17, 0x0

    #@670
    :goto_13
    move/from16 v0, v17

    #@672
    if-ge v0, v4, :cond_32

    #@674
    .line 548
    move-object/from16 v0, p0

    #@676
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@678
    move-object/from16 v27, v0

    #@67a
    move-object/from16 v0, v27

    #@67c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    #@67e
    move-object/from16 v27, v0

    #@680
    aget-object v24, v27, v17

    #@682
    .line 549
    .local v24, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    #@684
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@686
    move-object/from16 v27, v0

    #@688
    move-object/from16 v0, v27

    #@68a
    move-object/from16 v1, v24

    #@68c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@68f
    .line 550
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@692
    move-result-object v10

    #@693
    .line 551
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_2a

    #@695
    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    #@698
    move-result v27

    #@699
    if-eqz v27, :cond_31

    #@69b
    .line 547
    :cond_2a
    :goto_14
    add-int/lit8 v17, v17, 0x1

    #@69d
    goto :goto_13

    #@69e
    .line 490
    .end local v4    # "N":I
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_2b
    move-object/from16 v0, p0

    #@6a0
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6a2
    move-object/from16 v27, v0

    #@6a4
    move-object/from16 v0, v27

    #@6a6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@6a8
    move-object/from16 v27, v0

    #@6aa
    .line 491
    move-object/from16 v0, p0

    #@6ac
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    #@6ae
    move/from16 v28, v0

    #@6b0
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    #@6b3
    move-result v28

    #@6b4
    .line 490
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    #@6b7
    goto/16 :goto_e

    #@6b9
    .line 497
    :cond_2c
    move-object/from16 v0, p0

    #@6bb
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6bd
    move-object/from16 v27, v0

    #@6bf
    move-object/from16 v0, v27

    #@6c1
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@6c3
    move-object/from16 v27, v0

    #@6c5
    .line 498
    move-object/from16 v0, p0

    #@6c7
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    #@6c9
    move/from16 v28, v0

    #@6cb
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    #@6ce
    move-result v28

    #@6cf
    .line 497
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    #@6d2
    goto/16 :goto_f

    #@6d4
    .line 508
    :cond_2d
    const/16 v27, 0x0

    #@6d6
    goto/16 :goto_10

    #@6d8
    .line 529
    :cond_2e
    const/16 v27, 0x0

    #@6da
    move/from16 v0, v27

    #@6dc
    move-object/from16 v1, p0

    #@6de
    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    #@6e0
    goto/16 :goto_11

    #@6e2
    .line 535
    :cond_2f
    move-object/from16 v0, p0

    #@6e4
    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    #@6e6
    move/from16 v27, v0

    #@6e8
    if-nez v27, :cond_28

    #@6ea
    .line 536
    :cond_30
    move-object/from16 v0, p0

    #@6ec
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6ee
    move-object/from16 v27, v0

    #@6f0
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    #@6f3
    goto/16 :goto_12

    #@6f5
    .line 552
    .restart local v4    # "N":I
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .restart local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_31
    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    #@6f8
    goto :goto_14

    #@6f9
    .line 556
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_32
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6fc
    move-result-object v11

    #@6fd
    .local v11, "displayContent$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@700
    move-result v27

    #@701
    if-eqz v27, :cond_33

    #@703
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@706
    move-result-object v10

    #@707
    check-cast v10, Lcom/android/server/wm/DisplayContent;

    #@709
    .line 557
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    #@70b
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@70d
    move-object/from16 v27, v0

    #@70f
    move-object/from16 v0, v27

    #@711
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    #@713
    move-object/from16 v27, v0

    #@715
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@718
    move-result-object v28

    #@719
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    #@71c
    .line 558
    const/16 v27, 0x1

    #@71e
    move/from16 v0, v27

    #@720
    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@722
    goto :goto_15

    #@723
    .line 563
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "displayContent$iterator":Ljava/util/Iterator;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    :cond_33
    move-object/from16 v0, p0

    #@725
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@727
    move-object/from16 v27, v0

    #@729
    move-object/from16 v0, v27

    #@72b
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@72d
    move-object/from16 v27, v0

    #@72f
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@732
    move-result v27

    #@733
    add-int/lit8 v13, v27, -0x1

    #@735
    :goto_16
    if-ltz v13, :cond_34

    #@737
    .line 564
    move-object/from16 v0, p0

    #@739
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@73b
    move-object/from16 v27, v0

    #@73d
    move-object/from16 v0, v27

    #@73f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@741
    move-object/from16 v27, v0

    #@743
    move-object/from16 v0, v27

    #@745
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@748
    move-result-object v27

    #@749
    check-cast v27, Lcom/android/server/wm/DisplayContent;

    #@74b
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/DisplayContent;->checkForDeferredActions()V

    #@74e
    .line 563
    add-int/lit8 v13, v13, -0x1

    #@750
    goto :goto_16

    #@751
    .line 567
    :cond_34
    if-eqz v23, :cond_35

    #@753
    .line 568
    move-object/from16 v0, p0

    #@755
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@757
    move-object/from16 v27, v0

    #@759
    move-object/from16 v0, v27

    #@75b
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@75d
    move-object/from16 v27, v0

    #@75f
    const/16 v28, 0x0

    #@761
    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@764
    .line 570
    :cond_35
    move-object/from16 v0, p0

    #@766
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@768
    move-object/from16 v27, v0

    #@76a
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked()V

    #@76d
    .line 574
    move-object/from16 v0, p0

    #@76f
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@771
    move-object/from16 v27, v0

    #@773
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@776
    .line 576
    move-object/from16 v0, p0

    #@778
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@77a
    move-object/from16 v27, v0

    #@77c
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@77f
    .line 577
    move-object/from16 v0, p0

    #@781
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@783
    move-object/from16 v27, v0

    #@785
    move-object/from16 v0, v27

    #@787
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@789
    move-object/from16 v27, v0

    #@78b
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    #@78e
    .line 267
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x20

    #@2
    const/4 v8, 0x0

    #@3
    .line 188
    iget-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 192
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@9
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    .line 193
    const/4 v7, 0x3

    #@16
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 194
    return-void

    #@26
    .line 197
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    #@2a
    if-eqz v5, :cond_1

    #@2c
    .line 201
    return-void

    #@2d
    .line 204
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2f
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    #@31
    if-nez v5, :cond_2

    #@33
    .line 206
    return-void

    #@34
    .line 209
    :cond_2
    const-string/jumbo v5, "wmLayout"

    #@37
    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3a
    .line 210
    const/4 v5, 0x1

    #@3b
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    #@3d
    .line 212
    const/4 v2, 0x0

    #@3e
    .line 213
    .local v2, "recoveringMemory":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@40
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_4

    #@48
    .line 214
    const/4 v2, 0x1

    #@49
    .line 216
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@50
    move-result v5

    #@51
    if-nez v5, :cond_3

    #@53
    .line 217
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@55
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@5d
    .line 218
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v7, "Force removing: "

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 219
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@78
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@7b
    goto :goto_0

    #@7c
    .line 221
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_3
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@7e
    const-string/jumbo v6, "Due to memory failure, waiting a bit for next layout"

    #@81
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 222
    new-instance v3, Ljava/lang/Object;

    #@86
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@89
    .line 223
    .local v3, "tmp":Ljava/lang/Object;
    monitor-enter v3

    #@8a
    .line 225
    const-wide/16 v6, 0xfa

    #@8c
    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    :goto_1
    monitor-exit v3

    #@90
    .line 232
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementInner(Z)V

    #@93
    .line 234
    const/4 v5, 0x0

    #@94
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    #@96
    .line 236
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@98
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    #@9b
    move-result v5

    #@9c
    if-eqz v5, :cond_7

    #@9e
    .line 237
    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    #@a0
    add-int/lit8 v5, v5, 0x1

    #@a2
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    #@a4
    const/4 v6, 0x6

    #@a5
    if-ge v5, v6, :cond_6

    #@a7
    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@aa
    .line 247
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ac
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    #@ae
    if-eqz v5, :cond_5

    #@b0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b2
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@b7
    move-result v5

    #@b8
    if-eqz v5, :cond_8

    #@ba
    .line 256
    :cond_5
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@bd
    .line 187
    return-void

    #@be
    .line 226
    .restart local v3    # "tmp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@bf
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@c0
    .line 223
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    #@c1
    monitor-exit v3

    #@c2
    throw v5

    #@c3
    .line 240
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_6
    :try_start_2
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@c5
    const-string/jumbo v6, "Performed 6 layouts in a row. Skipping"

    #@c8
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    .line 241
    const/4 v5, 0x0

    #@cc
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@ce
    goto :goto_2

    #@cf
    .line 251
    :catch_1
    move-exception v1

    #@d0
    .line 252
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-boolean v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    #@d2
    .line 253
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@d4
    const-string/jumbo v6, "Unhandled exception while laying out windows"

    #@d7
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@da
    goto :goto_3

    #@db
    .line 244
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_7
    const/4 v5, 0x0

    #@dc
    :try_start_3
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    #@de
    goto :goto_2

    #@df
    .line 248
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e1
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@e3
    const/16 v6, 0x13

    #@e5
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@e8
    .line 249
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ea
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@ec
    const/16 v6, 0x13

    #@ee
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    #@f1
    goto :goto_3
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 8
    .param p1, "transit"    # I

    #@0
    .prologue
    .line 1595
    const/16 v5, 0x11

    #@2
    if-ne p1, v5, :cond_1

    #@4
    .line 1597
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    .line 1598
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    #@b
    move-result-object v6

    #@c
    .line 1597
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    #@f
    move-result-object v3

    #@10
    .line 1599
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1

    #@12
    .line 1600
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    .line 1601
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@16
    .line 1604
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@19
    .line 1605
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    #@1c
    .line 1606
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/WindowManagerService;->updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V

    #@21
    .line 1607
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@24
    .line 1609
    iget-object v5, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@29
    .line 1610
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@2b
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    #@2e
    move-result v0

    #@2f
    .line 1611
    .local v0, "N":I
    const/4 v2, 0x0

    #@30
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@32
    .line 1612
    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    #@34
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@36
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v5

    #@3a
    check-cast v5, Lcom/android/server/wm/WindowState;

    #@3c
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3e
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 1611
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1614
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@46
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@48
    iget-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@4a
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    #@4d
    move-result v7

    #@4e
    or-int/2addr v6, v7

    #@4f
    iput-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    #@51
    .line 1615
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@53
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@55
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    #@58
    move-result v6

    #@59
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    #@5c
    .line 1594
    .end local v0    # "N":I
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .locals 1
    .param p0, "value"    # F

    #@0
    .prologue
    .line 1591
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr v0, p0

    #@3
    float-to-int v0, v0

    #@4
    return v0
.end method

.method private transitionGoodToGo(I)Z
    .locals 9
    .param p1, "appsCount"    # I

    #@0
    .prologue
    const/16 v8, 0x2f

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 1354
    const/4 v2, 0x3

    #@5
    .line 1355
    .local v2, "reason":I
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@9
    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_9

    #@f
    .line 1356
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_5

    #@12
    .line 1357
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    #@16
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@1c
    .line 1365
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_0

    #@22
    .line 1366
    return v7

    #@23
    .line 1369
    :cond_0
    iget-boolean v0, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@25
    .line 1370
    .local v0, "drawnBeforeRestoring":Z
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->restoreSavedSurfaces()V

    #@28
    .line 1372
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@2a
    if-nez v6, :cond_1

    #@2c
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@2e
    if-eqz v6, :cond_2

    #@30
    .line 1375
    :cond_1
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@32
    if-eqz v6, :cond_4

    #@34
    .line 1376
    if-eqz v0, :cond_3

    #@36
    const/4 v2, 0x2

    #@37
    .line 1356
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1372
    :cond_2
    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    #@3c
    if-nez v6, :cond_1

    #@3e
    .line 1373
    return v7

    #@3f
    .line 1377
    :cond_3
    const/4 v2, 0x0

    #@40
    goto :goto_1

    #@41
    .line 1379
    :cond_4
    const/4 v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 1384
    .end local v0    # "drawnBeforeRestoring":Z
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@47
    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_6

    #@4d
    .line 1386
    return v7

    #@4e
    .line 1390
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@50
    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_7

    #@56
    .line 1391
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@58
    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    #@5b
    move-result v3

    #@5c
    .line 1392
    .local v3, "wallpaperReady":Z
    :goto_2
    if-eqz v3, :cond_8

    #@5e
    .line 1393
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@60
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@62
    invoke-virtual {v6, v8, v2, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@69
    .line 1394
    return v5

    #@6a
    .end local v3    # "wallpaperReady":Z
    :cond_7
    move v3, v5

    #@6b
    .line 1390
    goto :goto_2

    #@6c
    .line 1396
    .restart local v3    # "wallpaperReady":Z
    :cond_8
    return v7

    #@6d
    .line 1398
    .end local v1    # "i":I
    .end local v3    # "wallpaperReady":Z
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6f
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@71
    invoke-virtual {v6, v8, v2, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@78
    .line 1399
    return v5
.end method

.method private updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 1547
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    #@4
    move-result-object v2

    #@5
    .line 1548
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v8

    #@9
    add-int/lit8 v1, v8, -0x1

    #@b
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_5

    #@d
    .line 1549
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Lcom/android/server/wm/TaskStack;

    #@13
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@16
    move-result-object v4

    #@17
    .line 1550
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v8

    #@1b
    add-int/lit8 v3, v8, -0x1

    #@1d
    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_4

    #@1f
    .line 1551
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Lcom/android/server/wm/Task;

    #@25
    iget-object v6, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@27
    .line 1552
    .local v6, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    #@2a
    move-result v8

    #@2b
    add-int/lit8 v5, v8, -0x1

    #@2d
    .local v5, "tokenNdx":I
    :goto_2
    if-ltz v5, :cond_3

    #@2f
    .line 1553
    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    #@35
    .line 1554
    .local v7, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@37
    if-nez v8, :cond_0

    #@39
    .line 1555
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    #@3b
    .line 1556
    .local v0, "numInteresting":I
    if-lez v0, :cond_0

    #@3d
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    #@3f
    if-lt v8, v0, :cond_0

    #@41
    .line 1561
    iput-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    #@43
    .line 1564
    iput-boolean v11, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@45
    .line 1565
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@47
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@49
    .line 1566
    iget-object v9, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@4b
    .line 1565
    const/16 v10, 0x20

    #@4d
    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    #@54
    .line 1569
    .end local v0    # "numInteresting":I
    :cond_0
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    #@56
    if-nez v8, :cond_1

    #@58
    .line 1570
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    #@5a
    .line 1571
    .restart local v0    # "numInteresting":I
    if-lez v0, :cond_1

    #@5c
    .line 1572
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    #@5e
    if-lt v8, v0, :cond_1

    #@60
    .line 1577
    iput-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    #@62
    .line 1578
    iput-boolean v11, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@64
    .line 1579
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isAnimatingInvisibleWithSavedSurface()Z

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_1

    #@6a
    .line 1580
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6c
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@71
    move-result v8

    #@72
    if-eqz v8, :cond_2

    #@74
    .line 1552
    .end local v0    # "numInteresting":I
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, -0x1

    #@76
    goto :goto_2

    #@77
    .line 1581
    .restart local v0    # "numInteresting":I
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@79
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_3

    #@7f
    .line 1550
    .end local v0    # "numInteresting":I
    .end local v7    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    #@81
    goto :goto_1

    #@82
    .line 1548
    .end local v5    # "tokenNdx":I
    .end local v6    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@84
    goto :goto_0

    #@85
    .line 1544
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method continueLayout()V
    .locals 1

    #@0
    .prologue
    .line 167
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@6
    .line 168
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    #@d
    .line 166
    :cond_0
    return-void
.end method

.method copyAnimToLayoutParamsLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1697
    const/4 v1, 0x0

    #@3
    .line 1699
    .local v1, "doRequest":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@7
    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    #@9
    .line 1700
    .local v0, "bulkUpdateParams":I
    and-int/lit8 v2, v0, 0x1

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1701
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    #@f
    .line 1702
    const/4 v1, 0x1

    #@10
    .line 1704
    :cond_0
    and-int/lit8 v2, v0, 0x2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1705
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    #@16
    .line 1706
    const/4 v1, 0x1

    #@17
    .line 1708
    :cond_1
    and-int/lit8 v2, v0, 0x4

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 1709
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    #@1d
    .line 1710
    const/4 v1, 0x1

    #@1e
    .line 1712
    :cond_2
    and-int/lit8 v2, v0, 0x8

    #@20
    if-nez v2, :cond_6

    #@22
    .line 1713
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    #@24
    .line 1721
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 1722
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    #@2c
    .line 1724
    :cond_4
    and-int/lit8 v2, v0, 0x20

    #@2e
    if-eqz v2, :cond_5

    #@30
    .line 1725
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    #@32
    .line 1728
    :cond_5
    return v1

    #@33
    .line 1715
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    #@35
    .line 1716
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    #@39
    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@3b
    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    #@3d
    .line 1717
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3f
    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    #@41
    if-eqz v2, :cond_3

    #@43
    .line 1718
    const/4 v1, 0x1

    #@44
    goto :goto_0
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    #@0
    .prologue
    .line 260
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    #@2
    const/4 v1, 0x4

    #@3
    if-lt v0, v1, :cond_0

    #@5
    .line 261
    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Layouts looping: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 262
    const-string/jumbo v2, ", mPendingLayoutChanges = 0x"

    #@1a
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 259
    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    #@0
    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@6
    .line 159
    return-void
.end method

.method destroyAfterTransaction(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    #@0
    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1742
    return-void
.end method

.method destroyPendingSurfaces()V
    .locals 2

    #@0
    .prologue
    .line 1751
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1752
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/view/SurfaceControl;

    #@12
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    #@15
    .line 1751
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1754
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 1750
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1758
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mTraversalScheduled="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@e
    .line 1759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v0, "mHoldScreenWindow="

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1c
    .line 1760
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string/jumbo v0, "mObsuringWindow="

    #@22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2a
    .line 1757
    return-void
.end method

.method isInLayout()Z
    .locals 1

    #@0
    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    #@2
    return v0
.end method

.method final performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V
    .locals 18
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "initial"    # Z
    .param p3, "updateInputWindows"    # Z

    #@0
    .prologue
    .line 894
    move-object/from16 v0, p1

    #@2
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 895
    return-void

    #@7
    .line 897
    :cond_0
    const/4 v1, 0x0

    #@8
    move-object/from16 v0, p1

    #@a
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@c
    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@f
    move-result-object v17

    #@10
    .line 899
    .local v17, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p1

    #@12
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@14
    .line 901
    .local v2, "isDefaultDisplay":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@17
    move-result-object v10

    #@18
    .line 902
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    #@1a
    .line 903
    .local v3, "dw":I
    iget v4, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    #@1c
    .line 905
    .local v4, "dh":I
    move-object/from16 v0, p0

    #@1e
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 906
    move-object/from16 v0, p0

    #@26
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@2a
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    #@2d
    .line 909
    :cond_1
    move-object/from16 v0, p0

    #@2f
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@31
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 910
    move-object/from16 v0, p0

    #@37
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@39
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@3b
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    #@3e
    .line 913
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    #@41
    move-result v7

    #@42
    .line 922
    .local v7, "N":I
    move-object/from16 v0, p0

    #@44
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@46
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4c
    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    #@4e
    .line 923
    move-object/from16 v0, p0

    #@50
    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@52
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@54
    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    #@56
    .line 922
    invoke-interface/range {v1 .. v6}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIIII)V

    #@59
    .line 924
    if-eqz v2, :cond_3

    #@5b
    .line 926
    move-object/from16 v0, p0

    #@5d
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@63
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@65
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    #@68
    move-result v5

    #@69
    iput v5, v1, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    #@6b
    .line 927
    move-object/from16 v0, p0

    #@6d
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6f
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    #@71
    const/4 v5, 0x0

    #@72
    const/4 v6, 0x0

    #@73
    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@76
    .line 930
    :cond_3
    move-object/from16 v0, p0

    #@78
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7a
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    #@80
    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    #@83
    .line 931
    move-object/from16 v0, p0

    #@85
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    #@87
    move-object/from16 v0, p1

    #@89
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->resize(Landroid/graphics/Rect;)V

    #@8c
    .line 933
    move-object/from16 v0, p0

    #@8e
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@90
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    #@92
    add-int/lit8 v13, v1, 0x1

    #@94
    .line 934
    .local v13, "seq":I
    if-gez v13, :cond_4

    #@96
    const/4 v13, 0x0

    #@97
    .line 935
    :cond_4
    move-object/from16 v0, p0

    #@99
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9b
    iput v13, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    #@9d
    .line 937
    const/4 v9, 0x0

    #@9e
    .line 941
    .local v9, "behindDream":Z
    const/4 v15, -0x1

    #@9f
    .line 942
    .local v15, "topAttached":I
    add-int/lit8 v12, v7, -0x1

    #@a1
    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_e

    #@a3
    .line 943
    move-object/from16 v0, v17

    #@a5
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@a8
    move-result-object v16

    #@a9
    check-cast v16, Lcom/android/server/wm/WindowState;

    #@ab
    .line 948
    .local v16, "win":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_5

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b1
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@b3
    move-object/from16 v0, v16

    #@b5
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b7
    move-object/from16 v0, v16

    #@b9
    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@bc
    move-result v1

    #@bd
    if-nez v1, :cond_8

    #@bf
    .line 949
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    #@c2
    move-result v11

    #@c3
    .line 976
    :goto_1
    if-eqz v11, :cond_a

    #@c5
    move-object/from16 v0, v16

    #@c7
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@c9
    if-eqz v1, :cond_a

    #@cb
    move-object/from16 v0, v16

    #@cd
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@cf
    if-nez v1, :cond_a

    #@d1
    .line 977
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@d4
    move-result v1

    #@d5
    if-nez v1, :cond_6

    #@d7
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->setInsetsChanged()Z

    #@da
    move-result v1

    #@db
    if-eqz v1, :cond_7

    #@dd
    .line 978
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    #@e0
    move-result v1

    #@e1
    if-eqz v1, :cond_9

    #@e3
    .line 942
    :cond_7
    :goto_2
    add-int/lit8 v12, v12, -0x1

    #@e5
    goto :goto_0

    #@e6
    .line 948
    :cond_8
    const/4 v11, 0x1

    #@e7
    .local v11, "gone":Z
    goto :goto_1

    #@e8
    .line 979
    .end local v11    # "gone":Z
    :cond_9
    move-object/from16 v0, v16

    #@ea
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@ec
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@ee
    and-int/lit16 v1, v1, 0x400

    #@f0
    if-nez v1, :cond_a

    #@f2
    .line 980
    move-object/from16 v0, v16

    #@f4
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@f6
    if-eqz v1, :cond_7

    #@f8
    move-object/from16 v0, v16

    #@fa
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@fc
    if-eqz v1, :cond_7

    #@fe
    .line 981
    move-object/from16 v0, v16

    #@100
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@102
    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    #@104
    .line 976
    if-eqz v1, :cond_7

    #@106
    .line 982
    :cond_a
    move-object/from16 v0, v16

    #@108
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@10a
    if-nez v1, :cond_d

    #@10c
    .line 983
    if-eqz p2, :cond_b

    #@10e
    .line 985
    const/4 v1, 0x0

    #@10f
    move-object/from16 v0, v16

    #@111
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@113
    .line 987
    :cond_b
    move-object/from16 v0, v16

    #@115
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@117
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@119
    const/16 v5, 0x7e7

    #@11b
    if-ne v1, v5, :cond_c

    #@11d
    .line 991
    const/4 v9, 0x1

    #@11e
    .line 993
    :cond_c
    const/4 v1, 0x0

    #@11f
    move-object/from16 v0, v16

    #@121
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@123
    .line 994
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->prelayout()V

    #@126
    .line 995
    move-object/from16 v0, p0

    #@128
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12a
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@12c
    const/4 v5, 0x0

    #@12d
    move-object/from16 v0, v16

    #@12f
    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@132
    .line 996
    move-object/from16 v0, v16

    #@134
    iput v13, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@136
    .line 999
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@139
    move-result-object v14

    #@13a
    .line 1000
    .local v14, "task":Lcom/android/server/wm/Task;
    if-eqz v14, :cond_7

    #@13c
    .line 1001
    move-object/from16 v0, p1

    #@13e
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@140
    invoke-virtual {v1, v14}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@143
    goto :goto_2

    #@144
    .line 1010
    .end local v14    # "task":Lcom/android/server/wm/Task;
    :cond_d
    if-gez v15, :cond_7

    #@146
    move v15, v12

    #@147
    goto :goto_2

    #@148
    .line 1015
    .end local v16    # "win":Lcom/android/server/wm/WindowState;
    :cond_e
    const/4 v8, 0x0

    #@149
    .line 1021
    .local v8, "attachedBehindDream":Z
    move v12, v15

    #@14a
    .end local v8    # "attachedBehindDream":Z
    :goto_3
    if-ltz v12, :cond_15

    #@14c
    .line 1022
    move-object/from16 v0, v17

    #@14e
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@151
    move-result-object v16

    #@152
    check-cast v16, Lcom/android/server/wm/WindowState;

    #@154
    .line 1024
    .restart local v16    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    #@156
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@158
    if-eqz v1, :cond_14

    #@15a
    .line 1033
    if-eqz v8, :cond_10

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@160
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@162
    move-object/from16 v0, v16

    #@164
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@166
    move-object/from16 v0, v16

    #@168
    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    #@16b
    move-result v1

    #@16c
    if-eqz v1, :cond_10

    #@16e
    .line 1021
    :cond_f
    :goto_4
    add-int/lit8 v12, v12, -0x1

    #@170
    goto :goto_3

    #@171
    .line 1036
    :cond_10
    move-object/from16 v0, v16

    #@173
    iget v1, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@175
    const/16 v5, 0x8

    #@177
    if-eq v1, v5, :cond_11

    #@179
    move-object/from16 v0, v16

    #@17b
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@17d
    if-nez v1, :cond_12

    #@17f
    .line 1037
    :cond_11
    move-object/from16 v0, v16

    #@181
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@183
    if-eqz v1, :cond_12

    #@185
    move-object/from16 v0, v16

    #@187
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@189
    .line 1036
    if-eqz v1, :cond_f

    #@18b
    .line 1038
    :cond_12
    if-eqz p2, :cond_13

    #@18d
    .line 1040
    const/4 v1, 0x0

    #@18e
    move-object/from16 v0, v16

    #@190
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@192
    .line 1042
    :cond_13
    const/4 v1, 0x0

    #@193
    move-object/from16 v0, v16

    #@195
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@197
    .line 1043
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->prelayout()V

    #@19a
    .line 1044
    move-object/from16 v0, p0

    #@19c
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19e
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1a0
    move-object/from16 v0, v16

    #@1a2
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1a4
    move-object/from16 v0, v16

    #@1a6
    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    #@1a9
    .line 1045
    move-object/from16 v0, v16

    #@1ab
    iput v13, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@1ad
    goto :goto_4

    #@1ae
    .line 1050
    :cond_14
    move-object/from16 v0, v16

    #@1b0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1b2
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1b4
    const/16 v5, 0x7e7

    #@1b6
    if-ne v1, v5, :cond_f

    #@1b8
    .line 1054
    move v8, v9

    #@1b9
    .local v8, "attachedBehindDream":Z
    goto :goto_4

    #@1ba
    .line 1059
    .end local v8    # "attachedBehindDream":Z
    .end local v16    # "win":Lcom/android/server/wm/WindowState;
    :cond_15
    move-object/from16 v0, p0

    #@1bc
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1be
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@1c0
    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    #@1c3
    .line 1060
    if-eqz p3, :cond_16

    #@1c5
    .line 1061
    move-object/from16 v0, p0

    #@1c7
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@1cb
    const/4 v5, 0x0

    #@1cc
    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@1cf
    .line 1064
    :cond_16
    move-object/from16 v0, p0

    #@1d1
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d3
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1d5
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    #@1d8
    .line 1065
    move-object/from16 v0, p0

    #@1da
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1dc
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@1de
    const/16 v5, 0x29

    #@1e0
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@1e3
    .line 893
    return-void
.end method

.method final performSurfacePlacement()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 174
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    #@3
    if-lez v1, :cond_0

    #@5
    .line 175
    return-void

    #@6
    .line 177
    :cond_0
    const/4 v0, 0x6

    #@7
    .line 179
    .local v0, "loopCount":I
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    #@9
    .line 180
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    #@c
    .line 181
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@10
    const/4 v2, 0x4

    #@11
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@14
    .line 182
    add-int/lit8 v0, v0, -0x1

    #@16
    .line 183
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    #@18
    if-eqz v1, :cond_2

    #@1a
    if-gtz v0, :cond_1

    #@1c
    .line 184
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    #@1e
    .line 173
    return-void
.end method

.method requestTraversal()V
    .locals 2

    #@0
    .prologue
    .line 1732
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1733
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    #@7
    .line 1734
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    #@f
    .line 1731
    :cond_0
    return-void
.end method

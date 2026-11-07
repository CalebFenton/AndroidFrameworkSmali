.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field blacklist mBbqApplyToken:Landroid/os/IBinder;

.field blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final greylist-max-o mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field greylist-max-o mCreated:Z

.field greylist-max-o mCurHeight:I

.field greylist-max-o mCurWidth:I

.field greylist-max-o mCurWindowFlags:I

.field greylist-max-o mCurWindowPrivateFlags:I

.field private blacklist mCustomDimAmount:F

.field private blacklist mDefaultDimAmount:F

.field greylist-max-o mDestroyed:Z

.field private final blacklist mDisableDrawWakeLock:Z

.field final greylist-max-o mDispatchedContentInsets:Landroid/graphics/Rect;

.field greylist-max-o mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final greylist-max-o mDispatchedStableInsets:Landroid/graphics/Rect;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private blacklist mDisplayContext:Landroid/content/Context;

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private greylist-max-o mDisplayState:I

.field greylist-max-o mDrawingAllowed:Z

.field greylist-max-o mFixedSizeAllowed:Z

.field greylist-max-o mFormat:I

.field private blacklist mFrozenRequested:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHeight:I

.field greylist-max-o mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field greylist-max-o mInitializing:Z

.field greylist-max-o mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field final blacklist mInsetsState:Landroid/view/InsetsState;

.field greylist-max-o mIsCreating:Z

.field greylist-max-o mIsInAmbientMode:Z

.field private blacklist mIsScreenTurningOn:Z

.field private greylist-max-o mLastColorInvalidation:J

.field private blacklist mLastProcessLocalColorsTimestamp:J

.field private blacklist mLastScreenshot:Landroid/graphics/Bitmap;

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field final greylist-max-o mLayout:Landroid/view/WindowManager$LayoutParams;

.field private final blacklist mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalColorsToAdd:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mMergedConfiguration:Landroid/util/MergedConfiguration;

.field private final greylist-max-o mNotifyColorsChanged:Ljava/lang/Runnable;

.field greylist-max-o mOffsetMessageEnqueued:Z

.field greylist-max-o mOffsetsChanged:Z

.field greylist-max-o mPendingMove:Landroid/view/MotionEvent;

.field greylist-max-o mPendingSync:Z

.field private greylist-max-p mPendingXOffset:F

.field private greylist-max-o mPendingXOffsetStep:F

.field private greylist-max-o mPendingYOffset:F

.field private greylist-max-o mPendingYOffsetStep:F

.field private blacklist mPixelCopyCount:I

.field blacklist mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private blacklist mPreviousWallpaperDimAmount:F

.field private blacklist mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field blacklist mRelayoutResult:Landroid/view/WindowRelayoutResult;

.field blacklist mReportedSurfaceCreated:Z

.field greylist-max-o mReportedVisible:Z

.field private blacklist mResetWindowPages:Z

.field private blacklist mScreenshotSize:Landroid/graphics/Point;

.field private blacklist mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSession:Landroid/view/IWindowSession;

.field blacklist mShouldDimByDefault:Z

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceCreated:Z

.field final greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final blacklist mSurfaceReleaseLock:Ljava/lang/Object;

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field final blacklist mTempControls:Landroid/view/InsetsSourceControl$Array;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTmpValues:[F

.field greylist-max-o mType:I

.field greylist-max-o mVisible:Z

.field private blacklist mWallpaperDimAmount:F

.field greylist-max-o mWidth:I

.field final blacklist mWinFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mWindow:Lcom/android/internal/view/BaseIWindow;

.field greylist-max-o mWindowFlags:I

.field private blacklist mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field greylist-max-o mWindowPrivateFlags:I

.field greylist-max-o mWindowToken:Landroid/os/IBinder;

.field blacklist mZoom:F

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public static synthetic blacklist $r8$lambda$3jX6LT2WFK8p48hRgDRaH45bOtA(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DP3zhCwfM-jUectCyYRWZR9n0cA(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$addLocalColorsAreas$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GShbwRGG_28Qbgw7ZiWH2EcBra8(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$removeLocalColorsAreas$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ohYq4B3nAldT3-sO9RiLuVHOv-0(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$processLocalColors$1(JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uohwGsM6sV51YVYxLOMvwkrCKSs(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updateWallpaperDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uvEMS0sEXbaKTh-TxU28qDRsYcY(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableDrawWakeLock(Landroid/service/wallpaper/WallpaperService$Engine;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisableDrawWakeLock:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .registers 1

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingXOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingXOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingYOffset(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingYOffsetStep(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresizePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->resizePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 4
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 557
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 558
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 15
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 568
    .local p2, "clockFunction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 299
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 300
    const/16 v3, 0x10

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 301
    const/4 v3, 0x4

    iput v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 303
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 304
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 306
    new-instance v4, Landroid/window/ClientWindowFrames;

    invoke-direct {v4}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 307
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 308
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 309
    sget-object v4, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 310
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 311
    new-instance v4, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v4}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    .line 312
    new-instance v4, Landroid/util/MergedConfiguration;

    invoke-direct {v4}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 314
    new-instance v4, Landroid/view/SurfaceControl;

    invoke-direct {v4}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 315
    new-instance v5, Landroid/view/WindowRelayoutResult;

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    iput-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    .line 318
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    .line 319
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 320
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 321
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    .line 323
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 327
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 328
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceReleaseLock:Ljava/lang/Object;

    .line 344
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    .line 347
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    .line 350
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 351
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    .line 353
    new-array v3, v1, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 364
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    .line 372
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    .line 373
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 374
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 375
    const v2, 0x3d4ccccd    # 0.05f

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 378
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqApplyToken:Landroid/os/IBinder;

    .line 380
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    .line 384
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 481
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 2406
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 569
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    .line 570
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    .line 571
    const-wide/32 v2, 0x158b0a60

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 572
    invoke-static {}, Landroid/view/flags/Flags;->disableDrawWakeLock()Z

    move-result v2

    if-eqz v2, :cond_f9

    goto :goto_fa

    :cond_f9
    move v0, v1

    :goto_fa
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisableDrawWakeLock:Z

    .line 573
    return-void
.end method

.method private blacklist cleanUpScreenshotSurfaceControl()V
    .registers 3

    .line 2218
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    .line 2219
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2220
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2221
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2222
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2225
    :cond_1b
    return-void
.end method

.method private greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1198
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1200
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_16

    .line 1202
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1204
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_25

    .line 1205
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1206
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1207
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2b

    .line 1204
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 1208
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1210
    :goto_2b
    return-void
.end method

.method private blacklist fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 2140
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_13

    goto :goto_16

    .line 2142
    :cond_13
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_17

    .line 2141
    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 2142
    :goto_17
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 2143
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2b

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_28

    goto :goto_2b

    .line 2145
    :cond_28
    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2f

    .line 2144
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2145
    :goto_2f
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 2146
    return-object p2
.end method

.method private blacklist freeze()V
    .registers 2

    .line 2194
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_9

    goto :goto_18

    .line 2198
    :cond_9
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2199
    return-void

    .line 2202
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2207
    return-void

    .line 2196
    :cond_18
    :goto_18
    return-void
.end method

.method private blacklist generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .registers 11
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "pageInx"    # I
    .param p3, "numPages"    # I

    .line 2056
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 2057
    .local v0, "minLeft":F
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 2058
    .local v1, "maxRight":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 2059
    .local v2, "left":F
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 2062
    .local v3, "right":F
    cmpg-float v4, v2, v0

    if-gez v4, :cond_11

    move v2, v0

    .line 2063
    :cond_11
    cmpl-float v4, v3, v1

    if-lez v4, :cond_16

    move v3, v1

    .line 2066
    :cond_16
    int-to-float v4, p3

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 2067
    .end local v2    # "left":F
    .local v4, "left":F
    int-to-float v2, p3

    mul-float/2addr v2, v3

    rem-float/2addr v2, v5

    .line 2068
    .end local v3    # "right":F
    .local v2, "right":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_25

    .line 2069
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2072
    :cond_25
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private blacklist getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 2427
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_39

    .line 2433
    :cond_d
    const/4 v0, 0x0

    .line 2434
    .local v0, "ret":Landroid/view/Surface;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v1, :cond_31

    .line 2435
    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    const-string v2, "Wallpaper"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2437
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqApplyToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/graphics/BLASTBufferQueue;->setApplyToken(Landroid/os/IBinder;)V

    .line 2438
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2441
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_38

    .line 2443
    :cond_31
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2446
    :goto_38
    return-object v0

    .line 2428
    .end local v0    # "ret":Landroid/view/Surface;
    :cond_39
    :goto_39
    const-string v0, "WallpaperService"

    const-string v1, "Skipping BlastBufferQueue update/create - invalid surface control"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getRectFPage(Landroid/graphics/RectF;F)I
    .registers 6
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "step"    # F

    .line 2087
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2088
    :cond_a
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 2089
    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2090
    .local v0, "pages":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2091
    .local v1, "page":I
    if-ne v1, v0, :cond_27

    add-int/lit8 v2, v0, -0x1

    return v2

    .line 2092
    :cond_27
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-ne v1, v2, :cond_31

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 2093
    :cond_31
    return v1
.end method

.method private blacklist initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .registers 7
    .param p1, "windowPages"    # [Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "step"    # F

    .line 1921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 1922
    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    .line 1921
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1924
    .end local v0    # "i":I
    :cond_e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1925
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1926
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1927
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1928
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1929
    goto :goto_20

    .line 1931
    :cond_3a
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    .line 1932
    .local v2, "pageNum":I
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    .line 1933
    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "pageNum":I
    goto :goto_20

    .line 1934
    :cond_44
    return-void
.end method

.method private synthetic blacklist lambda$addLocalColorsAreas$4(Ljava/util/List;)V
    .registers 4
    .param p1, "regions"    # Ljava/util/List;

    .line 2107
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2108
    :try_start_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2109
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 2110
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 2111
    return-void

    .line 2109
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method private synthetic blacklist lambda$processLocalColors$1(JJ)V
    .registers 7
    .param p1, "now"    # J
    .param p3, "timeToWait"    # J

    .line 1826
    add-long v0, p1, p3

    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    .line 1827
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1828
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColorsInternal()V

    .line 1829
    return-void
.end method

.method private synthetic blacklist lambda$removeLocalColorsAreas$5(Ljava/util/List;)V
    .registers 8
    .param p1, "regions"    # Ljava/util/List;

    .line 2122
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_3
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 2124
    .local v1, "step":F
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2125
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 2126
    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2127
    monitor-exit v0

    return-void

    .line 2129
    :cond_17
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 2130
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 2131
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    .line 2130
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2129
    .end local v3    # "j":I
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2134
    .end local v1    # "step":F
    .end local v2    # "i":I
    :cond_37
    monitor-exit v0

    .line 2135
    return-void

    .line 2134
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private synthetic blacklist lambda$updatePage$2(ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;JI)V
    .registers 20
    .param p1, "pixelCopyCount"    # I
    .param p2, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p3, "areas"    # Ljava/util/Set;
    .param p4, "pageIndx"    # I
    .param p5, "numPages"    # I
    .param p6, "wallpaperDimAmount"    # F
    .param p7, "finalScreenShot"    # Landroid/graphics/Bitmap;
    .param p8, "current"    # J
    .param p10, "res"    # I

    .line 1967
    move-object/from16 v6, p7

    const-string v2, "WallpaperService#pixelCopy"

    invoke-static {v2, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 1972
    if-eqz p10, :cond_28

    .line 1973
    invoke-virtual {p2}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1975
    .local v7, "lastBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1976
    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 1977
    .local v8, "lastScreenshot":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_25

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1978
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 1981
    .end local v7    # "lastBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "lastScreenshot":Landroid/graphics/Bitmap;
    :cond_25
    move-wide/from16 v7, p8

    goto :goto_3b

    .line 1982
    :cond_28
    iput-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 1983
    invoke-virtual {p2, v6}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1984
    move-wide/from16 v7, p8

    invoke-virtual {p2, v7, v8}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1985
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 1988
    :goto_3b
    return-void
.end method

.method private synthetic blacklist lambda$updatePageColors$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .registers 6
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "color"    # Landroid/app/WallpaperColors;

    .line 2044
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 2045
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 2044
    invoke-interface {v0, p1, p2, v1}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2048
    goto :goto_14

    .line 2046
    :catch_c
    move-exception v0

    .line 2047
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperService"

    const-string v2, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method private synthetic blacklist lambda$updateWallpaperDimming$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "surfaceControlTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "va"    # Landroid/animation/ValueAnimator;

    .line 1078
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1079
    .local v0, "dimValue":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceReleaseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1080
    :try_start_d
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1081
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    .line 1082
    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1084
    :cond_25
    monitor-exit v1

    .line 1085
    return-void

    .line 1084
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_27

    throw v2
.end method

.method private blacklist processLocalColors()V
    .registers 10

    .line 1819
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mProcessLocalColorsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1820
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1821
    .local v3, "now":J
    iget-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastProcessLocalColorsTimestamp:J

    sub-long v7, v3, v0

    .line 1822
    .local v7, "timeSinceLastColorProcess":J
    const-wide/16 v0, 0x7d0

    sub-long/2addr v0, v7

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1825
    .local v5, "timeToWait":J
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda7;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda7;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;JJ)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1831
    .end local v3    # "now":J
    .end local v5    # "timeToWait":J
    .end local v7    # "timeSinceLastColorProcess":J
    :cond_2e
    return-void
.end method

.method private blacklist processLocalColorsInternal()V
    .registers 16

    .line 1842
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1851
    :cond_7
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1852
    :try_start_a
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1853
    .local v0, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1854
    .local v2, "xOffsetStep":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    move v9, v3

    .line 1860
    .local v9, "wallpaperDimAmount":F
    rem-float v3, v0, v2

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c9

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1861
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_c9

    .line 1863
    :cond_28
    invoke-direct {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v3

    if-nez v3, :cond_35

    .line 1867
    const/4 v0, 0x0

    .line 1868
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1869
    const/4 v3, 0x0

    .line 1870
    .local v3, "xCurrentPage":I
    const/4 v4, 0x1

    move v8, v4

    .local v4, "xPages":I
    goto :goto_50

    .line 1872
    .end local v3    # "xCurrentPage":I
    .end local v4    # "xPages":I
    :cond_35
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1873
    .restart local v4    # "xPages":I
    int-to-float v5, v4

    div-float v2, v3, v5

    .line 1874
    add-int/lit8 v3, v4, -0x1

    int-to-float v3, v3

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 1875
    .local v3, "shrink":F
    mul-float/2addr v0, v3

    .line 1876
    div-float v5, v0, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v3, v5

    move v8, v4

    .line 1883
    .end local v4    # "xPages":I
    .local v3, "xCurrentPage":I
    .local v8, "xPages":I
    :goto_50
    move v4, v2

    .line 1884
    .local v4, "finalXOffsetStep":F
    move v5, v0

    .line 1886
    .local v5, "finalXOffset":F
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1887
    move v6, v3

    .line 1888
    .local v6, "xPage":I
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    if-eqz v7, :cond_60

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    if-eq v7, v8, :cond_69

    .line 1889
    :cond_60
    new-array v7, v8, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 1890
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {p0, v7, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    .line 1892
    :cond_69
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-eqz v7, :cond_a7

    .line 1893
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_77
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    .line 1894
    .local v10, "colorArea":Landroid/graphics/RectF;
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v11, v10}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v11

    if-nez v11, :cond_8c

    goto :goto_77

    .line 1895
    :cond_8c
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1896
    invoke-direct {p0, v10, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v11

    .line 1897
    .local v11, "colorPage":I
    iget-object v12, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v12, v12, v11

    .line 1898
    .local v12, "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1899
    invoke-virtual {v12, v10}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    .line 1900
    .end local v10    # "colorArea":Landroid/graphics/RectF;
    .end local v11    # "colorPage":I
    .end local v12    # "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    goto :goto_77

    .line 1901
    :cond_a2
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 1903
    :cond_a7
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    if-lt v6, v7, :cond_b3

    .line 1911
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v7, v7

    add-int/lit8 v6, v7, -0x1

    move v7, v6

    goto :goto_b4

    .line 1903
    :cond_b3
    move v7, v6

    .line 1913
    .end local v6    # "xPage":I
    .local v7, "xPage":I
    :goto_b4
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v6, v6, v7

    .line 1914
    .local v6, "current":Landroid/service/wallpaper/EngineWindowPage;
    new-instance v10, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1915
    .end local v3    # "xCurrentPage":I
    .end local v4    # "finalXOffsetStep":F
    .end local v5    # "finalXOffset":F
    .local v10, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_a .. :try_end_c2} :catchall_cb

    .line 1916
    move-object v4, p0

    move-object v5, v6

    move-object v6, v10

    .end local v10    # "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    .local v5, "current":Landroid/service/wallpaper/EngineWindowPage;
    .local v6, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    invoke-virtual/range {v4 .. v9}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V

    .line 1917
    return-void

    .line 1861
    .end local v5    # "current":Landroid/service/wallpaper/EngineWindowPage;
    .end local v6    # "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    .end local v7    # "xPage":I
    .end local v8    # "xPages":I
    :cond_c9
    :goto_c9
    :try_start_c9
    monitor-exit v1

    return-void

    .line 1915
    .end local v0    # "xOffset":F
    .end local v2    # "xOffsetStep":F
    .end local v9    # "wallpaperDimAmount":F
    :catchall_cb
    move-exception v0

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method private blacklist reposition()V
    .registers 8

    .line 1561
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 1562
    return-void

    .line 1568
    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1569
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1570
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1569
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1571
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1572
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v1, v0

    .line 1573
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1575
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v5, 0x1

    aget v5, v0, v5

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v6, 0x4

    aget v6, v0, v6

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1577
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1578
    return-void
.end method

.method private blacklist resetWindowPages()V
    .registers 5

    .line 2077
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2078
    :cond_7
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_c

    return-void

    .line 2079
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 2080
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 2081
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 2080
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2083
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method private blacklist resizePreview(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1555
    if-eqz p1, :cond_f

    .line 1556
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    .line 1558
    :cond_f
    return-void
.end method

.method private blacklist setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .registers 4
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 1037
    if-nez p1, :cond_3

    .line 1038
    return-void

    .line 1040
    :cond_3
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    .line 1041
    .local v0, "colorHints":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_11

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    .line 1045
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    invoke-direct {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    .line 1046
    return-void
.end method

.method private blacklist showScreenshotOfWallpaper()Z
    .registers 8

    .line 2264
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_e3

    .line 2269
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2270
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v3, "WallpaperService"

    if-eqz v2, :cond_2e

    .line 2271
    const-string v2, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    return v1

    .line 2275
    :cond_2e
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3a

    .line 2276
    const-string v2, "Screenshot is unexpectedly not null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2281
    :cond_3a
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2287
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 2288
    invoke-virtual {v2, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v2

    .line 2289
    invoke-virtual {v2, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 2290
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v2

    .line 2282
    invoke-static {v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 2292
    .local v2, "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v2, :cond_66

    .line 2293
    const-string v4, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    return v1

    .line 2297
    :cond_66
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2299
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2302
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper snapshot for engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2303
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2304
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2305
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2306
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2307
    const-string v5, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2308
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2309
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2311
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 2313
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 2314
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 2316
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2317
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2318
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2319
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2321
    const/4 v4, 0x1

    return v4

    .line 2266
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v2    # "screenshotBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_e3
    :goto_e3
    return v1
.end method

.method private blacklist unfreeze()V
    .registers 2

    .line 2210
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2211
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_b

    .line 2212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2214
    :cond_b
    return-void
.end method

.method private blacklist updateFrozenState(Z)V
    .registers 4
    .param p1, "frozenRequested"    # Z

    .line 2174
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    .line 2179
    return-void

    .line 2181
    :cond_9
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 2182
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 2183
    .local v0, "isFrozen":Z
    :goto_12
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-ne v1, v0, :cond_17

    .line 2184
    return-void

    .line 2186
    :cond_17
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v1, :cond_1f

    .line 2187
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_22

    .line 2189
    :cond_1f
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    .line 2191
    :goto_22
    return-void
.end method

.method private blacklist updatePageColors(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .registers 23
    .param p1, "page"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p3, "pageIndx"    # I
    .param p4, "numPages"    # I
    .param p5, "wallpaperDimAmount"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    .line 1999
    .local p2, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 2000
    :cond_b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 2004
    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2010
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    .line 2011
    .local v4, "area":Landroid/graphics/RectF;
    if-nez v4, :cond_34

    goto :goto_24

    .line 2012
    :cond_34
    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct {v1, v4, v5, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v7

    .line 2013
    .local v7, "subArea":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2014
    .local v8, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v9, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 2015
    .local v9, "x":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v10, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 2016
    .local v10, "y":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 2017
    .local v11, "width":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 2020
    .local v12, "height":I
    :try_start_74
    invoke-static {v8, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_78} :catch_a0

    .line 2024
    .local v0, "target":Landroid/graphics/Bitmap;
    nop

    .line 2025
    move/from16 v13, p5

    invoke-static {v0, v13}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v14

    .line 2026
    .local v14, "color":Landroid/app/WallpaperColors;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2027
    invoke-virtual {v2, v4}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v15

    .line 2035
    .local v15, "currentColor":Landroid/app/WallpaperColors;
    if-eqz v15, :cond_8e

    invoke-virtual {v14, v15}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9d

    .line 2036
    :cond_8e
    invoke-virtual {v2, v4, v14}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 2042
    move-object/from16 v16, v0

    .end local v0    # "target":Landroid/graphics/Bitmap;
    .local v16, "target":Landroid/graphics/Bitmap;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v4, v14}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2051
    .end local v4    # "area":Landroid/graphics/RectF;
    .end local v7    # "subArea":Landroid/graphics/RectF;
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v14    # "color":Landroid/app/WallpaperColors;
    .end local v15    # "currentColor":Landroid/app/WallpaperColors;
    .end local v16    # "target":Landroid/graphics/Bitmap;
    :cond_9d
    move-object/from16 v2, p1

    goto :goto_24

    .line 2021
    .restart local v4    # "area":Landroid/graphics/RectF;
    .restart local v7    # "subArea":Landroid/graphics/RectF;
    .restart local v8    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    .restart local v11    # "width":I
    .restart local v12    # "height":I
    :catch_a0
    move-exception v0

    move/from16 v13, p5

    .line 2022
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WallpaperService"

    const-string v14, "Error creating page local color bitmap"

    invoke-static {v2, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    move-object/from16 v2, p1

    goto/16 :goto_24

    .line 2052
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "area":Landroid/graphics/RectF;
    .end local v7    # "subArea":Landroid/graphics/RectF;
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "width":I
    .end local v12    # "height":I
    :cond_ae
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v13, p5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2053
    return-void

    .line 2001
    :cond_b8
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v13, p5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessLocalColors should be called from the background thread"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateWallpaperDimming(F)V
    .registers 8
    .param p1, "dimAmount"    # F

    .line 1054
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    .line 1057
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-nez v1, :cond_f

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    goto :goto_17

    .line 1058
    :cond_f
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCustomDimAmount:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_17
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1060
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetENABLE_WALLPAPER_DIMMING()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_a8

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1061
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_34

    goto :goto_a8

    .line 1066
    :cond_34
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1069
    .local v1, "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "WallpaperService"

    const/4 v5, 0x0

    if-nez v2, :cond_83

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting wallpaper dimming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v5

    aput v2, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1076
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1077
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1086
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1092
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1093
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_94

    .line 1094
    :cond_83
    const-string v2, "Setting wallpaper dimming: 0"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1096
    invoke-virtual {p0, v5, v5, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1099
    :goto_94
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 1102
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 1103
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->offloadColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDimAmountChanged(F)V

    .line 1104
    :cond_a7
    return-void

    .line 1063
    .end local v1    # "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    :cond_a8
    :goto_a8
    return-void
.end method

.method private blacklist validStep(F)Z
    .registers 3
    .param p1, "step"    # F

    .line 2150
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2102
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2106
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2112
    return-void
.end method

.method greylist-max-o attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 10
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1582
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1583
    return-void

    .line 1586
    :cond_5
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1587
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1588
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1589
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 1590
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 1591
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1592
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 1594
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 1596
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1598
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayListenerPerformanceImprovements()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1600
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->committedStateSeparateEvent()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1601
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1602
    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1601
    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x8

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    goto :goto_63

    .line 1605
    :cond_54
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1606
    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1605
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1608
    :goto_63
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1610
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 1611
    const/16 v1, 0x7dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1612
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 1614
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getCommittedState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1615
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1616
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1615
    invoke-virtual {v0, v1}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1619
    const-string v0, "WPMS.Engine.onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1621
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1625
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1626
    const-string v1, "WPMS.Engine.updateSurface"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1628
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1629
    return-void
.end method

.method public greylist-max-o detach()V
    .registers 6

    .line 2347
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 2348
    return-void

    .line 2351
    :cond_5
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 2353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 2355
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1e

    .line 2356
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2359
    :cond_1e
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2360
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2362
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2365
    :cond_28
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 2368
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2370
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2371
    :try_start_31
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_85

    const/4 v3, 0x0

    if-eqz v2, :cond_76

    .line 2378
    :try_start_36
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v2, :cond_41

    .line 2379
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 2380
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 2383
    :cond_41
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4c} :catch_4d
    .catchall {:try_start_36 .. :try_end_4c} :catchall_85

    .line 2385
    goto :goto_4e

    .line 2384
    :catch_4d
    move-exception v2

    .line 2386
    :goto_4e
    :try_start_4e
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2387
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v2, :cond_60

    .line 2388
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v2}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2389
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2391
    :cond_60
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_74

    .line 2392
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2393
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2395
    :cond_74
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 2398
    :cond_76
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_83

    .line 2399
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2400
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2401
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    .line 2403
    :cond_83
    monitor-exit v0

    .line 2404
    return-void

    .line 2403
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_4e .. :try_end_87} :catchall_85

    throw v1
.end method

.method public blacklist doAmbientModeChanged(ZJ)V
    .registers 5
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 1657
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_d

    .line 1662
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    .line 1663
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_d

    .line 1664
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    .line 1667
    :cond_d
    return-void
.end method

.method greylist-max-o doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 2155
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_36

    .line 2156
    const-string v0, "android.wallpaper.freeze"

    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    if-nez v0, :cond_18

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2157
    :cond_18
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    .line 2159
    :cond_23
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_39

    .line 2162
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_36
    move-object v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    .line 2164
    .local v2, "result":Landroid/os/Bundle;
    :goto_39
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_4a

    .line 2167
    :try_start_3d
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_48} :catch_49

    .line 2169
    goto :goto_4a

    .line 2168
    :catch_49
    move-exception v0

    .line 2171
    :cond_4a
    :goto_4a
    return-void
.end method

.method greylist-max-o doDesiredSizeChanged(II)V
    .registers 4
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 1670
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_13

    .line 1673
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 1674
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 1675
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 1676
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1678
    :cond_13
    return-void
.end method

.method greylist-max-o doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1681
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1a

    .line 1683
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1684
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1685
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1688
    :cond_1a
    return-void
.end method

.method greylist-max-o doOffsetsChanged(Z)V
    .registers 13
    .param p1, "always"    # Z

    .line 1765
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 1766
    return-void

    .line 1769
    :cond_5
    if-nez p1, :cond_c

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_c

    .line 1770
    return-void

    .line 1778
    :cond_c
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1779
    :try_start_f
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    move v3, v0

    .line 1780
    .local v3, "xOffset":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 1781
    .local v4, "yOffset":F
    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1782
    .local v5, "xOffsetStep":F
    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 1783
    .local v6, "yOffsetStep":F
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v9, v0

    .line 1784
    .local v9, "sync":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 1785
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 1786
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_69

    .line 1788
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v1, :cond_55

    .line 1789
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v1, :cond_50

    .line 1792
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v1, v2

    .line 1793
    .local v1, "availw":I
    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_3a

    int-to-float v7, v1

    mul-float/2addr v7, v3

    add-float/2addr v7, v2

    float-to-int v7, v7

    neg-int v7, v7

    goto :goto_3b

    :cond_3a
    move v7, v0

    .line 1794
    .local v7, "xPixels":I
    :goto_3b
    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v8, v8, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v10, v8, v10

    .line 1795
    .local v10, "availh":I
    if-lez v10, :cond_4a

    int-to-float v0, v10

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    :cond_4a
    move v8, v0

    .line 1796
    .local v8, "yPixels":I
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1797
    .end local v1    # "availw":I
    .end local v7    # "xPixels":I
    .end local v8    # "yPixels":I
    .end local v10    # "availh":I
    goto :goto_56

    .line 1798
    :cond_50
    move-object v2, p0

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    goto :goto_56

    .line 1788
    :cond_55
    move-object v2, p0

    .line 1802
    :goto_56
    if-eqz v9, :cond_65

    .line 1805
    :try_start_58
    iget-object v0, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_63} :catch_64

    .line 1807
    goto :goto_65

    .line 1806
    :catch_64
    move-exception v0

    .line 1811
    :cond_65
    :goto_65
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1812
    return-void

    .line 1786
    .end local v3    # "xOffset":F
    .end local v4    # "yOffset":F
    .end local v5    # "xOffsetStep":F
    .end local v6    # "yOffsetStep":F
    .end local v9    # "sync":Z
    :catchall_69
    move-exception v0

    move-object v2, p0

    :goto_6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6d

    throw v0

    :catchall_6d
    move-exception v0

    goto :goto_6b
.end method

.method greylist-max-o doVisibilityChanged(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 1698
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_12

    .line 1699
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    .line 1701
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_15

    .line 1703
    :cond_12
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1705
    :cond_15
    :goto_15
    return-void
.end method

.method protected whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1117
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1120
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1121
    const-string v0, " mIsScreenTurningOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1122
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1123
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1124
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1125
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->noDuplicateSurfaceDestroyedEvents()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1126
    const-string v0, " mReportedSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1128
    :cond_70
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1129
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1130
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1131
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1132
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1133
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1134
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1135
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1136
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1137
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1138
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1139
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinFrames="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1140
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1142
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1143
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZoom="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1144
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPreviewSurfacePosition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mPendingResizeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1147
    .local v0, "pendingCount":I
    if-eqz v0, :cond_14a

    .line 1148
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingResizeCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1150
    :cond_14a
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1151
    :try_start_14d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingXOffset="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1152
    const-string v2, " mPendingXOffset="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingXOffsetStep="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1155
    const-string v2, " mPendingXOffsetStep="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1156
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1158
    const-string v2, " mPendingSync="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1159
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1a7

    .line 1160
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingMove="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1162
    :cond_1a7
    monitor-exit v1

    .line 1163
    return-void

    .line 1162
    :catchall_1a9
    move-exception v2

    monitor-exit v1
    :try_end_1ab
    .catchall {:try_start_14d .. :try_end_1ab} :catchall_1a9

    throw v2
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 2

    .line 604
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 2

    .line 595
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public whitelist getDisplayContext()Landroid/content/Context;
    .registers 2

    .line 1644
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 579
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public whitelist getWallpaperFlags()I
    .registers 2

    .line 586
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWhich:I

    return v0
.end method

.method public blacklist getZoom()F
    .registers 2

    .line 755
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public whitelist isInAmbientMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 645
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public whitelist isPreview()Z
    .registers 2

    .line 635
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 613
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public whitelist notifyColorsChanged()V
    .registers 9

    .line 951
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_c

    .line 952
    const-string v0, "Ignoring notifyColorsChanged(), Engine has already been destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 956
    :cond_c
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 957
    .local v2, "now":J
    iget-wide v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_39

    .line 958
    const-string v0, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 962
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 964
    :cond_38
    return-void

    .line 966
    :cond_39
    iput-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 967
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 970
    :try_start_42
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v0

    .line 971
    .local v0, "newColors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v4, :cond_56

    .line 972
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_5b

    .line 974
    :cond_56
    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_5b
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 978
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_61} :catch_62

    .line 981
    .end local v0    # "newColors":Landroid/app/WallpaperColors;
    goto :goto_68

    .line 979
    :catch_62
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_68
    return-void
.end method

.method public blacklist notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1011
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/app/WallpaperColors;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1012
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 1013
    .local v1, "color":Landroid/app/WallpaperColors;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1014
    .local v2, "area":Landroid/graphics/RectF;
    if-eqz v1, :cond_31

    if-nez v2, :cond_1e

    .line 1019
    goto :goto_31

    .line 1022
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1025
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 1022
    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 1029
    goto :goto_31

    .line 1027
    :catch_2a
    move-exception v3

    .line 1028
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1011
    .end local v1    # "color":Landroid/app/WallpaperColors;
    .end local v2    # "area":Landroid/graphics/RectF;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1031
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1032
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 1033
    .local v0, "primaryColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    .line 1034
    return-void
.end method

.method public whitelist onAmbientModeChanged(ZJ)V
    .registers 4
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 856
    return-void
.end method

.method public whitelist onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;
    .registers 3
    .param p1, "which"    # I

    .line 943
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .registers 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 793
    return-void
.end method

.method public whitelist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 838
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComputeColors()Landroid/app/WallpaperColors;
    .registers 2

    .line 999
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 764
    return-void
.end method

.method public whitelist onDesiredSizeChanged(II)V
    .registers 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 873
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 773
    return-void
.end method

.method public blacklist onDimAmountChanged(F)V
    .registers 2
    .param p1, "dimAmount"    # F

    .line 865
    return-void
.end method

.method public whitelist onOffsetsChanged(FFFFII)V
    .registers 7
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .line 816
    return-void
.end method

.method blacklist onScreenTurningOnChanged(Z)V
    .registers 3
    .param p1, "isScreenTurningOn"    # Z

    .line 1691
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_a

    .line 1692
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    .line 1693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility(Z)V

    .line 1695
    :cond_a
    return-void
.end method

.method public whitelist onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 881
    return-void
.end method

.method public whitelist onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 897
    return-void
.end method

.method public whitelist onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 905
    return-void
.end method

.method public whitelist onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 889
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 804
    return-void
.end method

.method public whitelist onVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 782
    return-void
.end method

.method public whitelist onWallpaperFlagsChanged(I)V
    .registers 2
    .param p1, "which"    # I

    .line 915
    return-void
.end method

.method public whitelist onZoomChanged(F)V
    .registers 2
    .param p1, "zoom"    # F

    .line 926
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 2120
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2121
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2136
    return-void
.end method

.method public blacklist reportEngineShown(Z)V
    .registers 7
    .param p1, "waitForEngineShown"    # Z

    .line 679
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_7

    return-void

    .line 680
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.reportEngineShown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportEngineShown: shouldWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v0, 0x27a6

    if-nez p1, :cond_4b

    .line 683
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 684
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 685
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 686
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_66

    .line 688
    :cond_4b
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_66

    .line 689
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 693
    .end local v0    # "message":Landroid/os/Message;
    :cond_66
    :goto_66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 694
    return-void
.end method

.method greylist-max-o reportSurfaceDestroyed()V
    .registers 6

    .line 2325
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->noDuplicateSurfaceDestroyedEvents()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-nez v0, :cond_14

    .line 2326
    :cond_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->noDuplicateSurfaceDestroyedEvents()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    if-eqz v0, :cond_38

    .line 2327
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 2328
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    .line 2329
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2330
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2331
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_33

    .line 2332
    array-length v2, v1

    :goto_27
    if-ge v0, v2, :cond_33

    aget-object v3, v1, v0

    .line 2333
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2332
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 2338
    :cond_33
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2340
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_38
    return-void
.end method

.method blacklist reportVisibility(Z)V
    .registers 7
    .param p1, "forceReport"    # Z

    .line 1708
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_9

    .line 1710
    return-void

    .line 1712
    :cond_9
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_69

    .line 1713
    nop

    .line 1714
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getCommittedState()I

    move-result v0

    :goto_1b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1715
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsScreenTurningOn:Z

    if-nez v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 1717
    .local v0, "displayFullyOn":Z
    :goto_2d
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v3, :cond_35

    .line 1718
    move v3, v1

    goto :goto_3d

    .line 1719
    :cond_35
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v3

    :goto_3d
    nop

    .line 1721
    .local v3, "supportsAmbientMode":Z
    iget-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v4, :cond_47

    if-nez v0, :cond_46

    if-eqz v3, :cond_47

    :cond_46
    goto :goto_48

    :cond_47
    move v2, v1

    .line 1733
    .local v2, "visible":Z
    :goto_48
    iget-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-ne v4, v2, :cond_4e

    if-eqz p1, :cond_69

    .line 1734
    :cond_4e
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1745
    if-eqz v2, :cond_58

    .line 1749
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1751
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1754
    :cond_58
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1755
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v1, :cond_66

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v1, :cond_66

    .line 1757
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    .line 1759
    :cond_66
    invoke-static {v2, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1762
    .end local v0    # "displayFullyOn":Z
    .end local v2    # "visible":Z
    .end local v3    # "supportsAmbientMode":Z
    :cond_69
    return-void
.end method

.method blacklist scaleAndCropScreenshot()V
    .registers 12

    .line 2228
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 2229
    return-void

    .line 2231
    :cond_5
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_87

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_12

    goto :goto_87

    .line 2237
    :cond_12
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2240
    .local v4, "scaleFactor":F
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 2241
    .local v0, "diffX":I
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 2247
    .local v1, "diffY":I
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2248
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v0, 0x2

    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    div-int/lit8 v9, v1, 0x2

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2252
    invoke-virtual {v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    neg-int v6, v1

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 2259
    invoke-virtual {v2, v3, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 2260
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2261
    return-void

    .line 2232
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v4    # "scaleFactor":F
    :cond_87
    :goto_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected screenshot size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    return-void
.end method

.method public greylist-max-o setCreated(Z)V
    .registers 2
    .param p1, "created"    # Z

    .line 1113
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1114
    return-void
.end method

.method public greylist setFixedSizeAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 746
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 747
    return-void
.end method

.method public whitelist setOffsetNotificationsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 721
    if-eqz p1, :cond_7

    .line 722
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_b

    .line 724
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 726
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 729
    :cond_15
    return-void
.end method

.method public blacklist setShowForAllUsers(Z)V
    .registers 3
    .param p1, "show"    # Z

    .line 733
    if-eqz p1, :cond_7

    .line 734
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_b

    .line 736
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 738
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 741
    :cond_15
    return-void
.end method

.method public whitelist setTouchEventsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 704
    if-eqz p1, :cond_7

    .line 705
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_b

    .line 706
    :cond_7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_b
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 707
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_15

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 710
    :cond_15
    return-void
.end method

.method public blacklist setZoom(F)V
    .registers 5
    .param p1, "zoom"    # F

    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, "updated":Z
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_4
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v2, :cond_b

    .line 1183
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1185
    :cond_b
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_16

    .line 1186
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1187
    const/4 v0, 0x1

    .line 1189
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_23

    .line 1191
    if-eqz v0, :cond_22

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_22

    .line 1192
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    .line 1194
    :cond_22
    return-void

    .line 1189
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public blacklist shouldWaitForEngineShown()Z
    .registers 2

    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldZoomOutWallpaper()Z
    .registers 3

    .line 657
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/32 v0, 0x103e6fd3

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist supportsLocalColorExtraction()Z
    .registers 2

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method blacklist updatePage(Landroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIF)V
    .registers 28
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p3, "pageIndx"    # I
    .param p4, "numPages"    # I
    .param p5, "wallpaperDimAmount"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/wallpaper/EngineWindowPage;",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;IIF)V"
        }
    .end annotation

    .line 1940
    .local p2, "areas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/RectF;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long v9, v2, v4

    .line 1941
    .local v9, "current":J
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v2

    sub-long v11, v9, v2

    .line 1944
    .local v11, "lapsed":J
    cmp-long v0, v11, v4

    if-gez v0, :cond_16

    return-void

    .line 1946
    :cond_16
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    .line 1947
    .local v13, "surface":Landroid/view/Surface;
    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    .line 1948
    :cond_23
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move v14, v0

    .line 1949
    .local v14, "widthIsLarger":Z
    if-eqz v14, :cond_38

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_3c

    .line 1950
    :cond_38
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_3c
    move v15, v0

    .line 1951
    .local v15, "smaller":I
    const/high16 v0, 0x42800000    # 64.0f

    int-to-float v2, v15

    div-float v16, v0, v2

    .line 1952
    .local v16, "ratio":F
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v2, v0

    .line 1953
    .local v2, "width":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v3, v0

    .line 1954
    .local v3, "height":I
    const-string v4, "WallpaperService"

    if-lez v2, :cond_b0

    if-gtz v3, :cond_63

    move-wide/from16 v18, v11

    move/from16 v20, v14

    move/from16 v21, v15

    move v11, v2

    move v12, v3

    move-object v15, v4

    goto/16 :goto_b9

    .line 1958
    :cond_63
    const-string v17, "WallpaperService#pixelCopy"

    .line 1959
    .local v17, "pixelCopySectionName":Ljava/lang/String;
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPixelCopyCount:I

    move v5, v0

    .line 1960
    .local v5, "pixelCopyCount":I
    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 1961
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1963
    .local v8, "screenShot":Landroid/graphics/Bitmap;
    move-object v6, v8

    .line 1966
    .local v6, "screenShot":Landroid/graphics/Bitmap;
    .local v8, "finalScreenShot":Landroid/graphics/Bitmap;
    :try_start_78
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_7a} :catch_9e

    move/from16 v7, p5

    move-wide/from16 v18, v11

    move/from16 v20, v14

    move/from16 v21, v15

    move v11, v2

    move v12, v3

    move-object v15, v4

    move v2, v5

    move-object v14, v6

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .end local v3    # "height":I
    .end local v5    # "pixelCopyCount":I
    .end local v6    # "screenShot":Landroid/graphics/Bitmap;
    .end local v15    # "smaller":I
    .local v2, "pixelCopyCount":I
    .local v11, "width":I
    .local v12, "height":I
    .local v14, "screenShot":Landroid/graphics/Bitmap;
    .local v18, "lapsed":J
    .local v20, "widthIsLarger":Z
    .local v21, "smaller":I
    :try_start_8f
    invoke-direct/range {v0 .. v10}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;ILandroid/service/wallpaper/EngineWindowPage;Ljava/util/Set;IIFLandroid/graphics/Bitmap;J)V

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v13, v14, v0, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_9b} :catch_9c

    .line 1994
    goto :goto_af

    .line 1989
    :catch_9c
    move-exception v0

    goto :goto_aa

    .end local v12    # "height":I
    .end local v18    # "lapsed":J
    .end local v20    # "widthIsLarger":Z
    .end local v21    # "smaller":I
    .local v2, "width":I
    .restart local v3    # "height":I
    .restart local v5    # "pixelCopyCount":I
    .restart local v6    # "screenShot":Landroid/graphics/Bitmap;
    .local v11, "lapsed":J
    .local v14, "widthIsLarger":Z
    .restart local v15    # "smaller":I
    :catch_9e
    move-exception v0

    move-wide/from16 v18, v11

    move/from16 v20, v14

    move/from16 v21, v15

    move v11, v2

    move v12, v3

    move-object v15, v4

    move v2, v5

    move-object v14, v6

    .line 1993
    .end local v3    # "height":I
    .end local v5    # "pixelCopyCount":I
    .end local v6    # "screenShot":Landroid/graphics/Bitmap;
    .end local v15    # "smaller":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v2, "pixelCopyCount":I
    .local v11, "width":I
    .restart local v12    # "height":I
    .local v14, "screenShot":Landroid/graphics/Bitmap;
    .restart local v18    # "lapsed":J
    .restart local v20    # "widthIsLarger":Z
    .restart local v21    # "smaller":I
    :goto_aa
    const-string v3, "Cancelling processLocalColors: exception caught during PixelCopy"

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_af
    return-void

    .line 1954
    .end local v8    # "finalScreenShot":Landroid/graphics/Bitmap;
    .end local v12    # "height":I
    .end local v17    # "pixelCopySectionName":Ljava/lang/String;
    .end local v18    # "lapsed":J
    .end local v20    # "widthIsLarger":Z
    .end local v21    # "smaller":I
    .local v2, "width":I
    .restart local v3    # "height":I
    .local v11, "lapsed":J
    .local v14, "widthIsLarger":Z
    .restart local v15    # "smaller":I
    :cond_b0
    move-wide/from16 v18, v11

    move/from16 v20, v14

    move/from16 v21, v15

    move v11, v2

    move v12, v3

    move-object v15, v4

    .line 1955
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v14    # "widthIsLarger":Z
    .end local v15    # "smaller":I
    .local v11, "width":I
    .restart local v12    # "height":I
    .restart local v18    # "lapsed":J
    .restart local v20    # "widthIsLarger":Z
    .restart local v21    # "smaller":I
    :goto_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong width and height values of bitmap "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void
.end method

.method greylist-max-o updateSurface(ZZZ)V
    .registers 41
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .line 1213
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v2, "WallpaperService"

    if-eqz v0, :cond_e

    .line 1214
    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void

    .line 1218
    :cond_e
    const/4 v0, 0x0

    .line 1219
    .local v0, "fixedSize":Z
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v3

    .line 1220
    .local v3, "myWidth":I
    if-gtz v3, :cond_19

    const/4 v3, -0x1

    goto :goto_1a

    .line 1221
    :cond_19
    const/4 v0, 0x1

    .line 1222
    :goto_1a
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v4

    .line 1223
    .local v4, "myHeight":I
    if-gtz v4, :cond_26

    const/4 v4, -0x1

    move v5, v4

    move v4, v0

    goto :goto_29

    .line 1224
    :cond_26
    const/4 v0, 0x1

    move v5, v4

    move v4, v0

    .line 1226
    .end local v0    # "fixedSize":Z
    .local v4, "fixedSize":Z
    .local v5, "myHeight":I
    :goto_29
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    .line 1227
    .local v7, "creating":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v6

    move v8, v0

    .line 1228
    .local v8, "surfaceCreating":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v9}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v9

    const/4 v10, 0x0

    if-eq v0, v9, :cond_3f

    move v0, v6

    goto :goto_40

    :cond_3f
    move v0, v10

    :goto_40
    move v9, v0

    .line 1229
    .local v9, "formatChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v0, v3, :cond_4c

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-eq v0, v5, :cond_4a

    goto :goto_4c

    :cond_4a
    move v0, v10

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v0, v6

    :goto_4d
    move v11, v0

    .line 1230
    .local v11, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v6

    move v12, v0

    .line 1231
    .local v12, "insetsChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v13}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v13

    if-eq v0, v13, :cond_5e

    move v0, v6

    goto :goto_5f

    :cond_5e
    move v0, v10

    :goto_5f
    move v13, v0

    .line 1232
    .local v13, "typeChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v14, :cond_6f

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v14, :cond_6d

    goto :goto_6f

    :cond_6d
    move v0, v10

    goto :goto_70

    :cond_6f
    :goto_6f
    move v0, v6

    :goto_70
    move v14, v0

    .line 1234
    .local v14, "flagsChanged":Z
    if-nez p1, :cond_96

    if-nez v7, :cond_96

    if-nez v8, :cond_96

    if-nez v9, :cond_96

    if-nez v11, :cond_96

    if-nez v13, :cond_96

    if-nez v14, :cond_96

    if-nez p3, :cond_96

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_88

    goto :goto_96

    :cond_88
    move/from16 v36, v3

    move/from16 v24, v4

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    goto/16 :goto_655

    .line 1242
    :cond_96
    :goto_96
    :try_start_96
    iput v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 1243
    iput v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1244
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 1245
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 1247
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1248
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1250
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v15, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1252
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 1253
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit16 v15, v15, 0x200

    const/high16 v16, 0x10000

    or-int v15, v15, v16

    or-int/lit16 v15, v15, 0x100

    or-int/lit8 v15, v15, 0x8

    iput v15, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1259
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v15, v0

    .line 1260
    .local v15, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_de} :catch_648

    move-object v6, v0

    .line 1261
    .local v6, "maxBounds":Landroid/graphics/Rect;
    const/4 v0, -0x1

    if-ne v3, v0, :cond_106

    if-ne v5, v0, :cond_106

    .line 1263
    :try_start_e4
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1264
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1265
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, -0x4001

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f4} :catch_f7

    move/from16 v24, v4

    goto :goto_137

    .line 1546
    .end local v6    # "maxBounds":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    :catch_f7
    move-exception v0

    move/from16 v36, v3

    move/from16 v24, v4

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    goto/16 :goto_655

    .line 1267
    .restart local v6    # "maxBounds":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    :cond_106
    nop

    .line 1268
    :try_start_107
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v10, v3

    div-float/2addr v0, v10

    .line 1269
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_112} :catch_648

    int-to-float v10, v10

    move/from16 v24, v4

    .end local v4    # "fixedSize":Z
    .local v24, "fixedSize":Z
    int-to-float v4, v5

    div-float/2addr v10, v4

    .line 1267
    :try_start_117
    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1270
    .local v0, "layoutScale":F
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v10, v3

    mul-float/2addr v10, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v10, v10, v17

    float-to-int v10, v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1271
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v10, v5

    mul-float/2addr v10, v0

    add-float v10, v10, v17

    float-to-int v10, v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1272
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1275
    .end local v0    # "layoutScale":F
    :goto_137
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 1276
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1278
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1279
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1281
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_14f} :catch_63c

    if-nez v0, :cond_1e4

    .line 1283
    :try_start_151
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1284
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800033

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1285
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1286
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x103031e

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1289
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v31, v0

    .line 1291
    .local v31, "inputChannel":Landroid/view/InputChannel;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1292
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v29

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v30

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    move-object/from16 v32, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:Landroid/view/InsetsSourceControl$Array;

    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V
    :try_end_1a0
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_1a0} :catch_1d7

    move-object/from16 v33, v0

    move/from16 v36, v3

    const/4 v3, 0x1

    .end local v3    # "myWidth":I
    .local v36, "myWidth":I
    :try_start_1a5
    new-array v0, v3, [F

    .line 1291
    const/16 v28, 0x0

    move-object/from16 v35, v0

    move-object/from16 v26, v4

    move-object/from16 v27, v10

    invoke-interface/range {v25 .. v35}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    move-object/from16 v3, v31

    .end local v31    # "inputChannel":Landroid/view/InputChannel;
    .local v3, "inputChannel":Landroid/view/InputChannel;
    if-gez v0, :cond_1bd

    .line 1295
    const-string v0, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void

    .line 1298
    :cond_1bd
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v10

    invoke-interface {v0, v4, v10}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1299
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1301
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1302
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1a5 .. :try_end_1d6} :catch_1fe

    goto :goto_1e6

    .line 1546
    .end local v6    # "maxBounds":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v36    # "myWidth":I
    .local v3, "myWidth":I
    :catch_1d7
    move-exception v0

    move/from16 v36, v3

    move/from16 v3, p3

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    .end local v3    # "myWidth":I
    .restart local v36    # "myWidth":I
    goto/16 :goto_655

    .line 1281
    .end local v36    # "myWidth":I
    .restart local v3    # "myWidth":I
    .restart local v6    # "maxBounds":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    :cond_1e4
    move/from16 v36, v3

    .line 1305
    .end local v3    # "myWidth":I
    .restart local v36    # "myWidth":I
    :goto_1e6
    :try_start_1e6
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1306
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1e6 .. :try_end_1f0} :catch_632

    .line 1308
    if-nez v24, :cond_209

    .line 1309
    :try_start_1f2
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1fd
    .catch Landroid/os/RemoteException; {:try_start_1f2 .. :try_end_1fd} :catch_1fe

    goto :goto_211

    .line 1546
    .end local v6    # "maxBounds":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    :catch_1fe
    move-exception v0

    move/from16 v3, p3

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    goto/16 :goto_655

    .line 1311
    .restart local v6    # "maxBounds":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    :cond_209
    :try_start_209
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1313
    :goto_211
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move-object/from16 v25, v0

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v29, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRelayoutResult:Landroid/view/WindowRelayoutResult;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v34, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v10

    invoke-interface/range {v25 .. v34}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    move-result v0

    move v3, v0

    .line 1315
    .local v3, "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1316
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v4, v0

    .line 1317
    .local v4, "outMaxBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_209 .. :try_end_247} :catch_632

    if-nez v0, :cond_288

    .line 1318
    :try_start_249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry updateSurface because bounds changed from relayout: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " -> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1321
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 1322
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1323
    if-eqz p3, :cond_27b

    const/4 v10, 0x1

    goto :goto_27c

    :cond_27b
    const/4 v10, 0x0

    .line 1322
    :goto_27c
    move/from16 v25, v3

    .end local v3    # "relayoutResult":I
    .local v25, "relayoutResult":I
    const/16 v3, 0x272e

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_287
    .catch Landroid/os/RemoteException; {:try_start_249 .. :try_end_287} :catch_1fe

    .line 1324
    return-void

    .line 1326
    .end local v25    # "relayoutResult":I
    .restart local v3    # "relayoutResult":I
    :cond_288
    move/from16 v25, v3

    .end local v3    # "relayoutResult":I
    .restart local v25    # "relayoutResult":I
    :try_start_28a
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    const/16 v22, 0x0

    move-object/from16 v23, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v18, v6

    move-object/from16 v21, v10

    .end local v6    # "maxBounds":Landroid/graphics/Rect;
    .local v18, "maxBounds":Landroid/graphics/Rect;
    invoke-static/range {v17 .. v23}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 1329
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0
    :try_end_2ad
    .catch Landroid/os/RemoteException; {:try_start_28a .. :try_end_2ad} :catch_632

    if-eqz v0, :cond_328

    .line 1330
    :try_start_2af
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1331
    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    add-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x4

    .line 1330
    invoke-static {v0}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v0

    .line 1332
    .local v0, "transformHint":I
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1333
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_30c

    .line 1334
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "Wallpaper BBQ wrapper"

    .line 1335
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 1336
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 1337
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1338
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "Wallpaper#relayout"

    .line 1339
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 1340
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1341
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1343
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0161

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1349
    .local v3, "frameRateCompat":I
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setDefaultFrameRateCompatibility(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    .line 1350
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1354
    .end local v2    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "frameRateCompat":I
    :cond_30c
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1355
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v2, v3, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v2

    .line 1360
    .local v2, "blastSurface":Landroid/view/Surface;
    if-eqz v2, :cond_328

    .line 1361
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_328
    .catch Landroid/os/RemoteException; {:try_start_2af .. :try_end_328} :catch_1fe

    .line 1364
    .end local v0    # "transformHint":I
    .end local v2    # "blastSurface":Landroid/view/Surface;
    :cond_328
    :try_start_328
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_330
    .catch Landroid/os/RemoteException; {:try_start_328 .. :try_end_330} :catch_632

    if-nez v0, :cond_33f

    .line 1365
    :try_start_332
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V
    :try_end_33f
    .catch Landroid/os/RemoteException; {:try_start_332 .. :try_end_33f} :catch_1fe

    .line 1371
    :cond_33f
    :try_start_33f
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1372
    .local v0, "w":I
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1374
    .local v2, "h":I
    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    .line 1375
    .local v3, "rawCutout":Landroid/view/DisplayCutout;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v6, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1376
    .local v6, "visibleFrame":Landroid/graphics/Rect;
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v10}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1377
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 1378
    invoke-virtual {v15}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v29

    move/from16 v17, v0

    .end local v0    # "w":I
    .local v17, "w":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v30, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    iget-object v0, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1380
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v34

    .line 1377
    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v27, v6

    move-object/from16 v26, v10

    .end local v6    # "visibleFrame":Landroid/graphics/Rect;
    .local v27, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v35}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0
    :try_end_395
    .catch Landroid/os/RemoteException; {:try_start_33f .. :try_end_395} :catch_632

    .line 1383
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    if-nez v24, :cond_3c9

    .line 1384
    :try_start_397
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 1385
    .local v6, "padding":Landroid/graphics/Rect;
    iget v10, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v2

    .end local v2    # "h":I
    .local v19, "h":I
    iget v2, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    add-int v2, v17, v10

    .line 1386
    .end local v17    # "w":I
    .local v2, "w":I
    iget v10, v6, Landroid/graphics/Rect;->top:I

    move/from16 v17, v2

    .end local v2    # "w":I
    .restart local v17    # "w":I
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    add-int v2, v19, v10

    .line 1387
    .end local v19    # "h":I
    .local v2, "h":I
    iget v10, v6, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    move/from16 v19, v2

    .end local v2    # "h":I
    .restart local v19    # "h":I
    iget v2, v6, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v20, v3

    .end local v3    # "rawCutout":Landroid/view/DisplayCutout;
    .local v20, "rawCutout":Landroid/view/DisplayCutout;
    iget v3, v6, Landroid/graphics/Rect;->right:I

    neg-int v3, v3

    move-object/from16 v21, v4

    .end local v4    # "outMaxBounds":Landroid/graphics/Rect;
    .local v21, "outMaxBounds":Landroid/graphics/Rect;
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    neg-int v4, v4

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v2
    :try_end_3c3
    .catch Landroid/os/RemoteException; {:try_start_397 .. :try_end_3c3} :catch_1fe

    move-object v0, v2

    .line 1389
    .end local v6    # "padding":Landroid/graphics/Rect;
    move/from16 v3, v17

    move/from16 v4, v19

    goto :goto_3d5

    .line 1390
    .end local v19    # "h":I
    .end local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v2    # "h":I
    .restart local v3    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v4    # "outMaxBounds":Landroid/graphics/Rect;
    :cond_3c9
    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v2    # "h":I
    .end local v3    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v4    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v19    # "h":I
    .restart local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v21    # "outMaxBounds":Landroid/graphics/Rect;
    move/from16 v2, v36

    .line 1391
    .end local v17    # "w":I
    .local v2, "w":I
    move v3, v5

    .end local v19    # "h":I
    .local v3, "h":I
    move v4, v3

    move v3, v2

    move-object v2, v0

    .line 1394
    .end local v0    # "windowInsets":Landroid/view/WindowInsets;
    .local v2, "windowInsets":Landroid/view/WindowInsets;
    .local v3, "w":I
    .local v4, "h":I
    :goto_3d5
    :try_start_3d5
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_3d7
    .catch Landroid/os/RemoteException; {:try_start_3d5 .. :try_end_3d7} :catch_632

    if-eq v0, v3, :cond_3dc

    .line 1395
    const/4 v11, 0x1

    .line 1396
    :try_start_3da
    iput v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_3dc
    .catch Landroid/os/RemoteException; {:try_start_3da .. :try_end_3dc} :catch_1fe

    .line 1398
    :cond_3dc
    :try_start_3dc
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_3de
    .catch Landroid/os/RemoteException; {:try_start_3dc .. :try_end_3de} :catch_632

    if-eq v0, v4, :cond_3f1

    .line 1399
    const/4 v6, 0x1

    .line 1400
    .end local v11    # "sizeChanged":Z
    .local v6, "sizeChanged":Z
    :try_start_3e1
    iput v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_3e3
    .catch Landroid/os/RemoteException; {:try_start_3e1 .. :try_end_3e3} :catch_3e5

    move v11, v6

    goto :goto_3f1

    .line 1546
    .end local v2    # "windowInsets":Landroid/view/WindowInsets;
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v25    # "relayoutResult":I
    .end local v27    # "visibleFrame":Landroid/graphics/Rect;
    :catch_3e5
    move-exception v0

    move/from16 v3, p3

    move/from16 v19, v5

    move v11, v6

    move/from16 v29, v7

    move/from16 v33, v8

    goto/16 :goto_655

    .line 1407
    .end local v6    # "sizeChanged":Z
    .restart local v2    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v3    # "w":I
    .restart local v4    # "h":I
    .restart local v11    # "sizeChanged":Z
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v25    # "relayoutResult":I
    .restart local v27    # "visibleFrame":Landroid/graphics/Rect;
    :cond_3f1
    :goto_3f1
    :try_start_3f1
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v6, v0

    .line 1408
    .local v6, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v10, v0

    .line 1409
    .local v10, "stableInsets":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_407
    .catch Landroid/os/RemoteException; {:try_start_3f1 .. :try_end_407} :catch_632

    if-eqz v0, :cond_40e

    .line 1410
    :try_start_409
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_40d
    .catch Landroid/os/RemoteException; {:try_start_409 .. :try_end_40d} :catch_1fe

    goto :goto_410

    :cond_40e
    move-object/from16 v0, v20

    :goto_410
    move-object/from16 v17, v0

    .line 1411
    .local v17, "displayCutout":Landroid/view/DisplayCutout;
    :try_start_412
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41c

    const/4 v0, 0x1

    goto :goto_41d

    :cond_41c
    const/4 v0, 0x0

    :goto_41d
    or-int/2addr v12, v0

    .line 1412
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_428

    const/4 v0, 0x1

    goto :goto_429

    :cond_428
    const/4 v0, 0x0

    :goto_429
    or-int/2addr v12, v0

    .line 1413
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;
    :try_end_42c
    .catch Landroid/os/RemoteException; {:try_start_412 .. :try_end_42c} :catch_632

    move/from16 v19, v5

    move-object/from16 v5, v17

    .end local v17    # "displayCutout":Landroid/view/DisplayCutout;
    .local v5, "displayCutout":Landroid/view/DisplayCutout;
    .local v19, "myHeight":I
    :try_start_430
    invoke-virtual {v0, v5}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_438

    const/4 v0, 0x1

    goto :goto_439

    :cond_438
    const/4 v0, 0x0

    :goto_439
    or-int/2addr v12, v0

    .line 1415
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1416
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1418
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_44e
    .catch Landroid/os/RemoteException; {:try_start_430 .. :try_end_44e} :catch_62a

    if-nez v0, :cond_45d

    .line 1419
    :try_start_450
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_453
    .catch Landroid/os/RemoteException; {:try_start_450 .. :try_end_453} :catch_454

    .line 1421
    return-void

    .line 1546
    .end local v2    # "windowInsets":Landroid/view/WindowInsets;
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v10    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v25    # "relayoutResult":I
    .end local v27    # "visibleFrame":Landroid/graphics/Rect;
    :catch_454
    move-exception v0

    move/from16 v3, p3

    move/from16 v29, v7

    move/from16 v33, v8

    goto/16 :goto_655

    .line 1424
    .restart local v2    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v3    # "w":I
    .restart local v4    # "h":I
    .restart local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v10    # "stableInsets":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v25    # "relayoutResult":I
    .restart local v27    # "visibleFrame":Landroid/graphics/Rect;
    :cond_45d
    const/16 v17, 0x0

    .line 1427
    .local v17, "didSurface":Z
    move/from16 v22, v3

    .end local v3    # "w":I
    .local v22, "w":I
    :try_start_461
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_466
    .catchall {:try_start_461 .. :try_end_466} :catchall_5f8

    .line 1429
    if-eqz v8, :cond_4ac

    .line 1430
    const/4 v3, 0x1

    :try_start_469
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1431
    const/16 v17, 0x1

    .line 1432
    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedSurfaceCreated:Z

    .line 1435
    const-string v0, "WPMS.Engine.onSurfaceCreated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1436
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1437
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1438
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1439
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_49e

    .line 1440
    array-length v3, v0

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v28, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_488
    if-ge v0, v3, :cond_4ac

    aget-object v29, v28, v0

    move-object/from16 v30, v29

    .line 1441
    .local v30, "c":Landroid/view/SurfaceHolder$Callback;
    move/from16 v29, v0

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v31, v3

    move-object/from16 v3, v30

    .end local v30    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_499
    .catchall {:try_start_469 .. :try_end_499} :catchall_4a1

    .line 1440
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v29, 0x1

    move/from16 v3, v31

    goto :goto_488

    .line 1439
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_49e
    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_4ac

    .line 1536
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_4a1
    move-exception v0

    move/from16 v3, p3

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v33, v8

    goto/16 :goto_601

    .line 1446
    :cond_4ac
    :goto_4ac
    if-nez v7, :cond_4b5

    and-int/lit8 v0, v25, 0x1

    if-eqz v0, :cond_4b3

    goto :goto_4b5

    :cond_4b3
    const/4 v0, 0x0

    goto :goto_4b6

    :cond_4b5
    :goto_4b5
    const/4 v0, 0x1

    :goto_4b6
    or-int v3, p3, v0

    .line 1449
    .end local p3    # "redrawNeeded":Z
    .local v3, "redrawNeeded":Z
    if-nez p2, :cond_4cc

    if-nez v7, :cond_4cc

    if-nez v8, :cond_4cc

    if-nez v9, :cond_4cc

    if-eqz v11, :cond_4c3

    goto :goto_4cc

    :cond_4c3
    move/from16 p3, v3

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v33, v8

    goto :goto_51a

    .line 1462
    :cond_4cc
    :goto_4cc
    const/16 v17, 0x1

    .line 1463
    :try_start_4ce
    const-string v0, "WPMS.Engine.onSurfaceChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1464
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;
    :try_end_4d5
    .catchall {:try_start_4ce .. :try_end_4d5} :catchall_5ee

    move/from16 p3, v3

    .end local v3    # "redrawNeeded":Z
    .restart local p3    # "redrawNeeded":Z
    :try_start_4d7
    iget v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I
    :try_end_4d9
    .catchall {:try_start_4d7 .. :try_end_4d9} :catchall_5f8

    move/from16 v28, v4

    .end local v4    # "h":I
    .local v28, "h":I
    :try_start_4db
    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_4dd
    .catchall {:try_start_4db .. :try_end_4dd} :catchall_5e6

    move/from16 v29, v7

    .end local v7    # "creating":Z
    .local v29, "creating":Z
    :try_start_4df
    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v3, v4, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1466
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1467
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1468
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_516

    .line 1469
    array-length v3, v0

    const/4 v4, 0x0

    :goto_4f1
    if-ge v4, v3, :cond_511

    aget-object v7, v0, v4

    .line 1470
    .local v7, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v30, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v30, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v31, v3

    iget v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move/from16 v32, v4

    iget v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_501
    .catchall {:try_start_4df .. :try_end_501} :catchall_5e0

    move/from16 v33, v8

    .end local v8    # "surfaceCreating":Z
    .local v33, "surfaceCreating":Z
    :try_start_503
    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v7, v0, v3, v4, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1469
    .end local v7    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v32, 0x1

    move-object/from16 v0, v30

    move/from16 v3, v31

    move/from16 v8, v33

    goto :goto_4f1

    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v33    # "surfaceCreating":Z
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "surfaceCreating":Z
    :cond_511
    move-object/from16 v30, v0

    move/from16 v33, v8

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v8    # "surfaceCreating":Z
    .restart local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v33    # "surfaceCreating":Z
    goto :goto_51a

    .line 1468
    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v33    # "surfaceCreating":Z
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "surfaceCreating":Z
    :cond_516
    move-object/from16 v30, v0

    move/from16 v33, v8

    .line 1476
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v8    # "surfaceCreating":Z
    .restart local v33    # "surfaceCreating":Z
    :goto_51a
    if-eqz v12, :cond_539

    .line 1477
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1478
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1479
    iput-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 1483
    const-string v0, "WPMS.Engine.onApplyWindowInsets"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 1485
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_539

    .line 1536
    :catchall_534
    move-exception v0

    move/from16 v3, p3

    goto/16 :goto_601

    .line 1488
    :cond_539
    :goto_539
    if-nez p3, :cond_53d

    if-eqz v11, :cond_573

    .line 1489
    :cond_53d
    const-string v0, "WPMS.Engine.onSurfaceRedrawNeeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1490
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1491
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1492
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1493
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_571

    .line 1494
    array-length v3, v0

    const/4 v4, 0x0

    :goto_554
    if-ge v4, v3, :cond_56e

    aget-object v7, v0, v4

    .line 1495
    .restart local v7    # "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v7, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_567

    .line 1496
    move-object v8, v7

    check-cast v8, Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v30, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    goto :goto_569

    .line 1495
    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_567
    move-object/from16 v30, v0

    .line 1494
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v7    # "c":Landroid/view/SurfaceHolder$Callback;
    .restart local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_569
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v30

    goto :goto_554

    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_56e
    move-object/from16 v30, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_573

    .line 1493
    .end local v30    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_571
    move-object/from16 v30, v0

    .line 1503
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_573
    :goto_573
    if-eqz v17, :cond_5b6

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_5b6

    .line 1504
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z
    :try_end_57b
    .catchall {:try_start_503 .. :try_end_57b} :catchall_534

    const-string v3, "WPMS.Engine.onVisibilityChanged-false"

    if-eqz v0, :cond_5a6

    .line 1509
    :try_start_57f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->noConsecutiveVisibilityEvents()Z

    move-result v0
    :try_end_583
    .catchall {:try_start_57f .. :try_end_583} :catchall_534

    const-string v4, "WPMS.Engine.onVisibilityChanged-true"

    if-eqz v0, :cond_59c

    .line 1511
    :try_start_587
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1512
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1513
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1514
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1515
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1516
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5a6

    .line 1521
    :cond_59c
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1522
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1523
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1526
    :cond_5a6
    :goto_5a6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->noConsecutiveVisibilityEvents()Z

    move-result v0

    if-nez v0, :cond_5b6

    .line 1530
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1531
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1532
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_5b6
    .catchall {:try_start_587 .. :try_end_5b6} :catchall_534

    .line 1536
    :cond_5b6
    const/4 v4, 0x0

    :try_start_5b7
    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1537
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1538
    if-eqz p3, :cond_5cc

    .line 1539
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const v4, 0x7fffffff

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1541
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    .line 1543
    :cond_5cc
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1544
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V
    :try_end_5d6
    .catch Landroid/os/RemoteException; {:try_start_5b7 .. :try_end_5d6} :catch_5db

    .line 1545
    nop

    .line 1547
    .end local v2    # "windowInsets":Landroid/view/WindowInsets;
    .end local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v10    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v17    # "didSurface":Z
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v22    # "w":I
    .end local v25    # "relayoutResult":I
    .end local v27    # "visibleFrame":Landroid/graphics/Rect;
    .end local v28    # "h":I
    move/from16 v3, p3

    goto/16 :goto_655

    .line 1546
    :catch_5db
    move-exception v0

    move/from16 v3, p3

    goto/16 :goto_655

    .line 1536
    .end local v33    # "surfaceCreating":Z
    .restart local v2    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v8    # "surfaceCreating":Z
    .restart local v10    # "stableInsets":Landroid/graphics/Rect;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "didSurface":Z
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .restart local v22    # "w":I
    .restart local v25    # "relayoutResult":I
    .restart local v27    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v28    # "h":I
    :catchall_5e0
    move-exception v0

    move/from16 v33, v8

    move/from16 v3, p3

    .end local v8    # "surfaceCreating":Z
    .restart local v33    # "surfaceCreating":Z
    goto :goto_601

    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .local v7, "creating":Z
    .restart local v8    # "surfaceCreating":Z
    :catchall_5e6
    move-exception v0

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    goto :goto_601

    .end local v28    # "h":I
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .end local p3    # "redrawNeeded":Z
    .restart local v3    # "redrawNeeded":Z
    .restart local v4    # "h":I
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    :catchall_5ee
    move-exception v0

    move/from16 p3, v3

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v33, v8

    .end local v3    # "redrawNeeded":Z
    .end local v4    # "h":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .restart local v28    # "h":I
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    .restart local p3    # "redrawNeeded":Z
    goto :goto_601

    .end local v28    # "h":I
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .restart local v4    # "h":I
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    :catchall_5f8
    move-exception v0

    move/from16 v28, v4

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    .end local v4    # "h":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .end local p3    # "redrawNeeded":Z
    .restart local v3    # "redrawNeeded":Z
    .restart local v28    # "h":I
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    :goto_601
    const/4 v4, 0x0

    :try_start_602
    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1537
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1538
    if-eqz v3, :cond_61a

    .line 1539
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const v8, 0x7fffffff

    .end local v2    # "windowInsets":Landroid/view/WindowInsets;
    .local v16, "windowInsets":Landroid/view/WindowInsets;
    invoke-interface {v4, v7, v2, v8}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 1541
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors()V

    goto :goto_61c

    .line 1538
    .end local v16    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v2    # "windowInsets":Landroid/view/WindowInsets;
    :cond_61a
    move-object/from16 v16, v2

    .line 1543
    .end local v2    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v16    # "windowInsets":Landroid/view/WindowInsets;
    :goto_61c
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1544
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1545
    nop

    .end local v3    # "redrawNeeded":Z
    .end local v9    # "formatChanged":Z
    .end local v11    # "sizeChanged":Z
    .end local v12    # "insetsChanged":Z
    .end local v13    # "typeChanged":Z
    .end local v14    # "flagsChanged":Z
    .end local v19    # "myHeight":I
    .end local v24    # "fixedSize":Z
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .end local v36    # "myWidth":I
    .end local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .end local p1    # "forceRelayout":Z
    .end local p2    # "forceReport":Z
    throw v0
    :try_end_628
    .catch Landroid/os/RemoteException; {:try_start_602 .. :try_end_628} :catch_628

    .line 1546
    .end local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v10    # "stableInsets":Landroid/graphics/Rect;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v16    # "windowInsets":Landroid/view/WindowInsets;
    .end local v17    # "didSurface":Z
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v20    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v21    # "outMaxBounds":Landroid/graphics/Rect;
    .end local v22    # "w":I
    .end local v25    # "relayoutResult":I
    .end local v27    # "visibleFrame":Landroid/graphics/Rect;
    .end local v28    # "h":I
    .restart local v3    # "redrawNeeded":Z
    .restart local v9    # "formatChanged":Z
    .restart local v11    # "sizeChanged":Z
    .restart local v12    # "insetsChanged":Z
    .restart local v13    # "typeChanged":Z
    .restart local v14    # "flagsChanged":Z
    .restart local v19    # "myHeight":I
    .restart local v24    # "fixedSize":Z
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    .restart local v36    # "myWidth":I
    .restart local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .restart local p1    # "forceRelayout":Z
    .restart local p2    # "forceReport":Z
    :catch_628
    move-exception v0

    goto :goto_655

    .end local v3    # "redrawNeeded":Z
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    .restart local p3    # "redrawNeeded":Z
    :catch_62a
    move-exception v0

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    goto :goto_655

    .end local v19    # "myHeight":I
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .local v5, "myHeight":I
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    :catch_632
    move-exception v0

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    .end local v5    # "myHeight":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .restart local v19    # "myHeight":I
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    goto :goto_655

    .end local v19    # "myHeight":I
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .end local v36    # "myWidth":I
    .local v3, "myWidth":I
    .restart local v5    # "myHeight":I
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    :catch_63c
    move-exception v0

    move/from16 v36, v3

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    .end local v3    # "myWidth":I
    .end local v5    # "myHeight":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .restart local v19    # "myHeight":I
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    .restart local v36    # "myWidth":I
    goto :goto_655

    .end local v19    # "myHeight":I
    .end local v24    # "fixedSize":Z
    .end local v29    # "creating":Z
    .end local v33    # "surfaceCreating":Z
    .end local v36    # "myWidth":I
    .restart local v3    # "myWidth":I
    .local v4, "fixedSize":Z
    .restart local v5    # "myHeight":I
    .restart local v7    # "creating":Z
    .restart local v8    # "surfaceCreating":Z
    :catch_648
    move-exception v0

    move/from16 v36, v3

    move/from16 v24, v4

    move/from16 v19, v5

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v3, p3

    .line 1552
    .end local v4    # "fixedSize":Z
    .end local v5    # "myHeight":I
    .end local v7    # "creating":Z
    .end local v8    # "surfaceCreating":Z
    .end local p3    # "redrawNeeded":Z
    .local v3, "redrawNeeded":Z
    .restart local v19    # "myHeight":I
    .restart local v24    # "fixedSize":Z
    .restart local v29    # "creating":Z
    .restart local v33    # "surfaceCreating":Z
    .restart local v36    # "myWidth":I
    :goto_655
    return-void
.end method

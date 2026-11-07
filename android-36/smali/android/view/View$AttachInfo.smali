.class final Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$Callbacks;,
        Landroid/view/View$AttachInfo$InvalidateInfo;
    }
.end annotation


# instance fields
.field greylist-max-o mAccessibilityFetchFlags:I

.field greylist-max-o mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mAccessibilityWindowId:I

.field blacklist mAlwaysConsumeSystemBars:Z

.field greylist mApplicationScale:F

.field greylist-max-o mAutofilledDrawable:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field final blacklist mCaptionInsets:Landroid/graphics/Rect;

.field blacklist mContentCaptureEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field final greylist-max-q mContentInsets:Landroid/graphics/Rect;

.field blacklist mContentOnApplyWindowInsetsListener:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field greylist-max-o mDebugLayout:Z

.field final blacklist mDensity:F

.field greylist-max-o mDisabledSystemUiVisibility:I

.field greylist-max-o mDisplay:Landroid/view/Display;

.field final blacklist mDisplayPixelCount:F

.field greylist-max-r mDisplayState:I

.field blacklist mDragData:Landroid/content/ClipData;

.field public greylist-max-o mDragSurface:Landroid/view/Surface;

.field greylist-max-o mDragToken:Landroid/os/IBinder;

.field greylist mDrawingTime:J

.field greylist-max-o mForceReportNewAttributes:Z

.field final greylist mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field final greylist mHandler:Landroid/os/Handler;

.field greylist-max-o mHandlingPointerEvent:Z

.field greylist-max-o mHardwareAccelerated:Z

.field greylist-max-o mHardwareAccelerationRequested:Z

.field greylist-max-o mHasNonEmptyGivenInternalInsets:Z

.field greylist-max-o mHasSystemUiListeners:Z

.field greylist mHasWindowFocus:Z

.field greylist-max-o mIWindowId:Landroid/view/IWindowId;

.field greylist mInTouchMode:Z

.field final greylist-max-o mInvalidateChildLocation:[I

.field greylist mKeepScreenOn:Z

.field final greylist mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field blacklist mLeashedParentAccessibilityViewId:I

.field blacklist mLeashedParentToken:Landroid/os/IBinder;

.field greylist-max-o mNeedsUpdateLightCenter:Z

.field blacklist mNextFocusLooped:Z

.field greylist-max-o mPanelParentWindowToken:Landroid/os/IBinder;

.field greylist-max-o mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPoint:Landroid/graphics/Point;

.field blacklist mReadyForContentCaptureUpdates:Z

.field greylist mRecomputeGlobalAttributes:Z

.field final greylist-max-o mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field greylist-max-o mRootView:Landroid/view/View;

.field greylist mScalingRequired:Z

.field blacklist mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

.field final greylist mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSensitiveViewsCount:I

.field final greylist mSession:Landroid/view/IWindowSession;

.field final greylist-max-q mStableInsets:Landroid/graphics/Rect;

.field greylist-max-o mSystemUiVisibility:I

.field final greylist-max-o mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mThreadedRenderer:Landroid/view/ThreadedRenderer;

.field final greylist-max-o mTmpInvalRect:Landroid/graphics/Rect;

.field final greylist-max-o mTmpLocation:[I

.field final greylist-max-o mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpOutline:Landroid/graphics/Outline;

.field final greylist-max-o mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mTmpTransformLocation:[F

.field final greylist-max-o mTmpTransformRect:Landroid/graphics/RectF;

.field final greylist-max-o mTmpTransformRect1:Landroid/graphics/RectF;

.field final greylist-max-o mTmpTransformation:Landroid/view/animation/Transformation;

.field greylist-max-o mTooltipHost:Landroid/view/View;

.field final greylist-max-o mTransparentLocation:[I

.field final greylist mTreeObserver:Landroid/view/ViewTreeObserver;

.field greylist-max-o mUnbufferedDispatchRequested:Z

.field greylist-max-o mUse32BitDrawingCache:Z

.field greylist-max-o mViewRequestingLayout:Landroid/view/View;

.field final greylist-max-o mViewRootImpl:Landroid/view/ViewRootImpl;

.field greylist mViewScrollChanged:Z

.field final blacklist mViewVelocityApi:Z

.field greylist mViewVisibilityChanged:Z

.field final greylist-max-q mVisibleInsets:Landroid/graphics/Rect;

.field final greylist mWindow:Landroid/view/IWindow;

.field greylist-max-o mWindowId:Landroid/view/WindowId;

.field greylist-max-o mWindowLeft:I

.field blacklist mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

.field final greylist-max-o mWindowToken:Landroid/os/IBinder;

.field greylist-max-o mWindowTop:I

.field greylist-max-o mWindowVisibility:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdelayNotifyContentCaptureEvent(Landroid/view/View$AttachInfo;Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View$AttachInfo;->delayNotifyContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;Z)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V
    .registers 11
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;
    .param p7, "context"    # Landroid/content/Context;

    .line 32497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32085
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 32120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 32129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 32138
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    .line 32145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mCaptionInsets:Landroid/graphics/Rect;

    .line 32161
    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 32175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 32178
    new-instance v1, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v1}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 32277
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 32283
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 32289
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    .line 32295
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 32325
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 32330
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 32335
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    .line 32340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    .line 32345
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 32350
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 32355
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    .line 32360
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 32367
    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    .line 32372
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 32397
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_layout()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 32402
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 32477
    invoke-static {}, Landroid/view/flags/Flags;->viewVelocityApi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mViewVelocityApi:Z

    .line 32498
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 32499
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 32500
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 32501
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 32502
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 32503
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 32504
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 32505
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0, p7}, Landroid/view/ViewTreeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 32506
    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32507
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/view/View$AttachInfo;->mDensity:F

    .line 32508
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 32509
    .local v1, "pixelCount":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_dc

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_dd

    :cond_dc
    move v2, v1

    :goto_dd
    iput v2, p0, Landroid/view/View$AttachInfo;->mDisplayPixelCount:F

    .line 32510
    return-void
.end method

.method private blacklist delayNotifyContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;Z)V
    .registers 6
    .param p1, "session"    # Landroid/view/contentcapture/ContentCaptureSession;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "appeared"    # Z

    .line 32551
    invoke-direct {p0, p1}, Landroid/view/View$AttachInfo;->ensureEvents(Landroid/view/contentcapture/ContentCaptureSession;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32552
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p3, :cond_8

    move-object v1, p2

    goto :goto_c

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32553
    return-void
.end method

.method private blacklist ensureEvents(Landroid/view/contentcapture/ContentCaptureSession;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "session"    # Landroid/view/contentcapture/ContentCaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32557
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 32559
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    .line 32561
    :cond_c
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureSession;->getId()I

    move-result v0

    .line 32563
    .local v0, "sessionId":I
    iget-object v1, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 32564
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez v1, :cond_25

    .line 32565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 32566
    iget-object v2, p0, Landroid/view/View$AttachInfo;->mContentCaptureEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32569
    :cond_25
    return-object v1
.end method


# virtual methods
.method blacklist decreaseSensitiveViewsCount()V
    .registers 3

    .line 32520
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    .line 32521
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-nez v0, :cond_f

    .line 32522
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->removeSensitiveContentAppProtection()V

    .line 32524
    :cond_f
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-gez v0, :cond_30

    .line 32525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSensitiveViewsCount is negative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32526
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    .line 32528
    :cond_30
    return-void
.end method

.method blacklist delayNotifyContentCaptureInsetsEvent(Landroid/graphics/Insets;)V
    .registers 3
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 32540
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_5

    .line 32541
    return-void

    .line 32544
    :cond_5
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 32545
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 32544
    invoke-direct {p0, v0}, Landroid/view/View$AttachInfo;->ensureEvents(Landroid/view/contentcapture/ContentCaptureSession;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32546
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32547
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 32585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32586
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AttachInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWindowVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mInTouchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUnbufferedDispatchRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32592
    return-void
.end method

.method blacklist getContentCaptureManager(Landroid/content/Context;)Landroid/view/contentcapture/ContentCaptureManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32532
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_7

    .line 32533
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    .line 32535
    :cond_7
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 32536
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method blacklist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 32581
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method blacklist getScrollCaptureInternal()Lcom/android/internal/view/ScrollCaptureInternal;
    .registers 2

    .line 32574
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    if-eqz v0, :cond_b

    .line 32575
    new-instance v0, Lcom/android/internal/view/ScrollCaptureInternal;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureInternal;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    .line 32577
    :cond_b
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mScrollCaptureInternal:Lcom/android/internal/view/ScrollCaptureInternal;

    return-object v0
.end method

.method blacklist increaseSensitiveViewsCount()V
    .registers 2

    .line 32513
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    if-nez v0, :cond_9

    .line 32514
    iget-object v0, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->addSensitiveContentAppProtection()V

    .line 32516
    :cond_9
    iget v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/View$AttachInfo;->mSensitiveViewsCount:I

    .line 32517
    return-void
.end method

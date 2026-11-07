.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlViewHostParent;,
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;,
        Landroid/view/SurfaceView$SurfaceLifecycleStrategy;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEBUG_POSITION:Z = false

.field private static final blacklist FORWARD_BACK_KEY_TOLERANCE_MS:J = 0x64L

.field private static final blacklist LOGTAG_SURFACEVIEW_CALLBACK:I = 0xea66

.field private static final blacklist LOGTAG_SURFACEVIEW_LAYOUT:I = 0xea65

.field public static final whitelist SURFACE_LIFECYCLE_DEFAULT:I = 0x0

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT:I = 0x2

.field public static final whitelist SURFACE_LIFECYCLE_FOLLOWS_VISIBILITY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field blacklist mAlpha:F

.field private greylist-max-o mAttachedToWindow:Z

.field blacklist mBackgroundColor:I

.field blacklist mBackgroundControl:Landroid/view/SurfaceControl;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final greylist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClipSurfaceToBounds:Z

.field blacklist mCornerRadius:F

.field private blacklist mDisableBackgroundLayer:Z

.field greylist-max-o mDrawFinished:Z

.field private final greylist mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field greylist-max-p mDrawingStopped:Z

.field private final blacklist mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field private blacklist mHdrHeadroom:F

.field greylist-max-p mIsCreating:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field private final blacklist mLimitedHdrEnabled:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastSetCrop:Landroid/graphics/RectF;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field private blacklist mRequestedHdrHeadroom:F

.field greylist-max-p mRequestedHeight:I

.field blacklist mRequestedSubLayer:I

.field private blacklist mRequestedSurfaceLifecycleStrategy:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final blacklist mRtDrivenClipping:Z

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field private final blacklist mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

.field greylist-max-o mSurfaceCreated:Z

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private blacklist mSurfaceLifecycleStrategy:I

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/SurfaceSyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$NfZyM_TG8F8lqzaOVZ7noREFjzU(Landroid/view/SurfaceView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YBnSWna8pqXfO6ChPyR7fiW9mv4(Landroid/view/SurfaceView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_pMdvlkS5pGjU0467JiRLPVZuqU(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fEUJ8AN5zlaEQlBS9kCb2vUfWDI(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 439
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 443
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 447
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 450
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    .local v4, "defStyleRes":I
    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 451
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "disableBackgroundLayer"    # Z

    .line 456
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 182
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 186
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 198
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 199
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->limitedHdr()Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mLimitedHdrEnabled:Z

    .line 203
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 205
    iput v1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 207
    iput v1, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 210
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    .line 211
    iput v2, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    .line 217
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 222
    const/4 v2, -0x2

    iput v2, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 223
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 225
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 229
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 232
    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 242
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 243
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 244
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 245
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 246
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 248
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 251
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 257
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 262
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 264
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 266
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 271
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 272
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 276
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 277
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 278
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 279
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 280
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 282
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 287
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 290
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 291
    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 296
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 298
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    .line 304
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 311
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 316
    new-instance v1, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 319
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 327
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 330
    const-string v1, "SurfaceView"

    iput-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 432
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;-><init>(Landroid/view/SurfaceView-IA;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    .line 435
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->clipSurfaceviews()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    .line 1689
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1690
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mRTLastSetCrop:Landroid/graphics/RectF;

    .line 1825
    iput-object v2, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1890
    new-instance v1, Landroid/view/SurfaceView$1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 457
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 458
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 459
    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 1680
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1681
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_a

    .line 1683
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_d

    .line 1685
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1687
    :goto_d
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2372
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2373
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_a

    .line 2375
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_d

    .line 2377
    :cond_a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2379
    :goto_d
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 729
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v7

    .line 730
    .local v7, "alpha":F
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 731
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 732
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1f

    .line 733
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 735
    :cond_1f
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    iget v6, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    goto :goto_4e

    .line 745
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_3c
    move-object v0, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p1

    int-to-float v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFFF)V

    .line 747
    :goto_4e
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .registers 5
    .param p1, "surfaceControlCreated"    # Z
    .param p2, "bufferSizeChanged"    # Z

    .line 1522
    if-eqz p1, :cond_9

    .line 1523
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    .line 1526
    :cond_9
    if-eqz p2, :cond_28

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_28

    .line 1533
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_28

    .line 1534
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1537
    :cond_28
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1573
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_29

    .line 1574
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 1575
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1576
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1577
    invoke-virtual {p1, p3}, Landroid/view/ViewRootImpl;->updateAndGetBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1578
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1579
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1583
    :cond_29
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6e

    .line 1584
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1585
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1586
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1587
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1588
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1590
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1591
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_91

    .line 1595
    :cond_6e
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_78

    move v4, v2

    goto :goto_79

    :cond_78
    move v4, v3

    .line 1596
    :goto_79
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_87

    move v5, v2

    goto :goto_88

    :cond_87
    move v5, v3

    .line 1597
    :goto_88
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1598
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1601
    :goto_91
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_cd

    .line 1602
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1603
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1604
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1605
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1607
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1608
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1609
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1614
    :cond_cd
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_d6

    .line 1615
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1617
    :cond_d6
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1618
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1620
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1621
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1622
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1623
    return-void
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    .line 1829
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1830
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1831
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1832
    monitor-exit v0

    .line 1833
    return-object v1

    .line 1832
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    .line 1442
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1443
    .local v0, "surfaceSyncGroup":Landroid/window/SurfaceSyncGroup;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1444
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1455
    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 1458
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v0, "surfaceSyncGroup":Landroid/window/SurfaceSyncGroup;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1460
    :try_start_c
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1461
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1b

    .line 1463
    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncGroup;)V

    invoke-direct {p0, p1, v1}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    .line 1471
    return-void

    .line 1461
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2297
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 2298
    .local v0, "connection":Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2299
    return-void

    .line 2301
    :cond_d
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 2302
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    .line 2301
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 2304
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 2305
    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .registers 2

    .line 1860
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic blacklist lambda$handleSyncBufferCallback$1(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncGroup;)V
    .registers 5
    .param p1, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p2, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;

    .line 1445
    const/4 v0, 0x0

    .line 1446
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_e

    .line 1447
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1448
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1451
    :cond_e
    invoke-virtual {p2, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1452
    invoke-virtual {p2}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1453
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1454
    return-void
.end method

.method private synthetic blacklist lambda$handleSyncNoBuffer$2(Landroid/window/SurfaceSyncGroup;)V
    .registers 4
    .param p1, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;

    .line 1464
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1465
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1466
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 1467
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 1468
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1469
    return-void

    .line 1466
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private synthetic blacklist lambda$new$0()Z
    .registers 3

    .line 237
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 238
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 239
    return v1
.end method

.method private blacklist notifySurfaceDestroyed()V
    .registers 6

    .line 2308
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2311
    iget-object v0, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0xea66

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2312
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2313
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 2314
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2313
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2327
    :cond_29
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2328
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 2331
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_36
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .registers 2

    .line 1631
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1632
    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .registers 2

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 573
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 575
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 577
    :cond_f
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/view/SurfaceControl$Transaction;)Z
    .registers 20
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p3, "creating"    # Z
    .param p4, "sizeChanged"    # Z
    .param p5, "hintChanged"    # Z
    .param p6, "relativeZChanged"    # Z
    .param p7, "hdrHeadroomChanged"    # Z
    .param p8, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1072
    move-object/from16 v2, p8

    const/4 v8, 0x0

    .line 1074
    .local v8, "realSizeChanged":Z
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1076
    :try_start_8
    invoke-direct {p0}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_12

    move v0, v9

    goto :goto_13

    :cond_12
    move v0, v10

    :goto_13
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 1086
    if-eqz p3, :cond_23

    .line 1087
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1088
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_23

    .line 1089
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {p0, v2, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1092
    :cond_23
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 1096
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1097
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_39

    .line 1098
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3e

    .line 1100
    :cond_39
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1104
    :cond_3e
    :goto_3e
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 1105
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1106
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mLimitedHdrEnabled:Z

    if-eqz v0, :cond_53

    if-nez p7, :cond_4c

    if-eqz p3, :cond_53

    .line 1107
    :cond_4c
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mHdrHeadroom:F

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setDesiredHdrHeadroom(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1110
    :cond_53
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1111
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 1112
    .local v0, "alpha":F
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1115
    .end local v0    # "alpha":F
    :cond_62
    if-eqz p6, :cond_74

    .line 1116
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_71

    .line 1119
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1121
    :cond_71
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1124
    :cond_74
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1125
    if-nez p4, :cond_7f

    if-eqz p5, :cond_84

    :cond_7f
    if-nez p3, :cond_84

    .line 1126
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 1128
    :cond_84
    if-nez p4, :cond_8e

    if-nez p3, :cond_8e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 1130
    :cond_8e
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz v0, :cond_98

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1135
    :cond_98
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_a8

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a8

    .line 1136
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_b1

    .line 1138
    :cond_a8
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1143
    :cond_b1
    :goto_b1
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setDestinationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1146
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 1149
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    goto :goto_ee

    .line 1151
    :cond_c8
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1155
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1151
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1167
    :cond_ee
    :goto_ee
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1168
    invoke-virtual {p0, v10}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1170
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 1171
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 1172
    if-nez p2, :cond_10b

    .line 1173
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1174
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_123

    .line 1176
    :cond_10b
    iget v0, p2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 1177
    .local v0, "appInvertedScale":F
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1178
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1180
    .end local v0    # "appInvertedScale":F
    :goto_123
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 1181
    .local v0, "surfaceWidth":I
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1182
    .local v3, "surfaceHeight":I
    iget v4, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v4, v0, :cond_135

    iget v4, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v4, v3, :cond_134

    goto :goto_135

    :cond_134
    move v9, v10

    :cond_135
    :goto_135
    move v8, v9

    .line 1184
    iput v0, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 1185
    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_13a
    .catchall {:try_start_8 .. :try_end_13a} :catchall_141

    .line 1187
    .end local v0    # "surfaceWidth":I
    .end local v3    # "surfaceHeight":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1188
    nop

    .line 1190
    return v8

    .line 1187
    :catchall_141
    move-exception v0

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1188
    throw v0
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 1475
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1476
    .local v0, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1477
    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .registers 6
    .param p1, "releaseSurfacePackage"    # Z

    .line 1019
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    .line 1020
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 1021
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_c
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1023
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1024
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1027
    :cond_18
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1028
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_28

    .line 1029
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1030
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1032
    :cond_28
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_33

    .line 1033
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1034
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1036
    :cond_33
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3e

    .line 1037
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1038
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1041
    :cond_3e
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_55

    .line 1042
    iget-object v3, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1043
    if-eqz p1, :cond_55

    .line 1044
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v3}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->detach()V

    .line 1045
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 1046
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1050
    :cond_55
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1051
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    monitor-exit v0

    .line 1052
    return-void

    .line 1051
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2242
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2243
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 2246
    :cond_d
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2247
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2248
    return-void

    .line 2244
    :cond_1a
    :goto_1a
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .registers 5
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .line 1062
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_b

    .line 1063
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 1065
    :cond_b
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1066
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 1067
    return-void
.end method

.method private blacklist requestEmbeddedFocus(Z)V
    .registers 6
    .param p1, "gainFocus"    # Z

    .line 2358
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2359
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_37

    if-nez v0, :cond_b

    goto :goto_37

    .line 2363
    :cond_b
    :try_start_b
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2364
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    .line 2363
    invoke-interface {v1, v2, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    .line 2368
    goto :goto_36

    .line 2365
    :catch_19
    move-exception v1

    .line 2366
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2369
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 2360
    :cond_37
    :goto_37
    return-void
.end method

.method private blacklist requiresSurfaceControlCreation(ZZ)Z
    .registers 7
    .param p1, "formatChanged"    # Z
    .param p2, "visibleChanged"    # Z

    .line 1194
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    .line 1195
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_12

    :cond_d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    return v2

    .line 1198
    :cond_14
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    if-nez p1, :cond_1c

    if-eqz p2, :cond_21

    :cond_1c
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1837
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1838
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    .line 1839
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1841
    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1843
    :goto_17
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1540
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1541
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_18

    .line 1542
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1545
    :cond_18
    return-void
.end method

.method private blacklist setTag()V
    .registers 6

    .line 482
    const-string v0, ""

    .line 483
    .local v0, "windowName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 484
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_33

    .line 486
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_33

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .end local v2    # "split":[Ljava/lang/String;
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    .line 493
    return-void
.end method

.method private blacklist setWindowStopped(Z)V
    .registers 2
    .param p1, "stopped"    # Z

    .line 476
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 477
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 478
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 479
    return-void
.end method

.method private blacklist surfaceShouldExist()Z
    .registers 5

    .line 1202
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    .line 1204
    .local v0, "respectVisibility":Z
    :goto_a
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v1, :cond_16

    if-nez v0, :cond_15

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :cond_16
    :goto_16
    return v2
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1012
    iget v0, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1013
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    .line 1014
    .local v1, "colorComponents":[F
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 1015
    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1000
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1001
    return-void

    .line 1003
    :cond_5
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v0, :cond_19

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v0, :cond_19

    .line 1005
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1e

    .line 1007
    :cond_19
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1009
    :goto_1e
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .registers 2

    .line 992
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 993
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_15

    .line 995
    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 997
    :goto_15
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2144
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2145
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_7

    .line 2147
    return-void

    .line 2149
    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2150
    .local v1, "viewRootControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2151
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2152
    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .registers 2

    .line 472
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 473
    return-void
.end method


# virtual methods
.method public whitelist applyTransactionToFrame(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2406
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2407
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_17

    .line 2411
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->getLastAcquiredFrameNum()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 2412
    .local v1, "frameNumber":J
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 2413
    .end local v1    # "frameNumber":J
    monitor-exit v0

    .line 2414
    return-void

    .line 2408
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceView;
    .end local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    throw v1

    .line 2413
    .restart local p0    # "this":Landroid/view/SurfaceView;
    .restart local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist clearChildSurfacePackage()V
    .registers 5

    .line 2224
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_2a

    .line 2225
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->detach()V

    .line 2226
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2229
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2230
    .local v0, "sc":Landroid/view/SurfaceControl;
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2231
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2232
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2233
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2235
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2236
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2238
    .end local v0    # "sc":Landroid/view/SurfaceControl;
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_2a
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 670
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 672
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 674
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 677
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 678
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 658
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_13

    .line 660
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    .line 662
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 665
    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 666
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13
    .param p1, "region"    # Landroid/graphics/Region;

    .line 631
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_c

    move-object v5, p1

    goto :goto_4f

    .line 635
    :cond_c
    const/4 v0, 0x1

    .line 636
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_19

    .line 638
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    move-object v5, p1

    goto :goto_44

    .line 639
    :cond_19
    if-eqz p1, :cond_43

    .line 640
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 641
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 642
    .local v2, "h":I
    if-lez v1, :cond_41

    if-lez v2, :cond_41

    .line 643
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 645
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v6, v3, v4

    .line 646
    .local v6, "l":I
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v7, v3, v4

    .line 647
    .local v7, "t":I
    add-int v8, v6, v1

    add-int v9, v7, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .local v5, "region":Landroid/graphics/Region;
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_44

    .line 642
    .end local v5    # "region":Landroid/graphics/Region;
    .end local v6    # "l":I
    .end local v7    # "t":I
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_41
    move-object v5, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v5    # "region":Landroid/graphics/Region;
    goto :goto_44

    .line 639
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v5    # "region":Landroid/graphics/Region;
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_43
    move-object v5, p1

    .line 650
    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v5    # "region":Landroid/graphics/Region;
    :goto_44
    iget p1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {p1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 651
    const/4 v0, 0x0

    .line 653
    :cond_4d
    return v0

    .line 631
    .end local v0    # "opaque":Z
    .end local v5    # "region":Landroid/graphics/Region;
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_4e
    move-object v5, p1

    .line 632
    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v5    # "region":Landroid/graphics/Region;
    :goto_4f
    invoke-super {p0, v5}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2433
    const-class v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 2

    .line 2212
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public whitelist getCompositionOrder()I
    .registers 2

    .line 803
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    return v0
.end method

.method public blacklist getCornerRadius()F
    .registers 2

    .line 773
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .line 468
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2104
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_8

    .line 2105
    const/4 v1, 0x0

    return-object v1

    .line 2107
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportantForAccessibility()I
    .registers 3

    .line 2285
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 2289
    .local v0, "mode":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    if-eqz v0, :cond_13

    .line 2291
    :cond_12
    return v0

    .line 2293
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 5

    .line 1425
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1426
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_9

    const-string v1, "detached"

    goto :goto_11

    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "viewRootName":Ljava/lang/String;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SurfaceView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 2091
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .registers 2

    .line 1676
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isFixedSize()Z
    .registers 3

    .line 1856
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public blacklist isZOrderedOnTop()Z
    .registers 2

    .line 862
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 497
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 498
    invoke-direct {p0}, Landroid/view/SurfaceView;->setTag()V

    .line 499
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 501
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_18

    move v0, v2

    :cond_18
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 502
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 504
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 505
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 506
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_38

    .line 507
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 508
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 509
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 510
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 512
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_38
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 5

    .line 581
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 587
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 588
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 591
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 592
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_20

    .line 593
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 594
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 595
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 596
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 600
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_20
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 602
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 603
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 605
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 606
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 607
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2353
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2354
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2355
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2274
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2275
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2276
    return-void

    .line 2280
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 2281
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 611
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    .line 612
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_10

    .line 613
    :cond_c
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_10
    nop

    .line 614
    .local v0, "width":I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1c

    .line 615
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_20

    .line 616
    :cond_1c
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_20
    nop

    .line 617
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 618
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 7
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 2262
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 2263
    invoke-static {}, Landroid/app/contextualsearch/flags/Flags;->reportSecureSurfacesInAssistStructure()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2264
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_19

    .line 2265
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.view.ViewStructure.extra.CONTAINS_SECURE_LAYERS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2269
    :cond_19
    return-void
.end method

.method protected whitelist onSetAlpha(I)Z
    .registers 4
    .param p1, "alpha"    # I

    .line 565
    iget v0, p0, Landroid/view/SurfaceView;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 566
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 568
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 15
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 1650
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1651
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    .end local p1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local p2    # "surface":Landroid/view/SurfaceControl;
    .end local p5    # "postScaleX":F
    .end local p6    # "postScaleY":F
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    .local v3, "surface":Landroid/view/SurfaceControl;
    .local v4, "postScaleX":F
    .local v7, "postScaleY":F
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1653
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 516
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 517
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 518
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 519
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 520
    return-void
.end method

.method blacklist performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 7
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .line 2418
    invoke-super {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 2419
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2420
    return-void

    .line 2423
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView;->mEmbeddedWindowParams:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2424
    .local v1, "embeddedWindowAttr":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_29

    .line 2425
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2426
    goto :goto_2a

    .line 2428
    .end local v1    # "embeddedWindowAttr":Landroid/view/WindowManager$LayoutParams;
    :cond_29
    goto :goto_12

    .line 2429
    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .registers 9

    .line 1657
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1658
    return-void

    .line 1660
    :cond_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v2, v0

    .line 1661
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1664
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1665
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1661
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1666
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1667
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1668
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 560
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 561
    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 6
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2180
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2181
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 2182
    .local v0, "lastSc":Landroid/view/SurfaceControl;
    :goto_d
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2183
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_26

    .line 2184
    if-eqz v0, :cond_20

    .line 2185
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2186
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 2188
    :cond_20
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 2189
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2191
    :cond_26
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2192
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControlViewHostParent:Landroid/view/SurfaceView$SurfaceControlViewHostParent;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->attach(Landroid/view/SurfaceView;)V

    .line 2194
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->requestEmbeddedFocus(Z)V

    .line 2197
    :cond_37
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 2198
    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 694
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 696
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtDrivenClipping:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 697
    return-void

    .line 700
    :cond_e
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_17

    goto :goto_50

    .line 706
    :cond_17
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_27

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_27

    .line 707
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 710
    :cond_27
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_33

    .line 711
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3d

    .line 713
    :cond_33
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 715
    :goto_3d
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 716
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 717
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 718
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 719
    return-void

    .line 701
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_50
    :goto_50
    return-void
.end method

.method public whitelist setCompositionOrder(I)V
    .registers 4
    .param p1, "compositionOrder"    # I

    .line 788
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 789
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v0, v1, :cond_b

    .line 790
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 792
    :cond_b
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .registers 4
    .param p1, "cornerRadius"    # F

    .line 757
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 758
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_22

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_22

    .line 759
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 760
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 761
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    :cond_22
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 764
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .registers 5
    .param p1, "desiredHeadroom"    # F

    .line 977
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 981
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_32

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_19

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_19

    goto :goto_32

    .line 982
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be 0.0 or in the range [1.0, 10000.0f], received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_32
    :goto_32
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    .line 987
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 988
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 989
    return-void

    .line 978
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 688
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 689
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 690
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 624
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 625
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 626
    return v0
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .registers 3
    .param p1, "bgColor"    # I

    .line 1871
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1872
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1873
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1874
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1875
    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bgColor"    # I

    .line 1883
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1884
    return-void

    .line 1886
    :cond_5
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1887
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1888
    return-void
.end method

.method public whitelist setSecure(Z)V
    .registers 3
    .param p1, "isSecure"    # Z

    .line 926
    if-eqz p1, :cond_9

    .line 927
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_f

    .line 929
    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 931
    :goto_f
    return-void
.end method

.method public whitelist setSurfaceLifecycle(I)V
    .registers 2
    .param p1, "lifecycleStrategy"    # I

    .line 943
    iput p1, p0, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 944
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 945
    return-void
.end method

.method public blacklist setUseAlpha()V
    .registers 1

    .line 551
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 524
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 526
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 527
    .local v0, "newRequestedVisible":Z
    :goto_1a
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_21

    .line 534
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 536
    :cond_21
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 537
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 538
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .registers 3
    .param p1, "isMediaOverlay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    if-eqz p1, :cond_4

    .line 824
    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x2

    :goto_5
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 825
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .registers 4
    .param p1, "onTop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 853
    .local v0, "allowDynamicChange":Z
    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 854
    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .registers 6
    .param p1, "onTop"    # Z
    .param p2, "allowDynamicChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 887
    if-eqz p1, :cond_4

    .line 888
    const/4 v0, 0x1

    .local v0, "subLayer":I
    goto :goto_5

    .line 890
    .end local v0    # "subLayer":I
    :cond_4
    const/4 v0, -0x2

    .line 892
    .restart local v0    # "subLayer":I
    :goto_5
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_b

    .line 893
    return v2

    .line 895
    :cond_b
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    .line 897
    if-nez p2, :cond_10

    .line 898
    return v2

    .line 900
    :cond_10
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 901
    return v2

    .line 903
    :cond_16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 904
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_1d

    .line 905
    return v2

    .line 908
    :cond_1d
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 909
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 910
    return v2
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 2118
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .registers 2

    .line 2127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 2128
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 2129
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2138
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b

    .line 2139
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 2141
    :cond_b
    return-void
.end method

.method public blacklist syncNextFrame(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2385
    .local p1, "t":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    .line 2386
    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 2334
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2335
    return-void

    .line 2337
    :cond_9
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2342
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2343
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2344
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2345
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 2346
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2345
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2347
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 2348
    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .registers 39

    .line 1209
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_7

    .line 1213
    return-void

    .line 1215
    :cond_7
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1217
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_e

    .line 1218
    return-void

    .line 1221
    :cond_e
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v10, 0x0

    if-eqz v0, :cond_45d

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1f

    move-object/from16 v29, v2

    goto/16 :goto_45f

    .line 1227
    :cond_1f
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1228
    .local v3, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    if-eqz v3, :cond_28

    .line 1229
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1232
    :cond_28
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1233
    .local v0, "myWidth":I
    if-gtz v0, :cond_30

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_30
    move v11, v0

    .line 1234
    .end local v0    # "myWidth":I
    .local v11, "myWidth":I
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1235
    .local v0, "myHeight":I
    if-gtz v0, :cond_39

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_39
    move v12, v0

    .line 1237
    .end local v0    # "myHeight":I
    .local v12, "myHeight":I
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v13

    .line 1238
    .local v13, "alpha":F
    iget v0, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v4, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/4 v14, 0x1

    if-eq v0, v4, :cond_47

    move v0, v14

    goto :goto_48

    :cond_47
    move v0, v10

    :goto_48
    move v15, v0

    .line 1239
    .local v15, "formatChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v4, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v4, :cond_51

    move v0, v14

    goto :goto_52

    :cond_51
    move v0, v10

    :goto_52
    move v4, v0

    .line 1240
    .local v4, "visibleChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mAlpha:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_5b

    move v0, v14

    goto :goto_5c

    :cond_5b
    move v0, v10

    :goto_5c
    move/from16 v16, v0

    .line 1241
    .local v16, "alphaChanged":Z
    move v5, v4

    .end local v4    # "visibleChanged":Z
    .local v5, "visibleChanged":Z
    invoke-direct {v1, v15, v5}, Landroid/view/SurfaceView;->requiresSurfaceControlCreation(ZZ)Z

    move-result v4

    .line 1242
    .local v4, "creating":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v11, :cond_6e

    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v12, :cond_6c

    goto :goto_6e

    :cond_6c
    move v0, v10

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v0, v14

    :goto_6f
    move v6, v0

    .line 1243
    .local v6, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v7, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v7, :cond_78

    move v0, v14

    goto :goto_79

    :cond_78
    move v0, v10

    :goto_79
    move/from16 v17, v0

    .line 1244
    .local v17, "windowVisibleChanged":Z
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1245
    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v7, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v7, v7, v10

    if-ne v0, v7, :cond_93

    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v7, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v7, v7, v14

    if-eq v0, v7, :cond_91

    goto :goto_93

    :cond_91
    move v0, v10

    goto :goto_94

    :cond_93
    :goto_93
    move v0, v14

    :goto_94
    move/from16 v18, v0

    .line 1247
    .local v18, "positionChanged":Z
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v7, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v0, v7, :cond_b1

    .line 1248
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v7, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v0, v7, :cond_af

    goto :goto_b1

    :cond_af
    move v0, v10

    goto :goto_b2

    :cond_b1
    :goto_b1
    move v0, v14

    :goto_b2
    move/from16 v19, v0

    .line 1249
    .local v19, "layoutSizeChanged":Z
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v7, v1, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v7, :cond_c2

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_c2

    move v0, v14

    goto :goto_c3

    :cond_c2
    move v0, v10

    :goto_c3
    move v7, v0

    .line 1251
    .local v7, "hintChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSubLayer:I

    iget v8, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    if-eq v0, v8, :cond_cc

    move v0, v14

    goto :goto_cd

    :cond_cc
    move v0, v10

    :goto_cd
    move v8, v0

    .line 1252
    .local v8, "relativeZChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    iget v9, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    if-eq v0, v9, :cond_d6

    move v0, v14

    goto :goto_d7

    :cond_d6
    move v0, v10

    :goto_d7
    move/from16 v20, v0

    .line 1254
    .local v20, "surfaceLifecycleStrategyChanged":Z
    iget v0, v1, Landroid/view/SurfaceView;->mHdrHeadroom:F

    iget v9, v1, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_e3

    move v0, v14

    goto :goto_e4

    :cond_e3
    move v0, v10

    :goto_e4
    move v9, v0

    .line 1256
    .local v9, "hdrHeadroomChanged":Z
    if-nez v4, :cond_10e

    if-nez v15, :cond_10e

    if-nez v6, :cond_10e

    if-nez v5, :cond_10e

    if-nez v16, :cond_10e

    if-nez v17, :cond_10e

    if-nez v18, :cond_10e

    if-nez v19, :cond_10e

    if-nez v7, :cond_10e

    if-nez v8, :cond_10e

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_10e

    if-nez v20, :cond_10e

    if-eqz v9, :cond_102

    goto :goto_10e

    :cond_102
    move-object/from16 v29, v2

    move-object/from16 v34, v3

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_45c

    .line 1272
    :cond_10e
    :goto_10e
    if-nez v4, :cond_124

    if-nez v15, :cond_124

    if-nez v6, :cond_124

    if-nez v5, :cond_124

    if-nez v19, :cond_124

    if-nez v8, :cond_124

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_124

    if-eqz v20, :cond_121

    goto :goto_124

    :cond_121
    move/from16 v30, v14

    goto :goto_166

    .line 1275
    :cond_124
    :goto_124
    iget-object v0, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move/from16 v30, v14

    iget v14, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 1276
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v14, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 1277
    iget v14, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-lez v14, :cond_144

    const-string/jumbo v14, "setFixedSize"

    goto :goto_146

    :cond_144
    const-string v14, "layout"

    :goto_146
    move-object/from16 v26, v14

    .line 1278
    iget-boolean v14, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget v14, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    .line 1279
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget-boolean v14, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v21, v0

    filled-new-array/range {v21 .. v29}, [Ljava/lang/Object;

    move-result-object v0

    .line 1275
    const v14, 0xea65

    invoke-static {v14, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1283
    :goto_166
    :try_start_166
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 1284
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v10

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1285
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v30

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1286
    iput v11, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1287
    iput v12, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1288
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 1289
    iput v13, v1, Landroid/view/SurfaceView;->mAlpha:F

    .line 1290
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1291
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v1, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1292
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedSubLayer:I

    iput v0, v1, Landroid/view/SurfaceView;->mSubLayer:I

    .line 1294
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    move v14, v0

    .line 1295
    .local v14, "previousSurfaceLifecycleStrategy":I
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedSurfaceLifecycleStrategy:I

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I

    .line 1296
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedHdrHeadroom:F

    iput v0, v1, Landroid/view/SurfaceView;->mHdrHeadroom:F

    .line 1298
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 1299
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 1300
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v22

    add-int v10, v10, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 1301
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v22

    add-int v10, v10, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_1bd} :catch_44a

    .line 1302
    if-eqz v3, :cond_1d2

    .line 1303
    :try_start_1bf
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c4} :catch_1c5

    goto :goto_1d2

    .line 1411
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    :catch_1c5
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_455

    .line 1306
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    :cond_1d2
    :goto_1d2
    :try_start_1d2
    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v10, v0

    .line 1307
    .local v10, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d9} :catch_44a

    move-object/from16 v22, v3

    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v22, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :try_start_1db
    iget v3, v10, Landroid/graphics/Rect;->left:I
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1dd} :catch_43e

    move/from16 v23, v4

    .end local v4    # "creating":Z
    .local v23, "creating":Z
    :try_start_1df
    iget v4, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1310
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e9} :catch_430

    move-object v3, v0

    .line 1311
    .local v3, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v23, :cond_22f

    .line 1312
    :try_start_1ec
    invoke-direct {v1}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " SurfaceView["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "name":Ljava/lang/String;
    invoke-direct {v1, v2, v0, v3}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_21f} :catch_220

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_234

    .line 1411
    .end local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    :catch_220
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v22

    move/from16 v4, v23

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_455

    .line 1316
    .restart local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    :cond_22f
    :try_start_22f
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_231} :catch_430

    if-nez v0, :cond_234

    .line 1317
    return-void

    .line 1316
    :cond_234
    :goto_234
    nop

    .line 1320
    if-nez v6, :cond_24a

    if-nez v23, :cond_24a

    if-nez v7, :cond_24a

    :try_start_23b
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_243

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_24a

    :cond_243
    if-nez v16, :cond_24a

    if-eqz v8, :cond_248

    goto :goto_24a

    :cond_248
    const/4 v0, 0x0

    goto :goto_24c

    :cond_24a
    :goto_24a
    move/from16 v0, v30

    :goto_24c
    move/from16 v24, v0

    .line 1322
    .local v24, "redrawNeeded":Z
    if-eqz v24, :cond_25f

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 1323
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->isInWMSRequestedSync()Z

    move-result v0
    :try_end_25a
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_25a} :catch_220

    if-eqz v0, :cond_25f

    move/from16 v0, v30

    goto :goto_260

    :cond_25f
    const/4 v0, 0x0

    :goto_260
    move/from16 v25, v0

    .line 1324
    .local v25, "shouldSyncBuffer":Z
    const/4 v0, 0x0

    .line 1325
    .local v0, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    if-eqz v25, :cond_2a5

    .line 1326
    :try_start_265
    new-instance v4, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    move-object/from16 v26, v0

    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v26, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView-IA;)V

    move-object v0, v4

    .line 1327
    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    iget-object v4, v1, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1329
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_278} :catch_292

    .line 1327
    move-object/from16 v27, v2

    const/4 v2, 0x0

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v27, "viewRoot":Landroid/view/ViewRootImpl;
    :try_start_27b
    invoke-virtual {v4, v2, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_27e} :catch_281

    move-object/from16 v26, v0

    goto :goto_2a9

    .line 1411
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    :catch_281
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v34, v22

    move/from16 v4, v23

    move-object/from16 v29, v27

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_455

    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :catch_292
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v1, p0

    move-object/from16 v34, v22

    move/from16 v4, v23

    move-object/from16 v29, v27

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    goto/16 :goto_455

    .line 1325
    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v24    # "redrawNeeded":Z
    .restart local v25    # "shouldSyncBuffer":Z
    :cond_2a5
    move-object/from16 v26, v0

    move-object/from16 v27, v2

    .line 1332
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    :goto_2a9
    move v1, v9

    move-object v9, v3

    move-object/from16 v3, v22

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v1

    move-object/from16 v1, p0

    move/from16 v4, v23

    move-object/from16 v2, v27

    move-object/from16 v23, v10

    move-object/from16 v10, v26

    .end local v26    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v3, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v4    # "creating":Z
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .local v9, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .local v10, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v22, "visibleChanged":Z
    .local v23, "surfaceInsets":Landroid/graphics/Rect;
    :try_start_2bd
    invoke-direct/range {v1 .. v9}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v0
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2c1} :catch_42a

    move/from16 v26, v0

    .line 1337
    .local v26, "realSizeChanged":Z
    const/4 v0, 0x0

    .line 1339
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v27, v4

    .line 1340
    .local v27, "surfaceChanged":Z
    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v28, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :try_start_2c8
    iget v0, v1, Landroid/view/SurfaceView;->mSurfaceLifecycleStrategy:I
    :try_end_2ca
    .catchall {:try_start_2c8 .. :try_end_2ca} :catchall_412

    move-object/from16 v29, v2

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v29, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d2

    move/from16 v0, v30

    goto :goto_2d3

    :cond_2d2
    const/4 v0, 0x0

    .line 1342
    .local v0, "respectVisibility":Z
    :goto_2d3
    if-ne v14, v2, :cond_2d8

    move/from16 v2, v30

    goto :goto_2d9

    :cond_2d8
    const/4 v2, 0x0

    .line 1345
    .local v2, "previouslyDidNotRespectVisibility":Z
    :goto_2d9
    if-eqz v0, :cond_2e0

    if-eqz v2, :cond_2e0

    move/from16 v31, v30

    goto :goto_2e2

    :cond_2e0
    const/16 v31, 0x0

    .line 1347
    .local v31, "lifecycleNewlyRespectsVisibility":Z
    :goto_2e2
    move/from16 v32, v0

    .end local v0    # "respectVisibility":Z
    .local v32, "respectVisibility":Z
    :try_start_2e4
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_2e6
    .catchall {:try_start_2e4 .. :try_end_2e6} :catchall_40e

    if-eqz v0, :cond_30a

    .line 1348
    if-nez v27, :cond_2fd

    if-nez v32, :cond_2f0

    :try_start_2ec
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_2fd

    :cond_2f0
    if-eqz v32, :cond_2fb

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v0, :cond_2fb

    if-nez v22, :cond_2fd

    if-eqz v31, :cond_2fb

    goto :goto_2fd

    :cond_2fb
    move v0, v2

    goto :goto_30b

    .line 1351
    :cond_2fd
    :goto_2fd
    move v0, v2

    const/4 v2, 0x0

    .end local v2    # "previouslyDidNotRespectVisibility":Z
    .local v0, "previouslyDidNotRespectVisibility":Z
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1352
    invoke-direct {v1}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_304
    .catchall {:try_start_2ec .. :try_end_304} :catchall_305

    goto :goto_30b

    .line 1406
    .end local v0    # "previouslyDidNotRespectVisibility":Z
    .end local v27    # "surfaceChanged":Z
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v31    # "lifecycleNewlyRespectsVisibility":Z
    .end local v32    # "respectVisibility":Z
    :catchall_305
    move-exception v0

    move-object/from16 v34, v3

    goto/16 :goto_417

    .line 1347
    .restart local v2    # "previouslyDidNotRespectVisibility":Z
    .restart local v27    # "surfaceChanged":Z
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v31    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v32    # "respectVisibility":Z
    :cond_30a
    move v0, v2

    .line 1356
    .end local v2    # "previouslyDidNotRespectVisibility":Z
    .restart local v0    # "previouslyDidNotRespectVisibility":Z
    :goto_30b
    :try_start_30b
    invoke-direct {v1, v4, v5}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1358
    invoke-direct {v1}, Landroid/view/SurfaceView;->surfaceShouldExist()Z

    move-result v2

    if-eqz v2, :cond_3f9

    iget-object v2, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3f9

    .line 1359
    iget-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_31e
    .catchall {:try_start_30b .. :try_end_31e} :catchall_40e

    move/from16 v33, v0

    .end local v0    # "previouslyDidNotRespectVisibility":Z
    .local v33, "previouslyDidNotRespectVisibility":Z
    if-nez v2, :cond_35e

    if-nez v27, :cond_328

    if-eqz v32, :cond_35e

    if-eqz v22, :cond_35e

    .line 1361
    :cond_328
    move/from16 v2, v30

    :try_start_32a
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1362
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1365
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "surfaceCreated"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1367
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1368
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    array-length v2, v0

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_345
    if-ge v0, v2, :cond_35b

    aget-object v34, v28, v0

    move-object/from16 v35, v34

    .line 1369
    .local v35, "c":Landroid/view/SurfaceHolder$Callback;
    move/from16 v34, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move/from16 v36, v2

    move-object/from16 v2, v35

    .end local v35    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v2, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_356
    .catchall {:try_start_32a .. :try_end_356} :catchall_305

    .line 1368
    .end local v2    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v34, 0x1

    move/from16 v2, v36

    goto :goto_345

    :cond_35b
    move-object/from16 v0, v28

    goto :goto_360

    .line 1372
    :cond_35e
    move-object/from16 v0, v28

    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_360
    if-nez v4, :cond_372

    if-nez v15, :cond_372

    if-nez v5, :cond_372

    if-nez v6, :cond_372

    if-eqz v32, :cond_36c

    if-nez v22, :cond_372

    :cond_36c
    if-eqz v26, :cond_36f

    goto :goto_372

    :cond_36f
    move-object/from16 v34, v3

    goto :goto_3d5

    .line 1377
    :cond_372
    :goto_372
    :try_start_372
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_37b
    .catchall {:try_start_372 .. :try_end_37b} :catchall_40e

    move-object/from16 v34, v3

    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v34, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :try_start_37d
    const-string/jumbo v3, "surfaceChanged -- format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " h="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1380
    if-nez v28, :cond_3b3

    .line 1381
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_3b5

    .line 1380
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_3b3
    move-object/from16 v0, v28

    .line 1383
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :goto_3b5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3b7
    if-ge v3, v2, :cond_3d3

    aget-object v28, v0, v3

    move-object/from16 v35, v28

    .line 1384
    .restart local v35    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v28, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move/from16 v36, v2

    iget v2, v1, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v37, v3

    move-object/from16 v3, v35

    .end local v35    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v3, v0, v2, v11, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1383
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v3, v37, 0x1

    move-object/from16 v0, v28

    move/from16 v2, v36

    goto :goto_3b7

    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_3d3
    move-object/from16 v28, v0

    .line 1387
    :goto_3d5
    if-eqz v24, :cond_3fd

    .line 1391
    iget-object v2, v1, Landroid/view/SurfaceView;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "surfaceRedrawNeeded"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0xea66

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1394
    if-nez v0, :cond_3ed

    .line 1395
    invoke-direct {v1}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    move-object v0, v2

    .line 1398
    :cond_3ed
    if-eqz v25, :cond_3f3

    .line 1399
    invoke-direct {v1, v0, v10}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_3fd

    .line 1401
    :cond_3f3
    invoke-direct {v1, v0}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_3f6
    .catchall {:try_start_37d .. :try_end_3f6} :catchall_3f7

    goto :goto_3fd

    .line 1406
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "surfaceChanged":Z
    .end local v31    # "lifecycleNewlyRespectsVisibility":Z
    .end local v32    # "respectVisibility":Z
    .end local v33    # "previouslyDidNotRespectVisibility":Z
    :catchall_3f7
    move-exception v0

    goto :goto_417

    .line 1358
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v0, "previouslyDidNotRespectVisibility":Z
    .local v3, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v27    # "surfaceChanged":Z
    .restart local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v31    # "lifecycleNewlyRespectsVisibility":Z
    .restart local v32    # "respectVisibility":Z
    :cond_3f9
    move/from16 v33, v0

    move-object/from16 v34, v3

    .line 1406
    .end local v0    # "previouslyDidNotRespectVisibility":Z
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v27    # "surfaceChanged":Z
    .end local v28    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v31    # "lifecycleNewlyRespectsVisibility":Z
    .end local v32    # "respectVisibility":Z
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :cond_3fd
    :goto_3fd
    const/4 v2, 0x0

    :try_start_3fe
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1407
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_40c

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_40c

    .line 1408
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1413
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v23    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    .end local v26    # "realSizeChanged":Z
    :cond_40c
    goto/16 :goto_45c

    .line 1406
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v14    # "previousSurfaceLifecycleStrategy":I
    .restart local v23    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "redrawNeeded":Z
    .restart local v25    # "shouldSyncBuffer":Z
    .restart local v26    # "realSizeChanged":Z
    :catchall_40e
    move-exception v0

    move-object/from16 v34, v3

    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_417

    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catchall_412
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_417
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1407
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_426

    iget-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_426

    .line 1408
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1410
    :cond_426
    nop

    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v7    # "relativeZChanged":Z
    .end local v8    # "hdrHeadroomChanged":Z
    .end local v11    # "myWidth":I
    .end local v12    # "myHeight":I
    .end local v13    # "alpha":F
    .end local v15    # "formatChanged":Z
    .end local v16    # "alphaChanged":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "positionChanged":Z
    .end local v19    # "layoutSizeChanged":Z
    .end local v20    # "surfaceLifecycleStrategyChanged":Z
    .end local v22    # "visibleChanged":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local p0    # "this":Landroid/view/SurfaceView;
    throw v0
    :try_end_428
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_428} :catch_428

    .line 1411
    .end local v9    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v14    # "previousSurfaceLifecycleStrategy":I
    .end local v23    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v24    # "redrawNeeded":Z
    .end local v25    # "shouldSyncBuffer":Z
    .end local v26    # "realSizeChanged":Z
    .restart local v4    # "creating":Z
    .restart local v5    # "sizeChanged":Z
    .restart local v6    # "hintChanged":Z
    .restart local v7    # "relativeZChanged":Z
    .restart local v8    # "hdrHeadroomChanged":Z
    .restart local v11    # "myWidth":I
    .restart local v12    # "myHeight":I
    .restart local v13    # "alpha":F
    .restart local v15    # "formatChanged":Z
    .restart local v16    # "alphaChanged":Z
    .restart local v17    # "windowVisibleChanged":Z
    .restart local v18    # "positionChanged":Z
    .restart local v19    # "layoutSizeChanged":Z
    .restart local v20    # "surfaceLifecycleStrategyChanged":Z
    .restart local v22    # "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local p0    # "this":Landroid/view/SurfaceView;
    :catch_428
    move-exception v0

    goto :goto_455

    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_42a
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_455

    .end local v4    # "creating":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v5, "visibleChanged":Z
    .local v6, "sizeChanged":Z
    .local v7, "hintChanged":Z
    .local v8, "relativeZChanged":Z
    .local v9, "hdrHeadroomChanged":Z
    .local v22, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v23, "creating":Z
    :catch_430
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v22

    move/from16 v4, v23

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v9    # "hdrHeadroomChanged":Z
    .end local v23    # "creating":Z
    .restart local v4    # "creating":Z
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .local v22, "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_455

    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v5, "visibleChanged":Z
    .local v6, "sizeChanged":Z
    .local v7, "hintChanged":Z
    .local v8, "relativeZChanged":Z
    .restart local v9    # "hdrHeadroomChanged":Z
    .local v22, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_43e
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v22

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v9    # "hdrHeadroomChanged":Z
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .local v22, "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_455

    .end local v22    # "visibleChanged":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v5, "visibleChanged":Z
    .local v6, "sizeChanged":Z
    .local v7, "hintChanged":Z
    .local v8, "relativeZChanged":Z
    .restart local v9    # "hdrHeadroomChanged":Z
    :catch_44a
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v34, v3

    move/from16 v22, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .line 1412
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v3    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local v9    # "hdrHeadroomChanged":Z
    .local v0, "ex":Ljava/lang/Exception;
    .local v5, "sizeChanged":Z
    .local v6, "hintChanged":Z
    .local v7, "relativeZChanged":Z
    .local v8, "hdrHeadroomChanged":Z
    .restart local v22    # "visibleChanged":Z
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_455
    const-string v2, "SurfaceView"

    const-string v3, "Exception configuring surface"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_45c
    return-void

    .line 1221
    .end local v4    # "creating":Z
    .end local v5    # "sizeChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v7    # "relativeZChanged":Z
    .end local v8    # "hdrHeadroomChanged":Z
    .end local v11    # "myWidth":I
    .end local v12    # "myHeight":I
    .end local v13    # "alpha":F
    .end local v15    # "formatChanged":Z
    .end local v16    # "alphaChanged":Z
    .end local v17    # "windowVisibleChanged":Z
    .end local v18    # "positionChanged":Z
    .end local v19    # "layoutSizeChanged":Z
    .end local v20    # "surfaceLifecycleStrategyChanged":Z
    .end local v22    # "visibleChanged":Z
    .end local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v34    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_45d
    move-object/from16 v29, v2

    .line 1222
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v29    # "viewRoot":Landroid/view/ViewRootImpl;
    :goto_45f
    invoke-direct {v1}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 1223
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1224
    return-void
.end method

.method public blacklist vriDrawStarted(Z)V
    .registers 6
    .param p1, "isWmSync"    # Z

    .line 1484
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1485
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1486
    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    .line 1487
    :try_start_b
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SurfaceSyncGroup;

    .line 1488
    .local v3, "syncGroup":Landroid/window/SurfaceSyncGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncGroup;)V

    .line 1489
    .end local v3    # "syncGroup":Landroid/window/SurfaceSyncGroup;
    goto :goto_11

    .line 1491
    :cond_21
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncGroups:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1492
    monitor-exit v1

    .line 1493
    return-void

    .line 1492
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v2
.end method

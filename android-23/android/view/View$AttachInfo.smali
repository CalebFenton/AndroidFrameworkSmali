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
.field mAccessibilityFetchFlags:I

.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mApplicationScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field final mDisplay:Landroid/view/Display;

.field mDisplayState:I

.field mDrawingTime:J

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareRenderer:Landroid/view/HardwareRenderer;

.field mHasNonEmptyGivenInternalInsets:Z

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mHighContrastText:Z

.field mIWindowId:Landroid/view/IWindowId;

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field final mInvalidateChildLocation:[I

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field final mStableInsets:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpLocation:[I

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpOutline:Landroid/graphics/Outline;

.field final mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformRect1:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mTurnOffWindowResizeAnim:Z

.field mUnbufferedDispatchRequested:Z

.field mUse32BitDrawingCache:Z

.field mViewRequestingLayout:Landroid/view/View;

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowId:Landroid/view/WindowId;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .locals 3
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    .line 21870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 21557
    iput v2, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@7
    .line 21594
    new-instance v0, Landroid/graphics/Rect;

    #@9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@e
    .line 21601
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@15
    .line 21608
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@1c
    .line 21615
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@23
    .line 21621
    new-instance v0, Landroid/graphics/Rect;

    #@25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@28
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@2a
    .line 21631
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@2c
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    #@2f
    .line 21630
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@31
    .line 21643
    new-instance v0, Ljava/util/ArrayList;

    #@33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@36
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@38
    .line 21646
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    #@3a
    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    #@3d
    .line 21645
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    #@3f
    .line 21672
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@41
    .line 21747
    new-array v0, v1, [I

    #@43
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    #@45
    .line 21753
    new-array v0, v1, [I

    #@47
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    #@49
    .line 21759
    new-array v0, v1, [I

    #@4b
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    #@4d
    .line 21765
    new-array v0, v1, [F

    #@4f
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    #@51
    .line 21771
    new-instance v0, Landroid/view/ViewTreeObserver;

    #@53
    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    #@56
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@58
    .line 21793
    new-instance v0, Landroid/graphics/Rect;

    #@5a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5d
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@5f
    .line 21798
    new-instance v0, Landroid/graphics/RectF;

    #@61
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@64
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@66
    .line 21803
    new-instance v0, Landroid/graphics/RectF;

    #@68
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@6b
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    #@6d
    .line 21808
    new-instance v0, Ljava/util/ArrayList;

    #@6f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@72
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    #@74
    .line 21813
    new-instance v0, Landroid/graphics/Matrix;

    #@76
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@79
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    #@7b
    .line 21818
    new-instance v0, Landroid/view/animation/Transformation;

    #@7d
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@80
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    #@82
    .line 21823
    new-instance v0, Landroid/graphics/Outline;

    #@84
    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    #@87
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    #@89
    .line 21828
    new-instance v0, Ljava/util/ArrayList;

    #@8b
    const/16 v1, 0x18

    #@8d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@90
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    #@92
    .line 21833
    const v0, 0x7fffffff

    #@95
    iput v0, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@97
    .line 21851
    const-string/jumbo v0, "debug.layout"

    #@9a
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@9d
    move-result v0

    #@9e
    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    #@a0
    .line 21856
    new-instance v0, Landroid/graphics/Point;

    #@a2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@a5
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    #@a7
    .line 21872
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    #@a9
    .line 21873
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    #@ab
    .line 21874
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    #@b1
    .line 21875
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    #@b3
    .line 21876
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@b5
    .line 21877
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@b7
    .line 21878
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    #@b9
    .line 21871
    return-void
.end method

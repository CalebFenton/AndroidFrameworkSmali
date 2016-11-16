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

.field mAlwaysConsumeNavBar:Z

.field mApplicationScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field final mDisplay:Landroid/view/Display;

.field mDisplayState:I

.field public mDragSurface:Landroid/view/Surface;

.field mDragToken:Landroid/os/IBinder;

.field mDrawingTime:J

.field mEmptyPartialLayoutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHandlingPointerEvent:Z

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareRenderer:Landroid/view/ThreadedRenderer;

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

.field mNeedsUpdateLightCenter:Z

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field mPartialLayoutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

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
    .line 23206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 22859
    iput v2, p0, Landroid/view/View$AttachInfo;->mDisplayState:I

    #@7
    .line 22891
    new-instance v0, Landroid/graphics/Rect;

    #@9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    #@e
    .line 22898
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    #@15
    .line 22905
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    #@1c
    .line 22912
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    #@23
    .line 22918
    new-instance v0, Landroid/graphics/Rect;

    #@25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@28
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    #@2a
    .line 22935
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@2c
    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    #@2f
    .line 22934
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@31
    .line 22947
    new-instance v0, Ljava/util/ArrayList;

    #@33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@36
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    #@38
    .line 22950
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    #@3a
    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    #@3d
    .line 22949
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    #@3f
    .line 22976
    iput-boolean v2, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    #@41
    .line 23023
    const/4 v0, -0x1

    #@42
    iput v0, p0, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    #@44
    .line 23061
    new-array v0, v1, [I

    #@46
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    #@48
    .line 23067
    new-array v0, v1, [I

    #@4a
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    #@4c
    .line 23073
    new-array v0, v1, [I

    #@4e
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpLocation:[I

    #@50
    .line 23079
    new-array v0, v1, [F

    #@52
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    #@54
    .line 23085
    new-instance v0, Landroid/view/ViewTreeObserver;

    #@56
    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    #@59
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@5b
    .line 23107
    new-instance v0, Landroid/graphics/Rect;

    #@5d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@60
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    #@62
    .line 23112
    new-instance v0, Landroid/graphics/RectF;

    #@64
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@67
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    #@69
    .line 23117
    new-instance v0, Landroid/graphics/RectF;

    #@6b
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@6e
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect1:Landroid/graphics/RectF;

    #@70
    .line 23122
    new-instance v0, Ljava/util/ArrayList;

    #@72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@75
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpRectList:Ljava/util/List;

    #@77
    .line 23127
    new-instance v0, Landroid/graphics/Matrix;

    #@79
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@7c
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    #@7e
    .line 23132
    new-instance v0, Landroid/view/animation/Transformation;

    #@80
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@83
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    #@85
    .line 23137
    new-instance v0, Landroid/graphics/Outline;

    #@87
    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    #@8a
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    #@8c
    .line 23142
    new-instance v0, Ljava/util/ArrayList;

    #@8e
    const/16 v1, 0x18

    #@90
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@93
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    #@95
    .line 23147
    const v0, 0x7fffffff

    #@98
    iput v0, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@9a
    .line 23165
    const-string/jumbo v0, "debug.layout"

    #@9d
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@a0
    move-result v0

    #@a1
    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    #@a3
    .line 23170
    new-instance v0, Landroid/graphics/Point;

    #@a5
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@a8
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    #@aa
    .line 23182
    new-instance v0, Ljava/util/ArrayList;

    #@ac
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@af
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPartialLayoutViews:Ljava/util/List;

    #@b1
    .line 23208
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    #@b3
    .line 23209
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    #@b5
    .line 23210
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v0

    #@b9
    iput-object v0, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    #@bb
    .line 23211
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    #@bd
    .line 23212
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@bf
    .line 23213
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@c1
    .line 23214
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    #@c3
    .line 23207
    return-void
.end method

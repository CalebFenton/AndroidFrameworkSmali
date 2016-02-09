.class public Landroid/media/tv/TvView;
.super Landroid/view/ViewGroup;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvView$TimeShiftPositionCallback;,
        Landroid/media/tv/TvView$TvInputCallback;,
        Landroid/media/tv/TvView$OnUnhandledInputEventListener;,
        Landroid/media/tv/TvView$MySessionCallback;,
        Landroid/media/tv/TvView$1;,
        Landroid/media/tv/TvView$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NULL_TV_VIEW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TvView"

.field private static final ZORDER_MEDIA:I = 0x0

.field private static final ZORDER_MEDIA_OVERLAY:I = 0x1

.field private static final ZORDER_ON_TOP:I = 0x2

.field private static sMainTvView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMainTvViewLock:Ljava/lang/Object;


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private mCallback:Landroid/media/tv/TvView$TvInputCallback;

.field private mCaptionEnabled:Ljava/lang/Boolean;

.field private final mDefStyleAttr:I

.field private final mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

.field private mOverlayViewCreated:Z

.field private mOverlayViewFrame:Landroid/graphics/Rect;

.field private final mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

.field private mStreamVolume:Ljava/lang/Float;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceChanged:Z

.field private mSurfaceFormat:I

.field private mSurfaceHeight:I

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewBottom:I

.field private mSurfaceViewLeft:I

.field private mSurfaceViewRight:I

.field private mSurfaceViewTop:I

.field private mSurfaceWidth:I

.field private mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

.field private final mTvInputManager:Landroid/media/tv/TvInputManager;

.field private mUseRequestedSurfaceLayout:Z

.field private mWindowZOrder:I


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvView;)Ljava/lang/Boolean;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/media/tv/TvView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get12()Ljava/lang/ref/WeakReference;
    .locals 1

    #@0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic -get13()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvView;)Ljava/util/Queue;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/tv/TvView;)Ljava/lang/Float;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/tv/TvView;)Landroid/view/Surface;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/media/tv/TvView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/media/tv/TvView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/media/tv/TvView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    #@2
    return-object p1
.end method

.method static synthetic -set10(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    #@2
    return p1
.end method

.method static synthetic -set11(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    #@2
    return p1
.end method

.method static synthetic -set12(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    #@2
    return p1
.end method

.method static synthetic -set13(Landroid/media/tv/TvView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/media/tv/TvView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    #@2
    return p1
.end method

.method static synthetic -set9(Landroid/media/tv/TvView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/tv/TvView;III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/tv/TvView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/tv/TvView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/tv/TvView;->relayoutSessionOverlayView()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@6
    sput-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    #@8
    .line 76
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    #@f
    .line 77
    sget-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    #@11
    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    #@13
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 162
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 79
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    #@a
    .line 91
    new-instance v0, Ljava/util/ArrayDeque;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@f
    iput-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@11
    .line 107
    new-instance v0, Landroid/media/tv/TvView$1;

    #@13
    invoke-direct {v0, p0}, Landroid/media/tv/TvView$1;-><init>(Landroid/media/tv/TvView;)V

    #@16
    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    #@18
    .line 136
    new-instance v0, Landroid/media/tv/TvView$2;

    #@1a
    invoke-direct {v0, p0}, Landroid/media/tv/TvView$2;-><init>(Landroid/media/tv/TvView;)V

    #@1d
    .line 135
    iput-object v0, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@1f
    .line 167
    iput-object p2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    #@21
    .line 168
    iput p3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    #@23
    .line 169
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    #@26
    .line 170
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v1, "tv_input"

    #@2d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/media/tv/TvInputManager;

    #@33
    iput-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@35
    .line 165
    return-void
.end method

.method private createSessionOverlayView()V
    .locals 2

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 767
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    #@c
    .line 766
    if-nez v0, :cond_0

    #@e
    .line 767
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 768
    :cond_0
    return-void

    #@13
    .line 770
    :cond_1
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    #@19
    .line 771
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@1b
    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session;->createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V

    #@20
    .line 772
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    #@23
    .line 765
    return-void
.end method

.method private dispatchSurfaceChanged(III)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 760
    return-void

    #@5
    .line 762
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/TvInputManager$Session;->dispatchSurfaceChanged(III)V

    #@a
    .line 758
    return-void
.end method

.method private ensurePositionTracking()V
    .locals 2

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 505
    return-void

    #@5
    .line 507
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@7
    iget-object v0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@9
    if-eqz v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftEnablePositionTracking(Z)V

    #@f
    .line 503
    return-void

    #@10
    .line 507
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method private getViewFrameOnScreen()Landroid/graphics/Rect;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 798
    const/4 v1, 0x2

    #@3
    new-array v0, v1, [I

    #@5
    .line 799
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->getLocationOnScreen([I)V

    #@8
    .line 800
    new-instance v1, Landroid/graphics/Rect;

    #@a
    aget v2, v0, v4

    #@c
    aget v3, v0, v6

    #@e
    .line 801
    aget v4, v0, v4

    #@10
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    #@13
    move-result v5

    #@14
    add-int/2addr v4, v5

    #@15
    aget v5, v0, v6

    #@17
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    #@1a
    move-result v6

    #@1b
    add-int/2addr v5, v6

    #@1c
    .line 800
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1f
    return-object v1
.end method

.method private relayoutSessionOverlayView()V
    .locals 2

    #@0
    .prologue
    .line 785
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-boolean v1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 786
    iget v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 787
    :cond_0
    return-void

    #@13
    .line 789
    :cond_1
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    #@16
    move-result-object v0

    #@17
    .line 790
    .local v0, "viewFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 791
    return-void

    #@20
    .line 793
    :cond_2
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@22
    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    #@25
    .line 794
    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    #@27
    .line 784
    return-void
.end method

.method private removeSessionOverlayView()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 776
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 779
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@b
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->removeOverlayView()V

    #@e
    .line 780
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    #@11
    .line 781
    iput-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    #@13
    .line 775
    return-void

    #@14
    .line 777
    :cond_0
    return-void
.end method

.method private resetInternal()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 344
    iput-object v1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@3
    .line 345
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@5
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@8
    .line 346
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 347
    invoke-direct {p0, v1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    #@f
    .line 348
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    #@12
    .line 349
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    #@15
    .line 350
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@17
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    #@1a
    .line 351
    iput-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@1c
    .line 352
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    #@1f
    .line 343
    :cond_0
    return-void
.end method

.method private resetSurfaceView()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 731
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 732
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@8
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    #@e
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@11
    .line 733
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@13
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->removeView(Landroid/view/View;)V

    #@16
    .line 735
    :cond_0
    iput-object v2, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    #@18
    .line 736
    new-instance v0, Landroid/media/tv/TvView$3;

    #@1a
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    #@20
    iget v3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    #@22
    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/TvView$3;-><init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@25
    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@27
    .line 742
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@29
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    #@2f
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@32
    .line 743
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@34
    if-ne v0, v4, :cond_2

    #@36
    .line 744
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@38
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    #@3b
    .line 748
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@3d
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->addView(Landroid/view/View;)V

    #@40
    .line 730
    return-void

    #@41
    .line 745
    :cond_2
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@43
    const/4 v1, 0x2

    #@44
    if-ne v0, v1, :cond_1

    #@46
    .line 746
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@48
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    #@4b
    goto :goto_0
.end method

.method private setSessionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 753
    return-void

    #@5
    .line 755
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@7
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setSurface(Landroid/view/Surface;)V

    #@a
    .line 751
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 712
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 714
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@b
    .line 716
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@e
    .line 711
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 621
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 622
    return v2

    #@9
    .line 625
    :cond_0
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 626
    return v3

    #@e
    .line 628
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    #@11
    move-result-object v0

    #@12
    .line 629
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@14
    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@16
    .line 630
    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    #@18
    .line 629
    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    #@1b
    move-result v1

    #@1c
    .line 631
    .local v1, "ret":I
    if-eqz v1, :cond_2

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_2
    move v2, v3

    #@20
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 576
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 577
    return v2

    #@9
    .line 580
    :cond_0
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 581
    return v3

    #@e
    .line 583
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    #@11
    move-result-object v0

    #@12
    .line 584
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@14
    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@16
    .line 585
    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    #@18
    .line 584
    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    #@1b
    move-result v1

    #@1c
    .line 586
    .local v1, "ret":I
    if-eqz v1, :cond_2

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_2
    move v2, v3

    #@20
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 591
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 592
    return v2

    #@9
    .line 595
    :cond_0
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 596
    return v3

    #@e
    .line 598
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    #@11
    move-result-object v0

    #@12
    .line 599
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@14
    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@16
    .line 600
    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    #@18
    .line 599
    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    #@1b
    move-result v1

    #@1c
    .line 601
    .local v1, "ret":I
    if-eqz v1, :cond_2

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_2
    move v2, v3

    #@20
    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 606
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 607
    return v2

    #@9
    .line 610
    :cond_0
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 611
    return v3

    #@e
    .line 613
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    #@11
    move-result-object v0

    #@12
    .line 614
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@14
    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@16
    .line 615
    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    #@18
    .line 614
    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    #@1b
    move-result v1

    #@1c
    .line 616
    .local v1, "ret":I
    if-eqz v1, :cond_2

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_2
    move v2, v3

    #@20
    goto :goto_0
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 546
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    #@6
    invoke-interface {v0, p1}, Landroid/media/tv/TvView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 547
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 550
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    #@3
    .line 639
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 640
    if-eqz p1, :cond_0

    #@8
    :try_start_0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    #@a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    if-ne p0, v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 641
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@16
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->setMain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 635
    return-void

    #@1b
    .line 639
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 703
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 705
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@b
    .line 707
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@e
    .line 702
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 685
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@4
    if-eq v0, v4, :cond_0

    #@6
    .line 686
    if-eqz p1, :cond_0

    #@8
    .line 687
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    #@b
    move-result v8

    #@c
    .line 688
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    #@f
    move-result v6

    #@10
    .line 689
    .local v6, "height":I
    if-lez v8, :cond_0

    #@12
    if-lez v6, :cond_0

    #@14
    .line 690
    new-array v7, v4, [I

    #@16
    .line 691
    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/media/tv/TvView;->getLocationInWindow([I)V

    #@19
    .line 692
    aget v1, v7, v3

    #@1b
    .line 693
    .local v1, "left":I
    const/4 v0, 0x1

    #@1c
    aget v2, v7, v0

    #@1e
    .line 694
    .local v2, "top":I
    add-int v3, v1, v8

    #@20
    add-int v4, v2, v6

    #@22
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@24
    move-object v0, p1

    #@25
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@28
    .line 698
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v6    # "height":I
    .end local v7    # "location":[I
    .end local v8    # "width":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@2b
    move-result v0

    #@2c
    return v0
.end method

.method public getSelectedTrack(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 444
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 445
    return-object v1

    #@6
    .line 447
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@8
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getSelectedTrack(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getTracks(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 429
    return-object v1

    #@6
    .line 431
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@8
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getTracks(I)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 648
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 649
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    #@6
    .line 647
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 654
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    #@3
    .line 655
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@6
    .line 653
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 664
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 665
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@7
    iget v1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    #@9
    iget v2, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    #@b
    iget v3, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    #@d
    .line 666
    iget v4, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    #@f
    .line 665
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    #@12
    .line 659
    :goto_0
    return-void

    #@13
    .line 668
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@15
    sub-int v1, p4, p2

    #@17
    sub-int v2, p5, p3

    #@19
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    #@1c
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 674
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@2
    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    #@5
    .line 675
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@7
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    #@a
    move-result v2

    #@b
    .line 676
    .local v2, "width":I
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@d
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    #@10
    move-result v1

    #@11
    .line 677
    .local v1, "height":I
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@13
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getMeasuredState()I

    #@16
    move-result v0

    #@17
    .line 678
    .local v0, "childState":I
    invoke-static {v2, p1, v0}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    #@1a
    move-result v3

    #@1b
    .line 680
    shl-int/lit8 v4, v0, 0x10

    #@1d
    .line 679
    invoke-static {v1, p2, v4}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    #@20
    move-result v4

    #@21
    .line 678
    invoke-virtual {p0, v3, v4}, Landroid/media/tv/TvView;->setMeasuredDimension(II)V

    #@24
    .line 673
    return-void
.end method

.method public onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 562
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 721
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 722
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@5
    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    #@8
    .line 723
    if-nez p2, :cond_0

    #@a
    .line 724
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    #@d
    .line 720
    :goto_0
    return-void

    #@e
    .line 726
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    #@11
    goto :goto_0
.end method

.method public requestUnblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 369
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->unblockContent(Landroid/media/tv/TvContentRating;)V

    #@3
    .line 368
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 335
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 336
    :try_start_0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    #@5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-ne p0, v0, :cond_0

    #@b
    .line 337
    sget-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    #@d
    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 340
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    #@13
    .line 333
    return-void

    #@14
    .line 335
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 415
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectTrack(ILjava/lang/String;)V

    #@9
    .line 413
    :cond_0
    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "action cannot be null or an empty string"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 525
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 526
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@15
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@18
    .line 521
    :goto_0
    return-void

    #@19
    .line 528
    :cond_1
    const-string/jumbo v0, "TvView"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "sendAppPrivateCommand - session not yet created (action \""

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 529
    const-string/jumbo v2, "\" pending)"

    #@2f
    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 530
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    #@3c
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3f
    move-result-object v1

    #@40
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0
.end method

.method public setCallback(Landroid/media/tv/TvView$TvInputCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvView$TvInputCallback;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    #@2
    .line 179
    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 397
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    #@6
    .line 398
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 399
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@c
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    #@f
    .line 395
    :cond_0
    return-void
.end method

.method public setMain()V
    .locals 2

    #@0
    .prologue
    .line 200
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 201
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    #@a
    .line 202
    invoke-virtual {p0}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 203
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@16
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->setMain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 199
    return-void

    #@1b
    .line 200
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public setOnUnhandledInputEventListener(Landroid/media/tv/TvView$OnUnhandledInputEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    #@0
    .prologue
    .line 571
    iput-object p1, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    #@2
    .line 570
    return-void
.end method

.method public setStreamVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 264
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    #@6
    .line 265
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 267
    return-void

    #@b
    .line 269
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@d
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    #@10
    .line 262
    return-void
.end method

.method public setTimeShiftPositionCallback(Landroid/media/tv/TvView$TimeShiftPositionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@0
    .prologue
    .line 499
    iput-object p1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@2
    .line 500
    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    #@5
    .line 498
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 2
    .param p1, "isMediaOverlay"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 217
    if-eqz p1, :cond_1

    #@3
    .line 218
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@6
    .line 219
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    #@9
    .line 224
    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 227
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    #@12
    .line 228
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@14
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    #@17
    .line 216
    :cond_0
    return-void

    #@18
    .line 221
    :cond_1
    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@1a
    .line 222
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    #@1d
    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 2
    .param p1, "onTop"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    if-eqz p1, :cond_1

    #@3
    .line 241
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@6
    .line 242
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    #@9
    .line 247
    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 248
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@f
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    #@12
    .line 249
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    #@14
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    #@17
    .line 239
    :cond_0
    return-void

    #@18
    .line 244
    :cond_1
    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    #@1a
    .line 245
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    #@1d
    goto :goto_0
.end method

.method public timeShiftPause()V
    .locals 1

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 455
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@6
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPause()V

    #@9
    .line 453
    :cond_0
    return-void
.end method

.method public timeShiftResume()V
    .locals 1

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 464
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@6
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftResume()V

    #@9
    .line 462
    :cond_0
    return-void
.end method

.method public timeShiftSeekTo(J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 477
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftSeekTo(J)V

    #@9
    .line 475
    :cond_0
    return-void
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 488
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    #@9
    .line 486
    :cond_0
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvView;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@4
    .line 278
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "inputId cannot be null or an empty string"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 296
    :cond_0
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 297
    :try_start_0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    #@14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1c
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1f
    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_1
    monitor-exit v1

    #@22
    .line 301
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@24
    if-eqz v0, :cond_4

    #@26
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@28
    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@2a
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 302
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 303
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@36
    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@39
    .line 291
    :cond_2
    :goto_0
    return-void

    #@3a
    .line 296
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0

    #@3d
    .line 309
    :cond_3
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@3f
    iput-object p2, v0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    #@41
    .line 310
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@43
    iput-object p3, v0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    #@45
    goto :goto_0

    #@46
    .line 313
    :cond_4
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    #@49
    .line 321
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    #@4b
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@4e
    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@50
    .line 322
    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@52
    if-eqz v0, :cond_2

    #@54
    .line 323
    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@56
    iget-object v1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    #@58
    iget-object v2, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    #@5a
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    #@5d
    goto :goto_0
.end method

.method public unblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 384
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->unblockContent(Landroid/media/tv/TvContentRating;)V

    #@9
    .line 382
    :cond_0
    return-void
.end method

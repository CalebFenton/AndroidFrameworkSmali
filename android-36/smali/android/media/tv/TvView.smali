.class public Landroid/media/tv/TvView;
.super Landroid/view/ViewGroup;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvView$TvInputCallback;,
        Landroid/media/tv/TvView$MySessionCallback;,
        Landroid/media/tv/TvView$TimeShiftPositionCallback;,
        Landroid/media/tv/TvView$OnUnhandledInputEventListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NULL_TV_VIEW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvView"

.field private static final greylist-max-o ZORDER_MEDIA:I = 0x0

.field private static final greylist-max-o ZORDER_MEDIA_OVERLAY:I = 0x1

.field private static final greylist-max-o ZORDER_ON_TOP:I = 0x2

.field private static greylist-max-o sMainTvView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sMainTvViewLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mAttrs:Landroid/util/AttributeSet;

.field private greylist-max-o mCallback:Landroid/media/tv/TvView$TvInputCallback;

.field private greylist-max-o mCaptionEnabled:Ljava/lang/Boolean;

.field private final greylist-max-o mDefStyleAttr:I

.field private final greylist-max-o mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

.field private greylist-max-o mOverlayViewCreated:Z

.field private greylist-max-o mOverlayViewFrame:Landroid/graphics/Rect;

.field private final blacklist mParser:Landroid/content/res/XmlResourceParser;

.field private final greylist-max-o mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private greylist-max-o mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

.field private greylist-max-o mStreamVolume:Ljava/lang/Float;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private greylist-max-o mSurfaceChanged:Z

.field private greylist-max-o mSurfaceFormat:I

.field private greylist-max-o mSurfaceHeight:I

.field private final greylist-max-o mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private greylist-max-o mSurfaceView:Landroid/view/SurfaceView;

.field private greylist-max-o mSurfaceViewBottom:I

.field private greylist-max-o mSurfaceViewLeft:I

.field private greylist-max-o mSurfaceViewRight:I

.field private greylist-max-o mSurfaceViewTop:I

.field private greylist-max-o mSurfaceWidth:I

.field private greylist-max-o mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

.field private blacklist mTvAppAttributionSource:Landroid/content/AttributionSource;

.field private final greylist-max-o mTvInputManager:Landroid/media/tv/TvInputManager;

.field private greylist-max-o mUseRequestedSurfaceLayout:Z

.field private greylist-max-o mWindowZOrder:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptionEnabled(Landroid/media/tv/TvView;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvView;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamVolume(Landroid/media/tv/TvView;)Ljava/lang/Float;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/TvView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewCreated(Landroid/media/tv/TvView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewFrame(Landroid/media/tv/TvView;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceFormat(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/media/tv/TvView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/TvView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckChangeHdmiCecActiveSourcePermission(Landroid/media/tv/TvView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSessionOverlayView(Landroid/media/tv/TvView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mensurePositionTracking(Landroid/media/tv/TvView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelayoutSessionOverlayView(Landroid/media/tv/TvView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvView;->relayoutSessionOverlayView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainTvView()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainTvViewLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    .line 92
    sget-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    .line 124
    new-instance v0, Landroid/media/tv/TvView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$1;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 152
    new-instance v0, Landroid/media/tv/TvView$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$2;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 184
    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 185
    .local v0, "sourceResId":I
    const-string v1, "TvView"

    if-eqz v0, :cond_3f

    .line 186
    const-string v2, "Build local AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 188
    iget-object v1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_49

    .line 190
    :cond_3f
    const-string v2, "Use passed in AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 192
    iput-object p2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    .line 194
    :goto_49
    iput p3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    .line 195
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    .line 196
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    iput-object v1, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 197
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    .line 198
    return-void
.end method

.method private greylist-max-o checkChangeHdmiCecActiveSourcePermission()Z
    .registers 3

    .line 1059
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o createSessionOverlayView()V
    .registers 3

    .line 1018
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_24

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_13

    goto :goto_24

    .line 1022
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 1023
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session;->createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    .line 1025
    return-void

    .line 1020
    :cond_24
    :goto_24
    return-void
.end method

.method private greylist-max-o dispatchSurfaceChanged(III)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1011
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_5

    .line 1012
    return-void

    .line 1014
    :cond_5
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/TvInputManager$Session;->dispatchSurfaceChanged(III)V

    .line 1015
    return-void
.end method

.method private greylist-max-o ensurePositionTracking()V
    .registers 3

    .line 737
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_5

    .line 738
    return-void

    .line 740
    :cond_5
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->timeShiftEnablePositionTracking(Z)V

    .line 741
    return-void
.end method

.method private greylist-max-o getViewFrameOnScreen()Landroid/graphics/Rect;
    .registers 4

    .line 1050
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1051
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1052
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1053
    .local v1, "frameF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1054
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1055
    return-object v0
.end method

.method private greylist-max-o relayoutSessionOverlayView()V
    .registers 3

    .line 1037
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_13

    goto :goto_28

    .line 1041
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 1042
    .local v0, "viewFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1043
    return-void

    .line 1045
    :cond_20
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 1046
    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 1047
    return-void

    .line 1039
    .end local v0    # "viewFrame":Landroid/graphics/Rect;
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o removeSessionOverlayView()V
    .registers 2

    .line 1028
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_9

    goto :goto_15

    .line 1031
    :cond_9
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->removeOverlayView()V

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 1034
    return-void

    .line 1029
    :cond_15
    :goto_15
    return-void
.end method

.method private greylist-max-o resetInternal()V
    .registers 4

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 418
    iget-object v1, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    monitor-enter v1

    .line 419
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 420
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    .line 421
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_23

    .line 422
    invoke-direct {p0, v0}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    .line 423
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 424
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    .line 425
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 426
    iput-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    .line 427
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    .line 429
    :cond_23
    return-void

    .line 420
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private greylist-max-o resetSurfaceView()V
    .registers 5

    .line 981
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_14

    .line 982
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 983
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->removeView(Landroid/view/View;)V

    .line 985
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    .line 986
    new-instance v0, Landroid/media/tv/TvView$3;

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/TvView$3;-><init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 993
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 994
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 995
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-ne v0, v1, :cond_41

    .line 996
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    goto :goto_4b

    .line 997
    :cond_41
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4b

    .line 998
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1000
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->addView(Landroid/view/View;)V

    .line 1001
    return-void
.end method

.method private greylist-max-o setSessionSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1004
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_5

    .line 1005
    return-void

    .line 1007
    :cond_5
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setSurface(Landroid/view/Surface;)V

    .line 1008
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 962
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 964
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 966
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 967
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 871
    return v1

    .line 874
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 875
    return v2

    .line 877
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 878
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 880
    .local v3, "ret":I
    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 825
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 826
    return v1

    .line 829
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 830
    return v2

    .line 832
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    .line 833
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 835
    .local v3, "ret":I
    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 840
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 841
    return v1

    .line 844
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 845
    return v2

    .line 847
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 848
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 850
    .local v3, "ret":I
    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 855
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 856
    return v1

    .line 859
    :cond_8
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 860
    return v2

    .line 862
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 863
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 865
    .local v3, "ret":I
    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public whitelist dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 779
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_e

    .line 780
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    invoke-interface {v0, p1}, Landroid/media/tv/TvView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 781
    const/4 v0, 0x1

    return v0

    .line 784
    :cond_e
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .line 885
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    .line 888
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    if-eqz p1, :cond_1f

    :try_start_8
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_1f

    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_1f

    .line 890
    invoke-direct {p0}, Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 891
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 893
    :cond_1f
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 953
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 955
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 957
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 958
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .param p1, "region"    # Landroid/graphics/Region;

    .line 935
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    .line 936
    if-eqz p1, :cond_2b

    .line 937
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    move-result v0

    .line 938
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    move-result v2

    .line 939
    .local v2, "height":I
    if-lez v0, :cond_29

    if-lez v2, :cond_29

    .line 940
    new-array v1, v1, [I

    .line 941
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Landroid/media/tv/TvView;->getLocationInWindow([I)V

    .line 942
    const/4 v3, 0x0

    aget v5, v1, v3

    .line 943
    .local v5, "left":I
    const/4 v3, 0x1

    aget v6, v1, v3

    .line 944
    .local v6, "top":I
    add-int v7, v5, v0

    add-int v8, v6, v2

    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .local v4, "region":Landroid/graphics/Region;
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_2e

    .line 939
    .end local v1    # "location":[I
    .end local v4    # "region":Landroid/graphics/Region;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_29
    move-object v4, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v4    # "region":Landroid/graphics/Region;
    goto :goto_2e

    .line 936
    .end local v0    # "width":I
    .end local v2    # "height":I
    .end local v4    # "region":Landroid/graphics/Region;
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_2b
    move-object v4, p1

    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v4    # "region":Landroid/graphics/Region;
    goto :goto_2e

    .line 935
    .end local v4    # "region":Landroid/graphics/Region;
    .restart local p1    # "region":Landroid/graphics/Region;
    :cond_2d
    move-object v4, p1

    .line 948
    .end local p1    # "region":Landroid/graphics/Region;
    .restart local v4    # "region":Landroid/graphics/Region;
    :goto_2e
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAudioPresentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_a

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 502
    :cond_a
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getAudioPresentations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputSession()Landroid/media/tv/TvInputManager$Session;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method public whitelist getSelectedTrack(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 546
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_6

    .line 547
    const/4 v0, 0x0

    return-object v0

    .line 549
    :cond_6
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getSelectedTrack(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTracks(I)Ljava/util/List;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_6

    .line 531
    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_6
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getTracks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 720
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 721
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 723
    :cond_9
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 898
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 899
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 900
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 904
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 905
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 906
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 914
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_12

    .line 915
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_1c

    .line 918
    :cond_12
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 920
    :goto_1c
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 924
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    .line 925
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    .line 926
    .local v0, "width":I
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    .line 927
    .local v1, "height":I
    iget-object v2, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    .line 928
    .local v2, "childState":I
    invoke-static {v0, p1, v2}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 929
    invoke-static {v1, p2, v4}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result v4

    .line 928
    invoke-virtual {p0, v3, v4}, Landroid/media/tv/TvView;->setMeasuredDimension(II)V

    .line 931
    return-void
.end method

.method public whitelist onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 971
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 972
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 973
    if-nez p2, :cond_e

    .line 974
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    goto :goto_11

    .line 976
    :cond_e
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 978
    :goto_11
    return-void
.end method

.method public whitelist overrideTvAppAttributionSource(Landroid/content/AttributionSource;)V
    .registers 2
    .param p1, "tvAppAttributionSource"    # Landroid/content/AttributionSource;

    .line 338
    if-eqz p1, :cond_4

    .line 339
    iput-object p1, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    .line 341
    :cond_4
    return-void
.end method

.method public greylist requestUnblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 2
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .line 441
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->unblockContent(Landroid/media/tv/TvContentRating;)V

    .line 442
    return-void
.end method

.method public whitelist reset()V
    .registers 3

    .line 408
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_f

    .line 410
    sget-object v1, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 412
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 413
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 414
    return-void

    .line 412
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist resumePlayback()V
    .registers 2

    .line 688
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 689
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->resumePlayback()V

    .line 691
    :cond_9
    return-void
.end method

.method public whitelist selectAudioPresentation(II)V
    .registers 4
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 484
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 485
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectAudioPresentation(II)V

    .line 487
    :cond_9
    return-void
.end method

.method public whitelist selectTrack(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 516
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 517
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectTrack(ILjava/lang/String;)V

    .line 519
    :cond_9
    return-void
.end method

.method public whitelist sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 753
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 756
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_10

    .line 757
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3b

    .line 759
    :cond_10
    const-string v0, "TvView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" pending)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    monitor-enter v0

    .line 763
    :try_start_31
    iget-object v1, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 764
    monitor-exit v0

    .line 766
    :goto_3b
    return-void

    .line 764
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3c

    throw v1

    .line 754
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallback(Landroid/media/tv/TvView$TvInputCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/tv/TvView$TvInputCallback;

    .line 207
    iput-object p1, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    .line 208
    return-void
.end method

.method public whitelist setCaptionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 470
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    .line 471
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_f

    .line 472
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    .line 474
    :cond_f
    return-void
.end method

.method public blacklist setHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 218
    iput-object p1, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method public whitelist setInteractiveAppNotificationEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 567
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 568
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppNotificationEnabled(Z)V

    .line 570
    :cond_9
    return-void
.end method

.method public whitelist setMain()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 244
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 246
    invoke-virtual {p0}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_19

    .line 247
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 249
    :cond_19
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist setOnUnhandledInputEventListener(Landroid/media/tv/TvView$OnUnhandledInputEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    .line 805
    iput-object p1, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    .line 806
    return-void
.end method

.method public whitelist setStreamVolume(F)V
    .registers 3
    .param p1, "volume"    # F

    .line 319
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    .line 320
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_b

    .line 322
    return-void

    .line 324
    :cond_b
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    .line 325
    return-void
.end method

.method public whitelist setTimeShiftPositionCallback(Landroid/media/tv/TvView$TimeShiftPositionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 732
    iput-object p1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 733
    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    .line 734
    return-void
.end method

.method public whitelist setTvMessageEnabled(IZ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 818
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 819
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->setTvMessageEnabled(IZ)V

    .line 821
    :cond_9
    return-void
.end method

.method public whitelist setVideoFrozen(Z)V
    .registers 3
    .param p1, "isFrozen"    # Z

    .line 707
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 708
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setVideoFrozen(Z)V

    .line 710
    :cond_9
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .registers 4
    .param p1, "isMediaOverlay"    # Z

    .line 266
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 267
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 268
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_f

    .line 270
    :cond_a
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 271
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 273
    :goto_f
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1d

    .line 276
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 277
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 279
    :cond_1d
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .registers 4
    .param p1, "onTop"    # Z

    .line 295
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 296
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 297
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_f

    .line 299
    :cond_a
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 300
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 302
    :goto_f
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1d

    .line 303
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 304
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 306
    :cond_1d
    return-void
.end method

.method public whitelist stopPlayback(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 671
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->stopPlayback(I)V

    .line 674
    :cond_9
    return-void
.end method

.method public whitelist timeShiftPause()V
    .registers 2

    .line 608
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 609
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPause()V

    .line 611
    :cond_9
    return-void
.end method

.method public whitelist timeShiftPlay(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 583
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_9
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 585
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 587
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_50

    .line 588
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 589
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_31

    .line 590
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftPlay(Landroid/net/Uri;)V

    goto :goto_4f

    .line 592
    :cond_31
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    goto :goto_4f

    .line 595
    :cond_36
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 596
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 597
    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v0, :cond_4f

    .line 598
    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v3, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 602
    :cond_4f
    :goto_4f
    return-void

    .line 587
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1

    .line 581
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist timeShiftResume()V
    .registers 2

    .line 617
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 618
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftResume()V

    .line 620
    :cond_9
    return-void
.end method

.method public whitelist timeShiftSeekTo(J)V
    .registers 4
    .param p1, "timeMs"    # J

    .line 630
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 631
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftSeekTo(J)V

    .line 633
    :cond_9
    return-void
.end method

.method public whitelist timeShiftSetMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 655
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 656
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetMode(I)V

    .line 658
    :cond_9
    return-void
.end method

.method public whitelist timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 3
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 641
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 642
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 644
    :cond_9
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvView;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 351
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 368
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_9
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 370
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 372
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_54

    .line 373
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 374
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_31

    .line 375
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_53

    .line 381
    :cond_31
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 382
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    goto :goto_53

    .line 385
    :cond_3a
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 393
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 394
    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v0, :cond_53

    .line 395
    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvView;->mTvAppAttributionSource:Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v3, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 399
    :cond_53
    :goto_53
    return-void

    .line 372
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1

    .line 366
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 3
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 456
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_9

    .line 457
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->unblockContent(Landroid/media/tv/TvContentRating;)V

    .line 459
    :cond_9
    return-void
.end method

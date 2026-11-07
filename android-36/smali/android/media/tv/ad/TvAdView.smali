.class public Landroid/media/tv/ad/TvAdView;
.super Landroid/view/ViewGroup;
.source "TvAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdView$MySessionCallback;,
        Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;,
        Landroid/media/tv/ad/TvAdView$TvAdCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ERROR_KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final whitelist ERROR_KEY_METHOD_NAME:Ljava/lang/String; = "method_name"

.field private static final blacklist TAG:Ljava/lang/String; = "TvAdView"


# instance fields
.field private final blacklist mAttrs:Landroid/util/AttributeSet;

.field private blacklist mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private final blacklist mDefStyleAttr:I

.field private final blacklist mFinishedInputEventCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMediaViewCreated:Z

.field private blacklist mMediaViewFrame:Landroid/graphics/Rect;

.field private blacklist mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

.field private final blacklist mParser:Landroid/content/res/XmlResourceParser;

.field private blacklist mSession:Landroid/media/tv/ad/TvAdManager$Session;

.field private blacklist mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mSurfaceChanged:Z

.field private blacklist mSurfaceFormat:I

.field private blacklist mSurfaceHeight:I

.field private final blacklist mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private blacklist mSurfaceView:Landroid/view/SurfaceView;

.field private blacklist mSurfaceViewBottom:I

.field private blacklist mSurfaceViewLeft:I

.field private blacklist mSurfaceViewRight:I

.field private blacklist mSurfaceViewTop:I

.field private blacklist mSurfaceWidth:I

.field private final blacklist mTvAdManager:Landroid/media/tv/ad/TvAdManager;

.field private blacklist mUseRequestedSurfaceLayout:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$TvAdCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutor(Landroid/media/tv/ad/TvAdView;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackLock(Landroid/media/tv/ad/TvAdView;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdView;)Landroid/media/tv/ad/TvAdView$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/media/tv/ad/TvAdView;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/ad/TvAdView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/ad/TvAdView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/ad/TvAdView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/ad/TvAdView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewCreated(Landroid/media/tv/ad/TvAdView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewFrame(Landroid/media/tv/ad/TvAdView;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/ad/TvAdView;Landroid/media/tv/ad/TvAdView$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceChanged(Landroid/media/tv/ad/TvAdView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceFormat(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/media/tv/ad/TvAdView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/ad/TvAdView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSessionMediaView(Landroid/media/tv/ad/TvAdView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->createSessionMediaView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/ad/TvAdView;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/ad/TvAdView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/ad/TvAdView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->relayoutSessionMediaView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/ad/TvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/ad/TvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/media/tv/ad/TvAdView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdView$1;-><init>(Landroid/media/tv/ad/TvAdView;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 374
    new-instance v0, Landroid/media/tv/ad/TvAdView$3;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdView$3;-><init>(Landroid/media/tv/ad/TvAdView;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mFinishedInputEventCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    .line 150
    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 151
    .local v0, "sourceResId":I
    const-string v1, "TvAdView"

    if-eqz v0, :cond_3f

    .line 152
    const-string v2, "Build local AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 154
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_49

    .line 156
    :cond_3f
    const-string v2, "Use passed in AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 158
    iput-object p2, p0, Landroid/media/tv/ad/TvAdView;->mAttrs:Landroid/util/AttributeSet;

    .line 160
    :goto_49
    iput p3, p0, Landroid/media/tv/ad/TvAdView;->mDefStyleAttr:I

    .line 161
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->resetSurfaceView()V

    .line 162
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_ad"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager;

    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mTvAdManager:Landroid/media/tv/ad/TvAdManager;

    .line 163
    return-void
.end method

.method private blacklist createSessionMediaView()V
    .registers 3

    .line 322
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    if-eqz v0, :cond_f

    goto :goto_20

    .line 325
    :cond_f
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    .line 326
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    .line 328
    return-void

    .line 323
    :cond_20
    :goto_20
    return-void
.end method

.method private blacklist dispatchSurfaceChanged(III)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 368
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-nez v0, :cond_5

    .line 369
    return-void

    .line 371
    :cond_5
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/ad/TvAdManager$Session;->dispatchSurfaceChanged(III)V

    .line 372
    return-void
.end method

.method private blacklist getViewFrameOnScreen()Landroid/graphics/Rect;
    .registers 4

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 353
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 354
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 355
    .local v1, "frameF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 356
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 357
    return-object v0
.end method

.method private blacklist relayoutSessionMediaView()V
    .registers 3

    .line 340
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    if-nez v0, :cond_f

    goto :goto_24

    .line 343
    :cond_f
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 344
    .local v0, "viewFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 345
    return-void

    .line 347
    :cond_1c
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/ad/TvAdManager$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 348
    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    .line 349
    return-void

    .line 341
    .end local v0    # "viewFrame":Landroid/graphics/Rect;
    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist removeSessionMediaView()V
    .registers 2

    .line 331
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    if-nez v0, :cond_9

    goto :goto_15

    .line 334
    :cond_9
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->removeMediaView()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewCreated:Z

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mMediaViewFrame:Landroid/graphics/Rect;

    .line 337
    return-void

    .line 332
    :cond_15
    :goto_15
    return-void
.end method

.method private blacklist resetInternal()V
    .registers 3

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    .line 310
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v1, :cond_1a

    .line 311
    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdView;->setSessionSurface(Landroid/view/Surface;)V

    .line 312
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->removeSessionMediaView()V

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/ad/TvAdView;->mUseRequestedSurfaceLayout:Z

    .line 314
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$Session;->release()V

    .line 315
    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    .line 316
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->resetSurfaceView()V

    .line 318
    :cond_1a
    return-void
.end method

.method private blacklist resetSurfaceView()V
    .registers 5

    .line 276
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_14

    .line 277
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 278
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdView;->removeView(Landroid/view/View;)V

    .line 280
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurface:Landroid/view/Surface;

    .line 281
    new-instance v0, Landroid/media/tv/ad/TvAdView$2;

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/ad/TvAdView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/ad/TvAdView$2;-><init>(Landroid/media/tv/ad/TvAdView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 288
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 289
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 290
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 292
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 293
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 295
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdView;->addView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method private blacklist setSessionSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 361
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-nez v0, :cond_5

    .line 362
    return-void

    .line 364
    :cond_5
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->setSurface(Landroid/view/Surface;)V

    .line 365
    return-void
.end method

.method private blacklist unsetTvView()Z
    .registers 3

    .line 187
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1e

    .line 190
    :cond_d
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setAdSession(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 191
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    .line 192
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist clearCallback()V
    .registers 3

    .line 692
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

    .line 694
    iput-object v1, p0, Landroid/media/tv/ad/TvAdView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 695
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist clearOnUnhandledInputEventListener()V
    .registers 2

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    .line 453
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 457
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 458
    return v1

    .line 460
    :cond_8
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 461
    return v2

    .line 463
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    .line 464
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v4, p0, Landroid/media/tv/ad/TvAdView;->mFinishedInputEventCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/ad/TvAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/ad/TvAdManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 466
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

    .line 406
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_e

    .line 407
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    invoke-interface {v0, p1}, Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 408
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_e
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAdSession()Landroid/media/tv/ad/TvAdManager$Session;
    .registers 2

    .line 700
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-object v0
.end method

.method public whitelist getOnUnhandledInputEventListener()Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    return-object v0
.end method

.method public whitelist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 623
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 624
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/ad/TvAdManager$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 626
    :cond_9
    return-void
.end method

.method public whitelist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 647
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 648
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/ad/TvAdManager$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 650
    :cond_9
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 197
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 198
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->createSessionMediaView()V

    .line 199
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 203
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->removeSessionMediaView()V

    .line 204
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 205
    return-void
.end method

.method public whitelist onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 213
    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_12

    .line 214
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_1c

    .line 217
    :cond_12
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 219
    :goto_1c
    return-void
.end method

.method public whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 223
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    .line 224
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    .line 225
    .local v0, "width":I
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    .line 226
    .local v1, "height":I
    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    .line 227
    .local v2, "childState":I
    invoke-static {v0, p1, v2}, Landroid/media/tv/ad/TvAdView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 228
    invoke-static {v1, p2, v4}, Landroid/media/tv/ad/TvAdView;->resolveSizeAndState(III)I

    move-result v4

    .line 227
    invoke-virtual {p0, v3, v4}, Landroid/media/tv/ad/TvAdView;->setMeasuredDimension(II)V

    .line 230
    return-void
.end method

.method public whitelist onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 234
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 235
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 236
    if-nez p2, :cond_e

    .line 237
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->createSessionMediaView()V

    goto :goto_11

    .line 239
    :cond_e
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->removeSessionMediaView()V

    .line 241
    :goto_11
    return-void
.end method

.method public whitelist prepareAdService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 481
    new-instance v0, Landroid/media/tv/ad/TvAdView$MySessionCallback;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/ad/TvAdView$MySessionCallback;-><init>(Landroid/media/tv/ad/TvAdView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    .line 482
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mTvAdManager:Landroid/media/tv/ad/TvAdManager;

    if-eqz v0, :cond_14

    .line 483
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mTvAdManager:Landroid/media/tv/ad/TvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSessionCallback:Landroid/media/tv/ad/TvAdView$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/media/tv/ad/TvAdManager;->createSession(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V

    .line 485
    :cond_14
    return-void
.end method

.method public whitelist reset()V
    .registers 1

    .line 305
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->resetInternal()V

    .line 306
    return-void
.end method

.method public whitelist resetAdService()V
    .registers 2

    .line 525
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 526
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->resetAdService()V

    .line 528
    :cond_9
    return-void
.end method

.method public whitelist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 554
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 555
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 557
    :cond_9
    return-void
.end method

.method public whitelist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 583
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 585
    :cond_9
    return-void
.end method

.method public whitelist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 539
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 540
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 542
    :cond_9
    return-void
.end method

.method public whitelist sendSigningResult(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 602
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 603
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/ad/TvAdManager$Session;->sendSigningResult(Ljava/lang/String;[B)V

    .line 605
    :cond_9
    return-void
.end method

.method public whitelist sendTrackInfoList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 567
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendTrackInfoList(Ljava/util/List;)V

    .line 569
    :cond_9
    return-void
.end method

.method public whitelist setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/ad/TvAdView$TvAdCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/ad/TvAdView$TvAdCallback;

    .line 679
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 680
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_9
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 682
    iput-object p2, p0, Landroid/media/tv/ad/TvAdView;->mCallback:Landroid/media/tv/ad/TvAdView$TvAdCallback;

    .line 683
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist setOnUnhandledInputEventListener(Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    .line 433
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView;->mOnUnhandledInputEventListener:Landroid/media/tv/ad/TvAdView$OnUnhandledInputEventListener;

    .line 434
    return-void
.end method

.method public whitelist setTvView(Landroid/media/tv/TvView;)Z
    .registers 4
    .param p1, "tvView"    # Landroid/media/tv/TvView;

    .line 174
    if-nez p1, :cond_7

    .line 175
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdView;->unsetTvView()Z

    move-result v0

    return v0

    .line 177
    :cond_7
    invoke-virtual {p1}, Landroid/media/tv/TvView;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    .line 178
    .local v0, "inputSession":Landroid/media/tv/TvInputManager$Session;
    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-nez v1, :cond_12

    goto :goto_1e

    .line 181
    :cond_12
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/ad/TvAdManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    .line 182
    iget-object v1, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setAdSession(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 183
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .registers 4
    .param p1, "isMediaOverlay"    # Z

    .line 254
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_f

    .line 255
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 256
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 258
    :cond_f
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .registers 4
    .param p1, "onTop"    # Z

    .line 269
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_f

    .line 270
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 271
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 273
    :cond_f
    return-void
.end method

.method public whitelist startAdService()V
    .registers 2

    .line 497
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->startAdService()V

    .line 500
    :cond_9
    return-void
.end method

.method public whitelist stopAdService()V
    .registers 2

    .line 511
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    if-eqz v0, :cond_9

    .line 512
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView;->mSession:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdManager$Session;->stopAdService()V

    .line 514
    :cond_9
    return-void
.end method

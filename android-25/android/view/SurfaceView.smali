.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$4;,
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mBackdropFrame:Landroid/graphics/Rect;

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field private mWindowInsetLeft:I

.field private mWindowInsetTop:I

.field mWindowSpaceHeight:I

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowSpaceWidth:I

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 97
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@d
    .line 100
    const/4 v0, 0x2

    #@e
    new-array v0, v0, [I

    #@10
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@12
    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@14
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@17
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@19
    .line 103
    new-instance v0, Landroid/view/Surface;

    #@1b
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@20
    .line 104
    new-instance v0, Landroid/view/Surface;

    #@22
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@25
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@27
    .line 105
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 107
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 111
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 113
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@61
    .line 118
    new-instance v0, Landroid/graphics/Rect;

    #@63
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@66
    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@68
    .line 119
    new-instance v0, Landroid/content/res/Configuration;

    #@6a
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@6d
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@6f
    .line 125
    const/16 v0, 0x3e9

    #@71
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@73
    .line 127
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@75
    .line 128
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@77
    .line 130
    new-instance v0, Landroid/view/SurfaceView$1;

    #@79
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@7c
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@7e
    .line 148
    new-instance v0, Landroid/view/SurfaceView$2;

    #@80
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@83
    .line 147
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@85
    .line 156
    new-instance v0, Landroid/view/SurfaceView$3;

    #@87
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@8a
    .line 155
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@8c
    .line 166
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@8e
    .line 167
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@90
    .line 168
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@92
    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@94
    .line 170
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@96
    .line 174
    const/4 v0, 0x4

    #@97
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@99
    .line 176
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@9b
    .line 177
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@9d
    .line 178
    const-wide/16 v0, 0x0

    #@9f
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@a1
    .line 180
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@a3
    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@a5
    .line 182
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@a7
    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@a9
    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@ab
    .line 185
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@ad
    .line 186
    new-instance v0, Landroid/graphics/Rect;

    #@af
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b2
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@b4
    .line 187
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@b6
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@b8
    .line 702
    new-instance v0, Landroid/graphics/Rect;

    #@ba
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@bd
    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@bf
    .line 875
    new-instance v0, Landroid/view/SurfaceView$4;

    #@c1
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@c4
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@c6
    .line 211
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    #@c9
    .line 208
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    #@0
    .prologue
    .line 792
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 793
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    #@b
    .line 794
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 796
    return-object v0

    #@12
    .line 792
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 354
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@2
    const/16 v1, 0x3e8

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 356
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@8
    and-int/lit16 v0, v0, 0x80

    #@a
    const/16 v1, 0x80

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 358
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@14
    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@17
    .line 353
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 342
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@3
    const/16 v1, 0x3e8

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 344
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@9
    and-int/lit16 v0, v0, 0x80

    #@b
    if-nez v0, :cond_0

    #@d
    .line 346
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@f
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@12
    .line 349
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@15
    .line 341
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 315
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@3
    const/16 v3, 0x3e8

    #@5
    if-ne v0, v3, :cond_0

    #@7
    .line 316
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 319
    :cond_0
    const/4 v7, 0x1

    #@d
    .line 320
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@f
    and-int/lit16 v0, v0, 0x80

    #@11
    if-nez v0, :cond_3

    #@13
    .line 322
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@16
    move-result v7

    #@17
    .line 334
    .end local v7    # "opaque":Z
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@19
    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 335
    const/4 v7, 0x0

    #@20
    .line 337
    :cond_2
    return v7

    #@21
    .line 323
    .restart local v7    # "opaque":Z
    :cond_3
    if-eqz p1, :cond_1

    #@23
    .line 324
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    #@26
    move-result v8

    #@27
    .line 325
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    #@2a
    move-result v6

    #@2b
    .line 326
    .local v6, "h":I
    if-lez v8, :cond_1

    #@2d
    if-lez v6, :cond_1

    #@2f
    .line 327
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@31
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@34
    .line 329
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@36
    aget v1, v0, v4

    #@38
    .line 330
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@3a
    const/4 v3, 0x1

    #@3b
    aget v2, v0, v3

    #@3d
    .line 331
    .local v2, "t":I
    add-int v3, v1, v8

    #@3f
    add-int v4, v2, v6

    #@41
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@43
    move-object v0, p1

    #@44
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@47
    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 800
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@4
    .line 799
    return-void
.end method

.method public isFixedSize()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 811
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@8
    if-eq v1, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 226
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@5
    .line 227
    iget-object v3, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    #@7
    invoke-interface {v3, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    #@a
    .line 228
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@10
    .line 229
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@18
    .line 230
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "SurfaceView - "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@39
    .line 231
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@3b
    iget-object v4, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@43
    .line 232
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_0

    #@49
    move v1, v2

    #@4a
    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@4c
    .line 234
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@4e
    if-nez v1, :cond_1

    #@50
    .line 235
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@53
    move-result-object v0

    #@54
    .line 236
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@59
    .line 237
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@5b
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@5e
    .line 238
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@60
    .line 225
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 270
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 271
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v1

    #@a
    .line 272
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@c
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@f
    .line 273
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@11
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@14
    .line 274
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@16
    .line 277
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@18
    .line 278
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1b
    .line 279
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@1d
    .line 280
    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 282
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@23
    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@25
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 286
    :goto_0
    iput-object v4, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@2a
    .line 288
    :cond_1
    iput-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2c
    .line 289
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@2e
    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@30
    .line 291
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@33
    .line 269
    return-void

    #@34
    .line 283
    :catch_0
    move-exception v0

    #@35
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 296
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@3
    if-ltz v2, :cond_0

    #@5
    .line 297
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7
    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    #@a
    move-result v1

    #@b
    .line 299
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@d
    if-ltz v2, :cond_1

    #@f
    .line 300
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@11
    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    #@14
    move-result v0

    #@15
    .line 302
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    #@18
    .line 295
    return-void

    #@19
    .line 298
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    #@1c
    move-result v1

    #@1d
    .restart local v1    # "width":I
    goto :goto_0

    #@1e
    .line 301
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    #@21
    move-result v0

    #@22
    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    #@4
    .line 245
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@9
    .line 246
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@f
    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@11
    .line 247
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@14
    .line 243
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 245
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 246
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@4
    move-result v0

    #@5
    .line 309
    .local v0, "result":Z
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@8
    .line 310
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 418
    if-eqz p1, :cond_0

    #@2
    .line 419
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6
    or-int/lit16 v1, v1, 0x2000

    #@8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    .line 417
    :goto_0
    return-void

    #@b
    .line 421
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@d
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v1, v1, -0x2001

    #@11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@13
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 252
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 253
    if-nez p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@9
    .line 254
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@f
    .line 255
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 262
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    #@16
    .line 264
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@18
    .line 265
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1b
    .line 251
    return-void

    #@1c
    :cond_1
    move v1, v2

    #@1d
    .line 253
    goto :goto_0

    #@1e
    .line 254
    :cond_2
    const/4 v0, 0x0

    #@1f
    .local v0, "newRequestedVisible":Z
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 431
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@2
    .line 430
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    #@0
    .prologue
    .line 376
    if-eqz p1, :cond_0

    #@2
    .line 377
    const/16 v0, 0x3ec

    #@4
    .line 376
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6
    .line 375
    return-void

    #@7
    .line 378
    :cond_0
    const/16 v0, 0x3e9

    #@9
    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    #@0
    .prologue
    .line 395
    if-eqz p1, :cond_0

    #@2
    .line 396
    const/16 v0, 0x3e8

    #@4
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6
    .line 398
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    const/high16 v2, 0x20000

    #@c
    or-int/2addr v1, v2

    #@d
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    .line 394
    :goto_0
    return-void

    #@10
    .line 400
    :cond_0
    const/16 v0, 0x3e9

    #@12
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@14
    .line 401
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@18
    const v2, -0x20001

    #@1b
    and-int/2addr v1, v2

    #@1c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1e
    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 42
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    #@0
    .prologue
    .line 436
    move-object/from16 v0, p0

    #@2
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 437
    return-void

    #@7
    .line 439
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@a
    move-result-object v39

    #@b
    .line 440
    .local v39, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v39, :cond_1

    #@d
    .line 441
    move-object/from16 v0, v39

    #@f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@15
    .line 444
    :cond_1
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 445
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v5, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@23
    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    #@26
    .line 448
    :cond_2
    move-object/from16 v0, p0

    #@28
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@2a
    move/from16 v30, v0

    #@2c
    .line 449
    .local v30, "myWidth":I
    if-gtz v30, :cond_3

    #@2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@31
    move-result v30

    #@32
    .line 450
    :cond_3
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@36
    move/from16 v29, v0

    #@38
    .line 451
    .local v29, "myHeight":I
    if-gtz v29, :cond_4

    #@3a
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@3d
    move-result v29

    #@3e
    .line 453
    :cond_4
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@42
    if-nez v4, :cond_d

    #@44
    const/16 v24, 0x1

    #@46
    .line 454
    .local v24, "creating":Z
    :goto_0
    move-object/from16 v0, p0

    #@48
    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@4e
    if-eq v4, v5, :cond_e

    #@50
    const/16 v27, 0x1

    #@52
    .line 455
    .local v27, "formatChanged":Z
    :goto_1
    move-object/from16 v0, p0

    #@54
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@56
    move/from16 v0, v30

    #@58
    if-ne v4, v0, :cond_5

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@5e
    move/from16 v0, v29

    #@60
    if-eq v4, v0, :cond_f

    #@62
    :cond_5
    const/16 v35, 0x1

    #@64
    .line 456
    .local v35, "sizeChanged":Z
    :goto_2
    move-object/from16 v0, p0

    #@66
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mVisible:Z

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-boolean v5, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@6c
    if-eq v4, v5, :cond_10

    #@6e
    const/16 v41, 0x1

    #@70
    .line 457
    .local v41, "visibleChanged":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@73
    move-result v4

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@78
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    #@7a
    if-ne v4, v5, :cond_11

    #@7c
    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@7f
    move-result v4

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@84
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    #@86
    if-eq v4, v5, :cond_12

    #@88
    const/16 v28, 0x1

    #@8a
    .line 460
    .local v28, "layoutSizeChanged":Z
    :goto_4
    if-nez p1, :cond_6

    #@8c
    if-nez v24, :cond_6

    #@8e
    if-nez v27, :cond_6

    #@90
    if-nez v35, :cond_6

    #@92
    if-nez v41, :cond_6

    #@94
    .line 461
    move-object/from16 v0, p0

    #@96
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@98
    .line 460
    if-nez v4, :cond_6

    #@9a
    .line 461
    move-object/from16 v0, p0

    #@9c
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@9e
    .line 460
    if-nez v4, :cond_6

    #@a0
    if-eqz p2, :cond_29

    #@a2
    .line 462
    :cond_6
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@a6
    move-object/from16 v0, p0

    #@a8
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@ab
    .line 472
    :try_start_0
    move-object/from16 v0, p0

    #@ad
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@af
    move/from16 v40, v0

    #@b1
    move/from16 v0, v40

    #@b3
    move-object/from16 v1, p0

    #@b5
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    #@b7
    .line 473
    .local v40, "visible":Z
    move-object/from16 v0, p0

    #@b9
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@bb
    const/4 v5, 0x0

    #@bc
    aget v4, v4, v5

    #@be
    move-object/from16 v0, p0

    #@c0
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@c2
    .line 474
    move-object/from16 v0, p0

    #@c4
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@c6
    const/4 v5, 0x1

    #@c7
    aget v4, v4, v5

    #@c9
    move-object/from16 v0, p0

    #@cb
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@cd
    .line 475
    move/from16 v0, v30

    #@cf
    move-object/from16 v1, p0

    #@d1
    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@d3
    .line 476
    move/from16 v0, v29

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@d9
    .line 477
    move-object/from16 v0, p0

    #@db
    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@dd
    move-object/from16 v0, p0

    #@df
    iput v4, v0, Landroid/view/SurfaceView;->mFormat:I

    #@e1
    .line 482
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@e9
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@eb
    .line 483
    move-object/from16 v0, p0

    #@ed
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@f3
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@f5
    .line 484
    move-object/from16 v0, p0

    #@f7
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f9
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@fc
    move-result v5

    #@fd
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@ff
    .line 485
    move-object/from16 v0, p0

    #@101
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@103
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@106
    move-result v5

    #@107
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@109
    .line 486
    move-object/from16 v0, p0

    #@10b
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@10d
    if-eqz v4, :cond_7

    #@10f
    .line 487
    move-object/from16 v0, p0

    #@111
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@113
    move-object/from16 v0, p0

    #@115
    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@117
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    #@11a
    .line 490
    :cond_7
    move-object/from16 v0, p0

    #@11c
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@11e
    move-object/from16 v0, p0

    #@120
    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@122
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    #@124
    .line 491
    move-object/from16 v0, p0

    #@126
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@128
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12a
    or-int/lit16 v5, v5, 0x4218

    #@12c
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12e
    .line 498
    if-nez v24, :cond_8

    #@130
    if-eqz p1, :cond_13

    #@132
    .line 502
    :cond_8
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@136
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@138
    and-int/lit16 v5, v5, -0x2001

    #@13a
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@13c
    .line 506
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    #@13f
    move-result-object v4

    #@140
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@143
    move-result-object v4

    #@144
    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@147
    move-result-object v4

    #@148
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@14b
    move-result v4

    #@14c
    if-nez v4, :cond_9

    #@14e
    .line 507
    move-object/from16 v0, p0

    #@150
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@152
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@154
    or-int/lit16 v5, v5, 0x80

    #@156
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@158
    .line 510
    :cond_9
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@15c
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@15e
    const v6, 0x10040

    #@161
    or-int/2addr v5, v6

    #@162
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@164
    .line 513
    move-object/from16 v0, p0

    #@166
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@168
    if-nez v4, :cond_a

    #@16a
    .line 514
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    #@16d
    move-result-object v25

    #@16e
    .line 515
    .local v25, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/SurfaceView$MyWindow;

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-direct {v4, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    #@175
    move-object/from16 v0, p0

    #@177
    iput-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@179
    .line 516
    move-object/from16 v0, p0

    #@17b
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget v5, v0, Landroid/view/SurfaceView;->mWindowType:I

    #@181
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@183
    .line 517
    move-object/from16 v0, p0

    #@185
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@187
    const v5, 0x800033

    #@18a
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@18c
    .line 518
    move-object/from16 v0, p0

    #@18e
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@190
    move-object/from16 v0, p0

    #@192
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@198
    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@19e
    .line 519
    move-object/from16 v0, p0

    #@1a0
    iget-boolean v8, v0, Landroid/view/SurfaceView;->mVisible:Z

    #@1a2
    if-eqz v8, :cond_15

    #@1a4
    const/4 v8, 0x0

    #@1a5
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getDisplayId()I

    #@1a8
    move-result v9

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget-object v10, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@1ad
    .line 520
    move-object/from16 v0, p0

    #@1af
    iget-object v11, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@1b1
    .line 518
    invoke-interface/range {v4 .. v11}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@1b4
    .line 528
    .end local v25    # "display":Landroid/view/Display;
    :cond_a
    move-object/from16 v0, p0

    #@1b6
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b8
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1bb
    .line 530
    const/4 v4, 0x0

    #@1bc
    :try_start_1
    move-object/from16 v0, p0

    #@1be
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@1c0
    .line 531
    move-object/from16 v0, p0

    #@1c2
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@1c4
    move/from16 v34, v0

    #@1c6
    .line 532
    .local v34, "reportDrawNeeded":Z
    const/4 v4, 0x0

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@1cb
    .line 533
    if-eqz v40, :cond_16

    #@1cd
    const/4 v4, 0x0

    #@1ce
    :goto_7
    move-object/from16 v0, p0

    #@1d0
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@1d2
    .line 538
    move-object/from16 v0, p0

    #@1d4
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@1d6
    .line 539
    move-object/from16 v0, p0

    #@1d8
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1de
    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget v8, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget v9, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@1ec
    .line 540
    if-eqz v40, :cond_17

    #@1ee
    const/4 v10, 0x0

    #@1ef
    .line 542
    :goto_8
    move-object/from16 v0, p0

    #@1f1
    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget-object v13, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v14, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@1fb
    .line 543
    move-object/from16 v0, p0

    #@1fd
    iget-object v15, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@203
    move-object/from16 v16, v0

    #@205
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@209
    move-object/from16 v17, v0

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@20f
    move-object/from16 v18, v0

    #@211
    .line 544
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@215
    move-object/from16 v19, v0

    #@217
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@21b
    move-object/from16 v20, v0

    #@21d
    .line 541
    const/4 v11, 0x2

    #@21e
    .line 538
    invoke-interface/range {v4 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@221
    move-result v33

    #@222
    .line 545
    .local v33, "relayoutResult":I
    and-int/lit8 v4, v33, 0x2

    #@224
    if-eqz v4, :cond_b

    #@226
    .line 546
    const/16 v34, 0x1

    #@228
    .line 553
    .end local v34    # "reportDrawNeeded":Z
    :cond_b
    move-object/from16 v0, p0

    #@22a
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@22c
    const/4 v5, 0x0

    #@22d
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@22f
    .line 554
    move-object/from16 v0, p0

    #@231
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@233
    const/4 v5, 0x0

    #@234
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@236
    .line 555
    move-object/from16 v0, p0

    #@238
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@23a
    if-nez v4, :cond_18

    #@23c
    .line 556
    move-object/from16 v0, p0

    #@23e
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@240
    move-object/from16 v0, p0

    #@242
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@244
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@247
    move-result v5

    #@248
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@24a
    .line 557
    move-object/from16 v0, p0

    #@24c
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@24e
    move-object/from16 v0, p0

    #@250
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@252
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@255
    move-result v5

    #@256
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@258
    .line 564
    :goto_9
    move-object/from16 v0, p0

    #@25a
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@25c
    iget v0, v4, Landroid/graphics/Rect;->right:I

    #@25e
    move/from16 v38, v0

    #@260
    .line 565
    .local v38, "surfaceWidth":I
    move-object/from16 v0, p0

    #@262
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@264
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    #@266
    move/from16 v37, v0

    #@268
    .line 566
    .local v37, "surfaceHeight":I
    move-object/from16 v0, p0

    #@26a
    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@26c
    move/from16 v0, v38

    #@26e
    if-ne v4, v0, :cond_19

    #@270
    .line 567
    move-object/from16 v0, p0

    #@272
    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@274
    move/from16 v0, v37

    #@276
    if-eq v4, v0, :cond_1a

    #@278
    const/16 v32, 0x1

    #@27a
    .line 568
    .local v32, "realSizeChanged":Z
    :goto_a
    move/from16 v0, v38

    #@27c
    move-object/from16 v1, p0

    #@27e
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@280
    .line 569
    move/from16 v0, v37

    #@282
    move-object/from16 v1, p0

    #@284
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@286
    .line 571
    :try_start_2
    move-object/from16 v0, p0

    #@288
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@28a
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@28d
    .line 575
    or-int v4, v24, v34

    #@28f
    or-int p2, p2, v4

    #@291
    .line 577
    const/16 v23, 0x0

    #@293
    .line 579
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v4, v33, 0x4

    #@295
    if-eqz v4, :cond_1b

    #@297
    const/16 v36, 0x1

    #@299
    .line 581
    .local v36, "surfaceChanged":Z
    :goto_b
    :try_start_3
    move-object/from16 v0, p0

    #@29b
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@29d
    if-eqz v4, :cond_1d

    #@29f
    if-nez v36, :cond_c

    #@2a1
    if-nez v40, :cond_1d

    #@2a3
    if-eqz v41, :cond_1d

    #@2a5
    .line 582
    :cond_c
    const/4 v4, 0x0

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@2aa
    .line 583
    move-object/from16 v0, p0

    #@2ac
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@2ae
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@2b1
    move-result v4

    #@2b2
    if-eqz v4, :cond_1d

    #@2b4
    .line 586
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@2b7
    move-result-object v23

    #@2b8
    .line 587
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v4, 0x0

    #@2b9
    move-object/from16 v0, v23

    #@2bb
    array-length v5, v0

    #@2bc
    :goto_c
    if-ge v4, v5, :cond_1c

    #@2be
    aget-object v22, v23, v4

    #@2c0
    .line 588
    .local v22, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@2c2
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2c4
    move-object/from16 v0, v22

    #@2c6
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c9
    .line 587
    add-int/lit8 v4, v4, 0x1

    #@2cb
    goto :goto_c

    #@2cc
    .line 453
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "creating":Z
    .end local v27    # "formatChanged":Z
    .end local v28    # "layoutSizeChanged":Z
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v35    # "sizeChanged":Z
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    .end local v41    # "visibleChanged":Z
    :cond_d
    const/16 v24, 0x0

    #@2ce
    .restart local v24    # "creating":Z
    goto/16 :goto_0

    #@2d0
    .line 454
    :cond_e
    const/16 v27, 0x0

    #@2d2
    .restart local v27    # "formatChanged":Z
    goto/16 :goto_1

    #@2d4
    .line 455
    :cond_f
    const/16 v35, 0x0

    #@2d6
    .restart local v35    # "sizeChanged":Z
    goto/16 :goto_2

    #@2d8
    .line 456
    :cond_10
    const/16 v41, 0x0

    #@2da
    .restart local v41    # "visibleChanged":Z
    goto/16 :goto_3

    #@2dc
    .line 457
    :cond_11
    const/16 v28, 0x1

    #@2de
    .restart local v28    # "layoutSizeChanged":Z
    goto/16 :goto_4

    #@2e0
    .line 458
    .end local v28    # "layoutSizeChanged":Z
    :cond_12
    const/16 v28, 0x0

    #@2e2
    .restart local v28    # "layoutSizeChanged":Z
    goto/16 :goto_4

    #@2e4
    .line 498
    .restart local v40    # "visible":Z
    :cond_13
    if-nez v35, :cond_8

    #@2e6
    .line 499
    :try_start_4
    move-object/from16 v0, p0

    #@2e8
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@2ea
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@2ec
    or-int/lit16 v5, v5, 0x2000

    #@2ee
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@2f0
    goto/16 :goto_5

    #@2f2
    .line 656
    .end local v40    # "visible":Z
    :catch_0
    move-exception v26

    #@2f3
    .line 657
    .local v26, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    #@2f6
    const-string/jumbo v5, "Exception from relayout"

    #@2f9
    move-object/from16 v0, v26

    #@2fb
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2fe
    .line 435
    .end local v26    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_d
    return-void

    #@2ff
    .line 519
    .restart local v25    # "display":Landroid/view/Display;
    .restart local v40    # "visible":Z
    :cond_15
    const/16 v8, 0x8

    #@301
    goto/16 :goto_6

    #@303
    .line 533
    .end local v25    # "display":Landroid/view/Display;
    .restart local v34    # "reportDrawNeeded":Z
    :cond_16
    const/4 v4, 0x1

    #@304
    goto/16 :goto_7

    #@306
    .line 540
    :cond_17
    const/16 v10, 0x8

    #@308
    goto/16 :goto_8

    #@30a
    .line 559
    .end local v34    # "reportDrawNeeded":Z
    .restart local v33    # "relayoutResult":I
    :cond_18
    :try_start_5
    move-object/from16 v0, p0

    #@30c
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@30e
    iget v0, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@310
    move/from16 v21, v0

    #@312
    .line 560
    .local v21, "appInvertedScale":F
    move-object/from16 v0, p0

    #@314
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@316
    move-object/from16 v0, p0

    #@318
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@31a
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@31d
    move-result v5

    #@31e
    int-to-float v5, v5

    #@31f
    mul-float v5, v5, v21

    #@321
    const/high16 v6, 0x3f000000    # 0.5f

    #@323
    add-float/2addr v5, v6

    #@324
    float-to-int v5, v5

    #@325
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@327
    .line 561
    move-object/from16 v0, p0

    #@329
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@32b
    move-object/from16 v0, p0

    #@32d
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@32f
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@332
    move-result v5

    #@333
    int-to-float v5, v5

    #@334
    mul-float v5, v5, v21

    #@336
    const/high16 v6, 0x3f000000    # 0.5f

    #@338
    add-float/2addr v5, v6

    #@339
    float-to-int v5, v5

    #@33a
    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@33c
    goto/16 :goto_9

    #@33e
    .line 570
    .end local v21    # "appInvertedScale":F
    .end local v33    # "relayoutResult":I
    :catchall_0
    move-exception v4

    #@33f
    .line 571
    :try_start_6
    move-object/from16 v0, p0

    #@341
    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@343
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@346
    .line 570
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@347
    .line 566
    .restart local v33    # "relayoutResult":I
    .restart local v37    # "surfaceHeight":I
    .restart local v38    # "surfaceWidth":I
    :cond_19
    const/16 v32, 0x1

    #@349
    .restart local v32    # "realSizeChanged":Z
    goto/16 :goto_a

    #@34b
    .line 567
    .end local v32    # "realSizeChanged":Z
    :cond_1a
    const/16 v32, 0x0

    #@34d
    .restart local v32    # "realSizeChanged":Z
    goto/16 :goto_a

    #@34f
    .line 579
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    const/16 v36, 0x0

    #@351
    .restart local v36    # "surfaceChanged":Z
    goto/16 :goto_b

    #@353
    .line 601
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1c
    :try_start_7
    move-object/from16 v0, p0

    #@355
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@357
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@35a
    move-result v4

    #@35b
    if-eqz v4, :cond_1d

    #@35d
    .line 602
    move-object/from16 v0, p0

    #@35f
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@361
    invoke-virtual {v4}, Landroid/view/Surface;->forceScopedDisconnect()V

    #@364
    .line 607
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1d
    move-object/from16 v0, p0

    #@366
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@368
    move-object/from16 v0, p0

    #@36a
    iget-object v5, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@36c
    invoke-virtual {v4, v5}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    #@36f
    .line 608
    if-eqz v40, :cond_26

    #@371
    move-object/from16 v0, p0

    #@373
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@375
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@378
    move-result v4

    #@379
    if-eqz v4, :cond_26

    #@37b
    .line 609
    move-object/from16 v0, p0

    #@37d
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@37f
    if-nez v4, :cond_20

    #@381
    if-nez v36, :cond_1e

    #@383
    if-eqz v41, :cond_20

    #@385
    .line 610
    :cond_1e
    const/4 v4, 0x1

    #@386
    move-object/from16 v0, p0

    #@388
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@38a
    .line 611
    const/4 v4, 0x1

    #@38b
    move-object/from16 v0, p0

    #@38d
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@38f
    .line 614
    if-nez v23, :cond_1f

    #@391
    .line 615
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@394
    move-result-object v23

    #@395
    .line 617
    :cond_1f
    const/4 v4, 0x0

    #@396
    move-object/from16 v0, v23

    #@398
    array-length v5, v0

    #@399
    :goto_e
    if-ge v4, v5, :cond_20

    #@39b
    aget-object v22, v23, v4

    #@39d
    .line 618
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@39f
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3a1
    move-object/from16 v0, v22

    #@3a3
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@3a6
    .line 617
    add-int/lit8 v4, v4, 0x1

    #@3a8
    goto :goto_e

    #@3a9
    .line 621
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_20
    if-nez v24, :cond_21

    #@3ab
    if-nez v27, :cond_21

    #@3ad
    if-nez v35, :cond_21

    #@3af
    if-nez v41, :cond_21

    #@3b1
    if-eqz v32, :cond_23

    #@3b3
    .line 626
    :cond_21
    if-nez v23, :cond_22

    #@3b5
    .line 627
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@3b8
    move-result-object v23

    #@3b9
    .line 629
    :cond_22
    const/4 v4, 0x0

    #@3ba
    move-object/from16 v0, v23

    #@3bc
    array-length v5, v0

    #@3bd
    :goto_f
    if-ge v4, v5, :cond_23

    #@3bf
    aget-object v22, v23, v4

    #@3c1
    .line 630
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@3c3
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    iget v7, v0, Landroid/view/SurfaceView;->mFormat:I

    #@3c9
    move-object/from16 v0, v22

    #@3cb
    move/from16 v1, v30

    #@3cd
    move/from16 v2, v29

    #@3cf
    invoke-interface {v0, v6, v7, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@3d2
    .line 629
    add-int/lit8 v4, v4, 0x1

    #@3d4
    goto :goto_f

    #@3d5
    .line 633
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_23
    if-eqz p2, :cond_26

    #@3d7
    .line 636
    if-nez v23, :cond_24

    #@3d9
    .line 637
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@3dc
    move-result-object v23

    #@3dd
    .line 639
    :cond_24
    const/4 v4, 0x0

    #@3de
    move-object/from16 v0, v23

    #@3e0
    array-length v5, v0

    #@3e1
    :goto_10
    if-ge v4, v5, :cond_26

    #@3e3
    aget-object v22, v23, v4

    #@3e5
    .line 640
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    #@3e7
    instance-of v6, v0, Landroid/view/SurfaceHolder$Callback2;

    #@3e9
    if-eqz v6, :cond_25

    #@3eb
    .line 641
    check-cast v22, Landroid/view/SurfaceHolder$Callback2;

    #@3ed
    .line 642
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@3ef
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3f1
    .line 641
    move-object/from16 v0, v22

    #@3f3
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3f6
    .line 639
    :cond_25
    add-int/lit8 v4, v4, 0x1

    #@3f8
    goto :goto_10

    #@3f9
    .line 648
    :cond_26
    const/4 v4, 0x0

    #@3fa
    :try_start_8
    move-object/from16 v0, p0

    #@3fc
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@3fe
    .line 649
    if-eqz p2, :cond_27

    #@400
    .line 652
    move-object/from16 v0, p0

    #@402
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@404
    move-object/from16 v0, p0

    #@406
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@408
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@40b
    .line 654
    :cond_27
    move-object/from16 v0, p0

    #@40d
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@40f
    move-object/from16 v0, p0

    #@411
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@413
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@416
    goto/16 :goto_d

    #@418
    .line 647
    :catchall_1
    move-exception v4

    #@419
    .line 648
    const/4 v5, 0x0

    #@41a
    move-object/from16 v0, p0

    #@41c
    iput-boolean v5, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@41e
    .line 649
    if-eqz p2, :cond_28

    #@420
    .line 652
    move-object/from16 v0, p0

    #@422
    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@424
    move-object/from16 v0, p0

    #@426
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@428
    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@42b
    .line 654
    :cond_28
    move-object/from16 v0, p0

    #@42d
    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@42f
    move-object/from16 v0, p0

    #@431
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@433
    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@436
    .line 647
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    #@437
    .line 666
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    :cond_29
    move-object/from16 v0, p0

    #@439
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@43b
    move-object/from16 v0, p0

    #@43d
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@440
    .line 667
    move-object/from16 v0, p0

    #@442
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@444
    move-object/from16 v0, p0

    #@446
    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@448
    const/4 v6, 0x0

    #@449
    aget v5, v5, v6

    #@44b
    if-ne v4, v5, :cond_2d

    #@44d
    .line 668
    move-object/from16 v0, p0

    #@44f
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@451
    move-object/from16 v0, p0

    #@453
    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@455
    const/4 v6, 0x1

    #@456
    aget v5, v5, v6

    #@458
    if-eq v4, v5, :cond_2e

    #@45a
    const/16 v31, 0x1

    #@45c
    .line 669
    .local v31, "positionChanged":Z
    :goto_11
    if-nez v31, :cond_2a

    #@45e
    if-eqz v28, :cond_14

    #@460
    .line 670
    :cond_2a
    move-object/from16 v0, p0

    #@462
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@464
    const/4 v5, 0x0

    #@465
    aget v4, v4, v5

    #@467
    move-object/from16 v0, p0

    #@469
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@46b
    .line 671
    move-object/from16 v0, p0

    #@46d
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@46f
    const/4 v5, 0x1

    #@470
    aget v4, v4, v5

    #@472
    move-object/from16 v0, p0

    #@474
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@476
    .line 674
    move-object/from16 v0, p0

    #@478
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@47a
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@47d
    move-result v5

    #@47e
    move-object/from16 v0, p0

    #@480
    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@482
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@484
    const/4 v6, 0x0

    #@485
    aput v5, v4, v6

    #@487
    .line 675
    move-object/from16 v0, p0

    #@489
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@48b
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@48e
    move-result v5

    #@48f
    move-object/from16 v0, p0

    #@491
    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@493
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@495
    const/4 v6, 0x1

    #@496
    aput v5, v4, v6

    #@498
    .line 677
    move-object/from16 v0, p0

    #@49a
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@49c
    move-object/from16 v0, p0

    #@49e
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->transformFromViewToWindowSpace([I)V

    #@4a1
    .line 679
    move-object/from16 v0, p0

    #@4a3
    iget-object v4, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4a5
    move-object/from16 v0, p0

    #@4a7
    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@4a9
    move-object/from16 v0, p0

    #@4ab
    iget v6, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@4ad
    .line 680
    move-object/from16 v0, p0

    #@4af
    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@4b1
    const/4 v8, 0x0

    #@4b2
    aget v7, v7, v8

    #@4b4
    move-object/from16 v0, p0

    #@4b6
    iget-object v8, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@4b8
    const/4 v9, 0x1

    #@4b9
    aget v8, v8, v9

    #@4bb
    .line 679
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@4be
    .line 682
    move-object/from16 v0, p0

    #@4c0
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4c2
    if-eqz v4, :cond_2b

    #@4c4
    .line 683
    move-object/from16 v0, p0

    #@4c6
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    iget-object v5, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4cc
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@4cf
    .line 686
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    #@4d2
    move-result v4

    #@4d3
    if-eqz v4, :cond_2c

    #@4d5
    move-object/from16 v0, p0

    #@4d7
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@4d9
    if-nez v4, :cond_14

    #@4db
    .line 692
    :cond_2c
    :try_start_9
    move-object/from16 v0, p0

    #@4dd
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@4df
    move-object/from16 v0, p0

    #@4e1
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4e3
    move-object/from16 v0, p0

    #@4e5
    iget-object v6, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4e7
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4e9
    move-object/from16 v0, p0

    #@4eb
    iget-object v7, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4ed
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@4ef
    .line 693
    move-object/from16 v0, p0

    #@4f1
    iget-object v8, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4f3
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@4f5
    move-object/from16 v0, p0

    #@4f7
    iget-object v9, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4f9
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@4fb
    const-wide/16 v10, -0x1

    #@4fd
    move-object/from16 v0, p0

    #@4ff
    iget-object v12, v0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@501
    .line 692
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    #@504
    goto/16 :goto_d

    #@506
    .line 694
    :catch_1
    move-exception v26

    #@507
    .line 695
    .restart local v26    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    #@50a
    const-string/jumbo v5, "Exception from relayout"

    #@50d
    move-object/from16 v0, v26

    #@50f
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@512
    goto/16 :goto_d

    #@514
    .line 667
    .end local v26    # "ex":Landroid/os/RemoteException;
    .end local v31    # "positionChanged":Z
    :cond_2d
    const/16 v31, 0x1

    #@516
    .restart local v31    # "positionChanged":Z
    goto/16 :goto_11

    #@518
    .line 668
    .end local v31    # "positionChanged":Z
    :cond_2e
    const/16 v31, 0x0

    #@51a
    .restart local v31    # "positionChanged":Z
    goto/16 :goto_11
.end method

.method public final updateWindowPosition_renderWorker(JIIII)V
    .locals 15
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    #@0
    .prologue
    .line 710
    iget-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2
    .line 711
    .local v4, "session":Landroid/view/IWindowSession;
    iget-object v5, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4
    .line 712
    .local v5, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v4, :cond_0

    #@6
    if-nez v5, :cond_1

    #@8
    .line 714
    :cond_0
    return-void

    #@9
    .line 724
    :cond_1
    const/4 v6, 0x1

    #@a
    iput-boolean v6, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@c
    .line 725
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@e
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@10
    move/from16 v0, p3

    #@12
    if-ne v6, v0, :cond_2

    #@14
    .line 726
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@16
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@18
    move/from16 v0, p4

    #@1a
    if-ne v6, v0, :cond_2

    #@1c
    .line 727
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@1e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@20
    move/from16 v0, p5

    #@22
    if-ne v6, v0, :cond_2

    #@24
    .line 728
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@26
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@28
    move/from16 v0, p6

    #@2a
    if-ne v6, v0, :cond_2

    #@2c
    .line 729
    return-void

    #@2d
    .line 740
    :cond_2
    :try_start_0
    iget-object v12, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@2f
    move/from16 v6, p3

    #@31
    move/from16 v7, p4

    #@33
    move/from16 v8, p5

    #@35
    move/from16 v9, p6

    #@37
    move-wide/from16 v10, p1

    #@39
    .line 738
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    #@3c
    .line 742
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@3e
    move/from16 v0, p3

    #@40
    move/from16 v1, p4

    #@42
    move/from16 v2, p5

    #@44
    move/from16 v3, p6

    #@46
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 709
    :goto_0
    return-void

    #@4a
    .line 743
    :catch_0
    move-exception v13

    #@4b
    .line 744
    .local v13, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SurfaceView"

    #@4e
    const-string/jumbo v7, "Exception from repositionChild"

    #@51
    invoke-static {v6, v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    goto :goto_0
.end method

.method public final windowPositionLost_uiRtSync(J)V
    .locals 11
    .param p1, "frameNumber"    # J

    #@0
    .prologue
    .line 758
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2
    .line 759
    .local v0, "session":Landroid/view/IWindowSession;
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4
    .line 760
    .local v1, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v0, :cond_0

    #@6
    if-nez v1, :cond_1

    #@8
    .line 762
    :cond_0
    return-void

    #@9
    .line 764
    :cond_1
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@b
    if-eqz v2, :cond_3

    #@d
    .line 765
    const/4 v2, 0x0

    #@e
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@10
    .line 770
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@12
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@14
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    #@16
    iget-object v4, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@18
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@1a
    .line 771
    iget-object v5, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    #@1e
    iget-object v6, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@20
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@22
    add-int/2addr v5, v6

    #@23
    .line 772
    iget-object v6, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@25
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@27
    iget-object v7, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@29
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    #@2b
    add-int/2addr v6, v7

    #@2c
    .line 770
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@2f
    .line 774
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@31
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_2

    #@37
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@39
    iget-object v3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@3b
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_4

    #@41
    .line 786
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@43
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@46
    .line 753
    :cond_3
    return-void

    #@47
    .line 780
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@49
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@4b
    iget-object v3, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@4d
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@4f
    .line 781
    iget-object v4, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@51
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@53
    iget-object v5, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    #@55
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@57
    iget-object v8, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@59
    move-wide v6, p1

    #@5a
    .line 780
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    goto :goto_0

    #@5e
    .line 782
    :catch_0
    move-exception v9

    #@5f
    .line 783
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SurfaceView"

    #@62
    const-string/jumbo v3, "Exception from relayout"

    #@65
    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_0
.end method

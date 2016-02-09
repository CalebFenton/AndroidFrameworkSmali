.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$ActivityViewCallback;,
        Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;,
        Landroid/app/ActivityView$ActivityContainerCallback;,
        Landroid/app/ActivityView$ActivityContainerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SET_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

.field private mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastVisibility:I

.field mMetrics:Landroid/util/DisplayMetrics;

.field private mSurface:Landroid/view/Surface;

.field private final mTextureView:Landroid/view/TextureView;

.field private mThread:Landroid/os/HandlerThread;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ActivityView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/ActivityView;->mHeight:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/app/ActivityView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/ActivityView;->mWidth:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/app/ActivityView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/ActivityView;->mHeight:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/app/ActivityView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/ActivityView;->mWidth:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ActivityView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ActivityView;->attachToSurfaceWhenReady()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 56
    new-instance v2, Landroid/util/DisplayMetrics;

    #@6
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    #@9
    iput-object v2, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    #@b
    .line 66
    new-instance v2, Landroid/os/HandlerThread;

    #@d
    const-string/jumbo v3, "ActivityViewThread"

    #@10
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v2, p0, Landroid/app/ActivityView;->mThread:Landroid/os/HandlerThread;

    #@15
    .line 80
    :goto_0
    instance-of v2, p1, Landroid/content/ContextWrapper;

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 81
    instance-of v2, p1, Landroid/app/Activity;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    move-object v2, p1

    #@1e
    .line 82
    check-cast v2, Landroid/app/Activity;

    #@20
    iput-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@22
    .line 87
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@24
    if-nez v2, :cond_2

    #@26
    .line 88
    new-instance v2, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v3, "The ActivityView\'s Context is not an Activity."

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 85
    :cond_1
    check-cast p1, Landroid/content/ContextWrapper;

    #@31
    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@34
    move-result-object p1

    #@35
    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_0

    #@36
    .line 92
    :cond_2
    :try_start_0
    new-instance v2, Landroid/app/ActivityView$ActivityContainerWrapper;

    #@38
    .line 93
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3b
    move-result-object v3

    #@3c
    .line 94
    iget-object v4, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@3e
    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@41
    move-result-object v4

    #@42
    new-instance v5, Landroid/app/ActivityView$ActivityContainerCallback;

    #@44
    invoke-direct {v5, p0}, Landroid/app/ActivityView$ActivityContainerCallback;-><init>(Landroid/app/ActivityView;)V

    #@47
    .line 93
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    #@4a
    move-result-object v3

    #@4b
    .line 92
    invoke-direct {v2, v3}, Landroid/app/ActivityView$ActivityContainerWrapper;-><init>(Landroid/app/IActivityContainer;)V

    #@4e
    iput-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 100
    iget-object v2, p0, Landroid/app/ActivityView;->mThread:Landroid/os/HandlerThread;

    #@52
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@55
    .line 101
    new-instance v2, Landroid/app/ActivityView$1;

    #@57
    iget-object v3, p0, Landroid/app/ActivityView;->mThread:Landroid/os/HandlerThread;

    #@59
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@5c
    move-result-object v3

    #@5d
    invoke-direct {v2, p0, v3}, Landroid/app/ActivityView$1;-><init>(Landroid/app/ActivityView;Landroid/os/Looper;)V

    #@60
    iput-object v2, p0, Landroid/app/ActivityView;->mHandler:Landroid/os/Handler;

    #@62
    .line 116
    new-instance v2, Landroid/view/TextureView;

    #@64
    invoke-direct {v2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    #@67
    iput-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@69
    .line 117
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@6b
    new-instance v3, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;

    #@6d
    invoke-direct {v3, p0, v6}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;)V

    #@70
    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    #@73
    .line 118
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@75
    invoke-virtual {p0, v2}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    #@78
    .line 120
    iget-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@7a
    const-string/jumbo v3, "window"

    #@7d
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@80
    move-result-object v1

    #@81
    check-cast v1, Landroid/view/WindowManager;

    #@83
    .line 121
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@86
    move-result-object v2

    #@87
    iget-object v3, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    #@89
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@8c
    .line 123
    invoke-virtual {p0}, Landroid/app/ActivityView;->getVisibility()I

    #@8f
    move-result v2

    #@90
    iput v2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    #@92
    .line 77
    return-void

    #@93
    .line 95
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    #@94
    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@96
    new-instance v3, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v4, "ActivityView: Unable to create ActivityContainer. "

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v3

    #@aa
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v2
.end method

.method private attachToSurfaceWhenReady()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 245
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@3
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    #@6
    move-result-object v1

    #@7
    .line 246
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_0

    #@9
    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 248
    :cond_0
    return-void

    #@e
    .line 251
    :cond_1
    new-instance v2, Landroid/view/Surface;

    #@10
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@13
    iput-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@15
    .line 253
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@17
    iget-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@19
    iget v4, p0, Landroid/app/ActivityView;->mWidth:I

    #@1b
    iget v5, p0, Landroid/app/ActivityView;->mHeight:I

    #@1d
    iget-object v6, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    #@1f
    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    #@21
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 244
    return-void

    #@25
    .line 254
    :catch_0
    move-exception v0

    #@26
    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@28
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    #@2b
    .line 256
    iput-object v7, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2d
    .line 257
    new-instance v2, Ljava/lang/RuntimeException;

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "ActivityView: Unable to create ActivityContainer. "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->injectEvent(Landroid/view/InputEvent;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public isAttachedToDisplay()Z
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 167
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 173
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 158
    const/4 v0, 0x2

    #@1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 159
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 160
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 130
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@3
    sub-int v1, p4, p2

    #@5
    sub-int v2, p5, p3

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/TextureView;->layout(IIII)V

    #@a
    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v4, 0x8

    #@3
    .line 135
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    #@6
    .line 137
    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@8
    if-eqz v2, :cond_1

    #@a
    if-eq p2, v4, :cond_0

    #@c
    iget v2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    #@e
    if-ne v2, v4, :cond_1

    #@10
    .line 138
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityView;->mHandler:Landroid/os/Handler;

    #@12
    const/4 v3, 0x1

    #@13
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@16
    move-result-object v0

    #@17
    .line 139
    .local v0, "msg":Landroid/os/Message;
    if-ne p2, v4, :cond_2

    #@19
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    .line 140
    iget v1, p0, Landroid/app/ActivityView;->mWidth:I

    #@1d
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@1f
    .line 141
    iget v1, p0, Landroid/app/ActivityView;->mHeight:I

    #@21
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@23
    .line 142
    iget-object v1, p0, Landroid/app/ActivityView;->mHandler:Landroid/os/Handler;

    #@25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@28
    .line 144
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iput p2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    #@2a
    .line 134
    return-void

    #@2b
    .line 139
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2d
    goto :goto_0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 229
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 230
    const-string/jumbo v0, "ActivityView"

    #@8
    const-string/jumbo v1, "Duplicate call to release"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 231
    return-void

    #@f
    .line 233
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@11
    invoke-virtual {v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V

    #@14
    .line 234
    iput-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@16
    .line 236
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 237
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@1c
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@1f
    .line 238
    iput-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@21
    .line 241
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@23
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    #@26
    .line 226
    return-void
.end method

.method public setCallback(Landroid/app/ActivityView$ActivityViewCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/ActivityView$ActivityViewCallback;

    #@0
    .prologue
    .line 272
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    #@2
    .line 274
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 275
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    #@8
    invoke-virtual {v0, p0}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    #@b
    .line 271
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 212
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Attempt to call startActivity after release"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 215
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v2, "Surface not yet created."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@1d
    move-result-object v0

    #@1e
    .line 221
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@20
    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    #@23
    move-result v1

    #@24
    const/4 v2, -0x6

    #@25
    if-ne v1, v2, :cond_2

    #@27
    .line 222
    new-instance v1, Landroid/os/OperationCanceledException;

    #@29
    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    #@2c
    throw v1

    #@2d
    .line 211
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Attempt to call startActivity after release"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 186
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Surface not yet created."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 191
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@1c
    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivity(Landroid/content/Intent;)I

    #@1f
    move-result v0

    #@20
    const/4 v1, -0x6

    #@21
    if-ne v0, v1, :cond_2

    #@23
    .line 192
    new-instance v0, Landroid/os/OperationCanceledException;

    #@25
    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    #@28
    throw v0

    #@29
    .line 182
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/IntentSender;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 197
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Attempt to call startActivity after release"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 200
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v2, "Surface not yet created."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    #@1d
    move-result-object v0

    #@1e
    .line 206
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@20
    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    #@23
    move-result v1

    #@24
    const/4 v2, -0x6

    #@25
    if-ne v1, v2, :cond_2

    #@27
    .line 207
    new-instance v1, Landroid/os/OperationCanceledException;

    #@29
    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    #@2c
    throw v1

    #@2d
    .line 196
    :cond_2
    return-void
.end method

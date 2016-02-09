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
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;,
        Landroid/service/wallpaper/WallpaperService$Engine$1;,
        Landroid/service/wallpaper/WallpaperService$Engine$2;,
        Landroid/service/wallpaper/WallpaperService$Engine$3;
    }
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field final mDispatchedContentInsets:Landroid/graphics/Rect;

.field final mDispatchedOutsets:Landroid/graphics/Rect;

.field final mDispatchedOverscanInsets:Landroid/graphics/Rect;

.field final mDispatchedStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field mDrawingAllowed:Z

.field final mFinalStableInsets:Landroid/graphics/Rect;

.field final mFinalSystemInsets:Landroid/graphics/Rect;

.field mFixedSizeAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field mReportedVisible:Z

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static synthetic -get0(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 135
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@8
    .line 153
    const/16 v0, 0x10

    #@a
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@c
    .line 155
    const/4 v0, 0x4

    #@d
    .line 154
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@f
    .line 156
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@11
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@13
    .line 157
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@15
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@17
    .line 158
    new-instance v0, Landroid/graphics/Rect;

    #@19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@1e
    .line 159
    new-instance v0, Landroid/graphics/Rect;

    #@20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@25
    .line 160
    new-instance v0, Landroid/graphics/Rect;

    #@27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2c
    .line 161
    new-instance v0, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@33
    .line 162
    new-instance v0, Landroid/graphics/Rect;

    #@35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@38
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@3a
    .line 163
    new-instance v0, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@41
    .line 164
    new-instance v0, Landroid/graphics/Rect;

    #@43
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@48
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@4f
    .line 166
    new-instance v0, Landroid/graphics/Rect;

    #@51
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@54
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@56
    .line 167
    new-instance v0, Landroid/graphics/Rect;

    #@58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5b
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@5d
    .line 168
    new-instance v0, Landroid/graphics/Rect;

    #@5f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@62
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@64
    .line 169
    new-instance v0, Landroid/graphics/Rect;

    #@66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@69
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@6b
    .line 170
    new-instance v0, Landroid/content/res/Configuration;

    #@6d
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@70
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@72
    .line 173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@74
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@77
    .line 172
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@79
    .line 177
    new-instance v0, Ljava/lang/Object;

    #@7b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@7e
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@80
    .line 190
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    #@82
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@85
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@87
    .line 269
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    #@89
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@8c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@8e
    .line 1054
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    #@90
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@93
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@95
    .line 127
    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 571
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 572
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v1

    #@d
    const/4 v3, 0x2

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 573
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v2

    #@13
    .line 578
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@15
    const/16 v2, 0x2738

    #@17
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 579
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1d
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@20
    .line 569
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    #@21
    .line 575
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 571
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1

    #@28
    .line 581
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@2b
    goto :goto_1
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 850
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 851
    return-void

    #@6
    .line 854
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@8
    .line 855
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-get0(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    .line 856
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@10
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@12
    .line 857
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    #@14
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    #@16
    .line 858
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    #@1b
    .line 859
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@1e
    .line 860
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@24
    .line 862
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@26
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@28
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    #@2b
    .line 864
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@2d
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@2f
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@35
    .line 866
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@37
    const-string/jumbo v1, "display"

    #@3a
    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@40
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@42
    .line 867
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@44
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@46
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@48
    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@4f
    .line 868
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@51
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@57
    .line 869
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@59
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@5f
    .line 872
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@61
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    #@64
    .line 874
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@66
    .line 875
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@68
    .line 876
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@6b
    .line 848
    return-void
.end method

.method detach()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1008
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1009
    return-void

    #@7
    .line 1012
    :cond_0
    const/4 v1, 0x1

    #@8
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@a
    .line 1014
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1015
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@10
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@12
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@15
    .line 1018
    :cond_1
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1019
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@1b
    .line 1021
    invoke-virtual {p0, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@1e
    .line 1024
    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    #@21
    .line 1027
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    #@24
    .line 1029
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 1034
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 1035
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@2e
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    #@31
    .line 1036
    const/4 v1, 0x0

    #@32
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@34
    .line 1039
    :cond_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@36
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@38
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 1042
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3d
    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@3f
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@42
    .line 1043
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@44
    .line 1047
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 1048
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@4a
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@4d
    .line 1049
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@4f
    .line 1007
    :cond_4
    return-void

    #@50
    .line 1040
    :catch_0
    move-exception v0

    #@51
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 9
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    #@0
    .prologue
    .line 976
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 977
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    #@6
    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    #@8
    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    #@a
    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    #@c
    .line 978
    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    #@e
    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@10
    move-object v0, p0

    #@11
    .line 977
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    #@14
    move-result-object v8

    #@15
    .line 982
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 985
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@1b
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    invoke-interface {v0, v1, v8}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 974
    :cond_0
    :goto_1
    return-void

    #@25
    .line 980
    :cond_1
    const/4 v8, 0x0

    #@26
    .local v8, "result":Landroid/os/Bundle;
    goto :goto_0

    #@27
    .line 986
    .end local v8    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    #@28
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doDesiredSizeChanged(II)V
    .locals 1
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    #@0
    .prologue
    .line 880
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 883
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@6
    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@8
    .line 884
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@a
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@c
    .line 885
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    #@f
    .line 886
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@13
    .line 879
    :cond_0
    return-void
.end method

.method doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 891
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 893
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@7
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 894
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@11
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 895
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@1a
    .line 890
    :cond_0
    return-void
.end method

.method doOffsetsChanged(Z)V
    .locals 13
    .param p1, "always"    # Z

    #@0
    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    #@2
    .line 928
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 929
    return-void

    #@7
    .line 932
    :cond_0
    if-nez p1, :cond_1

    #@9
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    #@b
    if-eqz v0, :cond_4

    #@d
    .line 941
    :cond_1
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v11

    #@10
    .line 942
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@12
    .line 943
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    #@14
    .line 944
    .local v2, "yOffset":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@16
    .line 945
    .local v3, "xOffsetStep":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    #@18
    .line 946
    .local v4, "yOffsetStep":F
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1a
    .line 947
    .local v10, "sync":Z
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1d
    .line 948
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v11

    #@21
    .line 951
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 952
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@27
    if-eqz v0, :cond_7

    #@29
    .line 955
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2b
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@2d
    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@2f
    sub-int v8, v0, v11

    #@31
    .line 956
    .local v8, "availw":I
    if-lez v8, :cond_5

    #@33
    int-to-float v0, v8

    #@34
    mul-float/2addr v0, v1

    #@35
    add-float/2addr v0, v12

    #@36
    float-to-int v0, v0

    #@37
    neg-int v5, v0

    #@38
    .line 957
    .local v5, "xPixels":I
    :goto_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@3a
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@3c
    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@3e
    sub-int v7, v0, v11

    #@40
    .line 958
    .local v7, "availh":I
    if-lez v7, :cond_6

    #@42
    int-to-float v0, v7

    #@43
    mul-float/2addr v0, v2

    #@44
    add-float/2addr v0, v12

    #@45
    float-to-int v0, v0

    #@46
    neg-int v6, v0

    #@47
    .local v6, "yPixels":I
    :goto_1
    move-object v0, p0

    #@48
    .line 959
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    #@4b
    .line 965
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    #@4d
    .line 968
    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@4f
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@51
    invoke-virtual {v11}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    #@54
    move-result-object v11

    #@55
    invoke-interface {v0, v11}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@58
    .line 927
    :cond_3
    :goto_3
    return-void

    #@59
    .line 933
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v10    # "sync":Z
    :cond_4
    return-void

    #@5a
    .line 941
    :catchall_0
    move-exception v0

    #@5b
    monitor-exit v11

    #@5c
    throw v0

    #@5d
    .line 956
    .restart local v1    # "xOffset":F
    .restart local v2    # "yOffset":F
    .restart local v3    # "xOffsetStep":F
    .restart local v4    # "yOffsetStep":F
    .restart local v8    # "availw":I
    .restart local v10    # "sync":Z
    :cond_5
    const/4 v5, 0x0

    #@5e
    .restart local v5    # "xPixels":I
    goto :goto_0

    #@5f
    .line 958
    .restart local v7    # "availh":I
    :cond_6
    const/4 v6, 0x0

    #@60
    .restart local v6    # "yPixels":I
    goto :goto_1

    #@61
    .line 961
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_7
    const/4 v0, 0x1

    #@62
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    #@64
    goto :goto_2

    #@65
    .line 969
    :catch_0
    move-exception v9

    #@66
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method doVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 901
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 902
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@6
    .line 903
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    #@9
    .line 900
    :cond_0
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 530
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mInitializing="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@e
    .line 531
    const-string/jumbo v0, " mDestroyed="

    #@11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@19
    .line 532
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    const-string/jumbo v0, "mVisible="

    #@1f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@27
    .line 533
    const-string/jumbo v0, " mReportedVisible="

    #@2a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@2f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@32
    .line 534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    const-string/jumbo v0, "mDisplay="

    #@38
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@40
    .line 535
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    const-string/jumbo v0, "mCreated="

    #@46
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@4b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@4e
    .line 536
    const-string/jumbo v0, " mSurfaceCreated="

    #@51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@56
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@59
    .line 537
    const-string/jumbo v0, " mIsCreating="

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@64
    .line 538
    const-string/jumbo v0, " mDrawingAllowed="

    #@67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6f
    .line 539
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72
    const-string/jumbo v0, "mWidth="

    #@75
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@7a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@7d
    .line 540
    const-string/jumbo v0, " mCurWidth="

    #@80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@88
    .line 541
    const-string/jumbo v0, " mHeight="

    #@8b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@93
    .line 542
    const-string/jumbo v0, " mCurHeight="

    #@96
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@9b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@9e
    .line 543
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    const-string/jumbo v0, "mType="

    #@a4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@a9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@ac
    .line 544
    const-string/jumbo v0, " mWindowFlags="

    #@af
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@b4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b7
    .line 545
    const-string/jumbo v0, " mCurWindowFlags="

    #@ba
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@bf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@c2
    .line 546
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    const-string/jumbo v0, "mWindowPrivateFlags="

    #@c8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@cd
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@d0
    .line 547
    const-string/jumbo v0, " mCurWindowPrivateFlags="

    #@d3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@d8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@db
    .line 548
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    const-string/jumbo v0, "mVisibleInsets="

    #@e1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    .line 549
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@e6
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 550
    const-string/jumbo v0, " mWinFrame="

    #@f0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f3
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@f5
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@f8
    move-result-object v0

    #@f9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    .line 551
    const-string/jumbo v0, " mContentInsets="

    #@ff
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@104
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 552
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e
    const-string/jumbo v0, "mConfiguration="

    #@111
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@116
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@119
    .line 553
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    const-string/jumbo v0, "mLayout="

    #@11f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@124
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@127
    .line 554
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@129
    monitor-enter v1

    #@12a
    .line 555
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    const-string/jumbo v0, "mPendingXOffset="

    #@130
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@133
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@135
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    #@138
    .line 556
    const-string/jumbo v0, " mPendingXOffset="

    #@13b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@140
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    #@143
    .line 557
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@146
    const-string/jumbo v0, "mPendingXOffsetStep="

    #@149
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    .line 558
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@14e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    #@151
    .line 559
    const-string/jumbo v0, " mPendingXOffsetStep="

    #@154
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@157
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@159
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    #@15c
    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    const-string/jumbo v0, "mOffsetMessageEnqueued="

    #@162
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    .line 561
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    #@167
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@16a
    .line 562
    const-string/jumbo v0, " mPendingSync="

    #@16d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@172
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@175
    .line 563
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    #@177
    if-eqz v0, :cond_0

    #@179
    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17c
    const-string/jumbo v0, "mPendingMove="

    #@17f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    #@184
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@187
    :cond_0
    monitor-exit v1

    #@188
    .line 529
    return-void

    #@189
    .line 554
    :catchall_0
    move-exception v0

    #@18a
    monitor-exit v1

    #@18b
    throw v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@4
    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@4
    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@2
    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2
    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    #@4
    return v0
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@2
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 448
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    #@0
    .prologue
    .line 491
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 422
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    #@0
    .prologue
    .line 498
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 430
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    #@0
    .prologue
    .line 469
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 505
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 519
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 526
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 512
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 458
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 438
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 992
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 993
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@7
    .line 994
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@c
    .line 995
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@11
    move-result-object v1

    #@12
    .line 996
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_0

    #@14
    .line 997
    array-length v3, v1

    #@15
    :goto_0
    if-ge v2, v3, :cond_0

    #@17
    aget-object v0, v1, v2

    #@19
    .line 998
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1b
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@1e
    .line 997
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1003
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@23
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@26
    .line 991
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method reportVisibility()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 908
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 909
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@7
    if-nez v1, :cond_2

    #@9
    move v1, v2

    #@a
    :goto_0
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@c
    .line 910
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@e
    if-eqz v1, :cond_3

    #@10
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@12
    const/4 v3, 0x1

    #@13
    if-eq v1, v3, :cond_3

    #@15
    const/4 v0, 0x1

    #@16
    .line 911
    .local v0, "visible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@18
    if-eq v1, v0, :cond_1

    #@1a
    .line 912
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@1c
    .line 915
    if-eqz v0, :cond_0

    #@1e
    .line 919
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@21
    .line 920
    invoke-virtual {p0, v2, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@24
    .line 922
    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@27
    .line 907
    .end local v0    # "visible":Z
    :cond_1
    return-void

    #@28
    .line 909
    :cond_2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@2a
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    #@2d
    move-result v1

    #@2e
    goto :goto_0

    #@2f
    .line 910
    :cond_3
    const/4 v0, 0x0

    #@30
    .restart local v0    # "visible":Z
    goto :goto_1
.end method

.method public setFixedSizeAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    #@0
    .prologue
    .line 415
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    #@2
    .line 414
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 403
    if-eqz p1, :cond_1

    #@3
    .line 404
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    .line 403
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@9
    .line 408
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 409
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@10
    .line 402
    :cond_0
    return-void

    #@11
    .line 406
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@13
    and-int/lit8 v0, v0, -0x5

    #@15
    goto :goto_0
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 386
    if-eqz p1, :cond_1

    #@3
    .line 387
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    .line 386
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@9
    .line 389
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 390
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@10
    .line 385
    :cond_0
    return-void

    #@11
    .line 388
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@13
    or-int/lit8 v0, v0, 0x10

    #@15
    goto :goto_0
.end method

.method updateSurface(ZZZ)V
    .locals 38
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    #@0
    .prologue
    .line 586
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 587
    const-string/jumbo v2, "WallpaperService"

    #@9
    const-string/jumbo v3, "Ignoring updateSurface: destroyed"

    #@c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 590
    :cond_0
    const/16 v23, 0x0

    #@11
    .line 591
    .local v23, "fixedSize":Z
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@15
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    #@18
    move-result v30

    #@19
    .line 592
    .local v30, "myWidth":I
    if-gtz v30, :cond_2

    #@1b
    const/16 v30, -0x1

    #@1d
    .line 594
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@21
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    #@24
    move-result v29

    #@25
    .line 595
    .local v29, "myHeight":I
    if-gtz v29, :cond_3

    #@27
    const/16 v29, -0x1

    #@29
    .line 598
    :goto_1
    move-object/from16 v0, p0

    #@2b
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@2d
    if-eqz v2, :cond_4

    #@2f
    const/16 v20, 0x0

    #@31
    .line 599
    .local v20, "creating":Z
    :goto_2
    move-object/from16 v0, p0

    #@33
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@35
    if-eqz v2, :cond_5

    #@37
    const/16 v34, 0x0

    #@39
    .line 600
    .local v34, "surfaceCreating":Z
    :goto_3
    move-object/from16 v0, p0

    #@3b
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@41
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    #@44
    move-result v3

    #@45
    if-eq v2, v3, :cond_6

    #@47
    const/16 v25, 0x1

    #@49
    .line 601
    .local v25, "formatChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@4b
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@4d
    move/from16 v0, v30

    #@4f
    if-ne v2, v0, :cond_1

    #@51
    move-object/from16 v0, p0

    #@53
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@55
    move/from16 v0, v29

    #@57
    if-eq v2, v0, :cond_7

    #@59
    :cond_1
    const/16 v33, 0x1

    #@5b
    .line 602
    .local v33, "sizeChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@5d
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@5f
    if-eqz v2, :cond_8

    #@61
    const/16 v28, 0x0

    #@63
    .line 603
    .local v28, "insetsChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@65
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6b
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    #@6e
    move-result v3

    #@6f
    if-eq v2, v3, :cond_9

    #@71
    const/16 v35, 0x1

    #@73
    .line 604
    .local v35, "typeChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@75
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@77
    move-object/from16 v0, p0

    #@79
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@7b
    if-ne v2, v3, :cond_a

    #@7d
    .line 605
    move-object/from16 v0, p0

    #@7f
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@81
    move-object/from16 v0, p0

    #@83
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@85
    if-eq v2, v3, :cond_b

    #@87
    const/16 v24, 0x1

    #@89
    .line 606
    .local v24, "flagsChanged":Z
    :goto_8
    if-nez p1, :cond_c

    #@8b
    if-nez v20, :cond_c

    #@8d
    if-nez v34, :cond_c

    #@8f
    if-nez v25, :cond_c

    #@91
    if-nez v33, :cond_c

    #@93
    if-nez v35, :cond_c

    #@95
    if-nez v24, :cond_c

    #@97
    if-nez p3, :cond_c

    #@99
    .line 608
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@9d
    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    #@9f
    if-eqz v2, :cond_c

    #@a1
    .line 585
    .end local v28    # "insetsChanged":Z
    :goto_9
    return-void

    #@a2
    .line 593
    .end local v20    # "creating":Z
    .end local v24    # "flagsChanged":Z
    .end local v25    # "formatChanged":Z
    .end local v29    # "myHeight":I
    .end local v33    # "sizeChanged":Z
    .end local v34    # "surfaceCreating":Z
    .end local v35    # "typeChanged":Z
    :cond_2
    const/16 v23, 0x1

    #@a4
    goto/16 :goto_0

    #@a6
    .line 596
    .restart local v29    # "myHeight":I
    :cond_3
    const/16 v23, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 598
    :cond_4
    const/16 v20, 0x1

    #@ab
    .restart local v20    # "creating":Z
    goto :goto_2

    #@ac
    .line 599
    :cond_5
    const/16 v34, 0x1

    #@ae
    .restart local v34    # "surfaceCreating":Z
    goto :goto_3

    #@af
    .line 600
    :cond_6
    const/16 v25, 0x0

    #@b1
    .restart local v25    # "formatChanged":Z
    goto :goto_4

    #@b2
    .line 601
    :cond_7
    const/16 v33, 0x0

    #@b4
    .restart local v33    # "sizeChanged":Z
    goto :goto_5

    #@b5
    .line 602
    :cond_8
    const/16 v28, 0x1

    #@b7
    .restart local v28    # "insetsChanged":Z
    goto :goto_6

    #@b8
    .line 603
    :cond_9
    const/16 v35, 0x0

    #@ba
    .restart local v35    # "typeChanged":Z
    goto :goto_7

    #@bb
    .line 604
    :cond_a
    const/16 v24, 0x1

    #@bd
    .restart local v24    # "flagsChanged":Z
    goto :goto_8

    #@be
    .line 605
    .end local v24    # "flagsChanged":Z
    :cond_b
    const/16 v24, 0x0

    #@c0
    .restart local v24    # "flagsChanged":Z
    goto :goto_8

    #@c1
    .line 614
    :cond_c
    :try_start_0
    move/from16 v0, v30

    #@c3
    move-object/from16 v1, p0

    #@c5
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@c7
    .line 615
    move/from16 v0, v29

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@cd
    .line 616
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@d1
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    #@d4
    move-result v2

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@d9
    .line 617
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@dd
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    #@e0
    move-result v2

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@e5
    .line 619
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@e9
    const/4 v3, 0x0

    #@ea
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    #@ec
    .line 620
    move-object/from16 v0, p0

    #@ee
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f0
    const/4 v3, 0x0

    #@f1
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    #@f3
    .line 621
    move-object/from16 v0, p0

    #@f5
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f7
    move/from16 v0, v30

    #@f9
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@fb
    .line 622
    move-object/from16 v0, p0

    #@fd
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@ff
    move/from16 v0, v29

    #@101
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@103
    .line 624
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@107
    move-object/from16 v0, p0

    #@109
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@10b
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    #@10d
    .line 626
    move-object/from16 v0, p0

    #@10f
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@111
    move-object/from16 v0, p0

    #@113
    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@115
    .line 627
    move-object/from16 v0, p0

    #@117
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@119
    move-object/from16 v0, p0

    #@11b
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@11d
    or-int/lit16 v3, v3, 0x200

    #@11f
    or-int/lit16 v3, v3, 0x100

    #@121
    or-int/lit8 v3, v3, 0x8

    #@123
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@125
    .line 632
    move-object/from16 v0, p0

    #@127
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@129
    move-object/from16 v0, p0

    #@12b
    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@12d
    .line 633
    move-object/from16 v0, p0

    #@12f
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@131
    move-object/from16 v0, p0

    #@133
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@135
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@137
    .line 635
    move-object/from16 v0, p0

    #@139
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@13f
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    #@141
    .line 636
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    #@149
    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@14b
    .line 638
    move-object/from16 v0, p0

    #@14d
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@14f
    if-nez v2, :cond_e

    #@151
    .line 640
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@155
    .line 641
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    #@157
    .line 640
    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@15a
    move-result-object v37

    #@15b
    .line 642
    .local v37, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    #@15e
    .line 645
    move-object/from16 v0, p0

    #@160
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@166
    iget v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    #@168
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16a
    .line 646
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@16e
    const v3, 0x800033

    #@171
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@173
    .line 647
    move-object/from16 v0, p0

    #@175
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@177
    move-object/from16 v0, p0

    #@179
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@17b
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService;->getClass()Ljava/lang/Class;

    #@17e
    move-result-object v3

    #@17f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@182
    move-result-object v3

    #@183
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@186
    .line 648
    move-object/from16 v0, p0

    #@188
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@18a
    .line 649
    const v3, 0x10302ea

    #@18d
    .line 648
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@18f
    .line 650
    new-instance v2, Landroid/view/InputChannel;

    #@191
    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    #@194
    move-object/from16 v0, p0

    #@196
    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@198
    .line 651
    move-object/from16 v0, p0

    #@19a
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@1a4
    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1aa
    .line 652
    move-object/from16 v0, p0

    #@1ac
    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v9, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@1b6
    .line 653
    move-object/from16 v0, p0

    #@1b8
    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@1ba
    .line 651
    const/4 v6, 0x0

    #@1bb
    .line 652
    const/4 v7, 0x0

    #@1bc
    .line 651
    invoke-interface/range {v2 .. v11}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@1bf
    move-result v2

    #@1c0
    if-gez v2, :cond_d

    #@1c2
    .line 654
    const-string/jumbo v2, "WallpaperService"

    #@1c5
    const-string/jumbo v3, "Failed to add window while updating wallpaper surface."

    #@1c8
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cb
    .line 655
    return-void

    #@1cc
    .line 657
    :cond_d
    const/4 v2, 0x1

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@1d1
    .line 659
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@1d3
    .line 660
    move-object/from16 v0, p0

    #@1d5
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@1d7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1da
    move-result-object v4

    #@1db
    .line 659
    move-object/from16 v0, p0

    #@1dd
    invoke-direct {v2, v0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@1e4
    .line 663
    .end local v37    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_e
    move-object/from16 v0, p0

    #@1e6
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1e8
    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1ea
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1ed
    .line 664
    const/4 v2, 0x1

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@1f2
    .line 666
    if-nez v23, :cond_12

    #@1f4
    .line 667
    move-object/from16 v0, p0

    #@1f6
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1f8
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@1fe
    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@200
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@203
    .line 668
    move-object/from16 v0, p0

    #@205
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@207
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@209
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@20f
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@211
    add-int/2addr v3, v4

    #@212
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@214
    .line 669
    move-object/from16 v0, p0

    #@216
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@218
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@21a
    iget v3, v2, Landroid/graphics/Rect;->top:I

    #@21c
    move-object/from16 v0, p0

    #@21e
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@220
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@222
    add-int/2addr v3, v4

    #@223
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@225
    .line 670
    move-object/from16 v0, p0

    #@227
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@229
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@22b
    iget v3, v2, Landroid/graphics/Rect;->right:I

    #@22d
    move-object/from16 v0, p0

    #@22f
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@231
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@233
    add-int/2addr v3, v4

    #@234
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@236
    .line 671
    move-object/from16 v0, p0

    #@238
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@23a
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@23c
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    #@23e
    move-object/from16 v0, p0

    #@240
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@242
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@244
    add-int/2addr v3, v4

    #@245
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@247
    .line 675
    :goto_a
    move-object/from16 v0, p0

    #@249
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@24b
    .line 676
    move-object/from16 v0, p0

    #@24d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@24f
    move-object/from16 v0, p0

    #@251
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@253
    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    #@255
    move-object/from16 v0, p0

    #@257
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@259
    move-object/from16 v0, p0

    #@25b
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@25d
    move-object/from16 v0, p0

    #@25f
    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@261
    .line 677
    move-object/from16 v0, p0

    #@263
    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@265
    move-object/from16 v0, p0

    #@267
    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@269
    move-object/from16 v0, p0

    #@26b
    iget-object v12, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@26d
    .line 678
    move-object/from16 v0, p0

    #@26f
    iget-object v13, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@271
    move-object/from16 v0, p0

    #@273
    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@275
    move-object/from16 v0, p0

    #@277
    iget-object v15, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@279
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@27d
    move-object/from16 v16, v0

    #@27f
    .line 679
    move-object/from16 v0, p0

    #@281
    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@283
    iget-object v0, v8, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@285
    move-object/from16 v17, v0

    #@287
    .line 677
    const/4 v8, 0x0

    #@288
    const/4 v9, 0x0

    #@289
    .line 675
    invoke-interface/range {v2 .. v17}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@28c
    move-result v32

    #@28d
    .line 684
    .local v32, "relayoutResult":I
    move-object/from16 v0, p0

    #@28f
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@291
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@294
    move-result v36

    #@295
    .line 685
    .local v36, "w":I
    move-object/from16 v0, p0

    #@297
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@299
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@29c
    move-result v26

    #@29d
    .line 687
    .local v26, "h":I
    if-nez v23, :cond_f

    #@29f
    .line 688
    move-object/from16 v0, p0

    #@2a1
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2a3
    iget-object v0, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@2a5
    move-object/from16 v31, v0

    #@2a7
    .line 689
    .local v31, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v31

    #@2a9
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@2ab
    move-object/from16 v0, v31

    #@2ad
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@2af
    add-int/2addr v2, v3

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2b4
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@2b6
    add-int/2addr v2, v3

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2bb
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@2bd
    add-int/2addr v2, v3

    #@2be
    add-int v36, v36, v2

    #@2c0
    .line 690
    move-object/from16 v0, v31

    #@2c2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@2c4
    move-object/from16 v0, v31

    #@2c6
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    #@2c8
    add-int/2addr v2, v3

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2cd
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@2cf
    add-int/2addr v2, v3

    #@2d0
    move-object/from16 v0, p0

    #@2d2
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2d4
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@2d6
    add-int/2addr v2, v3

    #@2d7
    add-int v26, v26, v2

    #@2d9
    .line 691
    move-object/from16 v0, p0

    #@2db
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2dd
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@2df
    move-object/from16 v0, v31

    #@2e1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@2e3
    add-int/2addr v3, v4

    #@2e4
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@2e6
    .line 692
    move-object/from16 v0, p0

    #@2e8
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2ea
    iget v3, v2, Landroid/graphics/Rect;->top:I

    #@2ec
    move-object/from16 v0, v31

    #@2ee
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@2f0
    add-int/2addr v3, v4

    #@2f1
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@2f3
    .line 693
    move-object/from16 v0, p0

    #@2f5
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2f7
    iget v3, v2, Landroid/graphics/Rect;->right:I

    #@2f9
    move-object/from16 v0, v31

    #@2fb
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@2fd
    add-int/2addr v3, v4

    #@2fe
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@300
    .line 694
    move-object/from16 v0, p0

    #@302
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@304
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    #@306
    move-object/from16 v0, v31

    #@308
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@30a
    add-int/2addr v3, v4

    #@30b
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@30d
    .line 695
    move-object/from16 v0, p0

    #@30f
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@311
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@313
    move-object/from16 v0, v31

    #@315
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@317
    add-int/2addr v3, v4

    #@318
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@31a
    .line 696
    move-object/from16 v0, p0

    #@31c
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@31e
    iget v3, v2, Landroid/graphics/Rect;->top:I

    #@320
    move-object/from16 v0, v31

    #@322
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@324
    add-int/2addr v3, v4

    #@325
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@327
    .line 697
    move-object/from16 v0, p0

    #@329
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@32b
    iget v3, v2, Landroid/graphics/Rect;->right:I

    #@32d
    move-object/from16 v0, v31

    #@32f
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@331
    add-int/2addr v3, v4

    #@332
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@334
    .line 698
    move-object/from16 v0, p0

    #@336
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@338
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    #@33a
    move-object/from16 v0, v31

    #@33c
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@33e
    add-int/2addr v3, v4

    #@33f
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@341
    .line 699
    move-object/from16 v0, p0

    #@343
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@345
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@347
    move-object/from16 v0, v31

    #@349
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@34b
    add-int/2addr v3, v4

    #@34c
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@34e
    .line 700
    move-object/from16 v0, p0

    #@350
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@352
    iget v3, v2, Landroid/graphics/Rect;->top:I

    #@354
    move-object/from16 v0, v31

    #@356
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@358
    add-int/2addr v3, v4

    #@359
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@35b
    .line 701
    move-object/from16 v0, p0

    #@35d
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@35f
    iget v3, v2, Landroid/graphics/Rect;->right:I

    #@361
    move-object/from16 v0, v31

    #@363
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@365
    add-int/2addr v3, v4

    #@366
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@368
    .line 702
    move-object/from16 v0, p0

    #@36a
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@36c
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    #@36e
    move-object/from16 v0, v31

    #@370
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@372
    add-int/2addr v3, v4

    #@373
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@375
    .line 705
    .end local v31    # "padding":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    #@377
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@379
    move/from16 v0, v36

    #@37b
    if-eq v2, v0, :cond_10

    #@37d
    .line 706
    const/16 v33, 0x1

    #@37f
    .line 707
    move/from16 v0, v36

    #@381
    move-object/from16 v1, p0

    #@383
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@385
    .line 709
    :cond_10
    move-object/from16 v0, p0

    #@387
    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@389
    move/from16 v0, v26

    #@38b
    if-eq v2, v0, :cond_11

    #@38d
    .line 710
    const/16 v33, 0x1

    #@38f
    .line 711
    move/from16 v0, v26

    #@391
    move-object/from16 v1, p0

    #@393
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@395
    .line 718
    :cond_11
    move-object/from16 v0, p0

    #@397
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@399
    move-object/from16 v0, p0

    #@39b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@39d
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3a0
    move-result v2

    #@3a1
    if-eqz v2, :cond_13

    #@3a3
    const/4 v2, 0x0

    #@3a4
    :goto_b
    or-int v28, v28, v2

    #@3a6
    .line 719
    .local v28, "insetsChanged":Z
    move-object/from16 v0, p0

    #@3a8
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@3ae
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3b1
    move-result v2

    #@3b2
    if-eqz v2, :cond_14

    #@3b4
    const/4 v2, 0x0

    #@3b5
    :goto_c
    or-int v28, v28, v2

    #@3b7
    .line 720
    move-object/from16 v0, p0

    #@3b9
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@3bf
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3c2
    move-result v2

    #@3c3
    if-eqz v2, :cond_15

    #@3c5
    const/4 v2, 0x0

    #@3c6
    :goto_d
    or-int v28, v28, v2

    #@3c8
    .line 721
    move-object/from16 v0, p0

    #@3ca
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@3cc
    move-object/from16 v0, p0

    #@3ce
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@3d0
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3d3
    move-result v2

    #@3d4
    if-eqz v2, :cond_16

    #@3d6
    const/4 v2, 0x0

    #@3d7
    :goto_e
    or-int v28, v28, v2

    #@3d9
    .line 723
    move-object/from16 v0, p0

    #@3db
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3dd
    move/from16 v0, v36

    #@3df
    move/from16 v1, v26

    #@3e1
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    #@3e4
    .line 724
    move-object/from16 v0, p0

    #@3e6
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3e8
    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3ea
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3ed
    .line 726
    move-object/from16 v0, p0

    #@3ef
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3f1
    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@3f3
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    #@3f6
    move-result v2

    #@3f7
    if-nez v2, :cond_17

    #@3f9
    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    #@3fc
    .line 729
    return-void

    #@3fd
    .line 673
    .end local v26    # "h":I
    .end local v32    # "relayoutResult":I
    .end local v36    # "w":I
    .local v28, "insetsChanged":Z
    :cond_12
    move-object/from16 v0, p0

    #@3ff
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@401
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@403
    const/4 v3, 0x0

    #@404
    const/4 v4, 0x0

    #@405
    const/4 v5, 0x0

    #@406
    const/4 v6, 0x0

    #@407
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40a
    goto/16 :goto_a

    #@40c
    .line 840
    .end local v28    # "insetsChanged":Z
    :catch_0
    move-exception v22

    #@40d
    .local v22, "ex":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@40f
    .line 718
    .end local v22    # "ex":Landroid/os/RemoteException;
    .restart local v26    # "h":I
    .restart local v28    # "insetsChanged":Z
    .restart local v32    # "relayoutResult":I
    .restart local v36    # "w":I
    :cond_13
    const/4 v2, 0x1

    #@410
    goto :goto_b

    #@411
    .line 719
    .local v28, "insetsChanged":Z
    :cond_14
    const/4 v2, 0x1

    #@412
    goto :goto_c

    #@413
    .line 720
    :cond_15
    const/4 v2, 0x1

    #@414
    goto :goto_d

    #@415
    .line 721
    :cond_16
    const/4 v2, 0x1

    #@416
    goto :goto_e

    #@417
    .line 732
    :cond_17
    const/16 v21, 0x0

    #@419
    .line 735
    .local v21, "didSurface":Z
    :try_start_1
    move-object/from16 v0, p0

    #@41b
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@41d
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@420
    .line 737
    if-eqz v34, :cond_18

    #@422
    .line 738
    const/4 v2, 0x1

    #@423
    move-object/from16 v0, p0

    #@425
    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@427
    .line 739
    const/16 v21, 0x1

    #@429
    .line 742
    move-object/from16 v0, p0

    #@42b
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@42d
    move-object/from16 v0, p0

    #@42f
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    #@432
    .line 743
    move-object/from16 v0, p0

    #@434
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@436
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@439
    move-result-object v19

    #@43a
    .line 744
    .local v19, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_18

    #@43c
    .line 745
    const/4 v2, 0x0

    #@43d
    move-object/from16 v0, v19

    #@43f
    array-length v3, v0

    #@440
    :goto_f
    if-ge v2, v3, :cond_18

    #@442
    aget-object v18, v19, v2

    #@444
    .line 746
    .local v18, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@446
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@448
    move-object/from16 v0, v18

    #@44a
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@44d
    .line 745
    add-int/lit8 v2, v2, 0x1

    #@44f
    goto :goto_f

    #@450
    .line 751
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_18
    if-nez v20, :cond_19

    #@452
    and-int/lit8 v2, v32, 0x2

    #@454
    if-eqz v2, :cond_1b

    #@456
    :cond_19
    const/4 v2, 0x1

    #@457
    :goto_10
    or-int p3, p3, v2

    #@459
    .line 754
    if-nez p2, :cond_1a

    #@45b
    if-nez v20, :cond_1a

    #@45d
    if-nez v34, :cond_1a

    #@45f
    if-nez v25, :cond_1a

    #@461
    if-eqz v33, :cond_1c

    #@463
    .line 767
    :cond_1a
    const/16 v21, 0x1

    #@465
    .line 768
    move-object/from16 v0, p0

    #@467
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@469
    move-object/from16 v0, p0

    #@46b
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@46d
    .line 769
    move-object/from16 v0, p0

    #@46f
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@471
    move-object/from16 v0, p0

    #@473
    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@475
    .line 768
    move-object/from16 v0, p0

    #@477
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@47a
    .line 770
    move-object/from16 v0, p0

    #@47c
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@47e
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@481
    move-result-object v19

    #@482
    .line 771
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_1c

    #@484
    .line 772
    const/4 v2, 0x0

    #@485
    move-object/from16 v0, v19

    #@487
    array-length v3, v0

    #@488
    :goto_11
    if-ge v2, v3, :cond_1c

    #@48a
    aget-object v18, v19, v2

    #@48c
    .line 773
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@48e
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@490
    move-object/from16 v0, p0

    #@492
    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@494
    .line 774
    move-object/from16 v0, p0

    #@496
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@498
    move-object/from16 v0, p0

    #@49a
    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@49c
    .line 773
    move-object/from16 v0, v18

    #@49e
    invoke-interface {v0, v4, v5, v6, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@4a1
    .line 772
    add-int/lit8 v2, v2, 0x1

    #@4a3
    goto :goto_11

    #@4a4
    .line 751
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    const/4 v2, 0x0

    #@4a5
    goto :goto_10

    #@4a6
    .line 779
    :cond_1c
    if-eqz v28, :cond_1d

    #@4a8
    .line 780
    move-object/from16 v0, p0

    #@4aa
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4ac
    move-object/from16 v0, p0

    #@4ae
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@4b0
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b3
    .line 781
    move-object/from16 v0, p0

    #@4b5
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4b7
    iget v3, v2, Landroid/graphics/Rect;->left:I

    #@4b9
    move-object/from16 v0, p0

    #@4bb
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4bd
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@4bf
    add-int/2addr v3, v4

    #@4c0
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@4c2
    .line 782
    move-object/from16 v0, p0

    #@4c4
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4c6
    iget v3, v2, Landroid/graphics/Rect;->top:I

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4cc
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@4ce
    add-int/2addr v3, v4

    #@4cf
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@4d1
    .line 783
    move-object/from16 v0, p0

    #@4d3
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4d5
    iget v3, v2, Landroid/graphics/Rect;->right:I

    #@4d7
    move-object/from16 v0, p0

    #@4d9
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4db
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@4dd
    add-int/2addr v3, v4

    #@4de
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@4e0
    .line 784
    move-object/from16 v0, p0

    #@4e2
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4e4
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    #@4e6
    move-object/from16 v0, p0

    #@4e8
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4ea
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@4ec
    add-int/2addr v3, v4

    #@4ed
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@4ef
    .line 785
    move-object/from16 v0, p0

    #@4f1
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@4f3
    move-object/from16 v0, p0

    #@4f5
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@4f7
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4fa
    .line 786
    move-object/from16 v0, p0

    #@4fc
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@4fe
    move-object/from16 v0, p0

    #@500
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@502
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@505
    .line 787
    move-object/from16 v0, p0

    #@507
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@509
    move-object/from16 v0, p0

    #@50b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@50d
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@510
    .line 788
    move-object/from16 v0, p0

    #@512
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@514
    move-object/from16 v0, p0

    #@516
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@518
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@51b
    .line 789
    move-object/from16 v0, p0

    #@51d
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@51f
    move-object/from16 v0, p0

    #@521
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@523
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@526
    .line 790
    new-instance v27, Landroid/view/WindowInsets;

    #@528
    move-object/from16 v0, p0

    #@52a
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@52c
    .line 791
    move-object/from16 v0, p0

    #@52e
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@530
    .line 792
    move-object/from16 v0, p0

    #@532
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@534
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    #@537
    move-result-object v4

    #@538
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@53b
    move-result-object v4

    #@53c
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@53f
    move-result v4

    #@540
    .line 791
    const/4 v5, 0x0

    #@541
    .line 790
    move-object/from16 v0, v27

    #@543
    invoke-direct {v0, v2, v5, v3, v4}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@546
    .line 796
    .local v27, "insets":Landroid/view/WindowInsets;
    move-object/from16 v0, p0

    #@548
    move-object/from16 v1, v27

    #@54a
    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    #@54d
    .line 799
    .end local v27    # "insets":Landroid/view/WindowInsets;
    :cond_1d
    if-eqz p3, :cond_1f

    #@54f
    .line 800
    move-object/from16 v0, p0

    #@551
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@553
    move-object/from16 v0, p0

    #@555
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@558
    .line 801
    move-object/from16 v0, p0

    #@55a
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@55c
    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@55f
    move-result-object v19

    #@560
    .line 802
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_1f

    #@562
    .line 803
    const/4 v2, 0x0

    #@563
    move-object/from16 v0, v19

    #@565
    array-length v3, v0

    #@566
    :goto_12
    if-ge v2, v3, :cond_1f

    #@568
    aget-object v18, v19, v2

    #@56a
    .line 804
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    #@56c
    instance-of v4, v0, Landroid/view/SurfaceHolder$Callback2;

    #@56e
    if-eqz v4, :cond_1e

    #@570
    .line 805
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    #@572
    .line 806
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@574
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@576
    .line 805
    move-object/from16 v0, v18

    #@578
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@57b
    .line 803
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    #@57d
    goto :goto_12

    #@57e
    .line 812
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1f
    if-eqz v21, :cond_20

    #@580
    move-object/from16 v0, p0

    #@582
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@584
    if-eqz v2, :cond_22

    #@586
    .line 833
    :cond_20
    :goto_13
    const/4 v2, 0x0

    #@587
    :try_start_2
    move-object/from16 v0, p0

    #@589
    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@58b
    .line 834
    const/4 v2, 0x1

    #@58c
    move-object/from16 v0, p0

    #@58e
    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@590
    .line 835
    if-eqz p3, :cond_21

    #@592
    .line 836
    move-object/from16 v0, p0

    #@594
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@596
    move-object/from16 v0, p0

    #@598
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@59a
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@59d
    .line 838
    :cond_21
    move-object/from16 v0, p0

    #@59f
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@5a1
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5a4
    goto/16 :goto_9

    #@5a6
    .line 818
    :cond_22
    :try_start_3
    move-object/from16 v0, p0

    #@5a8
    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@5aa
    if-eqz v2, :cond_23

    #@5ac
    .line 825
    const/4 v2, 0x1

    #@5ad
    move-object/from16 v0, p0

    #@5af
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@5b2
    .line 829
    :cond_23
    const/4 v2, 0x0

    #@5b3
    move-object/from16 v0, p0

    #@5b5
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5b8
    goto :goto_13

    #@5b9
    .line 832
    :catchall_0
    move-exception v2

    #@5ba
    .line 833
    const/4 v3, 0x0

    #@5bb
    :try_start_4
    move-object/from16 v0, p0

    #@5bd
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@5bf
    .line 834
    const/4 v3, 0x1

    #@5c0
    move-object/from16 v0, p0

    #@5c2
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@5c4
    .line 835
    if-eqz p3, :cond_24

    #@5c6
    .line 836
    move-object/from16 v0, p0

    #@5c8
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@5ca
    move-object/from16 v0, p0

    #@5cc
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@5ce
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@5d1
    .line 838
    :cond_24
    move-object/from16 v0, p0

    #@5d3
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@5d5
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    #@5d8
    .line 832
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

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
        Landroid/service/wallpaper/WallpaperService$Engine$1;,
        Landroid/service/wallpaper/WallpaperService$Engine$2;,
        Landroid/service/wallpaper/WallpaperService$Engine$3;,
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field final mBackdropFrame:Landroid/graphics/Rect;

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
    new-instance v0, Landroid/graphics/Rect;

    #@6d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@70
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBackdropFrame:Landroid/graphics/Rect;

    #@72
    .line 171
    new-instance v0, Landroid/content/res/Configuration;

    #@74
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@77
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@79
    .line 174
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@7b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@7e
    .line 173
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@80
    .line 178
    new-instance v0, Ljava/lang/Object;

    #@82
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@85
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@87
    .line 191
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    #@89
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@8c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8e
    .line 270
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    #@90
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@93
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@95
    .line 1056
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    #@97
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@9a
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@9c
    .line 127
    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 573
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 574
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v1

    #@d
    const/4 v3, 0x2

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 575
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v2

    #@13
    .line 580
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@15
    const/16 v2, 0x2738

    #@17
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 581
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1d
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@20
    .line 571
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    #@21
    .line 577
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
    .line 573
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1

    #@28
    .line 583
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
    .line 852
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 853
    return-void

    #@6
    .line 856
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@8
    .line 857
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-get0(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    .line 858
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@10
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@12
    .line 859
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    #@14
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    #@16
    .line 860
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    #@1b
    .line 861
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@1e
    .line 862
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@24
    .line 864
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@26
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@28
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    #@2b
    .line 866
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
    .line 868
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
    .line 869
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
    .line 870
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@51
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@57
    .line 871
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@59
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@5f
    .line 874
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@61
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    #@64
    .line 876
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@66
    .line 877
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@68
    .line 878
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@6b
    .line 850
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
    .line 1010
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1011
    return-void

    #@7
    .line 1014
    :cond_0
    const/4 v1, 0x1

    #@8
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@a
    .line 1016
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1017
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@10
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@12
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@15
    .line 1020
    :cond_1
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1021
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@1b
    .line 1023
    invoke-virtual {p0, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@1e
    .line 1026
    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    #@21
    .line 1029
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    #@24
    .line 1031
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 1037
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@2e
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    #@31
    .line 1038
    const/4 v1, 0x0

    #@32
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@34
    .line 1041
    :cond_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@36
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@38
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 1044
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3d
    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@3f
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@42
    .line 1045
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@44
    .line 1049
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 1050
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@4a
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@4d
    .line 1051
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@4f
    .line 1009
    :cond_4
    return-void

    #@50
    .line 1042
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
    .line 978
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 979
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    #@6
    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    #@8
    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    #@a
    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    #@c
    .line 980
    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    #@e
    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@10
    move-object v0, p0

    #@11
    .line 979
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    #@14
    move-result-object v8

    #@15
    .line 984
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 987
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
    .line 976
    :cond_0
    :goto_1
    return-void

    #@25
    .line 982
    :cond_1
    const/4 v8, 0x0

    #@26
    .local v8, "result":Landroid/os/Bundle;
    goto :goto_0

    #@27
    .line 988
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
    .line 882
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 885
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@6
    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@8
    .line 886
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@a
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@c
    .line 887
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    #@f
    .line 888
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@13
    .line 881
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
    .line 893
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 895
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
    .line 896
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@11
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 897
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@1a
    .line 892
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
    const/4 v6, 0x0

    #@3
    .line 930
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 931
    return-void

    #@8
    .line 934
    :cond_0
    if-nez p1, :cond_1

    #@a
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    #@c
    if-eqz v0, :cond_5

    #@e
    .line 943
    :cond_1
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v11

    #@11
    .line 944
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@13
    .line 945
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    #@15
    .line 946
    .local v2, "yOffset":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@17
    .line 947
    .local v3, "xOffsetStep":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    #@19
    .line 948
    .local v4, "yOffsetStep":F
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1b
    .line 949
    .local v10, "sync":Z
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1e
    .line 950
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v11

    #@22
    .line 953
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 954
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@28
    if-eqz v0, :cond_7

    #@2a
    .line 957
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2c
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@2e
    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@30
    sub-int v8, v0, v11

    #@32
    .line 958
    .local v8, "availw":I
    if-lez v8, :cond_6

    #@34
    int-to-float v0, v8

    #@35
    mul-float/2addr v0, v1

    #@36
    add-float/2addr v0, v12

    #@37
    float-to-int v0, v0

    #@38
    neg-int v5, v0

    #@39
    .line 959
    .local v5, "xPixels":I
    :goto_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@3b
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@3d
    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@3f
    sub-int v7, v0, v11

    #@41
    .line 960
    .local v7, "availh":I
    if-lez v7, :cond_2

    #@43
    int-to-float v0, v7

    #@44
    mul-float/2addr v0, v2

    #@45
    add-float/2addr v0, v12

    #@46
    float-to-int v0, v0

    #@47
    neg-int v6, v0

    #@48
    .local v6, "yPixels":I
    :cond_2
    move-object v0, p0

    #@49
    .line 961
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    #@4c
    .line 967
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    #@4e
    .line 970
    :try_start_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@50
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@52
    invoke-virtual {v11}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    #@55
    move-result-object v11

    #@56
    invoke-interface {v0, v11}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@59
    .line 929
    :cond_4
    :goto_2
    return-void

    #@5a
    .line 935
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v10    # "sync":Z
    :cond_5
    return-void

    #@5b
    .line 943
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v11

    #@5d
    throw v0

    #@5e
    .line 958
    .restart local v1    # "xOffset":F
    .restart local v2    # "yOffset":F
    .restart local v3    # "xOffsetStep":F
    .restart local v4    # "yOffsetStep":F
    .restart local v8    # "availw":I
    .restart local v10    # "sync":Z
    :cond_6
    const/4 v5, 0x0

    #@5f
    .restart local v5    # "xPixels":I
    goto :goto_0

    #@60
    .line 963
    .end local v5    # "xPixels":I
    .end local v8    # "availw":I
    :cond_7
    const/4 v0, 0x1

    #@61
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    #@63
    goto :goto_1

    #@64
    .line 971
    :catch_0
    move-exception v9

    #@65
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method doVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 904
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@6
    .line 905
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    #@9
    .line 902
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
    .line 532
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
    .line 533
    const-string/jumbo v0, " mDestroyed="

    #@11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@19
    .line 534
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
    .line 535
    const-string/jumbo v0, " mReportedVisible="

    #@2a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@2f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@32
    .line 536
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
    .line 537
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
    .line 538
    const-string/jumbo v0, " mSurfaceCreated="

    #@51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@56
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@59
    .line 539
    const-string/jumbo v0, " mIsCreating="

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@64
    .line 540
    const-string/jumbo v0, " mDrawingAllowed="

    #@67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6f
    .line 541
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
    .line 542
    const-string/jumbo v0, " mCurWidth="

    #@80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@88
    .line 543
    const-string/jumbo v0, " mHeight="

    #@8b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@93
    .line 544
    const-string/jumbo v0, " mCurHeight="

    #@96
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@9b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@9e
    .line 545
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
    .line 546
    const-string/jumbo v0, " mWindowFlags="

    #@af
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@b4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b7
    .line 547
    const-string/jumbo v0, " mCurWindowFlags="

    #@ba
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@bf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@c2
    .line 548
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
    .line 549
    const-string/jumbo v0, " mCurWindowPrivateFlags="

    #@d3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@d8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@db
    .line 550
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    const-string/jumbo v0, "mVisibleInsets="

    #@e1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    .line 551
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@e6
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 552
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
    .line 553
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
    .line 554
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
    .line 555
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
    .line 556
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@129
    monitor-enter v1

    #@12a
    .line 557
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
    .line 558
    const-string/jumbo v0, " mPendingXOffset="

    #@13b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@140
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    #@143
    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@146
    const-string/jumbo v0, "mPendingXOffsetStep="

    #@149
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    .line 560
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@14e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    #@151
    .line 561
    const-string/jumbo v0, " mPendingXOffsetStep="

    #@154
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@157
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@159
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    #@15c
    .line 562
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    const-string/jumbo v0, "mOffsetMessageEnqueued="

    #@162
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    .line 563
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    #@167
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@16a
    .line 564
    const-string/jumbo v0, " mPendingSync="

    #@16d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@172
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@175
    .line 565
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    #@177
    if-eqz v0, :cond_0

    #@179
    .line 566
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
    .line 531
    return-void

    #@189
    .line 556
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
    .line 359
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
    .line 350
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
    .line 341
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@2
    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    #@0
    .prologue
    .line 377
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
    .line 368
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@2
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 450
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
    .line 493
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 424
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    #@0
    .prologue
    .line 500
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 432
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
    .line 471
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
    .line 507
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 521
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 528
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 514
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 460
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 440
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 994
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 995
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@7
    .line 996
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@c
    .line 997
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@11
    move-result-object v1

    #@12
    .line 998
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_0

    #@14
    .line 999
    array-length v3, v1

    #@15
    :goto_0
    if-ge v2, v3, :cond_0

    #@17
    aget-object v0, v1, v2

    #@19
    .line 1000
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1b
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@1e
    .line 999
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1005
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@23
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@26
    .line 993
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
    .line 910
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 911
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@7
    if-nez v1, :cond_2

    #@9
    move v1, v2

    #@a
    :goto_0
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@c
    .line 912
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
    .line 913
    .local v0, "visible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@18
    if-eq v1, v0, :cond_1

    #@1a
    .line 914
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@1c
    .line 917
    if-eqz v0, :cond_0

    #@1e
    .line 921
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@21
    .line 922
    invoke-virtual {p0, v2, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@24
    .line 924
    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@27
    .line 909
    .end local v0    # "visible":Z
    :cond_1
    return-void

    #@28
    .line 911
    :cond_2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@2a
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    #@2d
    move-result v1

    #@2e
    goto :goto_0

    #@2f
    .line 912
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
    .line 417
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    #@2
    .line 416
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 405
    if-eqz p1, :cond_1

    #@3
    .line 406
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    .line 405
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@9
    .line 410
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 411
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@10
    .line 404
    :cond_0
    return-void

    #@11
    .line 408
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
    .line 388
    if-eqz p1, :cond_1

    #@3
    .line 389
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    .line 388
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@9
    .line 391
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 392
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@10
    .line 387
    :cond_0
    return-void

    #@11
    .line 390
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
    .line 588
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 589
    const-string/jumbo v3, "WallpaperService"

    #@9
    const-string/jumbo v4, "Ignoring updateSurface: destroyed"

    #@c
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 592
    :cond_0
    const/16 v24, 0x0

    #@11
    .line 593
    .local v24, "fixedSize":Z
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@15
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    #@18
    move-result v30

    #@19
    .line 594
    .local v30, "myWidth":I
    if-gtz v30, :cond_2

    #@1b
    const/16 v30, -0x1

    #@1d
    .line 596
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@21
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    #@24
    move-result v29

    #@25
    .line 597
    .local v29, "myHeight":I
    if-gtz v29, :cond_3

    #@27
    const/16 v29, -0x1

    #@29
    .line 600
    :goto_1
    move-object/from16 v0, p0

    #@2b
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@2d
    if-eqz v3, :cond_4

    #@2f
    const/16 v21, 0x0

    #@31
    .line 601
    .local v21, "creating":Z
    :goto_2
    move-object/from16 v0, p0

    #@33
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@35
    if-eqz v3, :cond_5

    #@37
    const/16 v34, 0x0

    #@39
    .line 602
    .local v34, "surfaceCreating":Z
    :goto_3
    move-object/from16 v0, p0

    #@3b
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@41
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    #@44
    move-result v4

    #@45
    if-eq v3, v4, :cond_6

    #@47
    const/16 v26, 0x1

    #@49
    .line 603
    .local v26, "formatChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@4b
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@4d
    move/from16 v0, v30

    #@4f
    if-ne v3, v0, :cond_1

    #@51
    move-object/from16 v0, p0

    #@53
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@55
    move/from16 v0, v29

    #@57
    if-eq v3, v0, :cond_7

    #@59
    :cond_1
    const/16 v33, 0x1

    #@5b
    .line 604
    .local v33, "sizeChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@5d
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@5f
    if-eqz v3, :cond_8

    #@61
    const/16 v28, 0x0

    #@63
    .line 605
    .local v28, "insetsChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@65
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@6b
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    #@6e
    move-result v4

    #@6f
    if-eq v3, v4, :cond_9

    #@71
    const/16 v35, 0x1

    #@73
    .line 606
    .local v35, "typeChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@75
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@77
    move-object/from16 v0, p0

    #@79
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@7b
    if-ne v3, v4, :cond_a

    #@7d
    .line 607
    move-object/from16 v0, p0

    #@7f
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@81
    move-object/from16 v0, p0

    #@83
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@85
    if-eq v3, v4, :cond_b

    #@87
    const/16 v25, 0x1

    #@89
    .line 608
    .local v25, "flagsChanged":Z
    :goto_8
    if-nez p1, :cond_c

    #@8b
    if-nez v21, :cond_c

    #@8d
    if-nez v34, :cond_c

    #@8f
    if-nez v26, :cond_c

    #@91
    if-nez v33, :cond_c

    #@93
    if-nez v35, :cond_c

    #@95
    if-nez v25, :cond_c

    #@97
    if-nez p3, :cond_c

    #@99
    .line 610
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@9d
    iget-boolean v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    #@9f
    if-eqz v3, :cond_c

    #@a1
    .line 587
    .end local v28    # "insetsChanged":Z
    :goto_9
    return-void

    #@a2
    .line 595
    .end local v21    # "creating":Z
    .end local v25    # "flagsChanged":Z
    .end local v26    # "formatChanged":Z
    .end local v29    # "myHeight":I
    .end local v33    # "sizeChanged":Z
    .end local v34    # "surfaceCreating":Z
    .end local v35    # "typeChanged":Z
    :cond_2
    const/16 v24, 0x1

    #@a4
    goto/16 :goto_0

    #@a6
    .line 598
    .restart local v29    # "myHeight":I
    :cond_3
    const/16 v24, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 600
    :cond_4
    const/16 v21, 0x1

    #@ab
    .restart local v21    # "creating":Z
    goto :goto_2

    #@ac
    .line 601
    :cond_5
    const/16 v34, 0x1

    #@ae
    .restart local v34    # "surfaceCreating":Z
    goto :goto_3

    #@af
    .line 602
    :cond_6
    const/16 v26, 0x0

    #@b1
    .restart local v26    # "formatChanged":Z
    goto :goto_4

    #@b2
    .line 603
    :cond_7
    const/16 v33, 0x0

    #@b4
    .restart local v33    # "sizeChanged":Z
    goto :goto_5

    #@b5
    .line 604
    :cond_8
    const/16 v28, 0x1

    #@b7
    .restart local v28    # "insetsChanged":Z
    goto :goto_6

    #@b8
    .line 605
    :cond_9
    const/16 v35, 0x0

    #@ba
    .restart local v35    # "typeChanged":Z
    goto :goto_7

    #@bb
    .line 606
    :cond_a
    const/16 v25, 0x1

    #@bd
    .restart local v25    # "flagsChanged":Z
    goto :goto_8

    #@be
    .line 607
    .end local v25    # "flagsChanged":Z
    :cond_b
    const/16 v25, 0x0

    #@c0
    .restart local v25    # "flagsChanged":Z
    goto :goto_8

    #@c1
    .line 616
    :cond_c
    :try_start_0
    move/from16 v0, v30

    #@c3
    move-object/from16 v1, p0

    #@c5
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@c7
    .line 617
    move/from16 v0, v29

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@cd
    .line 618
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@d1
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    #@d4
    move-result v3

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@d9
    .line 619
    move-object/from16 v0, p0

    #@db
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@dd
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    #@e0
    move-result v3

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@e5
    .line 621
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@e9
    const/4 v4, 0x0

    #@ea
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    #@ec
    .line 622
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f0
    const/4 v4, 0x0

    #@f1
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    #@f3
    .line 623
    move-object/from16 v0, p0

    #@f5
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f7
    move/from16 v0, v30

    #@f9
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    #@fb
    .line 624
    move-object/from16 v0, p0

    #@fd
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@ff
    move/from16 v0, v29

    #@101
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    #@103
    .line 626
    move-object/from16 v0, p0

    #@105
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@107
    move-object/from16 v0, p0

    #@109
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@10b
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    #@10d
    .line 628
    move-object/from16 v0, p0

    #@10f
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@111
    move-object/from16 v0, p0

    #@113
    iput v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@115
    .line 629
    move-object/from16 v0, p0

    #@117
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@119
    move-object/from16 v0, p0

    #@11b
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@11d
    or-int/lit16 v4, v4, 0x200

    #@11f
    or-int/lit16 v4, v4, 0x100

    #@121
    or-int/lit8 v4, v4, 0x8

    #@123
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@125
    .line 634
    move-object/from16 v0, p0

    #@127
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@129
    move-object/from16 v0, p0

    #@12b
    iput v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@12d
    .line 635
    move-object/from16 v0, p0

    #@12f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@131
    move-object/from16 v0, p0

    #@133
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@135
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@137
    .line 637
    move-object/from16 v0, p0

    #@139
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@13f
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    #@141
    .line 638
    move-object/from16 v0, p0

    #@143
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    #@149
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@14b
    .line 640
    move-object/from16 v0, p0

    #@14d
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@14f
    if-nez v3, :cond_e

    #@151
    .line 642
    move-object/from16 v0, p0

    #@153
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@155
    .line 643
    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    #@157
    .line 642
    invoke-virtual {v3, v4}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@15a
    move-result-object v37

    #@15b
    .line 644
    .local v37, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    #@15e
    .line 647
    move-object/from16 v0, p0

    #@160
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@166
    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    #@168
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16a
    .line 648
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@16e
    const v4, 0x800033

    #@171
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@173
    .line 649
    move-object/from16 v0, p0

    #@175
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@177
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@17b
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getClass()Ljava/lang/Class;

    #@17e
    move-result-object v4

    #@17f
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@182
    move-result-object v4

    #@183
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@186
    .line 650
    move-object/from16 v0, p0

    #@188
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@18a
    .line 651
    const v4, 0x10302f2

    #@18d
    .line 650
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@18f
    .line 652
    new-instance v3, Landroid/view/InputChannel;

    #@191
    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    #@194
    move-object/from16 v0, p0

    #@196
    iput-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@198
    .line 653
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
    .line 654
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
    .line 655
    move-object/from16 v0, p0

    #@1b8
    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@1ba
    .line 653
    const/4 v6, 0x0

    #@1bb
    .line 654
    const/4 v7, 0x0

    #@1bc
    .line 653
    invoke-interface/range {v2 .. v11}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@1bf
    move-result v3

    #@1c0
    if-gez v3, :cond_d

    #@1c2
    .line 656
    const-string/jumbo v3, "WallpaperService"

    #@1c5
    const-string/jumbo v4, "Failed to add window while updating wallpaper surface."

    #@1c8
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cb
    .line 657
    return-void

    #@1cc
    .line 659
    :cond_d
    const/4 v3, 0x1

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@1d1
    .line 661
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@1d3
    .line 662
    move-object/from16 v0, p0

    #@1d5
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@1d7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1da
    move-result-object v5

    #@1db
    .line 661
    move-object/from16 v0, p0

    #@1dd
    invoke-direct {v3, v0, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iput-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@1e4
    .line 665
    .end local v37    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_e
    move-object/from16 v0, p0

    #@1e6
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1e8
    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1ea
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1ed
    .line 666
    const/4 v3, 0x1

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@1f2
    .line 668
    if-nez v24, :cond_12

    #@1f4
    .line 669
    move-object/from16 v0, p0

    #@1f6
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1f8
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@1fe
    iget-object v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@200
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@203
    .line 670
    move-object/from16 v0, p0

    #@205
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@207
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@209
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@20f
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@211
    add-int/2addr v4, v5

    #@212
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@214
    .line 671
    move-object/from16 v0, p0

    #@216
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@218
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@21a
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@21c
    move-object/from16 v0, p0

    #@21e
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@220
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@222
    add-int/2addr v4, v5

    #@223
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@225
    .line 672
    move-object/from16 v0, p0

    #@227
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@229
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@22b
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@22d
    move-object/from16 v0, p0

    #@22f
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@231
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@233
    add-int/2addr v4, v5

    #@234
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@236
    .line 673
    move-object/from16 v0, p0

    #@238
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@23a
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@23c
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@23e
    move-object/from16 v0, p0

    #@240
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@242
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@244
    add-int/2addr v4, v5

    #@245
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@247
    .line 677
    :goto_a
    move-object/from16 v0, p0

    #@249
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@24b
    .line 678
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
    .line 679
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
    .line 680
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
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mBackdropFrame:Landroid/graphics/Rect;

    #@27d
    move-object/from16 v16, v0

    #@27f
    .line 681
    move-object/from16 v0, p0

    #@281
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@283
    move-object/from16 v17, v0

    #@285
    move-object/from16 v0, p0

    #@287
    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@289
    iget-object v0, v8, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@28b
    move-object/from16 v18, v0

    #@28d
    .line 679
    const/4 v8, 0x0

    #@28e
    const/4 v9, 0x0

    #@28f
    .line 677
    invoke-interface/range {v2 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@292
    move-result v32

    #@293
    .line 686
    .local v32, "relayoutResult":I
    move-object/from16 v0, p0

    #@295
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@297
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@29a
    move-result v36

    #@29b
    .line 687
    .local v36, "w":I
    move-object/from16 v0, p0

    #@29d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@29f
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@2a2
    move-result v27

    #@2a3
    .line 689
    .local v27, "h":I
    if-nez v24, :cond_f

    #@2a5
    .line 690
    move-object/from16 v0, p0

    #@2a7
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2a9
    iget-object v0, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@2ab
    move-object/from16 v31, v0

    #@2ad
    .line 691
    .local v31, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v31

    #@2af
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@2b1
    move-object/from16 v0, v31

    #@2b3
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@2b5
    add-int/2addr v3, v4

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2ba
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@2bc
    add-int/2addr v3, v4

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2c1
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@2c3
    add-int/2addr v3, v4

    #@2c4
    add-int v36, v36, v3

    #@2c6
    .line 692
    move-object/from16 v0, v31

    #@2c8
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@2ca
    move-object/from16 v0, v31

    #@2cc
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@2ce
    add-int/2addr v3, v4

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2d3
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@2d5
    add-int/2addr v3, v4

    #@2d6
    move-object/from16 v0, p0

    #@2d8
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2da
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@2dc
    add-int/2addr v3, v4

    #@2dd
    add-int v27, v27, v3

    #@2df
    .line 693
    move-object/from16 v0, p0

    #@2e1
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2e3
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@2e5
    move-object/from16 v0, v31

    #@2e7
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@2e9
    add-int/2addr v4, v5

    #@2ea
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@2ec
    .line 694
    move-object/from16 v0, p0

    #@2ee
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2f0
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@2f2
    move-object/from16 v0, v31

    #@2f4
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@2f6
    add-int/2addr v4, v5

    #@2f7
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@2f9
    .line 695
    move-object/from16 v0, p0

    #@2fb
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2fd
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@2ff
    move-object/from16 v0, v31

    #@301
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@303
    add-int/2addr v4, v5

    #@304
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@306
    .line 696
    move-object/from16 v0, p0

    #@308
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@30a
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@30c
    move-object/from16 v0, v31

    #@30e
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@310
    add-int/2addr v4, v5

    #@311
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@313
    .line 697
    move-object/from16 v0, p0

    #@315
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@317
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@319
    move-object/from16 v0, v31

    #@31b
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@31d
    add-int/2addr v4, v5

    #@31e
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@320
    .line 698
    move-object/from16 v0, p0

    #@322
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@324
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@326
    move-object/from16 v0, v31

    #@328
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@32a
    add-int/2addr v4, v5

    #@32b
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@32d
    .line 699
    move-object/from16 v0, p0

    #@32f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@331
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@333
    move-object/from16 v0, v31

    #@335
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@337
    add-int/2addr v4, v5

    #@338
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@33a
    .line 700
    move-object/from16 v0, p0

    #@33c
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@33e
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@340
    move-object/from16 v0, v31

    #@342
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@344
    add-int/2addr v4, v5

    #@345
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@347
    .line 701
    move-object/from16 v0, p0

    #@349
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@34b
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@34d
    move-object/from16 v0, v31

    #@34f
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@351
    add-int/2addr v4, v5

    #@352
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@354
    .line 702
    move-object/from16 v0, p0

    #@356
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@358
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@35a
    move-object/from16 v0, v31

    #@35c
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@35e
    add-int/2addr v4, v5

    #@35f
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@361
    .line 703
    move-object/from16 v0, p0

    #@363
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@365
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@367
    move-object/from16 v0, v31

    #@369
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@36b
    add-int/2addr v4, v5

    #@36c
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@36e
    .line 704
    move-object/from16 v0, p0

    #@370
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@372
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@374
    move-object/from16 v0, v31

    #@376
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@378
    add-int/2addr v4, v5

    #@379
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@37b
    .line 707
    .end local v31    # "padding":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    #@37d
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@37f
    move/from16 v0, v36

    #@381
    if-eq v3, v0, :cond_10

    #@383
    .line 708
    const/16 v33, 0x1

    #@385
    .line 709
    move/from16 v0, v36

    #@387
    move-object/from16 v1, p0

    #@389
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@38b
    .line 711
    :cond_10
    move-object/from16 v0, p0

    #@38d
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@38f
    move/from16 v0, v27

    #@391
    if-eq v3, v0, :cond_11

    #@393
    .line 712
    const/16 v33, 0x1

    #@395
    .line 713
    move/from16 v0, v27

    #@397
    move-object/from16 v1, p0

    #@399
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@39b
    .line 720
    :cond_11
    move-object/from16 v0, p0

    #@39d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@39f
    move-object/from16 v0, p0

    #@3a1
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@3a3
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3a6
    move-result v3

    #@3a7
    if-eqz v3, :cond_13

    #@3a9
    const/4 v3, 0x0

    #@3aa
    :goto_b
    or-int v28, v28, v3

    #@3ac
    .line 721
    .local v28, "insetsChanged":Z
    move-object/from16 v0, p0

    #@3ae
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@3b0
    move-object/from16 v0, p0

    #@3b2
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@3b4
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3b7
    move-result v3

    #@3b8
    if-eqz v3, :cond_14

    #@3ba
    const/4 v3, 0x0

    #@3bb
    :goto_c
    or-int v28, v28, v3

    #@3bd
    .line 722
    move-object/from16 v0, p0

    #@3bf
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@3c1
    move-object/from16 v0, p0

    #@3c3
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@3c5
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3c8
    move-result v3

    #@3c9
    if-eqz v3, :cond_15

    #@3cb
    const/4 v3, 0x0

    #@3cc
    :goto_d
    or-int v28, v28, v3

    #@3ce
    .line 723
    move-object/from16 v0, p0

    #@3d0
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@3d6
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3d9
    move-result v3

    #@3da
    if-eqz v3, :cond_16

    #@3dc
    const/4 v3, 0x0

    #@3dd
    :goto_e
    or-int v28, v28, v3

    #@3df
    .line 725
    move-object/from16 v0, p0

    #@3e1
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3e3
    move/from16 v0, v36

    #@3e5
    move/from16 v1, v27

    #@3e7
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    #@3ea
    .line 726
    move-object/from16 v0, p0

    #@3ec
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3ee
    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3f0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3f3
    .line 728
    move-object/from16 v0, p0

    #@3f5
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3f7
    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@3f9
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    #@3fc
    move-result v3

    #@3fd
    if-nez v3, :cond_17

    #@3ff
    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    #@402
    .line 731
    return-void

    #@403
    .line 675
    .end local v27    # "h":I
    .end local v32    # "relayoutResult":I
    .end local v36    # "w":I
    .local v28, "insetsChanged":Z
    :cond_12
    move-object/from16 v0, p0

    #@405
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@407
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@409
    const/4 v4, 0x0

    #@40a
    const/4 v5, 0x0

    #@40b
    const/4 v6, 0x0

    #@40c
    const/4 v7, 0x0

    #@40d
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@410
    goto/16 :goto_a

    #@412
    .line 842
    .end local v28    # "insetsChanged":Z
    :catch_0
    move-exception v23

    #@413
    .local v23, "ex":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@415
    .line 720
    .end local v23    # "ex":Landroid/os/RemoteException;
    .restart local v27    # "h":I
    .restart local v28    # "insetsChanged":Z
    .restart local v32    # "relayoutResult":I
    .restart local v36    # "w":I
    :cond_13
    const/4 v3, 0x1

    #@416
    goto :goto_b

    #@417
    .line 721
    .local v28, "insetsChanged":Z
    :cond_14
    const/4 v3, 0x1

    #@418
    goto :goto_c

    #@419
    .line 722
    :cond_15
    const/4 v3, 0x1

    #@41a
    goto :goto_d

    #@41b
    .line 723
    :cond_16
    const/4 v3, 0x1

    #@41c
    goto :goto_e

    #@41d
    .line 734
    :cond_17
    const/16 v22, 0x0

    #@41f
    .line 737
    .local v22, "didSurface":Z
    :try_start_1
    move-object/from16 v0, p0

    #@421
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@423
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@426
    .line 739
    if-eqz v34, :cond_18

    #@428
    .line 740
    const/4 v3, 0x1

    #@429
    move-object/from16 v0, p0

    #@42b
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@42d
    .line 741
    const/16 v22, 0x1

    #@42f
    .line 744
    move-object/from16 v0, p0

    #@431
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@433
    move-object/from16 v0, p0

    #@435
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    #@438
    .line 745
    move-object/from16 v0, p0

    #@43a
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@43c
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@43f
    move-result-object v20

    #@440
    .line 746
    .local v20, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v20, :cond_18

    #@442
    .line 747
    const/4 v3, 0x0

    #@443
    move-object/from16 v0, v20

    #@445
    array-length v4, v0

    #@446
    :goto_f
    if-ge v3, v4, :cond_18

    #@448
    aget-object v19, v20, v3

    #@44a
    .line 748
    .local v19, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@44c
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@44e
    move-object/from16 v0, v19

    #@450
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@453
    .line 747
    add-int/lit8 v3, v3, 0x1

    #@455
    goto :goto_f

    #@456
    .line 753
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_18
    if-nez v21, :cond_19

    #@458
    and-int/lit8 v3, v32, 0x2

    #@45a
    if-eqz v3, :cond_1b

    #@45c
    :cond_19
    const/4 v3, 0x1

    #@45d
    :goto_10
    or-int p3, p3, v3

    #@45f
    .line 756
    if-nez p2, :cond_1a

    #@461
    if-nez v21, :cond_1a

    #@463
    if-nez v34, :cond_1a

    #@465
    if-nez v26, :cond_1a

    #@467
    if-eqz v33, :cond_1c

    #@469
    .line 769
    :cond_1a
    const/16 v22, 0x1

    #@46b
    .line 770
    move-object/from16 v0, p0

    #@46d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@46f
    move-object/from16 v0, p0

    #@471
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@473
    .line 771
    move-object/from16 v0, p0

    #@475
    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@477
    move-object/from16 v0, p0

    #@479
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@47b
    .line 770
    move-object/from16 v0, p0

    #@47d
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@480
    .line 772
    move-object/from16 v0, p0

    #@482
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@484
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@487
    move-result-object v20

    #@488
    .line 773
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v20, :cond_1c

    #@48a
    .line 774
    const/4 v3, 0x0

    #@48b
    move-object/from16 v0, v20

    #@48d
    array-length v4, v0

    #@48e
    :goto_11
    if-ge v3, v4, :cond_1c

    #@490
    aget-object v19, v20, v3

    #@492
    .line 775
    .restart local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@494
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@496
    move-object/from16 v0, p0

    #@498
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@49a
    .line 776
    move-object/from16 v0, p0

    #@49c
    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@49e
    move-object/from16 v0, p0

    #@4a0
    iget v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@4a2
    .line 775
    move-object/from16 v0, v19

    #@4a4
    invoke-interface {v0, v5, v6, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@4a7
    .line 774
    add-int/lit8 v3, v3, 0x1

    #@4a9
    goto :goto_11

    #@4aa
    .line 753
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    const/4 v3, 0x0

    #@4ab
    goto :goto_10

    #@4ac
    .line 781
    :cond_1c
    if-eqz v28, :cond_1d

    #@4ae
    .line 782
    move-object/from16 v0, p0

    #@4b0
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4b2
    move-object/from16 v0, p0

    #@4b4
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@4b6
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b9
    .line 783
    move-object/from16 v0, p0

    #@4bb
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4bd
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@4bf
    move-object/from16 v0, p0

    #@4c1
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4c3
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@4c5
    add-int/2addr v4, v5

    #@4c6
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@4c8
    .line 784
    move-object/from16 v0, p0

    #@4ca
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4cc
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@4ce
    move-object/from16 v0, p0

    #@4d0
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4d2
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@4d4
    add-int/2addr v4, v5

    #@4d5
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@4d7
    .line 785
    move-object/from16 v0, p0

    #@4d9
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4db
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@4dd
    move-object/from16 v0, p0

    #@4df
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4e1
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@4e3
    add-int/2addr v4, v5

    #@4e4
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@4e6
    .line 786
    move-object/from16 v0, p0

    #@4e8
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4ea
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@4ec
    move-object/from16 v0, p0

    #@4ee
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4f0
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@4f2
    add-int/2addr v4, v5

    #@4f3
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@4f5
    .line 787
    move-object/from16 v0, p0

    #@4f7
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@4f9
    move-object/from16 v0, p0

    #@4fb
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@4fd
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@500
    .line 788
    move-object/from16 v0, p0

    #@502
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@504
    move-object/from16 v0, p0

    #@506
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@508
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@50b
    .line 789
    move-object/from16 v0, p0

    #@50d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@50f
    move-object/from16 v0, p0

    #@511
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@513
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@516
    .line 790
    move-object/from16 v0, p0

    #@518
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@51a
    move-object/from16 v0, p0

    #@51c
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@51e
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@521
    .line 791
    move-object/from16 v0, p0

    #@523
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@525
    move-object/from16 v0, p0

    #@527
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@529
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@52c
    .line 792
    new-instance v2, Landroid/view/WindowInsets;

    #@52e
    move-object/from16 v0, p0

    #@530
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@532
    .line 793
    move-object/from16 v0, p0

    #@534
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@536
    .line 794
    move-object/from16 v0, p0

    #@538
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@53a
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    #@53d
    move-result-object v4

    #@53e
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@541
    move-result-object v4

    #@542
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@545
    move-result v6

    #@546
    .line 793
    const/4 v4, 0x0

    #@547
    .line 794
    const/4 v7, 0x0

    #@548
    .line 792
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@54b
    .line 798
    .local v2, "insets":Landroid/view/WindowInsets;
    move-object/from16 v0, p0

    #@54d
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    #@550
    .line 801
    .end local v2    # "insets":Landroid/view/WindowInsets;
    :cond_1d
    if-eqz p3, :cond_1f

    #@552
    .line 802
    move-object/from16 v0, p0

    #@554
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@556
    move-object/from16 v0, p0

    #@558
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@55b
    .line 803
    move-object/from16 v0, p0

    #@55d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@55f
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@562
    move-result-object v20

    #@563
    .line 804
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v20, :cond_1f

    #@565
    .line 805
    const/4 v3, 0x0

    #@566
    move-object/from16 v0, v20

    #@568
    array-length v4, v0

    #@569
    :goto_12
    if-ge v3, v4, :cond_1f

    #@56b
    aget-object v19, v20, v3

    #@56d
    .line 806
    .restart local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    #@56f
    instance-of v5, v0, Landroid/view/SurfaceHolder$Callback2;

    #@571
    if-eqz v5, :cond_1e

    #@573
    .line 807
    check-cast v19, Landroid/view/SurfaceHolder$Callback2;

    #@575
    .line 808
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@577
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@579
    .line 807
    move-object/from16 v0, v19

    #@57b
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@57e
    .line 805
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    #@580
    goto :goto_12

    #@581
    .line 814
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1f
    if-eqz v22, :cond_20

    #@583
    move-object/from16 v0, p0

    #@585
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@587
    if-eqz v3, :cond_22

    #@589
    .line 835
    :cond_20
    :goto_13
    const/4 v3, 0x0

    #@58a
    :try_start_2
    move-object/from16 v0, p0

    #@58c
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@58e
    .line 836
    const/4 v3, 0x1

    #@58f
    move-object/from16 v0, p0

    #@591
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@593
    .line 837
    if-eqz p3, :cond_21

    #@595
    .line 838
    move-object/from16 v0, p0

    #@597
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@599
    move-object/from16 v0, p0

    #@59b
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@59d
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@5a0
    .line 840
    :cond_21
    move-object/from16 v0, p0

    #@5a2
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@5a4
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5a7
    goto/16 :goto_9

    #@5a9
    .line 820
    :cond_22
    :try_start_3
    move-object/from16 v0, p0

    #@5ab
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@5ad
    if-eqz v3, :cond_23

    #@5af
    .line 827
    const/4 v3, 0x1

    #@5b0
    move-object/from16 v0, p0

    #@5b2
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@5b5
    .line 831
    :cond_23
    const/4 v3, 0x0

    #@5b6
    move-object/from16 v0, p0

    #@5b8
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5bb
    goto :goto_13

    #@5bc
    .line 834
    :catchall_0
    move-exception v3

    #@5bd
    .line 835
    const/4 v4, 0x0

    #@5be
    :try_start_4
    move-object/from16 v0, p0

    #@5c0
    iput-boolean v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@5c2
    .line 836
    const/4 v4, 0x1

    #@5c3
    move-object/from16 v0, p0

    #@5c5
    iput-boolean v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@5c7
    .line 837
    if-eqz p3, :cond_24

    #@5c9
    .line 838
    move-object/from16 v0, p0

    #@5cb
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@5cd
    move-object/from16 v0, p0

    #@5cf
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@5d1
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@5d4
    .line 840
    :cond_24
    move-object/from16 v0, p0

    #@5d6
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@5d8
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    #@5db
    .line 834
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

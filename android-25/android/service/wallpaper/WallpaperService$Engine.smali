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
    .line 128
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 136
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@8
    .line 154
    const/16 v0, 0x10

    #@a
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@c
    .line 156
    const/4 v0, 0x4

    #@d
    .line 155
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@f
    .line 157
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@11
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@13
    .line 158
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@15
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@17
    .line 159
    new-instance v0, Landroid/graphics/Rect;

    #@19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@1e
    .line 160
    new-instance v0, Landroid/graphics/Rect;

    #@20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@25
    .line 161
    new-instance v0, Landroid/graphics/Rect;

    #@27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2c
    .line 162
    new-instance v0, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@33
    .line 163
    new-instance v0, Landroid/graphics/Rect;

    #@35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@38
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@3a
    .line 164
    new-instance v0, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@41
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    #@43
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@48
    .line 166
    new-instance v0, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@4f
    .line 167
    new-instance v0, Landroid/graphics/Rect;

    #@51
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@54
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@56
    .line 168
    new-instance v0, Landroid/graphics/Rect;

    #@58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5b
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@5d
    .line 169
    new-instance v0, Landroid/graphics/Rect;

    #@5f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@62
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@64
    .line 170
    new-instance v0, Landroid/graphics/Rect;

    #@66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@69
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@6b
    .line 171
    new-instance v0, Landroid/graphics/Rect;

    #@6d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@70
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBackdropFrame:Landroid/graphics/Rect;

    #@72
    .line 172
    new-instance v0, Landroid/content/res/Configuration;

    #@74
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@77
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@79
    .line 175
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@7b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@7e
    .line 174
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@80
    .line 179
    new-instance v0, Ljava/lang/Object;

    #@82
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@85
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@87
    .line 192
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    #@89
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@8c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@8e
    .line 271
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    #@90
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@93
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@95
    .line 1057
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    #@97
    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    #@9a
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@9c
    .line 128
    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 574
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 575
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v1

    #@d
    const/4 v3, 0x2

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 576
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v2

    #@13
    .line 581
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@15
    const/16 v2, 0x2738

    #@17
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 582
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@1d
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@20
    .line 572
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    #@21
    .line 578
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
    .line 574
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1

    #@28
    .line 584
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
    .line 853
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 854
    return-void

    #@6
    .line 857
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@8
    .line 858
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-get0(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    .line 859
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@10
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@12
    .line 860
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    #@14
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    #@16
    .line 861
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    #@1b
    .line 862
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@1e
    .line 863
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@24
    .line 865
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@26
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@28
    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    #@2b
    .line 867
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
    .line 869
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
    .line 870
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
    .line 871
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@51
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@57
    .line 872
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@59
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@5f
    .line 875
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@61
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    #@64
    .line 877
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    #@66
    .line 878
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@68
    .line 879
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@6b
    .line 851
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
    .line 1011
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1012
    return-void

    #@7
    .line 1015
    :cond_0
    const/4 v1, 0x1

    #@8
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@a
    .line 1017
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1018
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@10
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@12
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    #@15
    .line 1021
    :cond_1
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1022
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@1b
    .line 1024
    invoke-virtual {p0, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@1e
    .line 1027
    :cond_2
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    #@21
    .line 1030
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    #@24
    .line 1032
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 1037
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 1038
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@2e
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    #@31
    .line 1039
    const/4 v1, 0x0

    #@32
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@34
    .line 1042
    :cond_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@36
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@38
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 1045
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3d
    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@3f
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@42
    .line 1046
    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@44
    .line 1050
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 1051
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@4a
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@4d
    .line 1052
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@4f
    .line 1010
    :cond_4
    return-void

    #@50
    .line 1043
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
    .line 979
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 980
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    #@6
    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    #@8
    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    #@a
    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    #@c
    .line 981
    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    #@e
    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@10
    move-object v0, p0

    #@11
    .line 980
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    #@14
    move-result-object v8

    #@15
    .line 985
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 988
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
    .line 977
    :cond_0
    :goto_1
    return-void

    #@25
    .line 983
    :cond_1
    const/4 v8, 0x0

    #@26
    .local v8, "result":Landroid/os/Bundle;
    goto :goto_0

    #@27
    .line 989
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
    .line 883
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 886
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@6
    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@8
    .line 887
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@a
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@c
    .line 888
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    #@f
    .line 889
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@13
    .line 882
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
    .line 894
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 896
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
    .line 897
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@11
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@16
    .line 898
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@1a
    .line 893
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
    .line 931
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 932
    return-void

    #@8
    .line 935
    :cond_0
    if-nez p1, :cond_1

    #@a
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    #@c
    if-eqz v0, :cond_5

    #@e
    .line 944
    :cond_1
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v11

    #@11
    .line 945
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@13
    .line 946
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    #@15
    .line 947
    .local v2, "yOffset":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@17
    .line 948
    .local v3, "xOffsetStep":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    #@19
    .line 949
    .local v4, "yOffsetStep":F
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1b
    .line 950
    .local v10, "sync":Z
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@1e
    .line 951
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v11

    #@22
    .line 954
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 955
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@28
    if-eqz v0, :cond_7

    #@2a
    .line 958
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2c
    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@2e
    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@30
    sub-int v8, v0, v11

    #@32
    .line 959
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
    .line 960
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
    .line 961
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
    .line 962
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    #@4c
    .line 968
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    #@4e
    .line 971
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
    .line 930
    :cond_4
    :goto_2
    return-void

    #@5a
    .line 936
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v10    # "sync":Z
    :cond_5
    return-void

    #@5b
    .line 944
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v11

    #@5d
    throw v0

    #@5e
    .line 959
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
    .line 964
    .end local v5    # "xPixels":I
    .end local v8    # "availw":I
    :cond_7
    const/4 v0, 0x1

    #@61
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    #@63
    goto :goto_1

    #@64
    .line 972
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
    .line 904
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 905
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    #@6
    .line 906
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    #@9
    .line 903
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
    .line 533
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
    .line 534
    const-string/jumbo v0, " mDestroyed="

    #@11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@19
    .line 535
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
    .line 536
    const-string/jumbo v0, " mReportedVisible="

    #@2a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@2f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@32
    .line 537
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
    .line 538
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
    .line 539
    const-string/jumbo v0, " mSurfaceCreated="

    #@51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@56
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@59
    .line 540
    const-string/jumbo v0, " mIsCreating="

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@64
    .line 541
    const-string/jumbo v0, " mDrawingAllowed="

    #@67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6f
    .line 542
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
    .line 543
    const-string/jumbo v0, " mCurWidth="

    #@80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@88
    .line 544
    const-string/jumbo v0, " mHeight="

    #@8b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@93
    .line 545
    const-string/jumbo v0, " mCurHeight="

    #@96
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@9b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@9e
    .line 546
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
    .line 547
    const-string/jumbo v0, " mWindowFlags="

    #@af
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@b4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@b7
    .line 548
    const-string/jumbo v0, " mCurWindowFlags="

    #@ba
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@bf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@c2
    .line 549
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
    .line 550
    const-string/jumbo v0, " mCurWindowPrivateFlags="

    #@d3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@d8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@db
    .line 551
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    const-string/jumbo v0, "mVisibleInsets="

    #@e1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    .line 552
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@e6
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    .line 553
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
    .line 554
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
    .line 555
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
    .line 556
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
    .line 557
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@129
    monitor-enter v1

    #@12a
    .line 558
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
    .line 559
    const-string/jumbo v0, " mPendingXOffset="

    #@13b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    #@140
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    #@143
    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@146
    const-string/jumbo v0, "mPendingXOffsetStep="

    #@149
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    .line 561
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@14e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    #@151
    .line 562
    const-string/jumbo v0, " mPendingXOffsetStep="

    #@154
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@157
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    #@159
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    #@15c
    .line 563
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    const-string/jumbo v0, "mOffsetMessageEnqueued="

    #@162
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@165
    .line 564
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    #@167
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@16a
    .line 565
    const-string/jumbo v0, " mPendingSync="

    #@16d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    #@172
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@175
    .line 566
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    #@177
    if-eqz v0, :cond_0

    #@179
    .line 567
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
    .line 532
    return-void

    #@189
    .line 557
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
    .line 360
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
    .line 351
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
    .line 342
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@2
    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    #@0
    .prologue
    .line 378
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
    .line 369
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@2
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 451
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
    .line 494
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 425
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    #@0
    .prologue
    .line 501
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 433
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
    .line 472
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
    .line 508
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 522
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 529
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 515
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 461
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 441
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 995
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 996
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@7
    .line 997
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@9
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@c
    .line 998
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@11
    move-result-object v1

    #@12
    .line 999
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_0

    #@14
    .line 1000
    array-length v3, v1

    #@15
    :goto_0
    if-ge v2, v3, :cond_0

    #@17
    aget-object v0, v1, v2

    #@19
    .line 1001
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1b
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@1e
    .line 1000
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1006
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@23
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    #@26
    .line 994
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
    .line 911
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 912
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@7
    if-nez v1, :cond_2

    #@9
    move v1, v2

    #@a
    :goto_0
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    #@c
    .line 913
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
    .line 914
    .local v0, "visible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@18
    if-eq v1, v0, :cond_1

    #@1a
    .line 915
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    #@1c
    .line 918
    if-eqz v0, :cond_0

    #@1e
    .line 922
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@21
    .line 923
    invoke-virtual {p0, v2, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@24
    .line 925
    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@27
    .line 910
    .end local v0    # "visible":Z
    :cond_1
    return-void

    #@28
    .line 912
    :cond_2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    #@2a
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    #@2d
    move-result v1

    #@2e
    goto :goto_0

    #@2f
    .line 913
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
    .line 418
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    #@2
    .line 417
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 406
    if-eqz p1, :cond_1

    #@3
    .line 407
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    .line 406
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@9
    .line 411
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 412
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@10
    .line 405
    :cond_0
    return-void

    #@11
    .line 409
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
    .line 389
    if-eqz p1, :cond_1

    #@3
    .line 390
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    .line 389
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@9
    .line 392
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 393
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@10
    .line 388
    :cond_0
    return-void

    #@11
    .line 391
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
    .line 589
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 590
    const-string/jumbo v3, "WallpaperService"

    #@9
    const-string/jumbo v4, "Ignoring updateSurface: destroyed"

    #@c
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 593
    :cond_0
    const/16 v24, 0x0

    #@11
    .line 594
    .local v24, "fixedSize":Z
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@15
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    #@18
    move-result v30

    #@19
    .line 595
    .local v30, "myWidth":I
    if-gtz v30, :cond_2

    #@1b
    const/16 v30, -0x1

    #@1d
    .line 597
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@21
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    #@24
    move-result v29

    #@25
    .line 598
    .local v29, "myHeight":I
    if-gtz v29, :cond_3

    #@27
    const/16 v29, -0x1

    #@29
    .line 601
    :goto_1
    move-object/from16 v0, p0

    #@2b
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@2d
    if-eqz v3, :cond_4

    #@2f
    const/16 v21, 0x0

    #@31
    .line 602
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
    .line 603
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
    .line 604
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
    .line 605
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
    .line 606
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
    .line 607
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
    .line 608
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
    .line 609
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
    .line 611
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@9d
    iget-boolean v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    #@9f
    if-eqz v3, :cond_c

    #@a1
    .line 588
    .end local v28    # "insetsChanged":Z
    :goto_9
    return-void

    #@a2
    .line 596
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
    .line 599
    .restart local v29    # "myHeight":I
    :cond_3
    const/16 v24, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 601
    :cond_4
    const/16 v21, 0x1

    #@ab
    .restart local v21    # "creating":Z
    goto :goto_2

    #@ac
    .line 602
    :cond_5
    const/16 v34, 0x1

    #@ae
    .restart local v34    # "surfaceCreating":Z
    goto :goto_3

    #@af
    .line 603
    :cond_6
    const/16 v26, 0x0

    #@b1
    .restart local v26    # "formatChanged":Z
    goto :goto_4

    #@b2
    .line 604
    :cond_7
    const/16 v33, 0x0

    #@b4
    .restart local v33    # "sizeChanged":Z
    goto :goto_5

    #@b5
    .line 605
    :cond_8
    const/16 v28, 0x1

    #@b7
    .restart local v28    # "insetsChanged":Z
    goto :goto_6

    #@b8
    .line 606
    :cond_9
    const/16 v35, 0x0

    #@ba
    .restart local v35    # "typeChanged":Z
    goto :goto_7

    #@bb
    .line 607
    :cond_a
    const/16 v25, 0x1

    #@bd
    .restart local v25    # "flagsChanged":Z
    goto :goto_8

    #@be
    .line 608
    .end local v25    # "flagsChanged":Z
    :cond_b
    const/16 v25, 0x0

    #@c0
    .restart local v25    # "flagsChanged":Z
    goto :goto_8

    #@c1
    .line 617
    :cond_c
    :try_start_0
    move/from16 v0, v30

    #@c3
    move-object/from16 v1, p0

    #@c5
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@c7
    .line 618
    move/from16 v0, v29

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@cd
    .line 619
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
    .line 620
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
    .line 622
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@e9
    const/4 v4, 0x0

    #@ea
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    #@ec
    .line 623
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f0
    const/4 v4, 0x0

    #@f1
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    #@f3
    .line 624
    move-object/from16 v0, p0

    #@f5
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f7
    move/from16 v0, v30

    #@f9
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    #@fb
    .line 625
    move-object/from16 v0, p0

    #@fd
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@ff
    move/from16 v0, v29

    #@101
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    #@103
    .line 627
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
    .line 629
    move-object/from16 v0, p0

    #@10f
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    #@111
    move-object/from16 v0, p0

    #@113
    iput v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    #@115
    .line 630
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
    .line 632
    const/high16 v5, 0x10000

    #@121
    .line 630
    or-int/2addr v4, v5

    #@122
    or-int/lit16 v4, v4, 0x100

    #@124
    or-int/lit8 v4, v4, 0x8

    #@126
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@128
    .line 635
    move-object/from16 v0, p0

    #@12a
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    #@130
    .line 636
    move-object/from16 v0, p0

    #@132
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@134
    move-object/from16 v0, p0

    #@136
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    #@138
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@13a
    .line 638
    move-object/from16 v0, p0

    #@13c
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@13e
    move-object/from16 v0, p0

    #@140
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    #@142
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    #@144
    .line 639
    move-object/from16 v0, p0

    #@146
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    #@14c
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@14e
    .line 641
    move-object/from16 v0, p0

    #@150
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@152
    if-nez v3, :cond_e

    #@154
    .line 643
    move-object/from16 v0, p0

    #@156
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@158
    .line 644
    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    #@15a
    .line 643
    invoke-virtual {v3, v4}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@15d
    move-result-object v37

    #@15e
    .line 645
    .local v37, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual/range {v37 .. v37}, Landroid/content/res/TypedArray;->recycle()V

    #@161
    .line 648
    move-object/from16 v0, p0

    #@163
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@169
    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    #@16b
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16d
    .line 649
    move-object/from16 v0, p0

    #@16f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@171
    const v4, 0x800033

    #@174
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@176
    .line 650
    move-object/from16 v0, p0

    #@178
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@17a
    move-object/from16 v0, p0

    #@17c
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@17e
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getClass()Ljava/lang/Class;

    #@181
    move-result-object v4

    #@182
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@185
    move-result-object v4

    #@186
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@189
    .line 651
    move-object/from16 v0, p0

    #@18b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@18d
    .line 652
    const v4, 0x10302f2

    #@190
    .line 651
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@192
    .line 653
    new-instance v3, Landroid/view/InputChannel;

    #@194
    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    #@197
    move-object/from16 v0, p0

    #@199
    iput-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@19b
    .line 654
    move-object/from16 v0, p0

    #@19d
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@1a7
    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1ad
    .line 655
    move-object/from16 v0, p0

    #@1af
    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    iget-object v9, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@1b9
    .line 656
    move-object/from16 v0, p0

    #@1bb
    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@1bd
    .line 654
    const/4 v6, 0x0

    #@1be
    .line 655
    const/4 v7, 0x0

    #@1bf
    .line 654
    invoke-interface/range {v2 .. v11}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@1c2
    move-result v3

    #@1c3
    if-gez v3, :cond_d

    #@1c5
    .line 657
    const-string/jumbo v3, "WallpaperService"

    #@1c8
    const-string/jumbo v4, "Failed to add window while updating wallpaper surface."

    #@1cb
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ce
    .line 658
    return-void

    #@1cf
    .line 660
    :cond_d
    const/4 v3, 0x1

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    #@1d4
    .line 662
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@1d6
    .line 663
    move-object/from16 v0, p0

    #@1d8
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    #@1da
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1dd
    move-result-object v5

    #@1de
    .line 662
    move-object/from16 v0, p0

    #@1e0
    invoke-direct {v3, v0, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iput-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    #@1e7
    .line 666
    .end local v37    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_e
    move-object/from16 v0, p0

    #@1e9
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@1eb
    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1ed
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1f0
    .line 667
    const/4 v3, 0x1

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    #@1f5
    .line 669
    if-nez v24, :cond_12

    #@1f7
    .line 670
    move-object/from16 v0, p0

    #@1f9
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1fb
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@201
    iget-object v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@203
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@206
    .line 671
    move-object/from16 v0, p0

    #@208
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@20a
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@20c
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@212
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@214
    add-int/2addr v4, v5

    #@215
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@217
    .line 672
    move-object/from16 v0, p0

    #@219
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@21b
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@21d
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@21f
    move-object/from16 v0, p0

    #@221
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@223
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@225
    add-int/2addr v4, v5

    #@226
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@228
    .line 673
    move-object/from16 v0, p0

    #@22a
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@22c
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@22e
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@230
    move-object/from16 v0, p0

    #@232
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@234
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@236
    add-int/2addr v4, v5

    #@237
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@239
    .line 674
    move-object/from16 v0, p0

    #@23b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@23d
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@23f
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@241
    move-object/from16 v0, p0

    #@243
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@245
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@247
    add-int/2addr v4, v5

    #@248
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@24a
    .line 678
    :goto_a
    move-object/from16 v0, p0

    #@24c
    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@24e
    .line 679
    move-object/from16 v0, p0

    #@250
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@252
    move-object/from16 v0, p0

    #@254
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@256
    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@25c
    move-object/from16 v0, p0

    #@25e
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    #@260
    move-object/from16 v0, p0

    #@262
    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    #@264
    .line 680
    move-object/from16 v0, p0

    #@266
    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@26c
    move-object/from16 v0, p0

    #@26e
    iget-object v12, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@270
    .line 681
    move-object/from16 v0, p0

    #@272
    iget-object v13, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    #@274
    move-object/from16 v0, p0

    #@276
    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@278
    move-object/from16 v0, p0

    #@27a
    iget-object v15, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mBackdropFrame:Landroid/graphics/Rect;

    #@280
    move-object/from16 v16, v0

    #@282
    .line 682
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    #@286
    move-object/from16 v17, v0

    #@288
    move-object/from16 v0, p0

    #@28a
    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@28c
    iget-object v0, v8, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@28e
    move-object/from16 v18, v0

    #@290
    .line 680
    const/4 v8, 0x0

    #@291
    const/4 v9, 0x0

    #@292
    .line 678
    invoke-interface/range {v2 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@295
    move-result v32

    #@296
    .line 687
    .local v32, "relayoutResult":I
    move-object/from16 v0, p0

    #@298
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@29a
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@29d
    move-result v36

    #@29e
    .line 688
    .local v36, "w":I
    move-object/from16 v0, p0

    #@2a0
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    #@2a2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@2a5
    move-result v27

    #@2a6
    .line 690
    .local v27, "h":I
    if-nez v24, :cond_f

    #@2a8
    .line 691
    move-object/from16 v0, p0

    #@2aa
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@2ac
    iget-object v0, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@2ae
    move-object/from16 v31, v0

    #@2b0
    .line 692
    .local v31, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v31

    #@2b2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@2b4
    move-object/from16 v0, v31

    #@2b6
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@2b8
    add-int/2addr v3, v4

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2bd
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@2bf
    add-int/2addr v3, v4

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2c4
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@2c6
    add-int/2addr v3, v4

    #@2c7
    add-int v36, v36, v3

    #@2c9
    .line 693
    move-object/from16 v0, v31

    #@2cb
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@2cd
    move-object/from16 v0, v31

    #@2cf
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@2d1
    add-int/2addr v3, v4

    #@2d2
    move-object/from16 v0, p0

    #@2d4
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2d6
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@2d8
    add-int/2addr v3, v4

    #@2d9
    move-object/from16 v0, p0

    #@2db
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@2dd
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@2df
    add-int/2addr v3, v4

    #@2e0
    add-int v27, v27, v3

    #@2e2
    .line 694
    move-object/from16 v0, p0

    #@2e4
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2e6
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@2e8
    move-object/from16 v0, v31

    #@2ea
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@2ec
    add-int/2addr v4, v5

    #@2ed
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@2ef
    .line 695
    move-object/from16 v0, p0

    #@2f1
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@2f3
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@2f5
    move-object/from16 v0, v31

    #@2f7
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@2f9
    add-int/2addr v4, v5

    #@2fa
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@2fc
    .line 696
    move-object/from16 v0, p0

    #@2fe
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@300
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@302
    move-object/from16 v0, v31

    #@304
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@306
    add-int/2addr v4, v5

    #@307
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@309
    .line 697
    move-object/from16 v0, p0

    #@30b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@30d
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@30f
    move-object/from16 v0, v31

    #@311
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@313
    add-int/2addr v4, v5

    #@314
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@316
    .line 698
    move-object/from16 v0, p0

    #@318
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@31a
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@31c
    move-object/from16 v0, v31

    #@31e
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@320
    add-int/2addr v4, v5

    #@321
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@323
    .line 699
    move-object/from16 v0, p0

    #@325
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@327
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@329
    move-object/from16 v0, v31

    #@32b
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@32d
    add-int/2addr v4, v5

    #@32e
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@330
    .line 700
    move-object/from16 v0, p0

    #@332
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@334
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@336
    move-object/from16 v0, v31

    #@338
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@33a
    add-int/2addr v4, v5

    #@33b
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@33d
    .line 701
    move-object/from16 v0, p0

    #@33f
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@341
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@343
    move-object/from16 v0, v31

    #@345
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@347
    add-int/2addr v4, v5

    #@348
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@34a
    .line 702
    move-object/from16 v0, p0

    #@34c
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@34e
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@350
    move-object/from16 v0, v31

    #@352
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@354
    add-int/2addr v4, v5

    #@355
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@357
    .line 703
    move-object/from16 v0, p0

    #@359
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@35b
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@35d
    move-object/from16 v0, v31

    #@35f
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@361
    add-int/2addr v4, v5

    #@362
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@364
    .line 704
    move-object/from16 v0, p0

    #@366
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@368
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@36a
    move-object/from16 v0, v31

    #@36c
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@36e
    add-int/2addr v4, v5

    #@36f
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@371
    .line 705
    move-object/from16 v0, p0

    #@373
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@375
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@377
    move-object/from16 v0, v31

    #@379
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@37b
    add-int/2addr v4, v5

    #@37c
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@37e
    .line 708
    .end local v31    # "padding":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v0, p0

    #@380
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@382
    move/from16 v0, v36

    #@384
    if-eq v3, v0, :cond_10

    #@386
    .line 709
    const/16 v33, 0x1

    #@388
    .line 710
    move/from16 v0, v36

    #@38a
    move-object/from16 v1, p0

    #@38c
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@38e
    .line 712
    :cond_10
    move-object/from16 v0, p0

    #@390
    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@392
    move/from16 v0, v27

    #@394
    if-eq v3, v0, :cond_11

    #@396
    .line 713
    const/16 v33, 0x1

    #@398
    .line 714
    move/from16 v0, v27

    #@39a
    move-object/from16 v1, p0

    #@39c
    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@39e
    .line 721
    :cond_11
    move-object/from16 v0, p0

    #@3a0
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@3a6
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3a9
    move-result v3

    #@3aa
    if-eqz v3, :cond_13

    #@3ac
    const/4 v3, 0x0

    #@3ad
    :goto_b
    or-int v28, v28, v3

    #@3af
    .line 722
    .local v28, "insetsChanged":Z
    move-object/from16 v0, p0

    #@3b1
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@3b3
    move-object/from16 v0, p0

    #@3b5
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@3b7
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3ba
    move-result v3

    #@3bb
    if-eqz v3, :cond_14

    #@3bd
    const/4 v3, 0x0

    #@3be
    :goto_c
    or-int v28, v28, v3

    #@3c0
    .line 723
    move-object/from16 v0, p0

    #@3c2
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@3c4
    move-object/from16 v0, p0

    #@3c6
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@3c8
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3cb
    move-result v3

    #@3cc
    if-eqz v3, :cond_15

    #@3ce
    const/4 v3, 0x0

    #@3cf
    :goto_d
    or-int v28, v28, v3

    #@3d1
    .line 724
    move-object/from16 v0, p0

    #@3d3
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@3d5
    move-object/from16 v0, p0

    #@3d7
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@3d9
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3dc
    move-result v3

    #@3dd
    if-eqz v3, :cond_16

    #@3df
    const/4 v3, 0x0

    #@3e0
    :goto_e
    or-int v28, v28, v3

    #@3e2
    .line 726
    move-object/from16 v0, p0

    #@3e4
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3e6
    move/from16 v0, v36

    #@3e8
    move/from16 v1, v27

    #@3ea
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    #@3ed
    .line 727
    move-object/from16 v0, p0

    #@3ef
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3f1
    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3f3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3f6
    .line 729
    move-object/from16 v0, p0

    #@3f8
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@3fa
    iget-object v3, v3, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    #@3fc
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    #@3ff
    move-result v3

    #@400
    if-nez v3, :cond_17

    #@402
    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    #@405
    .line 732
    return-void

    #@406
    .line 676
    .end local v27    # "h":I
    .end local v32    # "relayoutResult":I
    .end local v36    # "w":I
    .local v28, "insetsChanged":Z
    :cond_12
    move-object/from16 v0, p0

    #@408
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@40a
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@40c
    const/4 v4, 0x0

    #@40d
    const/4 v5, 0x0

    #@40e
    const/4 v6, 0x0

    #@40f
    const/4 v7, 0x0

    #@410
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@413
    goto/16 :goto_a

    #@415
    .line 843
    .end local v28    # "insetsChanged":Z
    :catch_0
    move-exception v23

    #@416
    .local v23, "ex":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@418
    .line 721
    .end local v23    # "ex":Landroid/os/RemoteException;
    .restart local v27    # "h":I
    .restart local v28    # "insetsChanged":Z
    .restart local v32    # "relayoutResult":I
    .restart local v36    # "w":I
    :cond_13
    const/4 v3, 0x1

    #@419
    goto :goto_b

    #@41a
    .line 722
    .local v28, "insetsChanged":Z
    :cond_14
    const/4 v3, 0x1

    #@41b
    goto :goto_c

    #@41c
    .line 723
    :cond_15
    const/4 v3, 0x1

    #@41d
    goto :goto_d

    #@41e
    .line 724
    :cond_16
    const/4 v3, 0x1

    #@41f
    goto :goto_e

    #@420
    .line 735
    :cond_17
    const/16 v22, 0x0

    #@422
    .line 738
    .local v22, "didSurface":Z
    :try_start_1
    move-object/from16 v0, p0

    #@424
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@426
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    #@429
    .line 740
    if-eqz v34, :cond_18

    #@42b
    .line 741
    const/4 v3, 0x1

    #@42c
    move-object/from16 v0, p0

    #@42e
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@430
    .line 742
    const/16 v22, 0x1

    #@432
    .line 745
    move-object/from16 v0, p0

    #@434
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@436
    move-object/from16 v0, p0

    #@438
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    #@43b
    .line 746
    move-object/from16 v0, p0

    #@43d
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@43f
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@442
    move-result-object v20

    #@443
    .line 747
    .local v20, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v20, :cond_18

    #@445
    .line 748
    const/4 v3, 0x0

    #@446
    move-object/from16 v0, v20

    #@448
    array-length v4, v0

    #@449
    :goto_f
    if-ge v3, v4, :cond_18

    #@44b
    aget-object v19, v20, v3

    #@44d
    .line 749
    .local v19, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@44f
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@451
    move-object/from16 v0, v19

    #@453
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@456
    .line 748
    add-int/lit8 v3, v3, 0x1

    #@458
    goto :goto_f

    #@459
    .line 754
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_18
    if-nez v21, :cond_19

    #@45b
    and-int/lit8 v3, v32, 0x2

    #@45d
    if-eqz v3, :cond_1b

    #@45f
    :cond_19
    const/4 v3, 0x1

    #@460
    :goto_10
    or-int p3, p3, v3

    #@462
    .line 757
    if-nez p2, :cond_1a

    #@464
    if-nez v21, :cond_1a

    #@466
    if-nez v34, :cond_1a

    #@468
    if-nez v26, :cond_1a

    #@46a
    if-eqz v33, :cond_1c

    #@46c
    .line 770
    :cond_1a
    const/16 v22, 0x1

    #@46e
    .line 771
    move-object/from16 v0, p0

    #@470
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@472
    move-object/from16 v0, p0

    #@474
    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@476
    .line 772
    move-object/from16 v0, p0

    #@478
    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@47a
    move-object/from16 v0, p0

    #@47c
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@47e
    .line 771
    move-object/from16 v0, p0

    #@480
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@483
    .line 773
    move-object/from16 v0, p0

    #@485
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@487
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@48a
    move-result-object v20

    #@48b
    .line 774
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v20, :cond_1c

    #@48d
    .line 775
    const/4 v3, 0x0

    #@48e
    move-object/from16 v0, v20

    #@490
    array-length v4, v0

    #@491
    :goto_11
    if-ge v3, v4, :cond_1c

    #@493
    aget-object v19, v20, v3

    #@495
    .line 776
    .restart local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@497
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@499
    move-object/from16 v0, p0

    #@49b
    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    #@49d
    .line 777
    move-object/from16 v0, p0

    #@49f
    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    #@4a1
    move-object/from16 v0, p0

    #@4a3
    iget v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    #@4a5
    .line 776
    move-object/from16 v0, v19

    #@4a7
    invoke-interface {v0, v5, v6, v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@4aa
    .line 775
    add-int/lit8 v3, v3, 0x1

    #@4ac
    goto :goto_11

    #@4ad
    .line 754
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    const/4 v3, 0x0

    #@4ae
    goto :goto_10

    #@4af
    .line 782
    :cond_1c
    if-eqz v28, :cond_1d

    #@4b1
    .line 783
    move-object/from16 v0, p0

    #@4b3
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4b5
    move-object/from16 v0, p0

    #@4b7
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    #@4b9
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4bc
    .line 784
    move-object/from16 v0, p0

    #@4be
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4c0
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@4c2
    move-object/from16 v0, p0

    #@4c4
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4c6
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@4c8
    add-int/2addr v4, v5

    #@4c9
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@4cb
    .line 785
    move-object/from16 v0, p0

    #@4cd
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4cf
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@4d1
    move-object/from16 v0, p0

    #@4d3
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4d5
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@4d7
    add-int/2addr v4, v5

    #@4d8
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@4da
    .line 786
    move-object/from16 v0, p0

    #@4dc
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4de
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@4e0
    move-object/from16 v0, p0

    #@4e2
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4e4
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@4e6
    add-int/2addr v4, v5

    #@4e7
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@4e9
    .line 787
    move-object/from16 v0, p0

    #@4eb
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@4ed
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@4ef
    move-object/from16 v0, p0

    #@4f1
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@4f3
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@4f5
    add-int/2addr v4, v5

    #@4f6
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@4f8
    .line 788
    move-object/from16 v0, p0

    #@4fa
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    #@4fc
    move-object/from16 v0, p0

    #@4fe
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    #@500
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@503
    .line 789
    move-object/from16 v0, p0

    #@505
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@507
    move-object/from16 v0, p0

    #@509
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    #@50b
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@50e
    .line 790
    move-object/from16 v0, p0

    #@510
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    #@512
    move-object/from16 v0, p0

    #@514
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@516
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@519
    .line 791
    move-object/from16 v0, p0

    #@51b
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@51d
    move-object/from16 v0, p0

    #@51f
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    #@521
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@524
    .line 792
    move-object/from16 v0, p0

    #@526
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@528
    move-object/from16 v0, p0

    #@52a
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    #@52c
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@52f
    .line 793
    new-instance v2, Landroid/view/WindowInsets;

    #@531
    move-object/from16 v0, p0

    #@533
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    #@535
    .line 794
    move-object/from16 v0, p0

    #@537
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    #@539
    .line 795
    move-object/from16 v0, p0

    #@53b
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@53d
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    #@540
    move-result-object v4

    #@541
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@544
    move-result-object v4

    #@545
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@548
    move-result v6

    #@549
    .line 794
    const/4 v4, 0x0

    #@54a
    .line 795
    const/4 v7, 0x0

    #@54b
    .line 793
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    #@54e
    .line 799
    .local v2, "insets":Landroid/view/WindowInsets;
    move-object/from16 v0, p0

    #@550
    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    #@553
    .line 802
    .end local v2    # "insets":Landroid/view/WindowInsets;
    :cond_1d
    if-eqz p3, :cond_1f

    #@555
    .line 803
    move-object/from16 v0, p0

    #@557
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@559
    move-object/from16 v0, p0

    #@55b
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@55e
    .line 804
    move-object/from16 v0, p0

    #@560
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@562
    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@565
    move-result-object v20

    #@566
    .line 805
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v20, :cond_1f

    #@568
    .line 806
    const/4 v3, 0x0

    #@569
    move-object/from16 v0, v20

    #@56b
    array-length v4, v0

    #@56c
    :goto_12
    if-ge v3, v4, :cond_1f

    #@56e
    aget-object v19, v20, v3

    #@570
    .line 807
    .restart local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    #@572
    instance-of v5, v0, Landroid/view/SurfaceHolder$Callback2;

    #@574
    if-eqz v5, :cond_1e

    #@576
    .line 808
    check-cast v19, Landroid/view/SurfaceHolder$Callback2;

    #@578
    .line 809
    .end local v19    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@57a
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    #@57c
    .line 808
    move-object/from16 v0, v19

    #@57e
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    #@581
    .line 806
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    #@583
    goto :goto_12

    #@584
    .line 815
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1f
    if-eqz v22, :cond_20

    #@586
    move-object/from16 v0, p0

    #@588
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58a
    if-eqz v3, :cond_22

    #@58c
    .line 836
    :cond_20
    :goto_13
    const/4 v3, 0x0

    #@58d
    :try_start_2
    move-object/from16 v0, p0

    #@58f
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@591
    .line 837
    const/4 v3, 0x1

    #@592
    move-object/from16 v0, p0

    #@594
    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@596
    .line 838
    if-eqz p3, :cond_21

    #@598
    .line 839
    move-object/from16 v0, p0

    #@59a
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@59c
    move-object/from16 v0, p0

    #@59e
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@5a0
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@5a3
    .line 841
    :cond_21
    move-object/from16 v0, p0

    #@5a5
    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@5a7
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@5aa
    goto/16 :goto_9

    #@5ac
    .line 821
    :cond_22
    :try_start_3
    move-object/from16 v0, p0

    #@5ae
    iget-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@5b0
    if-eqz v3, :cond_23

    #@5b2
    .line 828
    const/4 v3, 0x1

    #@5b3
    move-object/from16 v0, p0

    #@5b5
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    #@5b8
    .line 832
    :cond_23
    const/4 v3, 0x0

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    invoke-virtual {v0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5be
    goto :goto_13

    #@5bf
    .line 835
    :catchall_0
    move-exception v3

    #@5c0
    .line 836
    const/4 v4, 0x0

    #@5c1
    :try_start_4
    move-object/from16 v0, p0

    #@5c3
    iput-boolean v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    #@5c5
    .line 837
    const/4 v4, 0x1

    #@5c6
    move-object/from16 v0, p0

    #@5c8
    iput-boolean v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    #@5ca
    .line 838
    if-eqz p3, :cond_24

    #@5cc
    .line 839
    move-object/from16 v0, p0

    #@5ce
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    #@5d0
    move-object/from16 v0, p0

    #@5d2
    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@5d4
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@5d7
    .line 841
    :cond_24
    move-object/from16 v0, p0

    #@5d9
    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    #@5db
    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    #@5de
    .line 835
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

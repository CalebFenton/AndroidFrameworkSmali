.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplay:Landroid/view/Display;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragInProgress:Z

.field mDragResult:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mFlags:I

.field mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v0, Landroid/graphics/Region;

    #@5
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    #@a
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    #@11
    .line 71
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    .line 72
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@15
    .line 73
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@17
    .line 74
    iput p4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@19
    .line 75
    iput-object p5, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@1b
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@22
    .line 70
    return-void
.end method

.method private getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;
    .locals 12
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 395
    const/4 v5, 0x0

    #@2
    .line 396
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v7, p1

    #@3
    .line 397
    .local v7, "x":I
    float-to-int v8, p2

    #@4
    .line 399
    .local v8, "y":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    #@8
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    #@b
    move-result-object v6

    #@c
    .line 400
    .local v6, "windows":Lcom/android/server/wm/WindowList;
    if-nez v6, :cond_0

    #@e
    .line 401
    return-object v11

    #@f
    .line 403
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    #@12
    move-result v0

    #@13
    .line 404
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    #@15
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    #@17
    .line 405
    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@1d
    .line 406
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1f
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@21
    .line 407
    .local v2, "flags":I
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@24
    move-result v9

    #@25
    if-nez v9, :cond_2

    #@27
    .line 404
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 411
    :cond_2
    and-int/lit8 v9, v2, 0x10

    #@2c
    if-nez v9, :cond_1

    #@2e
    .line 416
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    #@30
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    #@33
    .line 417
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    #@35
    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    #@38
    move-result v9

    #@39
    if-eqz v9, :cond_1

    #@3b
    .line 422
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    #@3d
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@40
    .line 424
    and-int/lit8 v4, v2, 0x28

    #@42
    .line 427
    .local v4, "touchFlags":I
    iget-object v9, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    #@44
    invoke-virtual {v9, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    #@47
    move-result v9

    #@48
    if-nez v9, :cond_3

    #@4a
    if-nez v4, :cond_1

    #@4c
    .line 429
    :cond_3
    move-object v5, v1

    #@4d
    .line 434
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "flags":I
    .end local v4    # "touchFlags":I
    .end local v5    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_4
    return-object v5
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .locals 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "result"    # Z

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    int-to-float v0, v0

    #@5
    sub-float v1, p2, v0

    #@7
    .line 441
    .local v1, "winX":F
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@b
    int-to-float v0, v0

    #@c
    sub-float v2, p3, v0

    #@e
    .line 442
    .local v2, "winY":F
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 443
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@14
    mul-float/2addr v1, v0

    #@15
    .line 444
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@17
    mul-float/2addr v2, v0

    #@18
    :cond_0
    move v0, p1

    #@19
    move-object v3, p4

    #@1a
    move-object v4, p5

    #@1b
    move-object v5, p6

    #@1c
    move v6, p7

    #@1d
    .line 446
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 11
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 215
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@4
    and-int/lit8 v0, v0, 0x1

    #@6
    if-nez v0, :cond_0

    #@8
    .line 216
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@a
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v10

    #@e
    .line 217
    .local v10, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@10
    if-eq v10, v0, :cond_0

    #@12
    .line 221
    return-void

    #@13
    .line 225
    .end local v10    # "winBinder":Landroid/os/IBinder;
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 226
    const/4 v1, 0x1

    #@1e
    move-object v0, p1

    #@1f
    move v2, p2

    #@20
    move v3, p3

    #@21
    move-object v5, p4

    #@22
    move-object v6, v4

    #@23
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@26
    move-result-object v9

    #@27
    .line 229
    .local v9, "event":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@29
    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@2c
    .line 231
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 236
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@34
    move-result v0

    #@35
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@37
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    #@39
    if-eq v0, v1, :cond_1

    #@3b
    .line 237
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@3e
    .line 212
    .end local v9    # "event":Landroid/view/DragEvent;
    :cond_1
    :goto_0
    return-void

    #@3f
    .line 232
    .restart local v9    # "event":Landroid/view/DragEvent;
    :catch_0
    move-exception v8

    #@40
    .line 233
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "WindowManager"

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "Unable to drag-start window "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 236
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@5d
    move-result v0

    #@5e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@60
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    #@62
    if-eq v0, v1, :cond_1

    #@64
    .line 237
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@67
    goto :goto_0

    #@68
    .line 234
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@69
    .line 236
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@6c
    move-result v1

    #@6d
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@6f
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    #@71
    if-eq v1, v2, :cond_2

    #@73
    .line 237
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@76
    .line 234
    :cond_2
    throw v0
.end method


# virtual methods
.method broadcastDragEndedLw()V
    .locals 11

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 267
    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@4
    .line 266
    const/4 v0, 0x4

    #@5
    move v2, v1

    #@6
    move-object v4, v3

    #@7
    move-object v5, v3

    #@8
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@b
    move-result-object v8

    #@c
    .line 268
    .local v8, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v10

    #@12
    .local v10, "ws$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v9

    #@1c
    check-cast v9, Lcom/android/server/wm/WindowState;

    #@1e
    .line 270
    .local v9, "ws":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@20
    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 271
    :catch_0
    move-exception v7

    #@25
    .line 272
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Unable to drag-end window "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0

    #@40
    .line 275
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v9    # "ws":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@45
    .line 276
    const/4 v0, 0x0

    #@46
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@48
    .line 277
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    #@4b
    .line 262
    return-void
.end method

.method broadcastDragStartedLw(FF)V
    .locals 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 186
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@7
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@a
    move-result-object v3

    #@b
    :cond_0
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    #@d
    .line 187
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@12
    .line 188
    const/4 v3, 0x1

    #@13
    iput-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@15
    .line 194
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    #@19
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    #@1c
    move-result-object v2

    #@1d
    .line 195
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_1

    #@1f
    .line 196
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@22
    move-result v0

    #@23
    .line 197
    .local v0, "N":I
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@26
    .line 198
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@2c
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    #@2e
    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    #@31
    .line 197
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 183
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method endDragLw()V
    .locals 2

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@4
    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    #@7
    .line 284
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    #@e
    .line 285
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    #@12
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@16
    .line 288
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    #@1d
    .line 289
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1f
    const/4 v1, 0x0

    #@20
    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@22
    .line 280
    return-void
.end method

.method getDragLayerLw()I
    .locals 2

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    const/16 v1, 0x7e0

    #@6
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@9
    move-result v0

    #@a
    mul-int/lit16 v0, v0, 0x2710

    #@c
    add-int/lit16 v0, v0, 0x3e8

    #@e
    return v0
.end method

.method notifyDropLw(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    #@3
    move-result-object v0

    #@4
    .line 360
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    #@6
    .line 363
    const/4 v1, 0x0

    #@7
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    #@9
    .line 364
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 370
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@e
    move-result v11

    #@f
    .line 371
    .local v11, "myPid":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@11
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v12

    #@15
    .line 373
    .local v12, "token":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@17
    .line 372
    const/4 v1, 0x3

    #@18
    .line 373
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    move v2, p1

    #@1c
    move v3, p2

    #@1d
    .line 372
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@20
    move-result-object v9

    #@21
    .line 375
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@23
    invoke-interface {v1, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@26
    .line 378
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@28
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@2a
    const/16 v2, 0x15

    #@2c
    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    #@2f
    .line 379
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@31
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@33
    const/16 v2, 0x15

    #@35
    invoke-virtual {v1, v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@38
    move-result-object v10

    #@39
    .line 380
    .local v10, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3d
    const-wide/16 v2, 0x1388

    #@3f
    invoke-virtual {v1, v10, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 385
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@44
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    #@46
    if-eq v11, v1, :cond_1

    #@48
    .line 386
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@4b
    .line 389
    :cond_1
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@4d
    .line 390
    const/4 v1, 0x0

    #@4e
    return v1

    #@4f
    .line 381
    .end local v10    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v8

    #@50
    .line 382
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "WindowManager"

    #@53
    new-instance v2, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v3, "can\'t send drop notification to win "

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 383
    const/4 v1, 0x1

    #@6b
    .line 385
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@6d
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    #@6f
    if-eq v11, v2, :cond_2

    #@71
    .line 386
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@74
    .line 383
    :cond_2
    return v1

    #@75
    .line 384
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@76
    .line 385
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@78
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    #@7a
    if-eq v11, v2, :cond_3

    #@7c
    .line 386
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@7f
    .line 384
    :cond_3
    throw v1
.end method

.method notifyMoveLw(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 293
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v10

    #@4
    .line 298
    .local v10, "myPid":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@7
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@b
    sub-float v1, p1, v1

    #@d
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@f
    sub-float v2, p2, v2

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 305
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@17
    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;

    #@1a
    move-result-object v12

    #@1b
    .line 312
    .local v12, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v12, :cond_0

    #@1d
    .line 314
    return-void

    #@1e
    .line 304
    .end local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v0

    #@1f
    .line 305
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@22
    .line 304
    throw v0

    #@23
    .line 316
    .restart local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@25
    and-int/lit8 v0, v0, 0x1

    #@27
    if-nez v0, :cond_1

    #@29
    .line 317
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2b
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v11

    #@2f
    .line 318
    .local v11, "touchedBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@31
    if-eq v11, v0, :cond_1

    #@33
    .line 321
    const/4 v12, 0x0

    #@34
    .line 326
    .end local v11    # "touchedBinder":Landroid/os/IBinder;
    .end local v12    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@36
    if-eq v12, v0, :cond_2

    #@38
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 331
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@3e
    const/4 v1, 0x6

    #@3f
    .line 332
    const/4 v4, 0x0

    #@40
    const/4 v5, 0x0

    #@41
    const/4 v6, 0x0

    #@42
    const/4 v7, 0x0

    #@43
    move v2, p1

    #@44
    move v3, p2

    #@45
    .line 331
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@48
    move-result-object v9

    #@49
    .line 333
    .local v9, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@4b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@4d
    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@50
    .line 334
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@52
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@54
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    #@56
    if-eq v10, v0, :cond_2

    #@58
    .line 335
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    #@5b
    .line 338
    .end local v9    # "evt":Landroid/view/DragEvent;
    :cond_2
    if-eqz v12, :cond_3

    #@5d
    .line 342
    const/4 v1, 0x2

    #@5e
    .line 343
    const/4 v4, 0x0

    #@5f
    const/4 v5, 0x0

    #@60
    const/4 v6, 0x0

    #@61
    const/4 v7, 0x0

    #@62
    move-object v0, v12

    #@63
    move v2, p1

    #@64
    move v3, p2

    #@65
    .line 342
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    #@68
    move-result-object v9

    #@69
    .line 344
    .restart local v9    # "evt":Landroid/view/DragEvent;
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@6b
    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@6e
    .line 345
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@70
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    #@72
    if-eq v10, v0, :cond_3

    #@74
    .line 346
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@77
    .line 352
    .end local v9    # "evt":Landroid/view/DragEvent;
    :cond_3
    :goto_0
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    #@79
    .line 292
    return-void

    #@7a
    .line 349
    :catch_0
    move-exception v8

    #@7b
    .line 350
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    #@7e
    const-string/jumbo v1, "can\'t send drag notification to windows"

    #@81
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    const-wide v10, 0x12a05f200L

    #@5
    const/4 v8, 0x1

    #@6
    const/4 v7, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    .line 96
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    #@a
    .line 98
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 99
    const-string/jumbo v2, "WindowManager"

    #@11
    const-string/jumbo v3, "Duplicate register of drag input channel"

    #@14
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 95
    :goto_0
    return-void

    #@18
    .line 101
    :cond_0
    const-string/jumbo v2, "drag"

    #@1b
    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@1e
    move-result-object v0

    #@1f
    .line 102
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    #@21
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@23
    .line 103
    aget-object v2, v0, v8

    #@25
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@27
    .line 104
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@29
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@2b
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@2d
    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    #@30
    .line 105
    new-instance v2, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@32
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@37
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@39
    .line 106
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3b
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3d
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v5

    #@41
    .line 105
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@44
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@46
    .line 108
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    #@48
    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@4b
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@4d
    .line 109
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@4f
    const-string/jumbo v3, "drag"

    #@52
    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@54
    .line 110
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@56
    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@58
    .line 113
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    #@5a
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@5c
    .line 114
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    #@5e
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    #@61
    move-result v4

    #@62
    .line 113
    invoke-direct {v2, v3, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@65
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@67
    .line 115
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@69
    const-string/jumbo v3, "drag"

    #@6c
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@6e
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@70
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@72
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@74
    .line 117
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@76
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    #@79
    move-result v3

    #@7a
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@7c
    .line 118
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@7e
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@80
    .line 119
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@82
    const/16 v3, 0x7e0

    #@84
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@86
    .line 120
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@88
    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@8a
    .line 122
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@8c
    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@8e
    .line 123
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@90
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@92
    .line 124
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@94
    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@96
    .line 125
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@98
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@9a
    .line 126
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@9c
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@9e
    .line 127
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@a3
    move-result v3

    #@a4
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@a6
    .line 128
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a8
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@ab
    move-result v3

    #@ac
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@ae
    .line 129
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@b0
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@b2
    .line 130
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@b4
    const/high16 v3, 0x3f800000    # 1.0f

    #@b6
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@b8
    .line 133
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@ba
    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@bc
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    #@bf
    .line 136
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@c1
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@c3
    .line 137
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@c5
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@c7
    .line 138
    new-instance v1, Landroid/graphics/Point;

    #@c9
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@cc
    .line 139
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    #@ce
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@d1
    .line 140
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@d3
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@d5
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@d7
    .line 141
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@d9
    iget v3, v1, Landroid/graphics/Point;->y:I

    #@db
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@dd
    .line 147
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@df
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    #@e2
    goto/16 :goto_0
.end method

.method reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 80
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 81
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@b
    .line 83
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@d
    .line 84
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    #@10
    .line 85
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    #@12
    .line 86
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    #@14
    .line 87
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    #@16
    .line 88
    iput v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    #@18
    iput v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    #@1a
    .line 89
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@1c
    .line 79
    return-void
.end method

.method sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 248
    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    #@2
    if-eqz v2, :cond_2

    #@4
    .line 250
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "ws$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@16
    .line 251
    .local v0, "ws":Lcom/android/server/wm/WindowState;
    if-ne v0, p1, :cond_0

    #@18
    .line 252
    return-void

    #@19
    .line 258
    .end local v0    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    #@1b
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    #@1d
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    #@1f
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    #@22
    .line 247
    .end local v1    # "ws$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method unregister()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 154
    const-string/jumbo v0, "WindowManager"

    #@8
    const-string/jumbo v1, "Unregister of nonexistent drag input channel"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 151
    :goto_0
    return-void

    #@f
    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@13
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@18
    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    #@1d
    .line 158
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    #@1f
    .line 159
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@21
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@24
    .line 160
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@26
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@29
    .line 161
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    #@2b
    .line 162
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    #@2d
    .line 164
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@2f
    .line 165
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@31
    .line 171
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@33
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    #@36
    goto :goto_0
.end method

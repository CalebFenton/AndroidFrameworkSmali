.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@6
    .line 58
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@d
    .line 61
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    #@14
    .line 64
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    .line 63
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 161
    const/16 v0, 0x10

    #@6
    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    #@8
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@a
    .line 163
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@c
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@e
    array-length v1, v1

    #@f
    if-lt v0, v1, :cond_1

    #@11
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@13
    .line 165
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@15
    mul-int/lit8 v1, v1, 0x2

    #@17
    .line 164
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@1f
    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@21
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@23
    add-int/lit8 v2, v1, 0x1

    #@25
    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@27
    aput-object p1, v0, v1

    #@29
    .line 159
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    .line 174
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    iput-object v3, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@9
    .line 175
    and-int/lit8 v3, p3, 0x28

    #@b
    if-nez v3, :cond_1

    #@d
    const/4 v1, 0x1

    #@e
    .line 177
    .local v1, "modal":Z
    :goto_0
    if-eqz v1, :cond_2

    #@10
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 179
    or-int/lit8 p3, p3, 0x20

    #@16
    .line 180
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    #@18
    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    #@1b
    .line 181
    iget-object v3, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@1d
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@22
    .line 186
    :goto_1
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@24
    .line 187
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@26
    .line 188
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    #@29
    move-result-wide v4

    #@2a
    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@2c
    .line 189
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@2e
    .line 190
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    #@31
    move-result v3

    #@32
    iput-boolean v3, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@34
    .line 191
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@36
    .line 192
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@38
    .line 193
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3a
    if-eqz v3, :cond_0

    #@3c
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3e
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@40
    :cond_0
    iput-boolean v2, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@42
    .line 194
    iget v2, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    #@44
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@46
    .line 195
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@48
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    #@4a
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@4c
    .line 196
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@4e
    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    #@50
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@52
    .line 197
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@54
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@56
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@58
    .line 199
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@5a
    .line 200
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@5c
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@5e
    .line 201
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@60
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@62
    .line 202
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@64
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@66
    .line 203
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@68
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@6a
    .line 205
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@6c
    cmpl-float v2, v2, v6

    #@6e
    if-eqz v2, :cond_3

    #@70
    .line 209
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@72
    div-float v2, v6, v2

    #@74
    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@76
    .line 215
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@79
    .line 172
    return-void

    #@7a
    .line 175
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v1    # "modal":Z
    :cond_1
    const/4 v1, 0x0

    #@7b
    .restart local v1    # "modal":Z
    goto :goto_0

    #@7c
    .line 184
    :cond_2
    iget-object v3, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@7e
    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@81
    goto :goto_1

    #@82
    .line 211
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_3
    iput v6, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@84
    goto :goto_2
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    #@0
    .prologue
    .line 219
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 220
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@6
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@c
    const/4 v2, 0x0

    #@d
    aput-object v2, v0, v1

    #@f
    goto :goto_0

    #@10
    .line 218
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    #@6
    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    #@b
    .line 488
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 383
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@4
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@6
    .line 384
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@a
    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 383
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    #@0
    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 461
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@7
    .line 462
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    #@a
    .line 455
    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    const/16 v1, 0x7e2

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

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 374
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@4
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@6
    .line 375
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@a
    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    #@d
    move-result-wide v2

    #@e
    return-wide v2

    #@f
    .line 374
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 14
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    const/4 v4, 0x0

    #@1
    .line 95
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    #@2
    .line 96
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    #@3
    .line 97
    .local v3, "aboveSystem":Z
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7
    monitor-enter v11

    #@8
    .line 98
    if-eqz p2, :cond_0

    #@a
    .line 99
    :try_start_0
    move-object/from16 v0, p2

    #@c
    iget-object v10, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@e
    move-object v0, v10

    #@f
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@11
    move-object v7, v0

    #@12
    .line 100
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_0

    #@14
    .line 101
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    .line 104
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    if-nez v4, :cond_1

    #@18
    if-eqz p1, :cond_1

    #@1a
    .line 105
    iget-object v10, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    #@1c
    move-object v0, v10

    #@1d
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    #@1f
    move-object v4, v0

    #@20
    .line 108
    :cond_1
    if-eqz v7, :cond_3

    #@22
    .line 109
    const-string/jumbo v10, "WindowManager"

    #@25
    new-instance v12, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v13, "Input event dispatching timed out sending to "

    #@2d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v12

    #@31
    .line 110
    iget-object v13, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@33
    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@36
    move-result-object v13

    #@37
    .line 109
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    .line 111
    const-string/jumbo v13, ".  Reason: "

    #@3e
    .line 109
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v12

    #@42
    move-object/from16 v0, p3

    #@44
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v12

    #@48
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v12

    #@4c
    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 115
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@53
    .line 116
    const/16 v12, 0x7d3

    #@55
    .line 115
    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@58
    move-result v6

    #@59
    .line 117
    .local v6, "systemAlertLayer":I
    iget v10, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@5b
    if-le v10, v6, :cond_2

    #@5d
    const/4 v3, 0x1

    #@5e
    .line 127
    .end local v6    # "systemAlertLayer":I
    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@60
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v10, v4, v7, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v11

    #@66
    .line 130
    if-eqz v4, :cond_5

    #@68
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@6a
    if-eqz v10, :cond_5

    #@6c
    .line 134
    :try_start_1
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@6e
    move-object/from16 v0, p3

    #@70
    invoke-interface {v10, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    #@73
    move-result v2

    #@74
    .line 135
    .local v2, "abort":Z
    if-nez v2, :cond_6

    #@76
    .line 138
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@78
    return-wide v10

    #@79
    .line 117
    .end local v2    # "abort":Z
    .restart local v6    # "systemAlertLayer":I
    :cond_2
    const/4 v3, 0x0

    #@7a
    goto :goto_0

    #@7b
    .line 118
    .end local v6    # "systemAlertLayer":I
    :cond_3
    if-eqz v4, :cond_4

    #@7d
    .line 119
    :try_start_2
    const-string/jumbo v10, "WindowManager"

    #@80
    new-instance v12, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v13, "Input event dispatching timed out sending to application "

    #@88
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v12

    #@8c
    .line 120
    iget-object v13, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@8e
    .line 119
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v12

    #@92
    .line 121
    const-string/jumbo v13, ".  Reason: "

    #@95
    .line 119
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v12

    #@99
    move-object/from16 v0, p3

    #@9b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v12

    #@9f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v12

    #@a3
    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a6
    goto :goto_0

    #@a7
    .line 97
    :catchall_0
    move-exception v10

    #@a8
    monitor-exit v11

    #@a9
    throw v10

    #@aa
    .line 123
    :cond_4
    :try_start_3
    const-string/jumbo v10, "WindowManager"

    #@ad
    new-instance v12, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v13, "Input event dispatching timed out .  Reason: "

    #@b5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v12

    #@b9
    move-object/from16 v0, p3

    #@bb
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v12

    #@bf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v12

    #@c3
    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c6
    goto :goto_0

    #@c7
    .line 142
    :cond_5
    if-eqz v7, :cond_6

    #@c9
    .line 146
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@cc
    move-result-object v10

    #@cd
    .line 147
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@cf
    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    #@d1
    .line 146
    move-object/from16 v0, p3

    #@d3
    invoke-interface {v10, v11, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@d6
    move-result-wide v8

    #@d7
    .line 148
    .local v8, "timeout":J
    const-wide/16 v10, 0x0

    #@d9
    cmp-long v10, v8, v10

    #@db
    if-ltz v10, :cond_6

    #@dd
    .line 151
    const-wide/32 v10, 0xf4240

    #@e0
    mul-long/2addr v10, v8

    #@e1
    return-wide v10

    #@e2
    .line 153
    .end local v8    # "timeout":J
    :catch_0
    move-exception v5

    #@e3
    .line 156
    :cond_6
    :goto_1
    const-wide/16 v10, 0x0

    #@e5
    return-wide v10

    #@e6
    .line 140
    :catch_1
    move-exception v5

    #@e7
    .local v5, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    #@7
    .line 349
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    #@5
    .line 320
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 322
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    #@f
    .line 323
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 317
    return-void

    #@16
    .line 320
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 73
    if-nez p1, :cond_0

    #@2
    .line 74
    return-void

    #@3
    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7
    monitor-enter v2

    #@8
    .line 78
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@c
    .line 79
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    #@e
    .line 80
    const-string/jumbo v1, "WindowManager"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "WINDOW DIED "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 81
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_1
    monitor-exit v2

    #@2e
    .line 72
    return-void

    #@2f
    .line 77
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    #@7
    .line 343
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 434
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 439
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@7
    .line 440
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@a
    .line 433
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    #@0
    .prologue
    .line 445
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 450
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@7
    .line 451
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@b
    .line 444
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 483
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    #@6
    .line 484
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    #@9
    .line 477
    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 422
    if-nez p1, :cond_0

    #@3
    .line 423
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    #@a
    .line 420
    :goto_0
    return-void

    #@b
    .line 425
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@d
    .line 426
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@13
    .line 427
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    #@15
    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@17
    .line 429
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@1b
    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    #@1e
    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 403
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    #@3
    if-eq p1, v0, :cond_1

    #@5
    .line 404
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 408
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@f
    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    #@11
    .line 411
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    #@13
    .line 412
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    #@16
    .line 414
    if-eqz p2, :cond_1

    #@18
    .line 415
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@1b
    .line 398
    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    #@0
    .prologue
    .line 225
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@3
    .line 224
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    #@0
    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 472
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@7
    .line 473
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    #@a
    .line 466
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 22
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 230
    if-nez p1, :cond_0

    #@2
    move-object/from16 v0, p0

    #@4
    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@6
    if-eqz v2, :cond_3

    #@8
    .line 233
    :cond_0
    const/4 v2, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@d
    .line 242
    const/4 v11, 0x0

    #@e
    .line 245
    .local v11, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@14
    if-eqz v2, :cond_4

    #@16
    const/4 v14, 0x1

    #@17
    .line 246
    .local v14, "inDrag":Z
    :goto_0
    if-eqz v14, :cond_1

    #@19
    .line 250
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@1f
    iget-object v13, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@21
    .line 251
    .local v13, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v13, :cond_5

    #@23
    .line 252
    move-object/from16 v0, p0

    #@25
    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@28
    .line 259
    .end local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@2e
    if-eqz v2, :cond_6

    #@30
    const/4 v10, 0x1

    #@31
    .line 262
    .local v10, "addInputConsumerHandle":Z
    :goto_2
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@35
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@3a
    move-result v16

    #@3b
    .line 263
    .local v16, "numDisplays":I
    const/4 v12, 0x0

    #@3c
    .local v12, "displayNdx":I
    :goto_3
    move/from16 v0, v16

    #@3e
    if-ge v12, v0, :cond_10

    #@40
    .line 264
    move-object/from16 v0, p0

    #@42
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@44
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@46
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    #@4c
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@4f
    move-result-object v20

    #@50
    .line 265
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    #@53
    move-result v2

    #@54
    add-int/lit8 v19, v2, -0x1

    #@56
    .local v19, "winNdx":I
    :goto_4
    if-ltz v19, :cond_f

    #@58
    .line 266
    move-object/from16 v0, v20

    #@5a
    move/from16 v1, v19

    #@5c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@62
    .line 267
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v15, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@64
    .line 268
    .local v15, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@66
    .line 269
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_2

    #@68
    if-nez v3, :cond_7

    #@6a
    .line 265
    :cond_2
    :goto_5
    add-int/lit8 v19, v19, -0x1

    #@6c
    goto :goto_4

    #@6d
    .line 231
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputConsumerHandle":Z
    .end local v11    # "disableWallpaperTouchEvents":Z
    .end local v12    # "displayNdx":I
    .end local v14    # "inDrag":Z
    .end local v15    # "inputChannel":Landroid/view/InputChannel;
    .end local v16    # "numDisplays":I
    .end local v19    # "winNdx":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    return-void

    #@6e
    .line 245
    .restart local v11    # "disableWallpaperTouchEvents":Z
    :cond_4
    const/4 v14, 0x0

    #@6f
    .restart local v14    # "inDrag":Z
    goto :goto_0

    #@70
    .line 254
    .restart local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_5
    const-string/jumbo v2, "WindowManager"

    #@73
    const-string/jumbo v21, "Drag is in progress but there is no drag window handle."

    #@76
    move-object/from16 v0, v21

    #@78
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    goto :goto_1

    #@7c
    .line 259
    .end local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_6
    const/4 v10, 0x0

    #@7d
    .restart local v10    # "addInputConsumerHandle":Z
    goto :goto_2

    #@7e
    .line 269
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v12    # "displayNdx":I
    .restart local v15    # "inputChannel":Landroid/view/InputChannel;
    .restart local v16    # "numDisplays":I
    .restart local v19    # "winNdx":I
    .restart local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@80
    if-nez v2, :cond_2

    #@82
    .line 273
    if-eqz v10, :cond_8

    #@84
    .line 274
    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8a
    move-object/from16 v21, v0

    #@8c
    move-object/from16 v0, v21

    #@8e
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@90
    move-object/from16 v21, v0

    #@92
    move-object/from16 v0, v21

    #@94
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@96
    move-object/from16 v21, v0

    #@98
    move-object/from16 v0, v21

    #@9a
    iget v0, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@9c
    move/from16 v21, v0

    #@9e
    move/from16 v0, v21

    #@a0
    if-gt v2, v0, :cond_8

    #@a2
    .line 275
    move-object/from16 v0, p0

    #@a4
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a6
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@a8
    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@aa
    move-object/from16 v0, p0

    #@ac
    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@af
    .line 276
    const/4 v10, 0x0

    #@b0
    .line 279
    :cond_8
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b2
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@b4
    .line 280
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b6
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b8
    move/from16 v18, v0

    #@ba
    .line 281
    .local v18, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@bc
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@be
    .line 283
    .local v6, "type":I
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    #@c2
    if-ne v4, v2, :cond_b

    #@c4
    const/4 v8, 0x1

    #@c5
    .line 284
    .local v8, "hasFocus":Z
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@c8
    move-result v7

    #@c9
    .line 285
    .local v7, "isVisible":Z
    move/from16 v0, v18

    #@cb
    and-int/lit16 v2, v0, 0x800

    #@cd
    if-eqz v2, :cond_9

    #@cf
    .line 288
    const/4 v11, 0x1

    #@d0
    .line 290
    :cond_9
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d4
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    #@d6
    if-ne v4, v2, :cond_d

    #@d8
    .line 291
    move/from16 v0, v18

    #@da
    and-int/lit16 v2, v0, 0x400

    #@dc
    if-nez v2, :cond_d

    #@de
    .line 292
    if-eqz v11, :cond_c

    #@e0
    const/4 v9, 0x0

    #@e1
    .line 293
    .local v9, "hasWallpaper":Z
    :goto_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@e4
    move-result v2

    #@e5
    if-nez v2, :cond_e

    #@e7
    const/16 v17, 0x1

    #@e9
    .line 297
    .local v17, "onDefaultDisplay":Z
    :goto_8
    if-eqz v14, :cond_a

    #@eb
    if-eqz v7, :cond_a

    #@ed
    if-eqz v17, :cond_a

    #@ef
    .line 298
    move-object/from16 v0, p0

    #@f1
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f3
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@f5
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    #@f8
    :cond_a
    move-object/from16 v2, p0

    #@fa
    .line 301
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    #@fd
    goto/16 :goto_5

    #@ff
    .line 283
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v17    # "onDefaultDisplay":Z
    :cond_b
    const/4 v8, 0x0

    #@100
    .restart local v8    # "hasFocus":Z
    goto :goto_6

    #@101
    .line 292
    .restart local v7    # "isVisible":Z
    :cond_c
    const/4 v9, 0x1

    #@102
    .restart local v9    # "hasWallpaper":Z
    goto :goto_7

    #@103
    .line 290
    .end local v9    # "hasWallpaper":Z
    :cond_d
    const/4 v9, 0x0

    #@104
    .restart local v9    # "hasWallpaper":Z
    goto :goto_7

    #@105
    .line 293
    :cond_e
    const/16 v17, 0x0

    #@107
    .restart local v17    # "onDefaultDisplay":Z
    goto :goto_8

    #@108
    .line 263
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v15    # "inputChannel":Landroid/view/InputChannel;
    .end local v17    # "onDefaultDisplay":Z
    .end local v18    # "privateFlags":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    #@10a
    goto/16 :goto_3

    #@10c
    .line 307
    .end local v19    # "winNdx":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_10
    move-object/from16 v0, p0

    #@10e
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@110
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@112
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@116
    move-object/from16 v21, v0

    #@118
    move-object/from16 v0, v21

    #@11a
    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    #@11d
    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    #@120
    .line 229
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    .line 330
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 331
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 333
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@9
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 337
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e
    monitor-exit v2

    #@f
    return v1

    #@10
    .line 330
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 334
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

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

.field private mInputFreezeReason:Ljava/lang/String;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    #@6
    .line 61
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@9
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@10
    .line 73
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    .line 72
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 170
    const/16 v0, 0x10

    #@6
    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    #@8
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@a
    .line 172
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@c
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@e
    array-length v1, v1

    #@f
    if-lt v0, v1, :cond_1

    #@11
    .line 173
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@13
    .line 174
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@15
    mul-int/lit8 v1, v1, 0x2

    #@17
    .line 173
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    #@1d
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@1f
    .line 176
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
    .line 168
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 183
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@8
    .line 184
    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@a
    invoke-virtual {p2, v1, p3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;I)I

    #@d
    move-result p3

    #@e
    .line 185
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@10
    .line 186
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@12
    .line 187
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@18
    .line 188
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@1a
    .line 189
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    #@1d
    move-result v1

    #@1e
    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@20
    .line 190
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@22
    .line 191
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@24
    .line 192
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@26
    if-eqz v1, :cond_1

    #@28
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2a
    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->paused:Z

    #@2c
    :goto_0
    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@2e
    .line 193
    iget v1, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    #@30
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@32
    .line 194
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@34
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    #@36
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@38
    .line 195
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@3a
    iget v1, v1, Lcom/android/server/wm/Session;->mUid:I

    #@3c
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@3e
    .line 196
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@40
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@42
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@44
    .line 198
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@46
    .line 199
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@48
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@4a
    .line 200
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@4c
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@4e
    .line 201
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@50
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@52
    .line 202
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@54
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@56
    .line 204
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDockedInEffect()Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_0

    #@5c
    .line 206
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@5e
    iget v2, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@60
    add-int/2addr v1, v2

    #@61
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@63
    .line 207
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@65
    iget v2, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@67
    add-int/2addr v1, v2

    #@68
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@6a
    .line 208
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@6c
    iget v2, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@6e
    add-int/2addr v1, v2

    #@6f
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@71
    .line 209
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@73
    iget v2, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@75
    add-int/2addr v1, v2

    #@76
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@78
    .line 212
    :cond_0
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@7a
    cmpl-float v1, v1, v4

    #@7c
    if-eqz v1, :cond_2

    #@7e
    .line 216
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@80
    div-float v1, v4, v1

    #@82
    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@84
    .line 225
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@87
    .line 181
    return-void

    #@88
    .line 192
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    #@89
    goto :goto_0

    #@8a
    .line 218
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_2
    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@8c
    goto :goto_1
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    #@0
    .prologue
    .line 229
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 230
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
    .line 228
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    #@0
    .prologue
    .line 536
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
    .line 535
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
    .line 425
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@4
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@6
    .line 426
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
    .line 425
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "mInputFreezeReason="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21
    .line 539
    :cond_0
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    #@0
    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 503
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@7
    .line 506
    const/4 v0, 0x6

    #@8
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    #@e
    .line 508
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    #@11
    .line 497
    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    #@0
    .prologue
    .line 432
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
    .line 416
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@4
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@6
    .line 417
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
    .line 416
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
    .line 399
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
    .line 407
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
    .line 103
    const/4 v4, 0x0

    #@1
    .line 104
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    #@2
    .line 105
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    #@3
    .line 106
    .local v3, "aboveSystem":Z
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7
    monitor-enter v11

    #@8
    .line 107
    if-eqz p2, :cond_0

    #@a
    .line 108
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
    .line 109
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_0

    #@14
    .line 110
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    .line 113
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    if-nez v4, :cond_1

    #@18
    if-eqz p1, :cond_1

    #@1a
    .line 114
    iget-object v10, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    #@1c
    move-object v0, v10

    #@1d
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    #@1f
    move-object v4, v0

    #@20
    .line 117
    :cond_1
    if-eqz v7, :cond_3

    #@22
    .line 118
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
    .line 119
    iget-object v13, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@33
    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@36
    move-result-object v13

    #@37
    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v12

    #@3b
    .line 120
    const-string/jumbo v13, ".  Reason: "

    #@3e
    .line 118
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
    .line 124
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@53
    .line 125
    const/16 v12, 0x7d3

    #@55
    .line 124
    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@58
    move-result v6

    #@59
    .line 126
    .local v6, "systemAlertLayer":I
    iget v10, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@5b
    if-le v10, v6, :cond_2

    #@5d
    const/4 v3, 0x1

    #@5e
    .line 136
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
    .line 139
    if-eqz v4, :cond_5

    #@68
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@6a
    if-eqz v10, :cond_5

    #@6c
    .line 143
    :try_start_1
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@6e
    move-object/from16 v0, p3

    #@70
    invoke-interface {v10, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    #@73
    move-result v2

    #@74
    .line 144
    .local v2, "abort":Z
    if-nez v2, :cond_6

    #@76
    .line 147
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@78
    return-wide v10

    #@79
    .line 126
    .end local v2    # "abort":Z
    .restart local v6    # "systemAlertLayer":I
    :cond_2
    const/4 v3, 0x0

    #@7a
    goto :goto_0

    #@7b
    .line 127
    .end local v6    # "systemAlertLayer":I
    :cond_3
    if-eqz v4, :cond_4

    #@7d
    .line 128
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
    .line 129
    iget-object v13, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    #@8e
    .line 128
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v12

    #@92
    .line 130
    const-string/jumbo v13, ".  Reason: "

    #@95
    .line 128
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
    .line 106
    :catchall_0
    move-exception v10

    #@a8
    monitor-exit v11

    #@a9
    throw v10

    #@aa
    .line 132
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
    .line 151
    :cond_5
    if-eqz v7, :cond_6

    #@c9
    .line 155
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@cc
    move-result-object v10

    #@cd
    .line 156
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@cf
    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    #@d1
    .line 155
    move-object/from16 v0, p3

    #@d3
    invoke-interface {v10, v11, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@d6
    move-result-wide v8

    #@d7
    .line 157
    .local v8, "timeout":J
    const-wide/16 v10, 0x0

    #@d9
    cmp-long v10, v8, v10

    #@db
    if-ltz v10, :cond_6

    #@dd
    .line 160
    const-wide/32 v10, 0xf4240

    #@e0
    mul-long/2addr v10, v8

    #@e1
    return-wide v10

    #@e2
    .line 162
    .end local v8    # "timeout":J
    :catch_0
    move-exception v5

    #@e3
    .line 165
    :cond_6
    :goto_1
    const-wide/16 v10, 0x0

    #@e5
    return-wide v10

    #@e6
    .line 149
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
    .line 392
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    #@7
    .line 391
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    #@5
    .line 362
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 364
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    #@f
    .line 365
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@11
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 359
    return-void

    #@16
    .line 362
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
    .line 82
    if-nez p1, :cond_0

    #@2
    .line 83
    return-void

    #@3
    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@7
    monitor-enter v2

    #@8
    .line 87
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@c
    .line 88
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    #@e
    .line 89
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
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_1
    monitor-exit v2

    #@2e
    .line 81
    return-void

    #@2f
    .line 86
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
    .line 386
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    #@7
    .line 385
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 476
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 481
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@7
    .line 482
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@a
    .line 475
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    #@0
    .prologue
    .line 487
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 492
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    #@7
    .line 493
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@b
    .line 486
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 530
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    #@6
    .line 531
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    #@9
    .line 524
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
    .line 464
    if-nez p1, :cond_0

    #@3
    .line 465
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@7
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    #@a
    .line 462
    :goto_0
    return-void

    #@b
    .line 467
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@d
    .line 468
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@13
    .line 469
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    #@15
    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@17
    .line 471
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
    .line 445
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    #@3
    if-eq p1, v0, :cond_1

    #@5
    .line 446
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 450
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@f
    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    #@11
    .line 453
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    #@13
    .line 454
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    #@16
    .line 456
    if-eqz p2, :cond_1

    #@18
    .line 457
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    #@1b
    .line 440
    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    #@0
    .prologue
    .line 235
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@3
    .line 234
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    #@0
    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 518
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    #@7
    .line 519
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    #@a
    .line 520
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    #@d
    .line 512
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 26
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 240
    if-nez p1, :cond_0

    #@2
    move-object/from16 v0, p0

    #@4
    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@6
    if-eqz v2, :cond_4

    #@8
    .line 243
    :cond_0
    const/4 v2, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    #@d
    .line 252
    const/4 v12, 0x0

    #@e
    .line 255
    .local v12, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@14
    if-eqz v2, :cond_5

    #@16
    const/16 v16, 0x1

    #@18
    .line 256
    .local v16, "inDrag":Z
    :goto_0
    if-eqz v16, :cond_1

    #@1a
    .line 260
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@20
    iget-object v15, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@22
    .line 261
    .local v15, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_6

    #@24
    .line 262
    move-object/from16 v0, p0

    #@26
    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@29
    .line 269
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    #@2f
    if-eqz v2, :cond_7

    #@31
    const/16 v17, 0x1

    #@33
    .line 270
    .local v17, "inPositioning":Z
    :goto_2
    if-eqz v17, :cond_2

    #@35
    .line 274
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@39
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    #@3b
    iget-object v15, v2, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@3d
    .line 275
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_8

    #@3f
    .line 276
    move-object/from16 v0, p0

    #@41
    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@44
    .line 283
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@48
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@4a
    if-eqz v2, :cond_9

    #@4c
    const/4 v10, 0x1

    #@4d
    .line 285
    .local v10, "addInputConsumerHandle":Z
    :goto_4
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@53
    if-eqz v2, :cond_a

    #@55
    const/4 v11, 0x1

    #@56
    .line 288
    .local v11, "addWallpaperInputConsumerHandle":Z
    :goto_5
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@5c
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@5f
    move-result v19

    #@60
    .line 289
    .local v19, "numDisplays":I
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@64
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@66
    move-object/from16 v22, v0

    #@68
    .line 290
    .local v22, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    const/4 v14, 0x0

    #@69
    .local v14, "displayNdx":I
    :goto_6
    move/from16 v0, v19

    #@6b
    if-ge v14, v0, :cond_15

    #@6d
    .line 291
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@71
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    #@73
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@76
    move-result-object v13

    #@77
    check-cast v13, Lcom/android/server/wm/DisplayContent;

    #@79
    .line 292
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@7c
    move-result-object v24

    #@7d
    .line 293
    .local v24, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowList;->size()I

    #@80
    move-result v2

    #@81
    add-int/lit8 v23, v2, -0x1

    #@83
    .local v23, "winNdx":I
    :goto_7
    if-ltz v23, :cond_14

    #@85
    .line 294
    move-object/from16 v0, v24

    #@87
    move/from16 v1, v23

    #@89
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v4

    #@8d
    check-cast v4, Lcom/android/server/wm/WindowState;

    #@8f
    .line 295
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@91
    move-object/from16 v18, v0

    #@93
    .line 296
    .local v18, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@95
    .line 297
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v18, :cond_3

    #@97
    if-nez v3, :cond_b

    #@99
    .line 293
    :cond_3
    :goto_8
    add-int/lit8 v23, v23, -0x1

    #@9b
    goto :goto_7

    #@9c
    .line 241
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputConsumerHandle":Z
    .end local v11    # "addWallpaperInputConsumerHandle":Z
    .end local v12    # "disableWallpaperTouchEvents":Z
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "displayNdx":I
    .end local v16    # "inDrag":Z
    .end local v17    # "inPositioning":Z
    .end local v18    # "inputChannel":Landroid/view/InputChannel;
    .end local v19    # "numDisplays":I
    .end local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .end local v23    # "winNdx":I
    .end local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    return-void

    #@9d
    .line 255
    .restart local v12    # "disableWallpaperTouchEvents":Z
    :cond_5
    const/16 v16, 0x0

    #@9f
    goto/16 :goto_0

    #@a1
    .line 264
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v16    # "inDrag":Z
    :cond_6
    const-string/jumbo v2, "WindowManager"

    #@a4
    const-string/jumbo v25, "Drag is in progress but there is no drag window handle."

    #@a7
    move-object/from16 v0, v25

    #@a9
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    goto/16 :goto_1

    #@ae
    .line 269
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_7
    const/16 v17, 0x0

    #@b0
    goto :goto_2

    #@b1
    .line 278
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v17    # "inPositioning":Z
    :cond_8
    const-string/jumbo v2, "WindowManager"

    #@b4
    .line 279
    const-string/jumbo v25, "Repositioning is in progress but there is no drag window handle."

    #@b7
    .line 278
    move-object/from16 v0, v25

    #@b9
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    goto :goto_3

    #@bd
    .line 283
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_9
    const/4 v10, 0x0

    #@be
    .restart local v10    # "addInputConsumerHandle":Z
    goto :goto_4

    #@bf
    .line 285
    :cond_a
    const/4 v11, 0x0

    #@c0
    .restart local v11    # "addWallpaperInputConsumerHandle":Z
    goto :goto_5

    #@c1
    .line 297
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "displayNdx":I
    .restart local v18    # "inputChannel":Landroid/view/InputChannel;
    .restart local v19    # "numDisplays":I
    .restart local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .restart local v23    # "winNdx":I
    .restart local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_b
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@c3
    if-nez v2, :cond_3

    #@c5
    .line 298
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    #@c8
    move-result v2

    #@c9
    .line 297
    if-nez v2, :cond_3

    #@cb
    .line 302
    if-eqz v10, :cond_c

    #@cd
    .line 303
    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d3
    move-object/from16 v25, v0

    #@d5
    move-object/from16 v0, v25

    #@d7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@d9
    move-object/from16 v25, v0

    #@db
    move-object/from16 v0, v25

    #@dd
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@df
    move-object/from16 v25, v0

    #@e1
    move-object/from16 v0, v25

    #@e3
    iget v0, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@e5
    move/from16 v25, v0

    #@e7
    move/from16 v0, v25

    #@e9
    if-gt v2, v0, :cond_c

    #@eb
    .line 304
    move-object/from16 v0, p0

    #@ed
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ef
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@f1
    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@f3
    move-object/from16 v0, p0

    #@f5
    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@f8
    .line 305
    const/4 v10, 0x0

    #@f9
    .line 308
    :cond_c
    if-eqz v11, :cond_d

    #@fb
    .line 309
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@fd
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@ff
    const/16 v25, 0x7dd

    #@101
    move/from16 v0, v25

    #@103
    if-ne v2, v0, :cond_d

    #@105
    .line 311
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@109
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@10b
    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@10d
    move-object/from16 v0, p0

    #@10f
    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@112
    .line 312
    const/4 v11, 0x0

    #@113
    .line 316
    :cond_d
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@115
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@117
    .line 317
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@119
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@11b
    move/from16 v21, v0

    #@11d
    .line 318
    .local v21, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@11f
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@121
    .line 320
    .local v6, "type":I
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    #@125
    if-ne v4, v2, :cond_10

    #@127
    const/4 v8, 0x1

    #@128
    .line 321
    .local v8, "hasFocus":Z
    :goto_9
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@12b
    move-result v7

    #@12c
    .line 322
    .local v7, "isVisible":Z
    move/from16 v0, v21

    #@12e
    and-int/lit16 v2, v0, 0x800

    #@130
    if-eqz v2, :cond_e

    #@132
    .line 325
    const/4 v12, 0x1

    #@133
    .line 327
    :cond_e
    move-object/from16 v0, v22

    #@135
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    #@138
    move-result v2

    #@139
    if-eqz v2, :cond_12

    #@13b
    .line 328
    move/from16 v0, v21

    #@13d
    and-int/lit16 v2, v0, 0x400

    #@13f
    if-nez v2, :cond_12

    #@141
    .line 329
    if-eqz v12, :cond_11

    #@143
    const/4 v9, 0x0

    #@144
    .line 330
    .local v9, "hasWallpaper":Z
    :goto_a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@147
    move-result v2

    #@148
    if-nez v2, :cond_13

    #@14a
    const/16 v20, 0x1

    #@14c
    .line 334
    .local v20, "onDefaultDisplay":Z
    :goto_b
    if-eqz v16, :cond_f

    #@14e
    if-eqz v7, :cond_f

    #@150
    if-eqz v20, :cond_f

    #@152
    .line 335
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@156
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    #@158
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    #@15b
    :cond_f
    move-object/from16 v2, p0

    #@15d
    .line 338
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    #@160
    goto/16 :goto_8

    #@162
    .line 320
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v20    # "onDefaultDisplay":Z
    :cond_10
    const/4 v8, 0x0

    #@163
    .restart local v8    # "hasFocus":Z
    goto :goto_9

    #@164
    .line 329
    .restart local v7    # "isVisible":Z
    :cond_11
    const/4 v9, 0x1

    #@165
    .restart local v9    # "hasWallpaper":Z
    goto :goto_a

    #@166
    .line 327
    .end local v9    # "hasWallpaper":Z
    :cond_12
    const/4 v9, 0x0

    #@167
    .restart local v9    # "hasWallpaper":Z
    goto :goto_a

    #@168
    .line 330
    :cond_13
    const/16 v20, 0x0

    #@16a
    .restart local v20    # "onDefaultDisplay":Z
    goto :goto_b

    #@16b
    .line 290
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v18    # "inputChannel":Landroid/view/InputChannel;
    .end local v20    # "onDefaultDisplay":Z
    .end local v21    # "privateFlags":I
    :cond_14
    add-int/lit8 v14, v14, 0x1

    #@16d
    goto/16 :goto_6

    #@16f
    .line 343
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v23    # "winNdx":I
    .end local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_15
    if-eqz v11, :cond_16

    #@171
    .line 345
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@175
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    #@177
    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@179
    move-object/from16 v0, p0

    #@17b
    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    #@17e
    .line 349
    :cond_16
    move-object/from16 v0, p0

    #@180
    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    #@182
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@184
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    #@188
    move-object/from16 v25, v0

    #@18a
    move-object/from16 v0, v25

    #@18c
    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    #@18f
    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    #@192
    .line 239
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    .line 372
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 373
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 375
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    #@9
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 379
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
    .line 372
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 376
    :catch_0
    move-exception v0

    #@14
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

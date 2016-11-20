.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;,
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    }
.end annotation


# static fields
.field private static final sTempFloats:[F


# instance fields
.field private mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [F

    #@4
    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@6
    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@5
    .line 78
    return-void
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 217
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@5
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    #@7
    const/4 v2, 0x0

    #@8
    aput v1, v0, v2

    #@a
    .line 218
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    #@10
    const/4 v2, 0x3

    #@11
    aput v1, v0, v2

    #@13
    .line 219
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@15
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@17
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    #@19
    const/4 v2, 0x1

    #@1a
    aput v1, v0, v2

    #@1c
    .line 220
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@1e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@20
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    #@22
    const/4 v2, 0x4

    #@23
    aput v1, v0, v2

    #@25
    .line 221
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@27
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@29
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@2b
    int-to-float v1, v1

    #@2c
    const/4 v2, 0x2

    #@2d
    aput v1, v0, v2

    #@2f
    .line 222
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@31
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@33
    iget v1, v1, Landroid/graphics/Point;->y:I

    #@35
    int-to-float v1, v1

    #@36
    const/4 v2, 0x5

    #@37
    aput v1, v0, v2

    #@39
    .line 223
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@3b
    const/4 v1, 0x6

    #@3c
    aput v3, v0, v1

    #@3e
    .line 224
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@40
    const/4 v1, 0x7

    #@41
    aput v3, v0, v1

    #@43
    .line 225
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@45
    const/high16 v1, 0x3f800000    # 1.0f

    #@47
    const/16 v2, 0x8

    #@49
    aput v1, v0, v2

    #@4b
    .line 226
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@4d
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    #@50
    .line 216
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 198
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    #@9
    .line 196
    :cond_0
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    #@9
    .line 127
    :cond_0
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 205
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 207
    :cond_0
    return-object v1
.end method

.method public hasCallbacksLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 211
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 212
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 211
    :cond_0
    :goto_0
    return v0

    #@a
    .line 212
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 160
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@9
    .line 158
    :cond_0
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    #@9
    .line 133
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 151
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    #@9
    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 149
    :cond_1
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 191
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@9
    .line 187
    :cond_0
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .locals 3

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    .line 178
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@3
    monitor-enter v1

    #@4
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    monitor-exit v1

    #@7
    .line 181
    if-eqz v0, :cond_0

    #@9
    .line 182
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    #@c
    .line 174
    :cond_0
    return-void

    #@d
    .line 178
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :catchall_0
    move-exception v2

    #@e
    monitor-exit v1

    #@f
    throw v2
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 142
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    #@9
    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 145
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 140
    :cond_1
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 167
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@9
    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 170
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 165
    :cond_1
    return-void
.end method

.method public setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    if-eqz p1, :cond_1

    #@3
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Magnification callbacks already set!"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 91
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@12
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@14
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@19
    .line 86
    :goto_0
    return-void

    #@1a
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v1, "Magnification callbacks already cleared!"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@29
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    #@2c
    .line 97
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2e
    goto :goto_0
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    #@9
    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 118
    :cond_1
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 102
    if-eqz p1, :cond_1

    #@3
    .line 103
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    .line 105
    const-string/jumbo v1, "Windows for accessibility callback already set!"

    #@c
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 107
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@12
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@14
    .line 107
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@19
    .line 101
    :goto_0
    return-void

    #@1a
    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    .line 112
    const-string/jumbo v1, "Windows for accessibility callback already cleared!"

    #@23
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 114
    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@29
    goto :goto_0
.end method

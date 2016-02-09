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
    .line 70
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [F

    #@4
    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@6
    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@5
    .line 72
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
    .line 205
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
    .line 206
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
    .line 207
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
    .line 208
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
    .line 209
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@27
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@29
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@2b
    const/4 v2, 0x2

    #@2c
    aput v1, v0, v2

    #@2e
    .line 210
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@30
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@32
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@34
    const/4 v2, 0x5

    #@35
    aput v1, v0, v2

    #@37
    .line 211
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@39
    const/4 v1, 0x6

    #@3a
    aput v3, v0, v1

    #@3c
    .line 212
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@3e
    const/4 v1, 0x7

    #@3f
    aput v3, v0, v1

    #@41
    .line 213
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@43
    const/high16 v1, 0x3f800000    # 1.0f

    #@45
    const/16 v2, 0x8

    #@47
    aput v1, v0, v2

    #@49
    .line 214
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    #@4b
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    #@4e
    .line 204
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 186
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    #@9
    .line 184
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
    .line 192
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 195
    :cond_0
    return-object v1
.end method

.method public hasCallbacksLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 199
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 200
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 199
    :cond_0
    :goto_0
    return v0

    #@a
    .line 200
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
    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@9
    .line 146
    :cond_0
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    #@9
    .line 121
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    #@9
    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 142
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 137
    :cond_1
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 179
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@9
    .line 175
    :cond_0
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .locals 3

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    .line 166
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@3
    monitor-enter v1

    #@4
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    monitor-exit v1

    #@7
    .line 169
    if-eqz v0, :cond_0

    #@9
    .line 170
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    #@c
    .line 162
    :cond_0
    return-void

    #@d
    .line 166
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
    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 130
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    #@9
    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 128
    :cond_1
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 155
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    #@9
    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 153
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
    .line 81
    if-eqz p1, :cond_1

    #@3
    .line 82
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Magnification callbacks already set!"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 85
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@12
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@14
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@19
    .line 80
    :goto_0
    return-void

    #@1a
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v1, "Magnification callbacks already cleared!"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@29
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    #@2c
    .line 91
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2e
    goto :goto_0
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    #@9
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 117
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    #@12
    .line 112
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
    .line 96
    if-eqz p1, :cond_1

    #@3
    .line 97
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    .line 99
    const-string/jumbo v1, "Windows for accessibility callback already set!"

    #@c
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 101
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@12
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    #@14
    .line 101
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@19
    .line 95
    :goto_0
    return-void

    #@1a
    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    .line 106
    const-string/jumbo v1, "Windows for accessibility callback already cleared!"

    #@23
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 108
    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    #@29
    goto :goto_0
.end method

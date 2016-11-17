.class Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_PERSISTED_SCALE:F = 2.0f

.field private static final MIN_SCALE:F = 1.0f


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private mRegistered:Z

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController;Landroid/graphics/Region;Z)V
    .locals 0
    .param p1, "magnified"    # Landroid/graphics/Region;
    .param p2, "updateSpec"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationController;IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@9
    .line 86
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@f
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    #@11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@16
    .line 89
    new-instance v0, Landroid/graphics/Rect;

    #@18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@1d
    .line 90
    new-instance v0, Landroid/graphics/Rect;

    #@1f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    #@24
    .line 102
    const/4 v0, -0x1

    #@25
    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    #@27
    .line 110
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@29
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    #@2f
    .line 112
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    #@31
    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    #@34
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    #@36
    .line 113
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@38
    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@3d
    .line 114
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@3f
    .line 115
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@41
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@43
    const/4 v2, 0x0

    #@44
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)V

    #@47
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@49
    .line 109
    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    #@3
    move-result v2

    #@4
    .line 671
    .local v2, "scale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    #@7
    move-result v0

    #@8
    .line 672
    .local v0, "offsetX":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    #@b
    move-result v1

    #@c
    .line 673
    .local v1, "offsetY":F
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    #@f
    .line 674
    neg-float v3, v0

    #@10
    float-to-int v3, v3

    #@11
    neg-float v4, v1

    #@12
    float-to-int v4, v4

    #@13
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@16
    .line 675
    const/high16 v3, 0x3f800000    # 1.0f

    #@18
    div-float/2addr v3, v2

    #@19
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    #@1c
    .line 669
    return-void
.end method

.method private getMinOffsetXLocked()F
    .locals 2

    #@0
    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v1

    #@6
    int-to-float v0, v1

    #@7
    .line 621
    .local v0, "viewportWidth":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@9
    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    #@b
    mul-float/2addr v1, v0

    #@c
    sub-float v1, v0, v1

    #@e
    return v1
.end method

.method private getMinOffsetYLocked()F
    .locals 2

    #@0
    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@5
    move-result v1

    #@6
    int-to-float v0, v1

    #@7
    .line 626
    .local v0, "viewportHeight":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@9
    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    #@b
    mul-float/2addr v1, v0

    #@c
    sub-float v1, v0, v1

    #@e
    return v1
.end method

.method private isScreenMagnificationAutoUpdateEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 647
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    .line 648
    const-string/jumbo v2, "accessibility_display_magnification_auto_update"

    #@6
    .line 647
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    if-ne v1, v0, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private onMagnificationChangedLocked()V
    .locals 5

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    #@5
    .line 521
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@7
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@9
    .line 522
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    #@c
    move-result v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    #@10
    move-result v3

    #@11
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    #@14
    move-result v4

    #@15
    .line 521
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    #@18
    .line 523
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    #@1a
    if-eqz v0, :cond_0

    #@1c
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 519
    :cond_0
    :goto_0
    return-void

    #@23
    .line 524
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    #@26
    goto :goto_0
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;Z)V
    .locals 12
    .param p1, "magnified"    # Landroid/graphics/Region;
    .param p2, "updateSpec"    # Z

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 190
    iget-object v11, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v11

    #@5
    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v0, :cond_0

    #@9
    monitor-exit v11

    #@a
    .line 193
    return-void

    #@b
    .line 195
    :cond_0
    const/4 v7, 0x0

    #@c
    .line 196
    .local v7, "magnificationChanged":Z
    const/4 v6, 0x0

    #@d
    .line 198
    .local v6, "boundsChanged":Z
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@f
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 199
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@17
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1a
    .line 200
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@1c
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {v0, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@21
    .line 201
    const/4 v6, 0x1

    #@22
    .line 203
    :cond_1
    if-eqz p2, :cond_2

    #@24
    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@26
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    #@29
    move-result-object v10

    #@2a
    .line 205
    .local v10, "sentSpec":Landroid/view/MagnificationSpec;
    iget v1, v10, Landroid/view/MagnificationSpec;->scale:F

    #@2c
    .line 206
    .local v1, "scale":F
    iget v8, v10, Landroid/view/MagnificationSpec;->offsetX:F

    #@2e
    .line 207
    .local v8, "offsetX":F
    iget v9, v10, Landroid/view/MagnificationSpec;->offsetY:F

    #@30
    .line 210
    .local v9, "offsetY":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@35
    move-result v0

    #@36
    int-to-float v0, v0

    #@37
    div-float/2addr v0, v5

    #@38
    .line 211
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@3a
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@3c
    int-to-float v4, v4

    #@3d
    .line 210
    add-float/2addr v0, v4

    #@3e
    sub-float/2addr v0, v8

    #@3f
    div-float v2, v0, v1

    #@41
    .line 212
    .local v2, "centerX":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@43
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@46
    move-result v0

    #@47
    int-to-float v0, v0

    #@48
    div-float/2addr v0, v5

    #@49
    .line 213
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@4b
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@4d
    int-to-float v4, v4

    #@4e
    .line 212
    add-float/2addr v0, v4

    #@4f
    sub-float/2addr v0, v9

    #@50
    div-float v3, v0, v1

    #@52
    .line 215
    .local v3, "centerY":F
    const/4 v4, 0x0

    #@53
    const/4 v5, -0x1

    #@54
    move-object v0, p0

    #@55
    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    move-result v7

    #@59
    .line 219
    .end local v1    # "scale":F
    .end local v2    # "centerX":F
    .end local v3    # "centerY":F
    .end local v7    # "magnificationChanged":Z
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    .end local v10    # "sentSpec":Landroid/view/MagnificationSpec;
    :cond_2
    if-eqz v6, :cond_3

    #@5b
    if-eqz p2, :cond_3

    #@5d
    if-eqz v7, :cond_4

    #@5f
    :cond_3
    :goto_0
    monitor-exit v11

    #@60
    .line 189
    return-void

    #@61
    .line 220
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    goto :goto_0

    #@65
    .line 190
    .end local v6    # "boundsChanged":Z
    :catchall_0
    move-exception v0

    #@66
    monitor-exit v11

    #@67
    throw v0
.end method

.method private requestRectangleOnScreen(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 679
    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 680
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@5
    .line 681
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    #@8
    .line 682
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    monitor-exit v7

    #@f
    .line 683
    return-void

    #@10
    .line 686
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    #@12
    .line 687
    .local v1, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    #@15
    .line 691
    sub-int v6, p3, p1

    #@17
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@1a
    move-result v8

    #@1b
    if-le v6, v8, :cond_2

    #@1d
    .line 693
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@20
    move-result-object v6

    #@21
    .line 692
    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@24
    move-result v0

    #@25
    .line 694
    .local v0, "direction":I
    if-nez v0, :cond_1

    #@27
    .line 695
    iget v6, v1, Landroid/graphics/Rect;->left:I

    #@29
    sub-int v6, p1, v6

    #@2b
    int-to-float v4, v6

    #@2c
    .line 707
    .end local v0    # "direction":I
    .local v4, "scrollX":F
    :goto_0
    sub-int v6, p4, p2

    #@2e
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@31
    move-result v8

    #@32
    if-le v6, v8, :cond_5

    #@34
    .line 708
    iget v6, v1, Landroid/graphics/Rect;->top:I

    #@36
    sub-int v6, p2, v6

    #@38
    int-to-float v5, v6

    #@39
    .line 717
    .local v5, "scrollY":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    #@3c
    move-result v3

    #@3d
    .line 718
    .local v3, "scale":F
    mul-float v6, v4, v3

    #@3f
    mul-float v8, v5, v3

    #@41
    const/4 v9, -0x1

    #@42
    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegionCenter(FFI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    monitor-exit v7

    #@46
    .line 678
    return-void

    #@47
    .line 697
    .end local v3    # "scale":F
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    .restart local v0    # "direction":I
    :cond_1
    :try_start_2
    iget v6, v1, Landroid/graphics/Rect;->right:I

    #@49
    sub-int v6, p3, v6

    #@4b
    int-to-float v4, v6

    #@4c
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@4d
    .line 699
    .end local v0    # "direction":I
    .end local v4    # "scrollX":F
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->left:I

    #@4f
    if-ge p1, v6, :cond_3

    #@51
    .line 700
    iget v6, v1, Landroid/graphics/Rect;->left:I

    #@53
    sub-int v6, p1, v6

    #@55
    int-to-float v4, v6

    #@56
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@57
    .line 701
    .end local v4    # "scrollX":F
    :cond_3
    iget v6, v1, Landroid/graphics/Rect;->right:I

    #@59
    if-le p3, v6, :cond_4

    #@5b
    .line 702
    iget v6, v1, Landroid/graphics/Rect;->right:I

    #@5d
    sub-int v6, p3, v6

    #@5f
    int-to-float v4, v6

    #@60
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@61
    .line 704
    .end local v4    # "scrollX":F
    :cond_4
    const/4 v4, 0x0

    #@62
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@63
    .line 709
    :cond_5
    iget v6, v1, Landroid/graphics/Rect;->top:I

    #@65
    if-ge p2, v6, :cond_6

    #@67
    .line 710
    iget v6, v1, Landroid/graphics/Rect;->top:I

    #@69
    sub-int v6, p2, v6

    #@6b
    int-to-float v5, v6

    #@6c
    .restart local v5    # "scrollY":F
    goto :goto_1

    #@6d
    .line 711
    .end local v5    # "scrollY":F
    :cond_6
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    #@6f
    if-le p4, v6, :cond_7

    #@71
    .line 712
    iget v6, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    sub-int v6, p4, v6

    #@75
    int-to-float v5, v6

    #@76
    .restart local v5    # "scrollY":F
    goto :goto_1

    #@77
    .line 714
    .end local v5    # "scrollY":F
    :cond_7
    const/4 v5, 0x0

    #@78
    .restart local v5    # "scrollY":F
    goto :goto_1

    #@79
    .line 679
    .end local v1    # "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    .end local v2    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    :catchall_0
    move-exception v6

    #@7a
    monitor-exit v7

    #@7b
    throw v6
.end method

.method private resetLocked(Z)Z
    .locals 3
    .param p1, "animate"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 373
    iget-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 374
    return v0

    #@6
    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@8
    .line 377
    .local v1, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 378
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 379
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    #@13
    .line 380
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    #@16
    .line 382
    :cond_1
    const/4 v2, -0x1

    #@17
    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    #@19
    .line 383
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@1b
    invoke-virtual {v2, v1, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpec(Landroid/view/MagnificationSpec;Z)V

    #@1e
    .line 384
    return v0

    #@1f
    .line 377
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x1

    #@20
    goto :goto_0
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .locals 3
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    #@0
    .prologue
    .line 477
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    #@3
    move-result v0

    #@4
    .line 478
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@6
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@8
    invoke-virtual {v1, v2, p4}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpec(Landroid/view/MagnificationSpec;Z)V

    #@b
    .line 479
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v1, -0x1

    #@12
    if-eq p5, v1, :cond_0

    #@14
    .line 480
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    #@16
    .line 482
    :cond_0
    return v0
.end method

.method private unregisterInternalLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    #@a
    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    #@c
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    #@f
    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@11
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->unregister()V

    #@14
    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    #@19
    .line 169
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    #@1b
    .line 171
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    #@1d
    .line 163
    return-void
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .locals 11
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    #@0
    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    .line 571
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 572
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    #@d
    move-result p2

    #@e
    .line 574
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_1

    #@14
    .line 575
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    #@17
    move-result p3

    #@18
    .line 577
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_2

    #@1e
    .line 578
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    #@21
    move-result p1

    #@22
    .line 582
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    #@25
    move-result v7

    #@26
    if-nez v7, :cond_3

    #@28
    .line 583
    return v8

    #@29
    .line 587
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2b
    .line 588
    .local v1, "currSpec":Landroid/view/MagnificationSpec;
    const/4 v0, 0x0

    #@2c
    .line 590
    .local v0, "changed":Z
    const/high16 v7, 0x3f800000    # 1.0f

    #@2e
    const/high16 v8, 0x40a00000    # 5.0f

    #@30
    invoke-static {p1, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    #@33
    move-result v4

    #@34
    .line 591
    .local v4, "normScale":F
    iget v7, v1, Landroid/view/MagnificationSpec;->scale:F

    #@36
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_4

    #@3c
    .line 592
    iput v4, v1, Landroid/view/MagnificationSpec;->scale:F

    #@3e
    .line 593
    const/4 v0, 0x1

    #@3f
    .line 596
    :cond_4
    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@41
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@44
    move-result v7

    #@45
    int-to-float v7, v7

    #@46
    div-float/2addr v7, v10

    #@47
    .line 597
    iget-object v8, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@49
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@4b
    int-to-float v8, v8

    #@4c
    .line 596
    add-float/2addr v7, v8

    #@4d
    .line 597
    mul-float v8, p2, p1

    #@4f
    .line 596
    sub-float v2, v7, v8

    #@51
    .line 598
    .local v2, "nonNormOffsetX":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    #@54
    move-result v7

    #@55
    invoke-static {v2, v7, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    #@58
    move-result v5

    #@59
    .line 599
    .local v5, "offsetX":F
    iget v7, v1, Landroid/view/MagnificationSpec;->offsetX:F

    #@5b
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_5

    #@61
    .line 600
    iput v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    #@63
    .line 601
    const/4 v0, 0x1

    #@64
    .line 604
    :cond_5
    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@66
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@69
    move-result v7

    #@6a
    int-to-float v7, v7

    #@6b
    div-float/2addr v7, v10

    #@6c
    .line 605
    iget-object v8, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@6e
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@70
    int-to-float v8, v8

    #@71
    .line 604
    add-float/2addr v7, v8

    #@72
    .line 605
    mul-float v8, p3, p1

    #@74
    .line 604
    sub-float v3, v7, v8

    #@76
    .line 606
    .local v3, "nonNormOffsetY":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    #@79
    move-result v7

    #@7a
    invoke-static {v3, v7, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    #@7d
    move-result v6

    #@7e
    .line 607
    .local v6, "offsetY":F
    iget v7, v1, Landroid/view/MagnificationSpec;->offsetY:F

    #@80
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_6

    #@86
    .line 608
    iput v6, v1, Landroid/view/MagnificationSpec;->offsetY:F

    #@88
    .line 609
    const/4 v0, 0x1

    #@89
    .line 612
    :cond_6
    if-eqz v0, :cond_7

    #@8b
    .line 613
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    #@8e
    .line 616
    :cond_7
    return v0
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    #@0
    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@8
    move-result v0

    #@9
    int-to-float v0, v0

    #@a
    const/high16 v2, 0x40000000    # 2.0f

    #@c
    div-float/2addr v0, v2

    #@d
    .line 297
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@11
    int-to-float v2, v2

    #@12
    .line 296
    add-float/2addr v0, v2

    #@13
    .line 297
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    #@16
    move-result v2

    #@17
    .line 296
    sub-float/2addr v0, v2

    #@18
    .line 297
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 296
    div-float/2addr v0, v2

    #@1d
    monitor-exit v1

    #@1e
    return v0

    #@1f
    .line 295
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public getCenterY()F
    .locals 3

    #@0
    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@8
    move-result v0

    #@9
    int-to-float v0, v0

    #@a
    const/high16 v2, 0x40000000    # 2.0f

    #@c
    div-float/2addr v0, v2

    #@d
    .line 320
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@f
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@11
    int-to-float v2, v2

    #@12
    .line 319
    add-float/2addr v0, v2

    #@13
    .line 320
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    #@16
    move-result v2

    #@17
    .line 319
    sub-float/2addr v0, v2

    #@18
    .line 320
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    .line 319
    div-float/2addr v0, v2

    #@1d
    monitor-exit v1

    #@1e
    return v0

    #@1f
    .line 318
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public getIdOfLastServiceToMagnify()I
    .locals 1

    #@0
    .prologue
    .line 516
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    #@2
    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 248
    return-void

    #@a
    .line 249
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@5
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 261
    return-void

    #@a
    .line 262
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getOffsetX()F
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@4
    return v0
.end method

.method public getOffsetY()F
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@4
    return v0
.end method

.method public getPersistedScale()F
    .locals 4

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    .line 554
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    #@5
    .line 555
    iget v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    #@7
    const/high16 v3, 0x40000000    # 2.0f

    #@9
    .line 553
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getScale()F
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    return v0
.end method

.method public getSentOffsetX()F
    .locals 1

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@8
    return v0
.end method

.method public getSentOffsetY()F
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@8
    return v0
.end method

.method public getSentScale()F
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@8
    return v0
.end method

.method public isMagnifying()Z
    .locals 2

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    cmpl-float v0, v0, v1

    #@8
    if-lez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public isRegisteredLocked()Z
    .locals 1

    #@0
    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    #@2
    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@5
    float-to-int v2, p1

    #@6
    float-to-int v3, p2

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 235
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public offsetMagnifiedRegionCenter(FFI)V
    .locals 6
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "id"    # I

    #@0
    .prologue
    .line 493
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 494
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v3, :cond_0

    #@7
    monitor-exit v4

    #@8
    .line 495
    return-void

    #@9
    .line 498
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@b
    .line 499
    .local v0, "currSpec":Landroid/view/MagnificationSpec;
    iget v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@d
    sub-float v1, v3, p1

    #@f
    .line 500
    .local v1, "nonNormOffsetX":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    #@12
    move-result v3

    #@13
    const/4 v5, 0x0

    #@14
    invoke-static {v1, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    #@17
    move-result v3

    #@18
    iput v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@1a
    .line 501
    iget v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@1c
    sub-float v2, v3, p2

    #@1e
    .line 502
    .local v2, "nonNormOffsetY":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    #@21
    move-result v3

    #@22
    const/4 v5, 0x0

    #@23
    invoke-static {v2, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    #@26
    move-result v3

    #@27
    iput v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@29
    .line 503
    const/4 v3, -0x1

    #@2a
    if-eq p3, v3, :cond_1

    #@2c
    .line 504
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    #@2e
    .line 506
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@30
    const/4 v5, 0x0

    #@31
    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpec(Landroid/view/MagnificationSpec;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v4

    #@35
    .line 492
    return-void

    #@36
    .line 493
    .end local v0    # "currSpec":Landroid/view/MagnificationSpec;
    .end local v1    # "nonNormOffsetX":F
    .end local v2    # "nonNormOffsetY":F
    :catchall_0
    move-exception v3

    #@37
    monitor-exit v4

    #@38
    throw v3
.end method

.method public persistScale()V
    .locals 4

    #@0
    .prologue
    .line 532
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2
    iget v0, v2, Landroid/view/MagnificationSpec;->scale:F

    #@4
    .line 533
    .local v0, "scale":F
    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    #@6
    .line 535
    .local v1, "userId":I
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$1;

    #@8
    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    #@b
    const/4 v3, 0x0

    #@c
    new-array v3, v3, [Ljava/lang/Void;

    #@e
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@11
    .line 531
    return-void
.end method

.method public register()V
    .locals 3

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    #@9
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    #@c
    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@e
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->register()V

    #@11
    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    #@17
    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    #@19
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->getMagnificationRegion(Landroid/graphics/Region;)V

    #@1e
    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@20
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@25
    .line 134
    const/4 v0, 0x1

    #@26
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_0
    monitor-exit v1

    #@29
    .line 125
    return-void

    #@2a
    .line 126
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public reset(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 368
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 367
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method resetIfNeeded(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 661
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->isScreenMagnificationAutoUpdateEnabled()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 663
    const/4 v0, 0x1

    #@13
    monitor-exit v1

    #@14
    return v0

    #@15
    .line 665
    :cond_0
    const/4 v0, 0x0

    #@16
    monitor-exit v1

    #@17
    return v0

    #@18
    .line 660
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setCenter(FFZI)Z
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    #@0
    .prologue
    .line 441
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 442
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 443
    const/4 v0, 0x0

    #@8
    monitor-exit v6

    #@9
    return v0

    #@a
    .line 445
    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    #@c
    move-object v0, p0

    #@d
    move v2, p1

    #@e
    move v3, p2

    #@f
    move v4, p3

    #@10
    move v5, p4

    #@11
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v0

    #@15
    monitor-exit v6

    #@16
    return v0

    #@17
    .line 441
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v6

    #@19
    throw v0
.end method

.method public setScale(FFFZI)Z
    .locals 18
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    #@0
    .prologue
    .line 402
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v17, v0

    #@6
    monitor-enter v17

    #@7
    .line 403
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-boolean v2, v0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v2, :cond_0

    #@d
    .line 404
    const/4 v2, 0x0

    #@e
    monitor-exit v17

    #@f
    return v2

    #@10
    .line 407
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    #@12
    const/high16 v3, 0x40a00000    # 5.0f

    #@14
    :try_start_1
    move/from16 v0, p1

    #@16
    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    #@19
    move-result p1

    #@1a
    .line 409
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    #@1e
    move-object/from16 v16, v0

    #@20
    .line 410
    .local v16, "viewport":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    #@24
    move-object/from16 v0, v16

    #@26
    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@29
    .line 411
    move-object/from16 v0, p0

    #@2b
    iget-object v15, v0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    #@2d
    .line 412
    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget v14, v15, Landroid/view/MagnificationSpec;->scale:F

    #@2f
    .line 413
    .local v14, "oldScale":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    #@32
    move-result v2

    #@33
    int-to-float v2, v2

    #@34
    const/high16 v3, 0x40000000    # 2.0f

    #@36
    div-float/2addr v2, v3

    #@37
    iget v3, v15, Landroid/view/MagnificationSpec;->offsetX:F

    #@39
    sub-float/2addr v2, v3

    #@3a
    div-float v12, v2, v14

    #@3c
    .line 414
    .local v12, "oldCenterX":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    #@3f
    move-result v2

    #@40
    int-to-float v2, v2

    #@41
    const/high16 v3, 0x40000000    # 2.0f

    #@43
    div-float/2addr v2, v3

    #@44
    iget v3, v15, Landroid/view/MagnificationSpec;->offsetY:F

    #@46
    sub-float/2addr v2, v3

    #@47
    div-float v13, v2, v14

    #@49
    .line 415
    .local v13, "oldCenterY":F
    iget v2, v15, Landroid/view/MagnificationSpec;->offsetX:F

    #@4b
    sub-float v2, p2, v2

    #@4d
    div-float v8, v2, v14

    #@4f
    .line 416
    .local v8, "normPivotX":F
    iget v2, v15, Landroid/view/MagnificationSpec;->offsetY:F

    #@51
    sub-float v2, p3, v2

    #@53
    div-float v9, v2, v14

    #@55
    .line 417
    .local v9, "normPivotY":F
    sub-float v2, v12, v8

    #@57
    div-float v3, v14, p1

    #@59
    mul-float v10, v2, v3

    #@5b
    .line 418
    .local v10, "offsetX":F
    sub-float v2, v13, v9

    #@5d
    div-float v3, v14, p1

    #@5f
    mul-float v11, v2, v3

    #@61
    .line 419
    .local v11, "offsetY":F
    add-float v4, v8, v10

    #@63
    .line 420
    .local v4, "centerX":F
    add-float v5, v9, v11

    #@65
    .line 421
    .local v5, "centerY":F
    move/from16 v0, p5

    #@67
    move-object/from16 v1, p0

    #@69
    iput v0, v1, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    #@6b
    move-object/from16 v2, p0

    #@6d
    move/from16 v3, p1

    #@6f
    move/from16 v6, p4

    #@71
    move/from16 v7, p5

    #@73
    .line 422
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    move-result v2

    #@77
    monitor-exit v17

    #@78
    return v2

    #@79
    .line 402
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    .end local v8    # "normPivotX":F
    .end local v9    # "normPivotY":F
    .end local v10    # "offsetX":F
    .end local v11    # "offsetY":F
    .end local v12    # "oldCenterX":F
    .end local v13    # "oldCenterY":F
    .end local v14    # "oldScale":F
    .end local v15    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "viewport":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    #@7a
    monitor-exit v17

    #@7b
    throw v2
.end method

.method public setScaleAndCenter(FFFZI)Z
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    #@0
    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 468
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 469
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 471
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result v0

    #@e
    monitor-exit v1

    #@f
    return v0

    #@10
    .line 467
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public setUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 635
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 636
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    #@6
    .line 638
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 639
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 640
    const/4 v0, 0x0

    #@10
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 634
    :cond_1
    return-void

    #@15
    .line 638
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public unregister()V
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 146
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :goto_0
    monitor-exit v1

    #@d
    .line 143
    return-void

    #@e
    .line 148
    :cond_0
    const/4 v0, 0x1

    #@f
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    #@11
    .line 149
    const/4 v0, 0x1

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 144
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

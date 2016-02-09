.class Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmulatorDisplayOverlay"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "zOrder"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v1, Landroid/view/Surface;

    #@5
    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    #@a
    .line 51
    new-instance v1, Landroid/graphics/Point;

    #@c
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@11
    .line 52
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@13
    invoke-virtual {p2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@16
    .line 54
    const/4 v7, 0x0

    #@17
    .line 61
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@19
    const-string/jumbo v2, "EmulatorDisplayOverlay"

    #@1c
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@1e
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@20
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@22
    iget v4, v1, Landroid/graphics/Point;->y:I

    #@24
    const/4 v5, -0x3

    #@25
    const/4 v6, 0x4

    #@26
    move-object v1, p3

    #@27
    .line 61
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 64
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p2}, Landroid/view/Display;->getLayerStack()I

    #@2d
    move-result v1

    #@2e
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@31
    .line 65
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@34
    .line 66
    const/4 v1, 0x0

    #@35
    const/4 v2, 0x0

    #@36
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@39
    .line 67
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@3c
    .line 68
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    #@3e
    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    #@41
    .line 71
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@43
    .line 72
    const/4 v1, 0x1

    #@44
    iput-boolean v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    #@46
    .line 74
    const v1, 0x10802bb

    #@49
    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@4c
    move-result-object v1

    #@4d
    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@4f
    .line 50
    return-void

    #@50
    .line 69
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    #@51
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v7

    #@52
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    #@53
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v8

    #@54
    .restart local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private drawIfNeeded()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 78
    iget-boolean v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-boolean v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 81
    iput-boolean v7, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    #@c
    .line 83
    new-instance v1, Landroid/graphics/Rect;

    #@e
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@10
    iget v5, v5, Landroid/graphics/Point;->x:I

    #@12
    iget-object v6, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@14
    iget v6, v6, Landroid/graphics/Point;->y:I

    #@16
    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@19
    .line 84
    .local v1, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    #@1a
    .line 86
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    #@1c
    invoke-virtual {v5, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    #@1f
    move-result-object v0

    #@20
    .line 90
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_1

    #@22
    .line 91
    return-void

    #@23
    .line 79
    .end local v1    # "dirty":Landroid/graphics/Rect;
    :cond_0
    return-void

    #@24
    .line 93
    .restart local v1    # "dirty":Landroid/graphics/Rect;
    :cond_1
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    #@26
    invoke-virtual {v0, v7, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@29
    .line 94
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2b
    invoke-virtual {v5, v8, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@2e
    .line 96
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@30
    iget v5, v5, Landroid/graphics/Point;->x:I

    #@32
    iget-object v6, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    #@34
    iget v6, v6, Landroid/graphics/Point;->y:I

    #@36
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@39
    move-result v4

    #@3a
    .line 97
    .local v4, "size":I
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@3c
    invoke-virtual {v5, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3f
    .line 98
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@41
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@44
    .line 99
    iget-object v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    #@46
    invoke-virtual {v5, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@49
    .line 77
    return-void

    #@4a
    .line 87
    .end local v4    # "size":I
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    #@4b
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@4c
    .line 88
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    #@4d
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method


# virtual methods
.method positionSurface(III)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    #@6
    if-ne v0, p2, :cond_0

    #@8
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    #@a
    if-ne v0, p3, :cond_0

    #@c
    .line 119
    return-void

    #@d
    .line 121
    :cond_0
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    #@f
    .line 122
    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    #@11
    .line 123
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    #@14
    .line 124
    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    #@16
    .line 125
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    #@19
    .line 117
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 106
    return-void

    #@5
    .line 108
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    #@7
    .line 109
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    #@a
    .line 110
    if-eqz p1, :cond_1

    #@c
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@e
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@11
    .line 104
    :goto_0
    return-void

    #@12
    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@14
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    #@17
    goto :goto_0
.end method

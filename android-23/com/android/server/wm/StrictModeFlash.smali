.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictModeFlash"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    new-instance v1, Landroid/view/Surface;

    #@6
    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    #@b
    .line 39
    const/16 v1, 0x14

    #@d
    iput v1, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    #@f
    .line 42
    const/4 v7, 0x0

    #@10
    .line 44
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@12
    const-string/jumbo v2, "StrictModeFlash"

    #@15
    .line 45
    const/4 v3, 0x1

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, -0x3

    #@18
    const/4 v6, 0x4

    #@19
    move-object v1, p2

    #@1a
    .line 44
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 46
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    #@20
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    move-result v1

    #@21
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@24
    .line 47
    const v1, 0xf6950

    #@27
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@2a
    .line 48
    const/4 v1, 0x0

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@2f
    .line 49
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@32
    .line 50
    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    #@34
    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    #@37
    .line 53
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@39
    .line 54
    iput-boolean v9, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    #@3b
    .line 41
    return-void

    #@3c
    .line 51
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    #@3d
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v7

    #@3e
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    #@3f
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v8

    #@40
    .restart local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private drawIfNeeded()V
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x14

    #@2
    const/high16 v9, -0x10000

    #@4
    const/4 v8, 0x0

    #@5
    .line 58
    iget-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    #@7
    if-nez v6, :cond_0

    #@9
    .line 59
    return-void

    #@a
    .line 61
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    #@c
    .line 62
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    #@e
    .line 63
    .local v3, "dw":I
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    #@10
    .line 65
    .local v1, "dh":I
    new-instance v2, Landroid/graphics/Rect;

    #@12
    invoke-direct {v2, v8, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@15
    .line 66
    .local v2, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    #@16
    .line 68
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    #@18
    invoke-virtual {v6, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    move-result-object v0

    #@1c
    .line 72
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_1

    #@1e
    .line 73
    return-void

    #@1f
    .line 77
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    #@21
    invoke-direct {v6, v8, v8, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    #@24
    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    #@26
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@29
    .line 78
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    #@2c
    .line 80
    new-instance v6, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v6, v8, v8, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@31
    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    #@33
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@36
    .line 81
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    #@39
    .line 83
    new-instance v6, Landroid/graphics/Rect;

    #@3b
    add-int/lit8 v7, v3, -0x14

    #@3d
    invoke-direct {v6, v7, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@40
    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    #@42
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@45
    .line 84
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    #@48
    .line 86
    new-instance v6, Landroid/graphics/Rect;

    #@4a
    add-int/lit8 v7, v1, -0x14

    #@4c
    invoke-direct {v6, v8, v7, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@4f
    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    #@51
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@54
    .line 87
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    #@57
    .line 89
    iget-object v6, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    #@59
    invoke-virtual {v6, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@5c
    .line 57
    return-void

    #@5d
    .line 69
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v5

    #@5e
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@5f
    .line 70
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    #@60
    .local v4, "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    #@0
    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    #@6
    if-ne v0, p2, :cond_0

    #@8
    .line 108
    return-void

    #@9
    .line 110
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    #@b
    .line 111
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    #@d
    .line 112
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@12
    .line 113
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    #@15
    .line 106
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 96
    return-void

    #@5
    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    #@8
    .line 99
    if-eqz p1, :cond_1

    #@a
    .line 100
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@c
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@f
    .line 94
    :goto_0
    return-void

    #@10
    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@12
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    #@15
    goto :goto_0
.end method

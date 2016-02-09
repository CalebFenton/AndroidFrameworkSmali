.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field private static final THICKNESS:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mInnerPaint:Landroid/graphics/Paint;

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mOuterPaint:Landroid/graphics/Paint;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/high16 v9, 0x40000000    # 2.0f

    #@3
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 43
    new-instance v1, Landroid/view/Surface;

    #@8
    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    #@d
    .line 44
    new-instance v1, Landroid/graphics/Paint;

    #@f
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    #@14
    .line 45
    new-instance v1, Landroid/graphics/Paint;

    #@16
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@19
    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    #@1b
    .line 46
    new-instance v1, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@22
    .line 47
    new-instance v1, Landroid/graphics/Rect;

    #@24
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@27
    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    #@29
    .line 48
    iput v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    #@2b
    .line 51
    const/4 v7, 0x0

    #@2c
    .line 57
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@2e
    const-string/jumbo v2, "FocusedStackFrame"

    #@31
    .line 58
    const/4 v3, 0x1

    #@32
    const/4 v4, 0x1

    #@33
    const/4 v5, -0x3

    #@34
    const/4 v6, 0x4

    #@35
    move-object v1, p2

    #@36
    .line 57
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 60
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    #@3c
    move-result v1

    #@3d
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@40
    .line 61
    const v1, 0x3e99999a    # 0.3f

    #@43
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@46
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    #@48
    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    #@4b
    .line 65
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4d
    .line 67
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    #@4f
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@51
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@54
    .line 68
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    #@56
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@59
    .line 69
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    #@5b
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    #@5e
    .line 70
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    #@60
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@62
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@65
    .line 71
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    #@67
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@6a
    .line 72
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    #@6c
    const/high16 v2, -0x1000000

    #@6e
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@71
    .line 50
    return-void

    #@72
    .line 63
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    #@73
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v7

    #@74
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    #@75
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v8

    #@76
    .restart local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private draw()V
    .locals 9

    #@0
    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 78
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    #@d
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@12
    .line 83
    :cond_0
    const/4 v0, 0x0

    #@13
    .line 85
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    #@15
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v0

    #@1b
    .line 91
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_1

    #@1d
    .line 93
    return-void

    #@1e
    .line 88
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v6

    #@1f
    .line 89
    .local v6, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string/jumbo v2, "FocusedStackFrame"

    #@22
    const-string/jumbo v3, "Unable to lock canvas"

    #@25
    invoke-static {v2, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0

    #@29
    .line 86
    .end local v6    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v7

    #@2a
    .line 87
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "FocusedStackFrame"

    #@2d
    const-string/jumbo v3, "Unable to lock canvas"

    #@30
    invoke-static {v2, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_0

    #@34
    .line 96
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@36
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@39
    move-result v2

    #@3a
    int-to-float v3, v2

    #@3b
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@3d
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@40
    move-result v2

    #@41
    int-to-float v4, v2

    #@42
    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    #@44
    move v2, v1

    #@45
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@48
    .line 97
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@4a
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@4d
    move-result v1

    #@4e
    add-int/lit8 v1, v1, -0x2

    #@50
    int-to-float v3, v1

    #@51
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@53
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@56
    move-result v1

    #@57
    add-int/lit8 v1, v1, -0x2

    #@59
    int-to-float v4, v1

    #@5a
    .line 98
    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    #@5c
    move v1, v8

    #@5d
    move v2, v8

    #@5e
    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@61
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    #@63
    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@66
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    #@68
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6d
    .line 75
    return-void
.end method

.method private setupSurface(Z)V
    .locals 3
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    return-void

    #@5
    .line 110
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@8
    .line 112
    if-eqz p1, :cond_1

    #@a
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@c
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@e
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@10
    int-to-float v1, v1

    #@11
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@13
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@15
    int-to-float v2, v2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@19
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1b
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@20
    move-result v1

    #@21
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@2a
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2c
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 120
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@32
    .line 105
    return-void

    #@33
    .line 117
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@35
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 119
    :catchall_0
    move-exception v0

    #@3a
    .line 120
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@3d
    .line 119
    throw v0
.end method


# virtual methods
.method setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 141
    return-void

    #@5
    .line 143
    :cond_0
    iput p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    #@7
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    #@b
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@e
    .line 139
    return-void
.end method

.method setVisibility(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    #@0
    .prologue
    .line 126
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 127
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    #@c
    .line 125
    :cond_1
    :goto_0
    return-void

    #@d
    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@f
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@12
    .line 130
    const/4 v0, 0x1

    #@13
    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    #@16
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    #@18
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 132
    invoke-direct {p0}, Lcom/android/server/wm/FocusedStackFrame;->draw()V

    #@23
    goto :goto_0
.end method

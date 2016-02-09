.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DimLayer"


# instance fields
.field mAlpha:F

.field mBounds:Landroid/graphics/Rect;

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mLastBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field mStartAlpha:F

.field mStartTime:J

.field mTargetAlpha:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 39
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@7
    .line 42
    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@9
    .line 45
    new-instance v0, Landroid/graphics/Rect;

    #@b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@10
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    #@12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@17
    .line 51
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@1a
    .line 54
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@1c
    .line 57
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@1e
    .line 69
    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    #@20
    .line 70
    iput-object p3, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@22
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@24
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@27
    move-result v7

    #@28
    .line 73
    .local v7, "displayId":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@2b
    .line 81
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@2d
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    #@2f
    const-string/jumbo v2, "DimLayer"

    #@32
    .line 82
    const/16 v3, 0x10

    #@34
    const/16 v4, 0x10

    #@36
    const/4 v5, -0x1

    #@37
    .line 83
    const v6, 0x20004

    #@3a
    .line 81
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@3d
    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@3f
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@41
    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 92
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@47
    .line 68
    :goto_0
    return-void

    #@48
    .line 89
    :catch_0
    move-exception v8

    #@49
    .line 90
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "WindowManager"

    #@4c
    const-string/jumbo v1, "Exception creating Dim surface"

    #@4f
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    .line 92
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@55
    goto :goto_0

    #@56
    .line 91
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@57
    .line 92
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@5a
    .line 91
    throw v0
.end method

.method private adjustBounds()V
    .locals 10

    #@0
    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    #@2
    .line 148
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    #@4
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 149
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@f
    move-result v1

    #@10
    .line 150
    .local v1, "dw":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@15
    move-result v0

    #@16
    .line 151
    .local v0, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@18
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@1a
    int-to-float v3, v5

    #@1b
    .line 152
    .local v3, "xPos":F
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@1d
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@1f
    int-to-float v4, v5

    #@20
    .line 165
    .local v4, "yPos":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@22
    invoke-virtual {v5, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@25
    .line 166
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@27
    invoke-virtual {v5, v1, v0}, Landroid/view/SurfaceControl;->setSize(II)V

    #@2a
    .line 168
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@2c
    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@31
    .line 145
    return-void

    #@32
    .line 155
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "xPos":F
    .end local v4    # "yPos":F
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@34
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@37
    move-result-object v2

    #@38
    .line 158
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@3a
    int-to-double v6, v5

    #@3b
    mul-double/2addr v6, v8

    #@3c
    double-to-int v1, v6

    #@3d
    .line 159
    .restart local v1    # "dw":I
    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@3f
    int-to-double v6, v5

    #@40
    mul-double/2addr v6, v8

    #@41
    double-to-int v0, v6

    #@42
    .line 161
    .restart local v0    # "dh":I
    mul-int/lit8 v5, v1, -0x1

    #@44
    div-int/lit8 v5, v5, 0x6

    #@46
    int-to-float v3, v5

    #@47
    .line 162
    .restart local v3    # "xPos":F
    mul-int/lit8 v5, v0, -0x1

    #@49
    div-int/lit8 v5, v5, 0x6

    #@4b
    int-to-float v4, v5

    #@4c
    .restart local v4    # "yPos":F
    goto :goto_0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p1

    #@5
    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@7
    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@9
    add-long/2addr v2, v4

    #@a
    cmp-long v0, v0, v2

    #@c
    if-gez v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method private setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@3
    cmpl-float v1, v1, p1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@9
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@c
    .line 126
    cmpl-float v1, p1, v2

    #@e
    if-nez v1, :cond_2

    #@10
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 128
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@16
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    #@19
    .line 129
    const/4 v1, 0x0

    #@1a
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 138
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@1e
    .line 121
    :cond_1
    return-void

    #@1f
    .line 130
    :cond_2
    cmpl-float v1, p1, v2

    #@21
    if-lez v1, :cond_0

    #@23
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@25
    if-nez v1, :cond_0

    #@27
    .line 132
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@29
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    #@2c
    .line 133
    const/4 v1, 0x1

    #@2d
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 135
    :catch_0
    move-exception v0

    #@31
    .line 136
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DimLayer"

    #@34
    const-string/jumbo v2, "Failure setting alpha immediately"

    #@37
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method


# virtual methods
.method destroySurface()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 300
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@a
    .line 301
    iput-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@c
    .line 297
    :cond_0
    return-void
.end method

.method getLayer()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@2
    return v0
.end method

.method getTargetAlpha()F
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@2
    return v0
.end method

.method hide()V
    .locals 2

    #@0
    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 249
    const-wide/16 v0, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    #@9
    .line 246
    :cond_0
    return-void
.end method

.method hide(J)V
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 260
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_0

    #@b
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 262
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@16
    .line 259
    :cond_1
    return-void
.end method

.method isAnimating()Z
    .locals 2

    #@0
    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@2
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    #@0
    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 306
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mDimSurface="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@e
    .line 307
    const-string/jumbo v0, " mLayer="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@19
    .line 308
    const-string/jumbo v0, " mAlpha="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    #@24
    .line 309
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    const-string/jumbo v0, "mLastBounds="

    #@2a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@2f
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 310
    const-string/jumbo v0, " mBounds="

    #@39
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 311
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v0, "Last animation: "

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 312
    const-string/jumbo v0, " mDuration="

    #@51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@56
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@59
    .line 313
    const-string/jumbo v0, " mStartTime="

    #@5c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@61
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@64
    .line 314
    const-string/jumbo v0, " curTime="

    #@67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6d
    move-result-wide v0

    #@6e
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    #@71
    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    const-string/jumbo v0, " mStartAlpha="

    #@77
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@7c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    #@7f
    .line 316
    const-string/jumbo v0, " mTargetAlpha="

    #@82
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@87
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    #@8a
    .line 305
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 172
    :cond_0
    :goto_0
    return-void

    #@14
    .line 176
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@17
    .line 177
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 181
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1d
    goto :goto_0

    #@1e
    .line 178
    :catch_0
    move-exception v0

    #@1f
    .line 179
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v1, "DimLayer"

    #@22
    const-string/jumbo v2, "Failure setting size"

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 181
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@2b
    goto :goto_0

    #@2c
    .line 180
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@2d
    .line 181
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@30
    .line 180
    throw v1
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 112
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@6
    .line 113
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@b
    .line 110
    :cond_0
    return-void
.end method

.method show()V
    .locals 4

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 199
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@8
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@a
    const-wide/16 v2, 0x0

    #@c
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@f
    .line 196
    :cond_0
    return-void
.end method

.method show(IFJ)V
    .locals 7
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 214
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 215
    const-string/jumbo v1, "DimLayer"

    #@8
    const-string/jumbo v4, "show: no Surface"

    #@b
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 217
    iput v5, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@10
    iput v5, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@12
    .line 218
    return-void

    #@13
    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@15
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 222
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    #@20
    .line 224
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    #@23
    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@26
    move-result-wide v2

    #@27
    .line 227
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@2a
    move-result v0

    #@2b
    .line 228
    .local v0, "animating":Z
    if-eqz v0, :cond_2

    #@2d
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@2f
    cmpl-float v1, v1, p2

    #@31
    if-nez v1, :cond_3

    #@33
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_3

    #@39
    .line 229
    :cond_2
    if-nez v0, :cond_4

    #@3b
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@3d
    cmpl-float v1, v1, p2

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 230
    :cond_3
    const-wide/16 v4, 0x0

    #@43
    cmp-long v1, p3, v4

    #@45
    if-gtz v1, :cond_5

    #@47
    .line 232
    invoke-direct {p0, p2}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    #@4a
    .line 241
    :cond_4
    :goto_0
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@4c
    .line 211
    return-void

    #@4d
    .line 235
    :cond_5
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@4f
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@51
    .line 236
    iput-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@53
    .line 237
    iput-wide p3, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@55
    goto :goto_0
.end method

.method stepAnimation()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 273
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 274
    const-string/jumbo v4, "DimLayer"

    #@8
    const-string/jumbo v5, "stepAnimation: null Surface"

    #@b
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 276
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@10
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@12
    .line 277
    const/4 v4, 0x0

    #@13
    return v4

    #@14
    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    .line 282
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@20
    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@22
    sub-float v1, v4, v5

    #@24
    .line 283
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@26
    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@28
    sub-long v6, v2, v6

    #@2a
    long-to-float v5, v6

    #@2b
    mul-float/2addr v5, v1

    #@2c
    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@2e
    long-to-float v6, v6

    #@2f
    div-float/2addr v5, v6

    #@30
    add-float v0, v4, v5

    #@32
    .line 284
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    #@34
    if-lez v4, :cond_3

    #@36
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@38
    cmpl-float v4, v0, v4

    #@3a
    if-lez v4, :cond_3

    #@3c
    .line 287
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@3e
    .line 290
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    #@41
    .line 293
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@44
    move-result v4

    #@45
    return v4

    #@46
    .line 285
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaDelta":F
    .restart local v2    # "curTime":J
    :cond_3
    cmpg-float v4, v1, v8

    #@48
    if-gez v4, :cond_1

    #@4a
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@4c
    cmpg-float v4, v0, v4

    #@4e
    if-gez v4, :cond_1

    #@50
    goto :goto_0
.end method

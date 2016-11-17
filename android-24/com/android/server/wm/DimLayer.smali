.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayer$DimLayerUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDestroyed:Z

.field private mDimSurface:Landroid/view/SurfaceControl;

.field private final mDisplayId:I

.field private mDuration:J

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mName:Ljava/lang/String;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field private mStartAlpha:F

.field private mStartTime:J

.field private mTargetAlpha:F

.field private final mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    #@5
    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "user"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p3, "displayId"    # I
    .param p4, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@7
    .line 46
    const/4 v0, -0x1

    #@8
    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@a
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@11
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@18
    .line 55
    iput-boolean v2, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@1a
    .line 58
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@1c
    .line 61
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@1e
    .line 69
    iput-boolean v2, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    #@20
    .line 90
    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@22
    .line 91
    iput p3, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    #@24
    .line 92
    iput-object p1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@26
    .line 93
    iput-object p4, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    #@28
    .line 89
    return-void
.end method

.method private adjustAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 167
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@a
    .line 169
    :cond_0
    cmpl-float v1, p1, v2

    #@c
    if-nez v1, :cond_2

    #@e
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 172
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@18
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    #@1b
    .line 173
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@1e
    .line 163
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 175
    :cond_2
    cmpl-float v1, p1, v2

    #@21
    if-lez v1, :cond_1

    #@23
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@25
    if-nez v1, :cond_1

    #@27
    .line 177
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 178
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@2d
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    #@30
    .line 179
    const/4 v1, 0x1

    #@31
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    goto :goto_0

    #@34
    .line 182
    :catch_0
    move-exception v0

    #@35
    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    #@37
    const-string/jumbo v2, "Failure setting alpha immediately"

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_0
.end method

.method private adjustBounds()V
    .locals 3

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@2
    invoke-interface {v0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 192
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->getBoundsForFullscreen(Landroid/graphics/Rect;)V

    #@d
    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@13
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@15
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@17
    int-to-float v1, v1

    #@18
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@1a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@1c
    int-to-float v2, v2

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@20
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@22
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@27
    move-result v1

    #@28
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@2a
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@2d
    move-result v2

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@31
    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@33
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@35
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@38
    .line 190
    return-void
.end method

.method private adjustLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@9
    .line 145
    :cond_0
    return-void
.end method

.method private constructSurface(Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 98
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@3
    .line 106
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@5
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    #@7
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    #@9
    .line 107
    const/16 v3, 0x10

    #@b
    const/16 v4, 0x10

    #@d
    const/4 v5, -0x1

    #@e
    .line 108
    const v6, 0x20004

    #@11
    .line 106
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@14
    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@16
    .line 112
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@18
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@1d
    .line 113
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    #@20
    .line 114
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->adjustAlpha(F)V

    #@25
    .line 115
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->adjustLayer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 119
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@2d
    .line 97
    :goto_0
    return-void

    #@2e
    .line 116
    :catch_0
    move-exception v7

    #@2f
    .line 117
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "WindowManager"

    #@32
    const-string/jumbo v1, "Exception creating Dim surface"

    #@35
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 119
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@3b
    goto :goto_0

    #@3c
    .line 118
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@3d
    .line 119
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@40
    .line 118
    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 245
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

.method private getBoundsForFullscreen(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    #@2
    .line 209
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@4
    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@7
    move-result-object v2

    #@8
    .line 212
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    #@a
    int-to-double v6, v5

    #@b
    mul-double/2addr v6, v8

    #@c
    double-to-int v1, v6

    #@d
    .line 213
    .local v1, "dw":I
    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    #@f
    int-to-double v6, v5

    #@10
    mul-double/2addr v6, v8

    #@11
    double-to-int v0, v6

    #@12
    .line 215
    .local v0, "dh":I
    mul-int/lit8 v5, v1, -0x1

    #@14
    div-int/lit8 v5, v5, 0x6

    #@16
    int-to-float v3, v5

    #@17
    .line 216
    .local v3, "xPos":F
    mul-int/lit8 v5, v0, -0x1

    #@19
    div-int/lit8 v5, v5, 0x6

    #@1b
    int-to-float v4, v5

    #@1c
    .line 217
    .local v4, "yPos":F
    float-to-int v5, v3

    #@1d
    float-to-int v6, v4

    #@1e
    float-to-int v7, v3

    #@1f
    add-int/2addr v7, v1

    #@20
    float-to-int v8, v4

    #@21
    add-int/2addr v8, v0

    #@22
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@25
    .line 205
    return-void
.end method

.method private setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 157
    return-void

    #@7
    .line 159
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@9
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayer;->adjustAlpha(F)V

    #@c
    .line 155
    return-void
.end method


# virtual methods
.method destroySurface()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 357
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@a
    .line 359
    iput-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@c
    .line 361
    :cond_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    #@f
    .line 355
    return-void
.end method

.method getLayer()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@2
    return v0
.end method

.method getTargetAlpha()F
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@2
    return v0
.end method

.method hide()V
    .locals 2

    #@0
    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 308
    const-wide/16 v0, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    #@9
    .line 305
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
    .line 319
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
    .line 321
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@16
    .line 318
    :cond_1
    return-void
.end method

.method isAnimating()Z
    .locals 2

    #@0
    .prologue
    .line 130
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
    .line 125
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
    .line 365
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
    .line 366
    const-string/jumbo v0, " mLayer="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@19
    .line 367
    const-string/jumbo v0, " mAlpha="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    #@24
    .line 368
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
    .line 369
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
    .line 370
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v0, "Last animation: "

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 371
    const-string/jumbo v0, " mDuration="

    #@51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@56
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@59
    .line 372
    const-string/jumbo v0, " mStartTime="

    #@5c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@61
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    #@64
    .line 373
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
    .line 374
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
    .line 375
    const-string/jumbo v0, " mTargetAlpha="

    #@82
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@87
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    #@8a
    .line 364
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 228
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
    .line 226
    :cond_0
    :goto_0
    return-void

    #@14
    .line 230
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@17
    .line 231
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 235
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1d
    goto :goto_0

    #@1e
    .line 232
    :catch_0
    move-exception v0

    #@1f
    .line 233
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    #@21
    const-string/jumbo v2, "Failure setting size"

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 235
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@2a
    goto :goto_0

    #@2b
    .line 234
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@2c
    .line 235
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@2f
    .line 234
    throw v1
.end method

.method setBoundsForFullscreen()V
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->getBoundsForFullscreen(Landroid/graphics/Rect;)V

    #@5
    .line 222
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@a
    .line 220
    return-void
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 138
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 139
    return-void

    #@5
    .line 141
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@7
    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayer;->adjustLayer(I)V

    #@a
    .line 137
    return-void
.end method

.method show()V
    .locals 4

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 253
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    #@8
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@a
    const-wide/16 v2, 0x0

    #@c
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@f
    .line 250
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
    .line 268
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 269
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    #@7
    const-string/jumbo v4, "show: no Surface"

    #@a
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 271
    iput v5, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@f
    iput v5, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@11
    .line 272
    return-void

    #@12
    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 276
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18
    invoke-direct {p0, v1}, Lcom/android/server/wm/DimLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    #@1b
    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    #@1d
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_2

    #@25
    .line 280
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    #@28
    .line 282
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    #@2b
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2e
    move-result-wide v2

    #@2f
    .line 285
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@32
    move-result v0

    #@33
    .line 286
    .local v0, "animating":Z
    if-eqz v0, :cond_3

    #@35
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@37
    cmpl-float v1, v1, p2

    #@39
    if-nez v1, :cond_4

    #@3b
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_4

    #@41
    .line 287
    :cond_3
    if-nez v0, :cond_5

    #@43
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@45
    cmpl-float v1, v1, p2

    #@47
    if-eqz v1, :cond_5

    #@49
    .line 288
    :cond_4
    const-wide/16 v4, 0x0

    #@4b
    cmp-long v1, p3, v4

    #@4d
    if-gtz v1, :cond_6

    #@4f
    .line 290
    invoke-direct {p0, p2}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    #@52
    .line 298
    :cond_5
    :goto_0
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@54
    .line 265
    return-void

    #@55
    .line 293
    :cond_6
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@57
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@59
    .line 294
    iput-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@5b
    .line 295
    iput-wide p3, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@5d
    goto :goto_0
.end method

.method stepAnimation()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 332
    iget-boolean v4, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 333
    sget-object v4, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    #@7
    const-string/jumbo v5, "stepAnimation: surface destroyed"

    #@a
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 335
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    #@f
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@11
    .line 336
    const/4 v4, 0x0

    #@12
    return v4

    #@13
    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1c
    move-result-wide v2

    #@1d
    .line 340
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@1f
    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@21
    sub-float v1, v4, v5

    #@23
    .line 341
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    #@25
    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    #@27
    sub-long v6, v2, v6

    #@29
    long-to-float v5, v6

    #@2a
    mul-float/2addr v5, v1

    #@2b
    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    #@2d
    long-to-float v6, v6

    #@2e
    div-float/2addr v5, v6

    #@2f
    add-float v0, v4, v5

    #@31
    .line 342
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    #@33
    if-lez v4, :cond_3

    #@35
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@37
    cmpl-float v4, v0, v4

    #@39
    if-lez v4, :cond_3

    #@3b
    .line 345
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@3d
    .line 348
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    #@40
    .line 351
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@43
    move-result v4

    #@44
    return v4

    #@45
    .line 343
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaDelta":F
    .restart local v2    # "curTime":J
    :cond_3
    cmpg-float v4, v1, v8

    #@47
    if-gez v4, :cond_1

    #@49
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    #@4b
    cmpg-float v4, v0, v4

    #@4d
    if-gez v4, :cond_1

    #@4f
    goto :goto_0
.end method

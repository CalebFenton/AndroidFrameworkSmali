.class Lcom/android/server/wm/CircularDisplayMask;
.super Ljava/lang/Object;
.source "CircularDisplayMask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDimensionsUnequal:Z

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mMaskThickness:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mScreenOffset:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/CircularDisplayMask;->TAG:Ljava/lang/String;

    #@5
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;III)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "zOrder"    # I
    .param p4, "screenOffset"    # I
    .param p5, "maskThickness"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 43
    iput v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    #@7
    .line 48
    new-instance v1, Landroid/view/Surface;

    #@9
    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    #@c
    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    #@e
    .line 55
    iput-boolean v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    #@10
    .line 60
    new-instance v1, Landroid/graphics/Point;

    #@12
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@15
    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@17
    .line 61
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@19
    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@1c
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@1e
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@20
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@22
    iget v2, v2, Landroid/graphics/Point;->y:I

    #@24
    add-int/2addr v2, p4

    #@25
    if-eq v1, v2, :cond_0

    #@27
    .line 63
    sget-object v1, Lcom/android/server/wm/CircularDisplayMask;->TAG:Ljava/lang/String;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "Screen dimensions of displayId = "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@38
    move-result v3

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 64
    const-string/jumbo v3, "are not equal, circularMask will not be drawn."

    #@40
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 65
    iput-boolean v9, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    #@4d
    .line 68
    :cond_0
    const/4 v7, 0x0

    #@4e
    .line 75
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    #@50
    const-string/jumbo v2, "CircularDisplayMask"

    #@53
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@55
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@57
    .line 76
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@59
    iget v4, v1, Landroid/graphics/Point;->y:I

    #@5b
    const/4 v5, -0x3

    #@5c
    const/4 v6, 0x4

    #@5d
    move-object v1, p2

    #@5e
    .line 75
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 78
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    #@64
    move-result v1

    #@65
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@68
    .line 79
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@6b
    .line 80
    const/4 v1, 0x0

    #@6c
    const/4 v2, 0x0

    #@6d
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@70
    .line 81
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@73
    .line 82
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    #@75
    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    #@78
    .line 85
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@7a
    .line 86
    iput-boolean v9, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    #@7c
    .line 87
    new-instance v1, Landroid/graphics/Paint;

    #@7e
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@81
    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    #@83
    .line 88
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    #@85
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@88
    .line 89
    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    #@8a
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    #@8c
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@8e
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@91
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@94
    .line 90
    iput p4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    #@96
    .line 91
    iput p5, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    #@98
    .line 59
    return-void

    #@99
    .line 83
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    #@9a
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v7

    #@9b
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    #@9c
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v8

    #@9d
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
    .line 95
    iget-boolean v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-boolean v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    #@8
    if-eqz v5, :cond_0

    #@a
    iget-boolean v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 96
    :cond_0
    return-void

    #@f
    .line 98
    :cond_1
    iput-boolean v8, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    #@11
    .line 100
    new-instance v2, Landroid/graphics/Rect;

    #@13
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@15
    iget v5, v5, Landroid/graphics/Point;->x:I

    #@17
    iget-object v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@19
    iget v6, v6, Landroid/graphics/Point;->y:I

    #@1b
    invoke-direct {v2, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1e
    .line 101
    .local v2, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    #@1f
    .line 103
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    #@21
    invoke-virtual {v5, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    move-result-object v0

    #@25
    .line 107
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_2

    #@27
    .line 108
    return-void

    #@28
    .line 110
    :cond_2
    iget v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    #@2a
    packed-switch v5, :pswitch_data_0

    #@2d
    .line 126
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    #@2f
    iget v5, v5, Landroid/graphics/Point;->x:I

    #@31
    div-int/lit8 v1, v5, 0x2

    #@33
    .line 127
    .local v1, "circleRadius":I
    const/high16 v5, -0x1000000

    #@35
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    #@38
    .line 130
    int-to-float v5, v1

    #@39
    int-to-float v6, v1

    #@3a
    iget v7, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    #@3c
    sub-int v7, v1, v7

    #@3e
    int-to-float v7, v7

    #@3f
    iget-object v8, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    #@41
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@44
    .line 131
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    #@46
    invoke-virtual {v5, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@49
    .line 94
    return-void

    #@4a
    .line 114
    .end local v1    # "circleRadius":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4c
    invoke-virtual {v5, v7, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@4f
    goto :goto_1

    #@50
    .line 118
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@52
    iget v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    #@54
    neg-int v6, v6

    #@55
    int-to-float v6, v6

    #@56
    invoke-virtual {v5, v7, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@59
    goto :goto_1

    #@5a
    .line 122
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@5c
    iget v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    #@5e
    neg-int v6, v6

    #@5f
    int-to-float v6, v6

    #@60
    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@63
    goto :goto_1

    #@64
    .line 104
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v4

    #@65
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@66
    .line 105
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    #@67
    .local v3, "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0

    #@68
    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method positionSurface(III)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    #@6
    if-ne v0, p2, :cond_0

    #@8
    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    #@a
    if-ne v0, p3, :cond_0

    #@c
    .line 151
    return-void

    #@d
    .line 153
    :cond_0
    iput p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    #@f
    .line 154
    iput p2, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    #@11
    .line 155
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    #@14
    .line 156
    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    #@16
    .line 157
    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    #@19
    .line 149
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 138
    return-void

    #@5
    .line 140
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    #@7
    .line 141
    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    #@a
    .line 142
    if-eqz p1, :cond_1

    #@c
    .line 143
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@e
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@11
    .line 136
    :goto_0
    return-void

    #@12
    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@14
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    #@17
    goto :goto_0
.end method

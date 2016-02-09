.class public Landroid/graphics/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeConstructor()V

    #@6
    .line 30
    return-void
.end method

.method private native nativeApplyToCanvas(J)V
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeDestructor()V
.end method

.method private native nativeGetMatrix(J)V
.end method


# virtual methods
.method public applyToCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 153
    iget-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    #@8
    if-nez v0, :cond_0

    #@a
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    #@11
    .line 154
    :cond_0
    iget-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    #@13
    invoke-virtual {p0, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    #@16
    .line 155
    iget-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    #@18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@1b
    .line 151
    :goto_0
    return-void

    #@1c
    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@1f
    move-result-wide v0

    #@20
    invoke-direct {p0, v0, v1}, Landroid/graphics/Camera;->nativeApplyToCanvas(J)V

    #@23
    goto :goto_0
.end method

.method public native dotWithNormal(FFF)F
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeDestructor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 163
    return-void

    #@7
    .line 166
    :catchall_0
    move-exception v0

    #@8
    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 166
    throw v0
.end method

.method public native getLocationX()F
.end method

.method public native getLocationY()F
.end method

.method public native getLocationZ()F
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 142
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/graphics/Camera;->nativeGetMatrix(J)V

    #@5
    .line 141
    return-void
.end method

.method public native restore()V
.end method

.method public native rotate(FFF)V
.end method

.method public native rotateX(F)V
.end method

.method public native rotateY(F)V
.end method

.method public native rotateZ(F)V
.end method

.method public native save()V
.end method

.method public native setLocation(FFF)V
.end method

.method public native translate(FFF)V
.end method

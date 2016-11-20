.class public Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EGL_COLOR_BITLENGTH:I = 0x8

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final FLIP_TYPE_BOTH:I = 0x3

.field private static final FLIP_TYPE_HORIZONTAL:I = 0x1

.field private static final FLIP_TYPE_NONE:I = 0x0

.field private static final FLIP_TYPE_VERTICAL:I = 0x2

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final GLES_VERSION:I = 0x2

.field private static final GL_MATRIX_SIZE:I = 0x10

.field private static final LEGACY_PERF_PROPERTY:Ljava/lang/String; = "persist.camera.legacy_perf"

.field private static final PBUFFER_PIXEL_BYTES:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_POS_SIZE:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final VERTEX_UV_SIZE:I = 0x2

.field private static final sBothFlipTriangleVertices:[F

.field private static final sHorizontalFlipTriangleVertices:[F

.field private static final sRegularTriangleVertices:[F

.field private static final sVerticalFlipTriangleVertices:[F


# instance fields
.field private mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private mConfigs:Landroid/opengl/EGLConfig;

.field private mConversionSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private final mFacing:I

.field private mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private mMVPMatrix:[F

.field private mPBufferPixels:Ljava/nio/ByteBuffer;

.field private mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

.field private mProgram:I

.field private mRegularTriangleVertices:Ljava/nio/FloatBuffer;

.field private mSTMatrix:[F

.field private volatile mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureID:I

.field private mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x14

    #@2
    .line 51
    const-class v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@a
    .line 91
    new-array v0, v1, [F

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    #@11
    .line 100
    new-array v0, v1, [F

    #@13
    fill-array-data v0, :array_1

    #@16
    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    #@18
    .line 109
    new-array v0, v1, [F

    #@1a
    fill-array-data v0, :array_2

    #@1d
    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    #@1f
    .line 118
    new-array v0, v1, [F

    #@21
    fill-array-data v0, :array_3

    #@24
    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    #@26
    .line 50
    return-void

    #@27
    .line 91
    nop

    #@28
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@54
    .line 100
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    #@80
    .line 109
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    #@ac
    .line 118
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "facing"    # I

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    const/4 v2, 0x0

    #@3
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 66
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    #@8
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@a
    .line 67
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@c
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    #@e
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@15
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@1c
    .line 164
    new-array v0, v1, [F

    #@1e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    #@20
    .line 165
    new-array v0, v1, [F

    #@22
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    #@24
    .line 168
    iput v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    #@26
    .line 174
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@29
    .line 178
    iput p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    #@2b
    .line 180
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    #@2d
    array-length v0, v0

    #@2e
    mul-int/lit8 v0, v0, 0x4

    #@30
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@33
    move-result-object v0

    #@34
    .line 181
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@37
    move-result-object v1

    #@38
    .line 180
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    #@42
    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    #@44
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    #@46
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@4d
    .line 185
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    #@4f
    array-length v0, v0

    #@50
    mul-int/lit8 v0, v0, 0x4

    #@52
    .line 184
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@55
    move-result-object v0

    #@56
    .line 186
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@59
    move-result-object v1

    #@5a
    .line 184
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@64
    .line 187
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@66
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    #@68
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@6f
    .line 190
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    #@71
    array-length v0, v0

    #@72
    mul-int/lit8 v0, v0, 0x4

    #@74
    .line 189
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@77
    move-result-object v0

    #@78
    .line 191
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@7b
    move-result-object v1

    #@7c
    .line 189
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@83
    move-result-object v0

    #@84
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@86
    .line 192
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@88
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    #@8a
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@91
    .line 195
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    #@93
    array-length v0, v0

    #@94
    mul-int/lit8 v0, v0, 0x4

    #@96
    .line 194
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@99
    move-result-object v0

    #@9a
    .line 196
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@9d
    move-result-object v1

    #@9e
    .line 194
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    #@a5
    move-result-object v0

    #@a6
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@a8
    .line 197
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@aa
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    #@ac
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@b3
    .line 199
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    #@b5
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    #@b8
    .line 177
    return-void
.end method

.method private addGlTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 606
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/PerfMeasurement;->addTimestamp(J)V

    #@a
    .line 604
    return-void
.end method

.method private beginGlTiming()V
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 601
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@7
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->startTimer()V

    #@a
    .line 599
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 543
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    #@3
    move-result v0

    #@4
    .local v0, "error":I
    const/16 v1, 0x3000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 544
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, ": EGL error: 0x"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 541
    :cond_0
    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 550
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    #@3
    move-result v0

    #@4
    .local v0, "error":I
    if-eqz v0, :cond_0

    #@6
    .line 551
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, ": GLES20 error: 0x"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 548
    :cond_0
    return-void
.end method

.method private clearState()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 403
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@6
    .line 404
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@18
    .line 406
    .local v1, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :try_start_0
    iget-object v3, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@1a
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->disconnectSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 407
    :catch_0
    move-exception v0

    #@1f
    .line 408
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@21
    const-string/jumbo v4, "Surface abandoned, skipping..."

    #@24
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0

    #@28
    .line 411
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@2a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@2d
    .line 412
    iput-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    #@2f
    .line 413
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 414
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@35
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    #@38
    .line 416
    :cond_1
    iput-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@3a
    .line 402
    return-void
.end method

.method private configureEGLContext()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 420
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@9
    .line 421
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@b
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    #@d
    if-ne v0, v4, :cond_0

    #@f
    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v2, "No EGL14 display"

    #@14
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 424
    :cond_0
    new-array v9, v10, [I

    #@1a
    .line 425
    .local v9, "version":[I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@1c
    invoke-static {v0, v9, v2, v9, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    #@24
    const-string/jumbo v2, "Cannot initialize EGL14"

    #@27
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 429
    :cond_1
    const/16 v0, 0xd

    #@2d
    new-array v1, v0, [I

    #@2f
    .local v1, "attribList":[I
    fill-array-data v1, :array_0

    #@32
    .line 438
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    #@34
    .line 439
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    #@36
    .line 440
    .local v6, "numConfigs":[I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@38
    .line 441
    array-length v5, v3

    #@39
    move v4, v2

    #@3a
    move v7, v2

    #@3b
    .line 440
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    #@3e
    .line 442
    const-string/jumbo v0, "eglCreateContext RGB888+recordable ES2"

    #@41
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    #@44
    .line 443
    aget-object v0, v3, v2

    #@46
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    #@48
    .line 445
    const/16 v0, 0x3098

    #@4a
    .line 446
    const/16 v4, 0x3038

    #@4c
    .line 444
    filled-new-array {v0, v10, v4}, [I

    #@4f
    move-result-object v8

    #@50
    .line 448
    .local v8, "attrib_list":[I
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@52
    aget-object v4, v3, v2

    #@54
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@56
    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    #@5c
    .line 450
    const-string/jumbo v0, "eglCreateContext"

    #@5f
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    #@62
    .line 451
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    #@64
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@66
    if-ne v0, v2, :cond_2

    #@68
    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6a
    const-string/jumbo v2, "No EGLContext could be made"

    #@6d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 419
    :cond_2
    return-void

    #@72
    .line 429
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3033
        0x5
        0x3038
    .end array-data
.end method

.method private configureEGLOutputSurfaces(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;>;"
    const/4 v6, 0x0

    #@1
    .line 457
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_1

    #@9
    .line 458
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v4, "No Surfaces were provided to draw to"

    #@e
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 460
    :cond_1
    const/4 v3, 0x1

    #@13
    new-array v2, v3, [I

    #@15
    .line 461
    const/16 v3, 0x3038

    #@17
    aput v3, v2, v6

    #@19
    .line 463
    .local v2, "surfaceAttribs":[I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@29
    .line 464
    .local v0, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@2b
    iget-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    #@2d
    .line 465
    iget-object v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@2f
    .line 464
    invoke-static {v3, v4, v5, v2, v6}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    #@32
    move-result-object v3

    #@33
    iput-object v3, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@35
    .line 466
    const-string/jumbo v3, "eglCreateWindowSurface"

    #@38
    invoke-direct {p0, v3}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    #@3b
    goto :goto_0

    #@3c
    .line 456
    .end local v0    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_2
    return-void
.end method

.method private configureEGLPbufferSurfaces(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;>;"
    const/4 v7, 0x0

    #@1
    .line 471
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_1

    #@9
    .line 472
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v6, "No Surfaces were provided to draw to"

    #@e
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5

    #@12
    .line 475
    :cond_1
    const/4 v3, 0x0

    #@13
    .line 476
    .local v3, "maxLength":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@23
    .line 477
    .local v0, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@25
    iget v6, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@27
    mul-int v2, v5, v6

    #@29
    .line 479
    .local v2, "length":I
    if-le v2, v3, :cond_2

    #@2b
    move v3, v2

    #@2c
    .line 480
    :cond_2
    const/4 v5, 0x5

    #@2d
    new-array v4, v5, [I

    #@2f
    .line 481
    const/16 v5, 0x3057

    #@31
    aput v5, v4, v7

    #@33
    iget v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@35
    const/4 v6, 0x1

    #@36
    aput v5, v4, v6

    #@38
    .line 482
    const/16 v5, 0x3056

    #@3a
    const/4 v6, 0x2

    #@3b
    aput v5, v4, v6

    #@3d
    iget v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@3f
    const/4 v6, 0x3

    #@40
    aput v5, v4, v6

    #@42
    .line 483
    const/16 v5, 0x3038

    #@44
    const/4 v6, 0x4

    #@45
    aput v5, v4, v6

    #@47
    .line 486
    .local v4, "surfaceAttribs":[I
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@49
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    #@4b
    invoke-static {v5, v6, v4, v7}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    #@4e
    move-result-object v5

    #@4f
    .line 485
    iput-object v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@51
    .line 487
    const-string/jumbo v5, "eglCreatePbufferSurface"

    #@54
    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    #@57
    goto :goto_0

    #@58
    .line 489
    .end local v0    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v2    # "length":I
    .end local v4    # "surfaceAttribs":[I
    :cond_3
    mul-int/lit8 v5, v3, 0x4

    #@5a
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@5d
    move-result-object v5

    #@5e
    .line 490
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@61
    move-result-object v6

    #@62
    .line 489
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@65
    move-result-object v5

    #@66
    iput-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    #@68
    .line 470
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 220
    const v4, 0x8b31

    #@5
    invoke-direct {p0, v4, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->loadShader(ILjava/lang/String;)I

    #@8
    move-result v3

    #@9
    .line 221
    .local v3, "vertexShader":I
    if-nez v3, :cond_0

    #@b
    .line 222
    return v6

    #@c
    .line 224
    :cond_0
    const v4, 0x8b30

    #@f
    invoke-direct {p0, v4, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->loadShader(ILjava/lang/String;)I

    #@12
    move-result v1

    #@13
    .line 225
    .local v1, "pixelShader":I
    if-nez v1, :cond_1

    #@15
    .line 226
    return v6

    #@16
    .line 229
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    #@19
    move-result v2

    #@1a
    .line 230
    .local v2, "program":I
    const-string/jumbo v4, "glCreateProgram"

    #@1d
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@20
    .line 231
    if-nez v2, :cond_2

    #@22
    .line 232
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@24
    const-string/jumbo v5, "Could not create program"

    #@27
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 234
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    #@2d
    .line 235
    const-string/jumbo v4, "glAttachShader"

    #@30
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@33
    .line 236
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    #@36
    .line 237
    const-string/jumbo v4, "glAttachShader"

    #@39
    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@3c
    .line 238
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    #@3f
    .line 239
    new-array v0, v7, [I

    #@41
    .line 240
    .local v0, "linkStatus":[I
    const v4, 0x8b82

    #@44
    invoke-static {v2, v4, v0, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    #@47
    .line 241
    aget v4, v0, v6

    #@49
    if-eq v4, v7, :cond_3

    #@4b
    .line 242
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@4d
    const-string/jumbo v5, "Could not link program: "

    #@50
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 243
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@55
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 244
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    #@5f
    .line 246
    new-instance v4, Ljava/lang/IllegalStateException;

    #@61
    const-string/jumbo v5, "Could not link program"

    #@64
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4

    #@68
    .line 248
    :cond_3
    return v2
.end method

.method private drawFrame(Landroid/graphics/SurfaceTexture;III)V
    .locals 17
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flipType"    # I

    #@0
    .prologue
    .line 252
    const-string/jumbo v2, "onDrawFrame start"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@8
    .line 253
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    #@11
    .line 255
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    #@15
    const/4 v3, 0x0

    #@16
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    #@19
    .line 260
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getTextureSize(Landroid/graphics/SurfaceTexture;)Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v9

    #@1d
    .line 265
    .local v9, "dimens":Landroid/util/Size;
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    #@20
    move-result v2

    #@21
    int-to-float v0, v2

    #@22
    move/from16 v16, v0

    #@24
    .line 266
    .local v16, "texWidth":F
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    #@27
    move-result v2

    #@28
    int-to-float v15, v2

    #@29
    .line 268
    .local v15, "texHeight":F
    const/4 v2, 0x0

    #@2a
    cmpg-float v2, v16, v2

    #@2c
    if-lez v2, :cond_0

    #@2e
    const/4 v2, 0x0

    #@2f
    cmpg-float v2, v15, v2

    #@31
    if-gtz v2, :cond_1

    #@33
    .line 269
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@35
    const-string/jumbo v3, "Illegal intermediate texture with dimension of 0"

    #@38
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 261
    .end local v9    # "dimens":Landroid/util/Size;
    .end local v15    # "texHeight":F
    .end local v16    # "texWidth":F
    :catch_0
    move-exception v10

    #@3d
    .line 263
    .local v10, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3f
    const-string/jumbo v3, "Surface abandoned, skipping drawFrame..."

    #@42
    invoke-direct {v2, v3, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    throw v2

    #@46
    .line 273
    .end local v10    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v9    # "dimens":Landroid/util/Size;
    .restart local v15    # "texHeight":F
    .restart local v16    # "texWidth":F
    :cond_1
    new-instance v11, Landroid/graphics/RectF;

    #@48
    const/4 v2, 0x0

    #@49
    const/4 v3, 0x0

    #@4a
    move/from16 v0, v16

    #@4c
    invoke-direct {v11, v2, v3, v0, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@4f
    .line 274
    .local v11, "intermediate":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/RectF;

    #@51
    const/4 v2, 0x0

    #@52
    const/4 v3, 0x0

    #@53
    move/from16 v0, p2

    #@55
    int-to-float v4, v0

    #@56
    move/from16 v0, p3

    #@58
    int-to-float v5, v0

    #@59
    invoke-direct {v12, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@5c
    .line 275
    .local v12, "output":Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/Matrix;

    #@5e
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    #@61
    .line 276
    .local v8, "boxingXform":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #@63
    invoke-virtual {v8, v12, v11, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    #@66
    .line 277
    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@69
    .line 281
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    #@6c
    move-result v2

    #@6d
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    #@70
    move-result v3

    #@71
    div-float v13, v2, v3

    #@73
    .line 282
    .local v13, "scaleX":F
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    #@76
    move-result v2

    #@77
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    #@7a
    move-result v3

    #@7b
    div-float v14, v2, v3

    #@7d
    .line 288
    .local v14, "scaleY":F
    move-object/from16 v0, p0

    #@7f
    iget-object v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    #@81
    const/high16 v3, 0x3f800000    # 1.0f

    #@83
    const/4 v4, 0x0

    #@84
    invoke-static {v2, v4, v13, v14, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    #@87
    .line 297
    const/4 v2, 0x0

    #@88
    const/4 v3, 0x0

    #@89
    move/from16 v0, p2

    #@8b
    move/from16 v1, p3

    #@8d
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    #@90
    .line 304
    move-object/from16 v0, p0

    #@92
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@94
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    #@97
    .line 305
    const-string/jumbo v2, "glUseProgram"

    #@9a
    move-object/from16 v0, p0

    #@9c
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@9f
    .line 307
    const v2, 0x84c0

    #@a2
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    #@a5
    .line 308
    move-object/from16 v0, p0

    #@a7
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    #@a9
    const v3, 0x8d65

    #@ac
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@af
    .line 311
    packed-switch p4, :pswitch_data_0

    #@b2
    .line 322
    move-object/from16 v0, p0

    #@b4
    iget-object v7, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    #@b6
    .line 326
    .local v7, "triangleVertices":Ljava/nio/FloatBuffer;
    :goto_0
    const/4 v2, 0x0

    #@b7
    invoke-virtual {v7, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@ba
    .line 327
    move-object/from16 v0, p0

    #@bc
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    #@be
    const/4 v3, 0x3

    #@bf
    const/16 v4, 0x1406

    #@c1
    .line 328
    const/4 v5, 0x0

    #@c2
    const/16 v6, 0x14

    #@c4
    .line 327
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    #@c7
    .line 329
    const-string/jumbo v2, "glVertexAttribPointer maPosition"

    #@ca
    move-object/from16 v0, p0

    #@cc
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@cf
    .line 330
    move-object/from16 v0, p0

    #@d1
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    #@d3
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    #@d6
    .line 331
    const-string/jumbo v2, "glEnableVertexAttribArray maPositionHandle"

    #@d9
    move-object/from16 v0, p0

    #@db
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@de
    .line 333
    const/4 v2, 0x3

    #@df
    invoke-virtual {v7, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@e2
    .line 334
    move-object/from16 v0, p0

    #@e4
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    #@e6
    const/4 v3, 0x2

    #@e7
    const/16 v4, 0x1406

    #@e9
    .line 335
    const/4 v5, 0x0

    #@ea
    const/16 v6, 0x14

    #@ec
    .line 334
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    #@ef
    .line 336
    const-string/jumbo v2, "glVertexAttribPointer maTextureHandle"

    #@f2
    move-object/from16 v0, p0

    #@f4
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@f7
    .line 337
    move-object/from16 v0, p0

    #@f9
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    #@fb
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    #@fe
    .line 338
    const-string/jumbo v2, "glEnableVertexAttribArray maTextureHandle"

    #@101
    move-object/from16 v0, p0

    #@103
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@106
    .line 340
    move-object/from16 v0, p0

    #@108
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget-object v3, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    #@10e
    const/4 v4, 0x1

    #@10f
    const/4 v5, 0x0

    #@110
    .line 341
    const/4 v6, 0x0

    #@111
    .line 340
    invoke-static {v2, v4, v5, v3, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    #@114
    .line 342
    move-object/from16 v0, p0

    #@116
    iget v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    #@118
    move-object/from16 v0, p0

    #@11a
    iget-object v3, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    #@11c
    const/4 v4, 0x1

    #@11d
    const/4 v5, 0x0

    #@11e
    .line 343
    const/4 v6, 0x0

    #@11f
    .line 342
    invoke-static {v2, v4, v5, v3, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    #@122
    .line 345
    const/4 v2, 0x5

    #@123
    const/4 v3, 0x0

    #@124
    const/4 v4, 0x4

    #@125
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    #@128
    .line 346
    const-string/jumbo v2, "glDrawArrays"

    #@12b
    move-object/from16 v0, p0

    #@12d
    invoke-direct {v0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@130
    .line 251
    return-void

    #@131
    .line 313
    .end local v7    # "triangleVertices":Ljava/nio/FloatBuffer;
    :pswitch_0
    move-object/from16 v0, p0

    #@133
    iget-object v7, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@135
    .restart local v7    # "triangleVertices":Ljava/nio/FloatBuffer;
    goto :goto_0

    #@136
    .line 316
    .end local v7    # "triangleVertices":Ljava/nio/FloatBuffer;
    :pswitch_1
    move-object/from16 v0, p0

    #@138
    iget-object v7, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@13a
    .restart local v7    # "triangleVertices":Ljava/nio/FloatBuffer;
    goto/16 :goto_0

    #@13c
    .line 319
    .end local v7    # "triangleVertices":Ljava/nio/FloatBuffer;
    :pswitch_2
    move-object/from16 v0, p0

    #@13e
    iget-object v7, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    #@140
    .restart local v7    # "triangleVertices":Ljava/nio/FloatBuffer;
    goto/16 :goto_0

    #@142
    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpGlTiming()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 560
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@5
    if-nez v5, :cond_0

    #@7
    return-void

    #@8
    .line 562
    :cond_0
    new-instance v0, Ljava/io/File;

    #@a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@d
    move-result-object v5

    #@e
    const-string/jumbo v6, "CameraLegacy"

    #@11
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    .line 563
    .local v0, "legacyStorageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_1

    #@1a
    .line 564
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_1

    #@20
    .line 565
    sget-object v5, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@22
    const-string/jumbo v6, "Failed to create directory for data dump"

    #@25
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 566
    return-void

    #@29
    .line 570
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@32
    .line 571
    .local v2, "path":Ljava/lang/StringBuilder;
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 572
    const-string/jumbo v5, "durations_"

    #@3a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 574
    new-instance v1, Landroid/text/format/Time;

    #@3f
    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    #@42
    .line 575
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    #@45
    .line 576
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 577
    const-string/jumbo v5, "_S"

    #@4f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 578
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@54
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v4

    #@58
    .local v4, "surface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_2

    #@5e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@64
    .line 579
    .local v3, "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    const-string/jumbo v5, "_%d_%d"

    #@67
    new-array v6, v10, [Ljava/lang/Object;

    #@69
    iget v7, v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@6b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v7

    #@6f
    aput-object v7, v6, v8

    #@71
    iget v7, v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76
    move-result-object v7

    #@77
    aput-object v7, v6, v9

    #@79
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    goto :goto_0

    #@81
    .line 581
    .end local v3    # "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_2
    const-string/jumbo v5, "_C"

    #@84
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 582
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@89
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8c
    move-result-object v4

    #@8d
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@90
    move-result v5

    #@91
    if-eqz v5, :cond_3

    #@93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@96
    move-result-object v3

    #@97
    check-cast v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@99
    .line 583
    .restart local v3    # "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    const-string/jumbo v5, "_%d_%d"

    #@9c
    new-array v6, v10, [Ljava/lang/Object;

    #@9e
    iget v7, v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@a0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v7

    #@a4
    aput-object v7, v6, v8

    #@a6
    iget v7, v3, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@a8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v7

    #@ac
    aput-object v7, v6, v9

    #@ae
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    goto :goto_1

    #@b6
    .line 585
    .end local v3    # "surface":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_3
    const-string/jumbo v5, ".txt"

    #@b9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    .line 586
    iget-object v5, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/legacy/PerfMeasurement;->dumpPerformanceData(Ljava/lang/String;)V

    #@c5
    .line 559
    return-void
.end method

.method private endGlTiming()V
    .locals 1

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 611
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@7
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->stopTimer()V

    #@a
    .line 609
    return-void
.end method

.method private getTextureId()I
    .locals 1

    #@0
    .prologue
    .line 399
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    #@2
    return v0
.end method

.method private initializeGLState()V
    .locals 8

    #@0
    .prologue
    const v7, 0x812f

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v4, -0x1

    #@6
    const v3, 0x8d65

    #@9
    .line 353
    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    #@c
    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    #@f
    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    iput v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@15
    .line 354
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@17
    if-nez v1, :cond_0

    #@19
    .line 355
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v2, "failed creating program"

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 357
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@24
    const-string/jumbo v2, "aPosition"

    #@27
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    #@2d
    .line 358
    const-string/jumbo v1, "glGetAttribLocation aPosition"

    #@30
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@33
    .line 359
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    #@35
    if-ne v1, v4, :cond_1

    #@37
    .line 360
    new-instance v1, Ljava/lang/IllegalStateException;

    #@39
    const-string/jumbo v2, "Could not get attrib location for aPosition"

    #@3c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 362
    :cond_1
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@42
    const-string/jumbo v2, "aTextureCoord"

    #@45
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    #@48
    move-result v1

    #@49
    iput v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    #@4b
    .line 363
    const-string/jumbo v1, "glGetAttribLocation aTextureCoord"

    #@4e
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@51
    .line 364
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    #@53
    if-ne v1, v4, :cond_2

    #@55
    .line 365
    new-instance v1, Ljava/lang/IllegalStateException;

    #@57
    const-string/jumbo v2, "Could not get attrib location for aTextureCoord"

    #@5a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v1

    #@5e
    .line 368
    :cond_2
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@60
    const-string/jumbo v2, "uMVPMatrix"

    #@63
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@66
    move-result v1

    #@67
    iput v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    #@69
    .line 369
    const-string/jumbo v1, "glGetUniformLocation uMVPMatrix"

    #@6c
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@6f
    .line 370
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    #@71
    if-ne v1, v4, :cond_3

    #@73
    .line 371
    new-instance v1, Ljava/lang/IllegalStateException;

    #@75
    const-string/jumbo v2, "Could not get attrib location for uMVPMatrix"

    #@78
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v1

    #@7c
    .line 374
    :cond_3
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    #@7e
    const-string/jumbo v2, "uSTMatrix"

    #@81
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    #@84
    move-result v1

    #@85
    iput v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    #@87
    .line 375
    const-string/jumbo v1, "glGetUniformLocation uSTMatrix"

    #@8a
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@8d
    .line 376
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    #@8f
    if-ne v1, v4, :cond_4

    #@91
    .line 377
    new-instance v1, Ljava/lang/IllegalStateException;

    #@93
    const-string/jumbo v2, "Could not get attrib location for uSTMatrix"

    #@96
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@99
    throw v1

    #@9a
    .line 380
    :cond_4
    new-array v0, v6, [I

    #@9c
    .line 381
    .local v0, "textures":[I
    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    #@9f
    .line 383
    aget v1, v0, v5

    #@a1
    iput v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    #@a3
    .line 384
    iget v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    #@a5
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    #@a8
    .line 385
    const-string/jumbo v1, "glBindTexture mTextureID"

    #@ab
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@ae
    .line 388
    const/high16 v1, 0x46180000    # 9728.0f

    #@b0
    .line 387
    const/16 v2, 0x2801

    #@b2
    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    #@b5
    .line 390
    const v1, 0x46180400    # 9729.0f

    #@b8
    .line 389
    const/16 v2, 0x2800

    #@ba
    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    #@bd
    .line 391
    const/16 v1, 0x2802

    #@bf
    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@c2
    .line 393
    const/16 v1, 0x2803

    #@c4
    invoke-static {v3, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    #@c7
    .line 395
    const-string/jumbo v1, "glTexParameter"

    #@ca
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@cd
    .line 352
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 203
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    #@4
    move-result v1

    #@5
    .line 204
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "glCreateShader type="

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@1c
    .line 205
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    #@1f
    .line 206
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    #@22
    .line 207
    const/4 v2, 0x1

    #@23
    new-array v0, v2, [I

    #@25
    .line 208
    .local v0, "compiled":[I
    const v2, 0x8b81

    #@28
    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    #@2b
    .line 209
    aget v2, v0, v4

    #@2d
    if-nez v2, :cond_0

    #@2f
    .line 210
    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Could not compile shader "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, ":"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 211
    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, " "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 212
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    #@6f
    .line 214
    new-instance v2, Ljava/lang/IllegalStateException;

    #@71
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v4, "Could not compile shader "

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@88
    throw v2

    #@89
    .line 216
    :cond_0
    return v1
.end method

.method private makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2
    .param p1, "surface"    # Landroid/opengl/EGLSurface;

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@2
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    #@4
    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    #@7
    .line 525
    const-string/jumbo v0, "makeCurrent"

    #@a
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    #@d
    .line 523
    return-void
.end method

.method private releaseEGLContext()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 494
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@3
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    #@5
    if-eq v2, v3, :cond_4

    #@7
    .line 495
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@9
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    #@b
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    #@d
    .line 496
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@f
    .line 495
    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    #@12
    .line 497
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->dumpGlTiming()V

    #@15
    .line 498
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 499
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@1b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "holder$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@2b
    .line 500
    .local v0, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 501
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@31
    iget-object v3, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@33
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    #@36
    goto :goto_0

    #@37
    .line 505
    .end local v0    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 506
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@3d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v1

    #@41
    .restart local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_3

    #@47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@4d
    .line 507
    .restart local v0    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v2, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@4f
    if-eqz v2, :cond_2

    #@51
    .line 508
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@53
    iget-object v3, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@55
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    #@58
    goto :goto_1

    #@59
    .line 512
    .end local v0    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@5b
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    #@5d
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    #@60
    .line 513
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    #@63
    .line 514
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@65
    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    #@68
    .line 517
    :cond_4
    iput-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    #@6a
    .line 518
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    #@6c
    iput-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@6e
    .line 519
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    #@70
    iput-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    #@72
    .line 520
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->clearState()V

    #@75
    .line 493
    return-void
.end method

.method private setupGlTiming()V
    .locals 2

    #@0
    .prologue
    .line 590
    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->isGlTimingSupported()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 591
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@8
    const-string/jumbo v1, "Enabling GL performance measurement"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 592
    new-instance v0, Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@10
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;-><init>()V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@15
    .line 589
    :goto_0
    return-void

    #@16
    .line 594
    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@18
    const-string/jumbo v1, "GL performance measurement not supported on this device"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 595
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    #@21
    goto :goto_0
.end method

.method private swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 5
    .param p1, "surface"    # Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    #@2
    invoke-static {v2, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    #@5
    move-result v1

    #@6
    .line 531
    .local v1, "result":Z
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    #@9
    move-result v0

    #@a
    .line 532
    .local v0, "error":I
    const/16 v2, 0x300d

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 533
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    #@10
    invoke-direct {v2}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    #@13
    throw v2

    #@14
    .line 534
    :cond_0
    const/16 v2, 0x3000

    #@16
    if-eq v0, v2, :cond_1

    #@18
    .line 535
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "swapBuffers: EGL error: 0x"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 536
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 538
    :cond_1
    return v1
.end method


# virtual methods
.method public cleanupEGLContext()V
    .locals 0

    #@0
    .prologue
    .line 794
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->releaseEGLContext()V

    #@3
    .line 793
    return-void
.end method

.method public configureSurfaces(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    const/4 v8, 0x0

    #@1
    .line 630
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->releaseEGLContext()V

    #@4
    .line 632
    if-eqz p1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_1

    #@c
    .line 633
    :cond_0
    sget-object v6, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v7, "No output surfaces configured for GL drawing."

    #@11
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 634
    return-void

    #@15
    .line 637
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .local v3, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_3

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/util/Pair;

    #@25
    .line 638
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@27
    check-cast v4, Landroid/view/Surface;

    #@29
    .line 639
    .local v4, "s":Landroid/view/Surface;
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2b
    check-cast v5, Landroid/util/Size;

    #@2d
    .line 642
    .local v5, "surfaceSize":Landroid/util/Size;
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@2f
    const/4 v6, 0x0

    #@30
    invoke-direct {v1, p0, v6}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;-><init>(Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;)V

    #@33
    .line 643
    .local v1, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iput-object v4, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@35
    .line 644
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    #@38
    move-result v6

    #@39
    iput v6, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@3b
    .line 645
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    #@3e
    move-result v6

    #@3f
    iput v6, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@41
    .line 646
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->needsConversion(Landroid/view/Surface;)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_2

    #@47
    .line 647
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@49
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 650
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->connectSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    goto :goto_0

    #@50
    .line 654
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :catch_0
    move-exception v0

    #@51
    .line 655
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v6, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@53
    const-string/jumbo v7, "Surface abandoned, skipping configuration... "

    #@56
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@59
    goto :goto_0

    #@5a
    .line 652
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_2
    :try_start_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@5c
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    #@5f
    goto :goto_0

    #@60
    .line 660
    .end local v1    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;"
    .end local v4    # "s":Landroid/view/Surface;
    .end local v5    # "surfaceSize":Landroid/util/Size;
    :cond_3
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLContext()V

    #@63
    .line 663
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@65
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@68
    move-result v6

    #@69
    if-lez v6, :cond_4

    #@6b
    .line 664
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@6d
    invoke-direct {p0, v6}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLOutputSurfaces(Ljava/util/Collection;)V

    #@70
    .line 668
    :cond_4
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@72
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@75
    move-result v6

    #@76
    if-lez v6, :cond_5

    #@78
    .line 669
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@7a
    invoke-direct {p0, v6}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLPbufferSurfaces(Ljava/util/Collection;)V

    #@7d
    .line 671
    :cond_5
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@7f
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@82
    move-result v6

    #@83
    if-lez v6, :cond_7

    #@85
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@87
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v6

    #@8b
    check-cast v6, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@8d
    iget-object v6, v6, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@8f
    :goto_1
    invoke-direct {p0, v6}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    #@92
    .line 673
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->initializeGLState()V

    #@95
    .line 674
    new-instance v6, Landroid/graphics/SurfaceTexture;

    #@97
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getTextureId()I

    #@9a
    move-result v7

    #@9b
    invoke-direct {v6, v7}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #@9e
    iput-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@a0
    .line 677
    const-string/jumbo v6, "persist.camera.legacy_perf"

    #@a3
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_6

    #@a9
    .line 678
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->setupGlTiming()V

    #@ac
    .line 629
    :cond_6
    return-void

    #@ad
    .line 672
    :cond_7
    iget-object v6, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@af
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b2
    move-result-object v6

    #@b3
    check-cast v6, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@b5
    iget-object v6, v6, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@b7
    goto :goto_1
.end method

.method public drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 22
    .param p1, "targetCollector"    # Landroid/hardware/camera2/legacy/CaptureCollector;

    #@0
    .prologue
    .line 696
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@4
    if-eqz v4, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@a
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_2

    #@10
    .line 697
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@14
    if-eqz v4, :cond_1

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 698
    :cond_1
    return-void

    #@21
    .line 701
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->hasPendingPreviewCaptures()Z

    #@24
    move-result v12

    #@25
    .line 702
    .local v12, "doTiming":Z
    const-string/jumbo v4, "before updateTexImage"

    #@28
    move-object/from16 v0, p0

    #@2a
    invoke-direct {v0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@2d
    .line 704
    if-eqz v12, :cond_3

    #@2f
    .line 705
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->beginGlTiming()V

    #@32
    .line 708
    :cond_3
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@36
    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    #@39
    .line 710
    move-object/from16 v0, p0

    #@3b
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@3d
    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    #@40
    move-result-wide v20

    #@41
    .line 712
    .local v20, "timestamp":J
    move-object/from16 v0, p1

    #@43
    move-wide/from16 v1, v20

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector;->previewCaptured(J)Landroid/util/Pair;

    #@48
    move-result-object v11

    #@49
    .line 715
    .local v11, "captureHolder":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/RequestHolder;Ljava/lang/Long;>;"
    if-nez v11, :cond_5

    #@4b
    .line 719
    if-eqz v12, :cond_4

    #@4d
    .line 720
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->endGlTiming()V

    #@50
    .line 722
    :cond_4
    return-void

    #@51
    .line 725
    :cond_5
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@53
    move-object/from16 v17, v0

    #@55
    check-cast v17, Landroid/hardware/camera2/legacy/RequestHolder;

    #@57
    .line 727
    .local v17, "request":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    #@5a
    move-result-object v19

    #@5b
    .line 728
    .local v19, "targetSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-eqz v12, :cond_6

    #@5d
    .line 729
    move-object/from16 v0, p0

    #@5f
    move-wide/from16 v1, v20

    #@61
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->addGlTimestamp(J)V

    #@64
    .line 732
    :cond_6
    new-instance v18, Ljava/util/ArrayList;

    #@66
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@69
    .line 734
    .local v18, "targetSurfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-static/range {v19 .. v19}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_1

    #@6c
    move-result-object v18

    #@6d
    .line 740
    :goto_0
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    #@71
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v16

    #@75
    .local v16, "holder$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v4

    #@79
    if-eqz v4, :cond_9

    #@7b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v15

    #@7f
    check-cast v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@81
    .line 741
    .local v15, "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@83
    move-object/from16 v0, v18

    #@85
    invoke-static {v4, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_7

    #@8b
    .line 743
    :try_start_1
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@8d
    iget v5, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@8f
    .line 744
    iget v6, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@91
    .line 743
    invoke-static {v4, v5, v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    #@94
    .line 745
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@96
    move-object/from16 v0, p0

    #@98
    invoke-direct {v0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    #@9b
    .line 747
    iget-object v5, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@9d
    iget-object v4, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9f
    check-cast v4, Ljava/lang/Long;

    #@a1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@a4
    move-result-wide v6

    #@a5
    invoke-static {v5, v6, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    #@a8
    .line 748
    move-object/from16 v0, p0

    #@aa
    iget-object v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@ac
    iget v6, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@ae
    iget v7, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@b0
    .line 749
    move-object/from16 v0, p0

    #@b2
    iget v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    #@b4
    if-nez v4, :cond_8

    #@b6
    .line 750
    const/4 v4, 0x1

    #@b7
    .line 748
    :goto_2
    move-object/from16 v0, p0

    #@b9
    invoke-direct {v0, v5, v6, v7, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;III)V

    #@bc
    .line 751
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@be
    move-object/from16 v0, p0

    #@c0
    invoke-direct {v0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->swapBuffers(Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    #@c3
    goto :goto_1

    #@c4
    .line 752
    :catch_0
    move-exception v13

    #@c5
    .line 753
    .local v13, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@c7
    const-string/jumbo v5, "Surface abandoned, dropping frame. "

    #@ca
    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cd
    .line 754
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    #@d0
    goto :goto_1

    #@d1
    .line 735
    .end local v13    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v15    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .end local v16    # "holder$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v13

    #@d2
    .line 736
    .restart local v13    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@d4
    const-string/jumbo v5, "Surface abandoned, dropping frame. "

    #@d7
    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@da
    .line 737
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    #@dd
    goto :goto_0

    #@de
    .line 750
    .end local v13    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v15    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    .restart local v16    # "holder$iterator":Ljava/util/Iterator;
    :cond_8
    const/4 v4, 0x0

    #@df
    goto :goto_2

    #@e0
    .line 758
    .end local v15    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_9
    move-object/from16 v0, p0

    #@e2
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    #@e4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e7
    move-result-object v16

    #@e8
    :cond_a
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@eb
    move-result v4

    #@ec
    if-eqz v4, :cond_c

    #@ee
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f1
    move-result-object v15

    #@f2
    check-cast v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    #@f4
    .line 759
    .restart local v15    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@f6
    move-object/from16 v0, v18

    #@f8
    invoke-static {v4, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_a

    #@fe
    .line 760
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    #@100
    move-object/from16 v0, p0

    #@102
    invoke-direct {v0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    #@105
    .line 762
    move-object/from16 v0, p0

    #@107
    iget-object v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@109
    iget v6, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@10b
    iget v7, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@10d
    .line 763
    move-object/from16 v0, p0

    #@10f
    iget v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    #@111
    if-nez v4, :cond_b

    #@113
    .line 764
    const/4 v4, 0x3

    #@114
    .line 762
    :goto_4
    move-object/from16 v0, p0

    #@116
    invoke-direct {v0, v5, v6, v7, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;III)V

    #@119
    .line 765
    move-object/from16 v0, p0

    #@11b
    iget-object v4, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    #@11d
    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    #@120
    .line 766
    iget v6, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@122
    iget v7, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@124
    .line 767
    move-object/from16 v0, p0

    #@126
    iget-object v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    #@128
    .line 766
    const/4 v4, 0x0

    #@129
    const/4 v5, 0x0

    #@12a
    .line 767
    const/16 v8, 0x1908

    #@12c
    const/16 v9, 0x1401

    #@12e
    .line 766
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    #@131
    .line 768
    const-string/jumbo v4, "glReadPixels"

    #@134
    move-object/from16 v0, p0

    #@136
    invoke-direct {v0, v4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    #@139
    .line 771
    :try_start_2
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@13b
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@13e
    move-result v14

    #@13f
    .line 772
    .local v14, "format":I
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@141
    iget v5, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@143
    .line 773
    iget v6, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@145
    .line 772
    invoke-static {v4, v5, v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    #@148
    .line 774
    iget-object v5, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@14a
    iget-object v4, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@14c
    check-cast v4, Ljava/lang/Long;

    #@14e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@151
    move-result-wide v6

    #@152
    invoke-static {v5, v6, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    #@155
    .line 775
    iget-object v4, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v5, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    #@15b
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    #@15e
    move-result-object v5

    #@15f
    .line 776
    iget v6, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    #@161
    iget v7, v15, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    #@163
    .line 775
    invoke-static {v4, v5, v6, v7, v14}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_2

    #@166
    goto :goto_3

    #@167
    .line 777
    .end local v14    # "format":I
    :catch_2
    move-exception v13

    #@168
    .line 778
    .restart local v13    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    sget-object v4, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@16a
    const-string/jumbo v5, "Surface abandoned, dropping frame. "

    #@16d
    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@170
    .line 779
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    #@173
    goto/16 :goto_3

    #@175
    .line 764
    .end local v13    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    :cond_b
    const/4 v4, 0x2

    #@176
    goto :goto_4

    #@177
    .line 783
    .end local v15    # "holder":Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;

    #@17a
    .line 785
    if-eqz v12, :cond_d

    #@17c
    .line 786
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->endGlTiming()V

    #@17f
    .line 695
    :cond_d
    return-void
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 802
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "Flush not yet implemented."

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 800
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    #@2
    return-object v0
.end method

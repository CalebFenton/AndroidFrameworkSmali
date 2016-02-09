.class public Landroid/media/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FaceDetector$Face;
    }
.end annotation


# static fields
.field private static sInitialized:Z


# instance fields
.field private mBWBuffer:[B

.field private mDCR:J

.field private mFD:J

.field private mHeight:I

.field private mMaxFaces:I

.field private mSDK:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 179
    const/4 v1, 0x0

    #@1
    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z

    #@3
    .line 181
    :try_start_0
    const-string/jumbo v1, "FFTEm"

    #@6
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@9
    .line 182
    invoke-static {}, Landroid/media/FaceDetector;->nativeClassInit()V

    #@c
    .line 183
    const/4 v1, 0x1

    #@d
    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 29
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    #@10
    .line 184
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    #@11
    .line 185
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "FFTEm"

    #@14
    const-string/jumbo v2, "face detection library not found!"

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    goto :goto_0
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxFaces"    # I

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 115
    return-void

    #@8
    .line 117
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/FaceDetector;->fft_initialize(III)I

    #@b
    .line 118
    iput p1, p0, Landroid/media/FaceDetector;->mWidth:I

    #@d
    .line 119
    iput p2, p0, Landroid/media/FaceDetector;->mHeight:I

    #@f
    .line 120
    iput p3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    #@11
    .line 121
    mul-int v0, p1, p2

    #@13
    new-array v0, v0, [B

    #@15
    iput-object v0, p0, Landroid/media/FaceDetector;->mBWBuffer:[B

    #@17
    .line 112
    return-void
.end method

.method private native fft_destroy()V
.end method

.method private native fft_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native fft_get_face(Landroid/media/FaceDetector$Face;I)V
.end method

.method private native fft_initialize(III)I
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Landroid/media/FaceDetector;->fft_destroy()V

    #@3
    .line 167
    return-void
.end method

.method public findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "faces"    # [Landroid/media/FaceDetector$Face;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 141
    sget-boolean v2, Landroid/media/FaceDetector;->sInitialized:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 142
    const/4 v2, 0x0

    #@6
    return v2

    #@7
    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@a
    move-result v2

    #@b
    iget v3, p0, Landroid/media/FaceDetector;->mWidth:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@12
    move-result v2

    #@13
    iget v3, p0, Landroid/media/FaceDetector;->mHeight:I

    #@15
    if-eq v2, v3, :cond_2

    #@17
    .line 145
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@19
    .line 146
    const-string/jumbo v3, "bitmap size doesn\'t match initialization"

    #@1c
    .line 145
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 148
    :cond_2
    array-length v2, p2

    #@21
    iget v3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    #@23
    if-ge v2, v3, :cond_3

    #@25
    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    .line 150
    const-string/jumbo v3, "faces[] smaller than maxFaces"

    #@2a
    .line 149
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 153
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/FaceDetector;->fft_detect(Landroid/graphics/Bitmap;)I

    #@31
    move-result v1

    #@32
    .line 154
    .local v1, "numFaces":I
    iget v2, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    #@34
    if-lt v1, v2, :cond_4

    #@36
    .line 155
    iget v1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    #@38
    .line 156
    :cond_4
    const/4 v0, 0x0

    #@39
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    #@3b
    .line 157
    aget-object v2, p2, v0

    #@3d
    if-nez v2, :cond_5

    #@3f
    .line 158
    new-instance v2, Landroid/media/FaceDetector$Face;

    #@41
    invoke-direct {v2, p0, v4}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$Face;)V

    #@44
    aput-object v2, p2, v0

    #@46
    .line 159
    :cond_5
    aget-object v2, p2, v0

    #@48
    invoke-direct {p0, v2, v0}, Landroid/media/FaceDetector;->fft_get_face(Landroid/media/FaceDetector$Face;I)V

    #@4b
    .line 156
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 161
    :cond_6
    return v1
.end method

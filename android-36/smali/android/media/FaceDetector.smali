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
.field private static greylist-max-o sInitialized:Z


# instance fields
.field private greylist-max-o mBWBuffer:[B

.field private greylist-max-o mDCR:J

.field private greylist-max-o mFD:J

.field private greylist-max-o mHeight:I

.field private greylist-max-o mMaxFaces:I

.field private greylist-max-o mSDK:J

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 179
    const-string v0, "FFTEm"

    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z

    .line 181
    :try_start_5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Landroid/media/FaceDetector;->nativeClassInit()V

    .line 183
    const/4 v1, 0x1

    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z
    :try_end_e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_e} :catch_f

    .line 186
    goto :goto_15

    .line 184
    :catch_f
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "face detection library not found!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_15
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxFaces"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v0, :cond_8

    .line 115
    return-void

    .line 117
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Landroid/media/FaceDetector;->fft_initialize(III)I

    .line 118
    iput p1, p0, Landroid/media/FaceDetector;->mWidth:I

    .line 119
    iput p2, p0, Landroid/media/FaceDetector;->mHeight:I

    .line 120
    iput p3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 121
    mul-int v0, p1, p2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/FaceDetector;->mBWBuffer:[B

    .line 122
    return-void
.end method

.method private native greylist-max-o fft_destroy()V
.end method

.method private native greylist-max-o fft_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native greylist-max-o fft_get_face(Landroid/media/FaceDetector$Face;I)V
.end method

.method private native greylist-max-o fft_initialize(III)I
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Landroid/media/FaceDetector;->fft_destroy()V

    .line 169
    return-void
.end method

.method public whitelist findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "faces"    # [Landroid/media/FaceDetector$Face;

    .line 141
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v0, :cond_6

    .line 142
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/media/FaceDetector;->mWidth:I

    if-ne v0, v1, :cond_45

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/media/FaceDetector;->mHeight:I

    if-ne v0, v1, :cond_45

    .line 148
    array-length v0, p2

    iget v1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt v0, v1, :cond_3d

    .line 153
    invoke-direct {p0, p1}, Landroid/media/FaceDetector;->fft_detect(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 154
    .local v0, "numFaces":I
    iget v1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt v0, v1, :cond_25

    .line 155
    iget v0, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 156
    :cond_25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v0, :cond_3c

    .line 157
    aget-object v2, p2, v1

    if-nez v2, :cond_34

    .line 158
    new-instance v2, Landroid/media/FaceDetector$Face;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector-IA;)V

    aput-object v2, p2, v1

    .line 159
    :cond_34
    aget-object v2, p2, v1

    invoke-direct {p0, v2, v1}, Landroid/media/FaceDetector;->fft_get_face(Landroid/media/FaceDetector$Face;I)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 161
    .end local v1    # "i":I
    :cond_3c
    return v0

    .line 149
    .end local v0    # "numFaces":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "faces[] smaller than maxFaces"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap size doesn\'t match initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

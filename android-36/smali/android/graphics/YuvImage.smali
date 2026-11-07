.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static final blacklist sSupportedFormats:[Ljava/lang/String;

.field private static final blacklist sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

.field private static final blacklist sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mData:[B

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mStrides:[I

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 79
    const-string v0, "YCBCR_P010"

    const-string v1, "YUV_420_888"

    const-string v2, "NV21"

    const-string v3, "YUY2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    .line 104
    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method public constructor whitelist <init>([BIII[I)V
    .registers 14
    .param p1, "yuv"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I

    .line 149
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "yuv":[B
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "strides":[I
    .local v2, "yuv":[B
    .local v3, "format":I
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "strides":[I
    invoke-direct/range {v1 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[ILandroid/graphics/ColorSpace;)V

    .line 150
    return-void
.end method

.method public constructor whitelist <init>([BIII[ILandroid/graphics/ColorSpace;)V
    .registers 10
    .param p1, "yuv"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I
    .param p6, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/16 v0, 0x11

    if-eq p2, v0, :cond_32

    const/16 v0, 0x14

    if-eq p2, v0, :cond_32

    const/16 v0, 0x36

    if-eq p2, v0, :cond_32

    const/16 v0, 0x23

    if-ne p2, v0, :cond_14

    goto :goto_32

    .line 174
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only supports the following ImageFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_32
    :goto_32
    if-lez p3, :cond_61

    if-lez p4, :cond_61

    .line 183
    if-eqz p1, :cond_58

    .line 187
    if-eqz p6, :cond_50

    .line 191
    if-nez p5, :cond_43

    .line 192
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_45

    .line 194
    :cond_43
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 197
    :goto_45
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    .line 198
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    .line 199
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    .line 200
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    .line 201
    iput-object p6, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 202
    return-void

    .line 188
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ColorSpace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o adjustRectangle(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 429
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 430
    .local v1, "height":I
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_28

    .line 432
    and-int/lit8 v0, v0, -0x2

    .line 433
    and-int/lit8 v1, v1, -0x2

    .line 434
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 435
    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 436
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 437
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 440
    :cond_28
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_3b

    .line 442
    and-int/lit8 v0, v0, -0x2

    .line 443
    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 444
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 446
    :cond_3b
    return-void
.end method

.method private greylist-max-o calculateStrides(II)[I
    .registers 7
    .param p1, "width"    # I
    .param p2, "format"    # I

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "strides":[I
    sparse-switch p2, :sswitch_data_44

    .line 422
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "only supports the following ImageFormat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :sswitch_22
    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, p1, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 414
    .end local v0    # "strides":[I
    .local v1, "strides":[I
    return-object v1

    .line 416
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :sswitch_2b
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p1, 0x1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {p1, v1, v2}, [I

    move-result-object v1

    .line 417
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    return-object v1

    .line 419
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :sswitch_38
    mul-int/lit8 v1, p1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    .line 420
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    return-object v1

    .line 410
    .end local v1    # "strides":[I
    .restart local v0    # "strides":[I
    :sswitch_3f
    filled-new-array {p1, p1}, [I

    move-result-object v1

    .line 411
    .end local v0    # "strides":[I
    .restart local v1    # "strides":[I
    return-object v1

    :sswitch_data_44
    .sparse-switch
        0x11 -> :sswitch_3f
        0x14 -> :sswitch_38
        0x23 -> :sswitch_2b
        0x36 -> :sswitch_22
    .end sparse-switch
.end method

.method private static blacklist isSupportedJpegRColorSpace(ZI)Z
    .registers 8
    .param p0, "isHdr"    # Z
    .param p1, "colorSpace"    # I

    .line 123
    if-eqz p0, :cond_5

    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_7

    .line 124
    :cond_5
    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_7
    nop

    .line 125
    .local v0, "colorSpaces":[Landroid/graphics/ColorSpace$Named;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 126
    .local v4, "cs":Landroid/graphics/ColorSpace$Named;
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_17

    .line 127
    const/4 v1, 0x1

    return v1

    .line 125
    .end local v4    # "cs":Landroid/graphics/ColorSpace$Named;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 130
    :cond_1a
    return v2
.end method

.method private static native greylist-max-o nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z
.end method

.method private static blacklist printSupportedFormats()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 85
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 87
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 90
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist printSupportedJpegRColorSpaces(Z)Ljava/lang/String;
    .registers 5
    .param p0, "isHdr"    # Z

    .line 110
    if-eqz p0, :cond_5

    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_7

    .line 111
    :cond_5
    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_7
    nop

    .line 112
    .local v0, "colorSpaces":[Landroid/graphics/ColorSpace$Named;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_2b

    .line 114
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_28

    .line 116
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 119
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method greylist-max-o calculateOffsets(II)[I
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "offsets":[I
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-ne v1, v2, :cond_28

    .line 392
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v3

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v3, v4, v3

    mul-int/2addr v2, v3

    div-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 395
    .end local v0    # "offsets":[I
    .local v1, "offsets":[I
    return-object v1

    .line 398
    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_28
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_3d

    .line 399
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v3

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    filled-new-array {v1}, [I

    move-result-object v1

    .line 400
    .end local v0    # "offsets":[I
    .restart local v1    # "offsets":[I
    return-object v1

    .line 403
    .end local v1    # "offsets":[I
    .restart local v0    # "offsets":[I
    :cond_3d
    return-object v0
.end method

.method public whitelist compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .registers 16
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .line 220
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 221
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21 and ImageFormat.YUY2 are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_80

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    .local v0, "wholeImage":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 234
    if-ltz p2, :cond_6a

    const/16 v1, 0x64

    if-gt p2, v1, :cond_6a

    .line 238
    if-eqz p3, :cond_5f

    .line 242
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    .line 243
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v7

    .line 245
    .local v7, "offsets":[I
    iget-object v3, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v4, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 v1, 0x1000

    new-array v11, v1, [B

    .line 245
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .local v9, "quality":I
    .local v10, "stream":Ljava/io/OutputStream;
    invoke-static/range {v3 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result p2

    return p2

    .line 239
    .end local v7    # "offsets":[I
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_5f
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "stream cannot be null"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 234
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_6a
    move v9, p2

    move-object v10, p3

    .line 235
    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "quality must be 0..100"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 230
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_75
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "rectangle is not inside the image"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 225
    .end local v0    # "wholeImage":Landroid/graphics/Rect;
    .end local v9    # "quality":I
    .end local v10    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_80
    move v9, p2

    move-object v10, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v9    # "quality":I
    .restart local v10    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Only SRGB color space is supported."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;)Z
    .registers 6
    .param p1, "sdr"    # Landroid/graphics/YuvImage;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 277
    .local v0, "emptyExif":[B
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/YuvImage;->compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z

    move-result v1

    return v1
.end method

.method public blacklist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z
    .registers 17
    .param p1, "sdr"    # Landroid/graphics/YuvImage;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "exif"    # [B

    .line 308
    if-eqz p1, :cond_d1

    .line 312
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    array-length v0, v0

    if-eqz v0, :cond_c9

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_c9

    .line 316
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_c0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_c0

    .line 321
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    if-ne v0, v1, :cond_b8

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/YuvImage;->mHeight:I

    if-ne v0, v1, :cond_b8

    .line 325
    if-ltz p2, :cond_af

    const/16 v0, 0x64

    if-gt p2, v0, :cond_af

    .line 329
    if-eqz p3, :cond_a6

    .line 333
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7b

    .line 334
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 340
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    iget-object v1, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v1

    .line 341
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v3

    iget v4, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v5, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/16 v7, 0x1000

    new-array v8, v7, [B

    iget-object v10, p0, Landroid/graphics/YuvImage;->mStrides:[I

    .line 344
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v11

    .line 340
    move v6, p2

    move-object v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v0 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z

    move-result v0

    return v0

    .line 335
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported color space. SDR only supports: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-static {v2}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HDR only supports: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    invoke-static {v1}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HDR and SDR resolution mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support ImageFormat.YCBCR_P010 and ImageFormat.YUV_420_888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input images cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDR input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 380
    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public whitelist getStrides()[I
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 373
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public whitelist getYuvData()[B
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public whitelist getYuvFormat()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method

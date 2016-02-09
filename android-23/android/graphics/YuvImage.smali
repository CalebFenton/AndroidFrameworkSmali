.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mStrides:[I

.field private mWidth:I


# direct methods
.method public constructor <init>([BIII[I)V
    .locals 2
    .param p1, "yuv"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "strides"    # [I

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const/16 v0, 0x11

    #@5
    if-eq p2, v0, :cond_0

    #@7
    .line 81
    const/16 v0, 0x14

    #@9
    if-eq p2, v0, :cond_0

    #@b
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    .line 83
    const-string/jumbo v1, "only support ImageFormat.NV21 and ImageFormat.YUY2 for now"

    #@10
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 87
    :cond_0
    if-lez p3, :cond_1

    #@16
    if-gtz p4, :cond_2

    #@18
    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 89
    const-string/jumbo v1, "width and height must large than 0"

    #@1d
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 92
    :cond_2
    if-nez p1, :cond_3

    #@23
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "yuv cannot be null"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 96
    :cond_3
    if-nez p5, :cond_4

    #@2e
    .line 97
    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@34
    .line 102
    :goto_0
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    #@36
    .line 103
    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@38
    .line 104
    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    #@3a
    .line 105
    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    #@3c
    .line 79
    return-void

    #@3d
    .line 99
    :cond_4
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@3f
    goto :goto_0
.end method

.method private adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v1

    #@4
    .line 216
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v0

    #@8
    .line 217
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@a
    const/16 v3, 0x11

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 219
    and-int/lit8 v1, v1, -0x2

    #@10
    .line 220
    and-int/lit8 v0, v0, -0x2

    #@12
    .line 221
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@14
    and-int/lit8 v2, v2, -0x2

    #@16
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@18
    .line 222
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@1a
    and-int/lit8 v2, v2, -0x2

    #@1c
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@1e
    .line 223
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@20
    add-int/2addr v2, v1

    #@21
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@23
    .line 224
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@25
    add-int/2addr v2, v0

    #@26
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 227
    :cond_0
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@2a
    const/16 v3, 0x14

    #@2c
    if-ne v2, v3, :cond_1

    #@2e
    .line 229
    and-int/lit8 v1, v1, -0x2

    #@30
    .line 230
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@32
    and-int/lit8 v2, v2, -0x2

    #@34
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@36
    .line 231
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@38
    add-int/2addr v2, v1

    #@39
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@3b
    .line 214
    :cond_1
    return-void
.end method

.method private calculateStrides(II)[I
    .locals 4
    .param p1, "width"    # I
    .param p2, "format"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 200
    const/4 v0, 0x0

    #@3
    .line 201
    .local v0, "strides":[I
    const/16 v1, 0x11

    #@5
    if-ne p2, v1, :cond_0

    #@7
    .line 202
    const/4 v1, 0x2

    #@8
    new-array v0, v1, [I

    #@a
    .end local v0    # "strides":[I
    aput p1, v0, v2

    #@c
    aput p1, v0, v3

    #@e
    .line 203
    .local v0, "strides":[I
    return-object v0

    #@f
    .line 206
    .local v0, "strides":[I
    :cond_0
    const/16 v1, 0x14

    #@11
    if-ne p2, v1, :cond_1

    #@13
    .line 207
    new-array v0, v3, [I

    #@15
    .end local v0    # "strides":[I
    mul-int/lit8 v1, p1, 0x2

    #@17
    aput v1, v0, v2

    #@19
    .line 208
    .local v0, "strides":[I
    return-object v0

    #@1a
    .line 211
    .local v0, "strides":[I
    :cond_1
    return-object v0
.end method

.method private static native nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method calculateOffsets(II)[I
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 183
    const/4 v0, 0x0

    #@3
    .line 184
    .local v0, "offsets":[I
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@5
    const/16 v2, 0x11

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 185
    const/4 v1, 0x2

    #@a
    new-array v0, v1, [I

    #@c
    .end local v0    # "offsets":[I
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@e
    aget v1, v1, v3

    #@10
    mul-int/2addr v1, p2

    #@11
    add-int/2addr v1, p1

    #@12
    aput v1, v0, v3

    #@14
    .line 186
    iget v1, p0, Landroid/graphics/YuvImage;->mHeight:I

    #@16
    iget-object v2, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@18
    aget v2, v2, v3

    #@1a
    mul-int/2addr v1, v2

    #@1b
    div-int/lit8 v2, p2, 0x2

    #@1d
    iget-object v3, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@1f
    aget v3, v3, v4

    #@21
    mul-int/2addr v2, v3

    #@22
    add-int/2addr v1, v2

    #@23
    .line 187
    div-int/lit8 v2, p1, 0x2

    #@25
    mul-int/lit8 v2, v2, 0x2

    #@27
    .line 186
    add-int/2addr v1, v2

    #@28
    aput v1, v0, v4

    #@2a
    .line 188
    .local v0, "offsets":[I
    return-object v0

    #@2b
    .line 191
    .local v0, "offsets":[I
    :cond_0
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@2d
    const/16 v2, 0x14

    #@2f
    if-ne v1, v2, :cond_1

    #@31
    .line 192
    new-array v0, v4, [I

    #@33
    .end local v0    # "offsets":[I
    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@35
    aget v1, v1, v3

    #@37
    mul-int/2addr v1, p2

    #@38
    div-int/lit8 v2, p1, 0x2

    #@3a
    mul-int/lit8 v2, v2, 0x4

    #@3c
    add-int/2addr v1, v2

    #@3d
    aput v1, v0, v3

    #@3f
    .line 193
    .local v0, "offsets":[I
    return-object v0

    #@40
    .line 196
    .local v0, "offsets":[I
    :cond_1
    return-object v0
.end method

.method public compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 124
    new-instance v9, Landroid/graphics/Rect;

    #@3
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    #@5
    iget v1, p0, Landroid/graphics/YuvImage;->mHeight:I

    #@7
    invoke-direct {v9, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    .line 125
    .local v9, "wholeImage":Landroid/graphics/Rect;
    invoke-virtual {v9, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 127
    const-string/jumbo v1, "rectangle is not inside the image"

    #@15
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 130
    :cond_0
    if-ltz p2, :cond_1

    #@1b
    const/16 v0, 0x64

    #@1d
    if-le p2, v0, :cond_2

    #@1f
    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "quality must be 0..100"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 134
    :cond_2
    if-nez p3, :cond_3

    #@2a
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v1, "stream cannot be null"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 138
    :cond_3
    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    #@36
    .line 139
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@38
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@3a
    invoke-virtual {p0, v0, v1}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    #@3d
    move-result-object v4

    #@3e
    .line 141
    .local v4, "offsets":[I
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    #@40
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@42
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@45
    move-result v2

    #@46
    .line 142
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@49
    move-result v3

    #@4a
    iget-object v5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@4c
    .line 143
    const/16 v6, 0x1000

    #@4e
    new-array v8, v6, [B

    #@50
    move v6, p2

    #@51
    move-object v7, p3

    #@52
    .line 141
    invoke-static/range {v0 .. v8}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    #@55
    move-result v0

    #@56
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 179
    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    #@2
    return v0
.end method

.method public getStrides()[I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 172
    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    #@2
    return v0
.end method

.method public getYuvData()[B
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    #@2
    return-object v0
.end method

.method public getYuvFormat()I
    .locals 1

    #@0
    .prologue
    .line 158
    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    #@2
    return v0
.end method

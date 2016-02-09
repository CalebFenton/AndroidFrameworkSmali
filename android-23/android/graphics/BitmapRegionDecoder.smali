.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "decoder"    # J

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    #@a
    .line 169
    iput-wide p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    #@c
    .line 170
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    #@f
    .line 168
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    .line 242
    :cond_0
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 117
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    #@6
    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@9
    move-result-wide v2

    #@a
    .line 116
    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 123
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    const/16 v1, 0x4000

    #@11
    new-array v0, v1, [B

    #@13
    .line 124
    .local v0, "tempStorage":[B
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 5
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    .line 146
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v2, 0x0

    #@2
    .line 149
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@4
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 150
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a
    .end local v2    # "stream":Ljava/io/InputStream;
    move-result-object v0

    #@b
    .line 152
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v3, :cond_0

    #@d
    .line 154
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@10
    .line 160
    :cond_0
    :goto_0
    return-object v0

    #@11
    .line 155
    :catch_0
    move-exception v1

    #@12
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@13
    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    #@14
    .line 152
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_1
    if-eqz v2, :cond_1

    #@16
    .line 154
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@19
    .line 151
    :cond_1
    :goto_2
    throw v4

    #@1a
    .line 155
    :catch_1
    move-exception v1

    #@1b
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@1c
    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    #@1d
    move-object v2, v3

    #@1e
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    array-length v0, p0

    #@5
    add-int v1, p1, p2

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 63
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 65
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 183
    iget-object v7, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 184
    :try_start_0
    const-string/jumbo v0, "decodeRegion called on recycled region decoder"

    #@6
    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    #@9
    .line 185
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@b
    if-lez v0, :cond_0

    #@d
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@f
    if-gtz v0, :cond_1

    #@11
    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "rectangle is outside the image"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 183
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v7

    #@1c
    throw v0

    #@1d
    .line 185
    :cond_1
    :try_start_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@1f
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    #@22
    move-result v1

    #@23
    if-ge v0, v1, :cond_0

    #@25
    .line 186
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@27
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    #@2a
    move-result v1

    #@2b
    if-ge v0, v1, :cond_0

    #@2d
    .line 188
    iget-wide v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    #@2f
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@31
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@33
    .line 189
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@35
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@37
    sub-int/2addr v4, v5

    #@38
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@3a
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@3c
    sub-int/2addr v5, v6

    #@3d
    move-object v6, p2

    #@3e
    .line 188
    invoke-static/range {v0 .. v6}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result-object v0

    #@42
    monitor-exit v7

    #@43
    return-object v0
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
    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 253
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 249
    return-void

    #@7
    .line 252
    :catchall_0
    move-exception v0

    #@8
    .line 253
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 252
    throw v0
.end method

.method public getHeight()I
    .locals 4

    #@0
    .prologue
    .line 203
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 204
    :try_start_0
    const-string/jumbo v0, "getHeight called on recycled region decoder"

    #@6
    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    #@9
    .line 205
    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    #@b
    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 203
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public getWidth()I
    .locals 4

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 196
    :try_start_0
    const-string/jumbo v0, "getWidth called on recycled region decoder"

    #@6
    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    #@9
    .line 197
    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    #@b
    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 195
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    #@0
    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    #@2
    return v0
.end method

.method public recycle()V
    .locals 4

    #@0
    .prologue
    .line 220
    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 221
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 222
    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    #@9
    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(J)V

    #@c
    .line 223
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 219
    return-void

    #@11
    .line 220
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

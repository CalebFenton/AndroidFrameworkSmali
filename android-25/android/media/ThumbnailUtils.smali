.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 337
    if-nez p0, :cond_0

    #@2
    return-void

    #@3
    .line 339
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 336
    :goto_0
    return-void

    #@7
    .line 340
    :catch_0
    move-exception v0

    #@8
    .local v0, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 271
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@3
    int-to-double v4, v6

    #@4
    .line 272
    .local v4, "w":D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@6
    int-to-double v0, v6

    #@7
    .line 274
    .local v0, "h":D
    if-ne p2, v10, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    .line 276
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v10, :cond_1

    #@c
    const/16 v3, 0x80

    #@e
    .line 280
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_2

    #@10
    .line 282
    return v2

    #@11
    .line 275
    .end local v2    # "lowerBound":I
    .end local v3    # "upperBound":I
    :cond_0
    mul-double v6, v4, v0

    #@13
    int-to-double v8, p2

    #@14
    div-double/2addr v6, v8

    #@15
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@18
    move-result-wide v6

    #@19
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@1c
    move-result-wide v6

    #@1d
    double-to-int v2, v6

    #@1e
    .restart local v2    # "lowerBound":I
    goto :goto_0

    #@1f
    .line 277
    :cond_1
    int-to-double v6, p1

    #@20
    div-double v6, v4, v6

    #@22
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@25
    move-result-wide v6

    #@26
    .line 278
    int-to-double v8, p1

    #@27
    div-double v8, v0, v8

    #@29
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@2c
    move-result-wide v8

    #@2d
    .line 277
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    #@30
    move-result-wide v6

    #@31
    double-to-int v3, v6

    #@32
    goto :goto_1

    #@33
    .line 285
    .restart local v3    # "upperBound":I
    :cond_2
    if-ne p2, v10, :cond_3

    #@35
    .line 286
    if-ne p1, v10, :cond_3

    #@37
    .line 287
    const/4 v6, 0x1

    #@38
    return v6

    #@39
    .line 288
    :cond_3
    if-ne p1, v10, :cond_4

    #@3b
    .line 289
    return v2

    #@3c
    .line 291
    :cond_4
    return v3
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    #@0
    .prologue
    .line 253
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@3
    move-result v0

    #@4
    .line 257
    .local v0, "initialSize":I
    const/16 v2, 0x8

    #@6
    if-gt v0, v2, :cond_0

    #@8
    .line 258
    const/4 v1, 0x1

    #@9
    .line 259
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@b
    .line 260
    shl-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 263
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    #@10
    div-int/lit8 v2, v2, 0x8

    #@12
    mul-int/lit8 v1, v2, 0x8

    #@14
    .line 266
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    #@0
    .prologue
    .line 85
    const/4 v13, 0x1

    #@1
    move/from16 v0, p1

    #@3
    if-ne v0, v13, :cond_4

    #@5
    const/4 v12, 0x1

    #@6
    .line 86
    .local v12, "wantMini":Z
    :goto_0
    if-eqz v12, :cond_5

    #@8
    .line 87
    const/16 v11, 0x140

    #@a
    .line 89
    .local v11, "targetSize":I
    :goto_1
    if-eqz v12, :cond_6

    #@c
    .line 90
    const/high16 v5, 0x30000

    #@e
    .line 92
    .local v5, "maxPixels":I
    :goto_2
    new-instance v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    #@10
    const/4 v13, 0x0

    #@11
    invoke-direct {v8, v13}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    #@14
    .line 93
    .local v8, "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v1, 0x0

    #@15
    .line 94
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    #@18
    move-result-object v4

    #@19
    .line 95
    .local v4, "fileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v4, :cond_1

    #@1b
    iget v13, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@1d
    const/16 v14, 0x1f

    #@1f
    if-eq v13, v14, :cond_0

    #@21
    .line 96
    iget v13, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    #@23
    invoke-static {v13}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    #@26
    move-result v13

    #@27
    .line 95
    if-eqz v13, :cond_1

    #@29
    .line 97
    :cond_0
    move-object/from16 v0, p0

    #@2b
    invoke-static {v0, v11, v5, v8}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    #@2e
    .line 98
    iget-object v1, v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    #@30
    .line 101
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-nez v1, :cond_8

    #@32
    .line 102
    const/4 v9, 0x0

    #@33
    .line 104
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    #@35
    move-object/from16 v0, p0

    #@37
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 105
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@3d
    move-result-object v3

    #@3e
    .line 106
    .local v3, "fd":Ljava/io/FileDescriptor;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    #@40
    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@43
    .line 107
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    #@44
    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@46
    .line 108
    const/4 v13, 0x1

    #@47
    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@49
    .line 109
    const/4 v13, 0x0

    #@4a
    invoke-static {v3, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@4d
    .line 110
    iget-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    #@4f
    if-nez v13, :cond_2

    #@51
    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    const/4 v14, -0x1

    #@54
    if-ne v13, v14, :cond_7

    #@56
    .line 112
    :cond_2
    const/4 v13, 0x0

    #@57
    .line 127
    if-eqz v10, :cond_3

    #@59
    .line 128
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@5c
    .line 112
    :cond_3
    :goto_3
    return-object v13

    #@5d
    .line 85
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .end local v5    # "maxPixels":I
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "targetSize":I
    .end local v12    # "wantMini":Z
    :cond_4
    const/4 v12, 0x0

    #@5e
    goto :goto_0

    #@5f
    .line 88
    .restart local v12    # "wantMini":Z
    :cond_5
    const/16 v11, 0x60

    #@61
    .restart local v11    # "targetSize":I
    goto :goto_1

    #@62
    .line 91
    :cond_6
    const/16 v5, 0x4b00

    #@64
    .restart local v5    # "maxPixels":I
    goto :goto_2

    #@65
    .line 111
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :cond_7
    :try_start_3
    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@67
    const/4 v14, -0x1

    #@68
    if-eq v13, v14, :cond_2

    #@6a
    .line 114
    invoke-static {v7, v11, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@6d
    move-result v13

    #@6e
    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@70
    .line 116
    const/4 v13, 0x0

    #@71
    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@73
    .line 118
    const/4 v13, 0x0

    #@74
    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    #@76
    .line 119
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@78
    iput-object v13, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    #@7a
    .line 120
    const/4 v13, 0x0

    #@7b
    invoke-static {v3, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7e
    move-result-object v1

    #@7f
    .line 127
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_8

    #@81
    .line 128
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@84
    .line 137
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :cond_8
    :goto_4
    const/4 v13, 0x3

    #@85
    move/from16 v0, p1

    #@87
    if-ne v0, v13, :cond_9

    #@89
    .line 140
    const/16 v13, 0x60

    #@8b
    .line 141
    const/16 v14, 0x60

    #@8d
    const/4 v15, 0x2

    #@8e
    .line 139
    invoke-static {v1, v13, v14, v15}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    #@91
    move-result-object v1

    #@92
    .line 143
    :cond_9
    return-object v1

    #@93
    .line 130
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    #@94
    .line 131
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v14, "ThumbnailUtils"

    #@97
    const-string/jumbo v15, ""

    #@9a
    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9d
    goto :goto_3

    #@9e
    .line 130
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    #@9f
    .line 131
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v13, "ThumbnailUtils"

    #@a2
    const-string/jumbo v14, ""

    #@a5
    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    goto :goto_4

    #@a9
    .line 123
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    #@aa
    .line 124
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v6, "oom":Ljava/lang/OutOfMemoryError;
    :goto_5
    :try_start_5
    const-string/jumbo v13, "ThumbnailUtils"

    #@ad
    new-instance v14, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v15, "Unable to decode file "

    #@b5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v14

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v14

    #@bf
    const-string/jumbo v15, ". OutOfMemoryError."

    #@c2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v14

    #@c6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v14

    #@ca
    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@cd
    .line 127
    if-eqz v9, :cond_8

    #@cf
    .line 128
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@d2
    goto :goto_4

    #@d3
    .line 130
    :catch_3
    move-exception v2

    #@d4
    .line 131
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v13, "ThumbnailUtils"

    #@d7
    const-string/jumbo v14, ""

    #@da
    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@dd
    goto :goto_4

    #@de
    .line 121
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    #@df
    .line 122
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "ex":Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string/jumbo v13, "ThumbnailUtils"

    #@e2
    const-string/jumbo v14, ""

    #@e5
    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@e8
    .line 127
    if-eqz v9, :cond_8

    #@ea
    .line 128
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@ed
    goto :goto_4

    #@ee
    .line 130
    :catch_5
    move-exception v2

    #@ef
    .line 131
    const-string/jumbo v13, "ThumbnailUtils"

    #@f2
    const-string/jumbo v14, ""

    #@f5
    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f8
    goto :goto_4

    #@f9
    .line 125
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    #@fa
    .line 127
    :goto_7
    if-eqz v9, :cond_a

    #@fc
    .line 128
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@ff
    .line 125
    :cond_a
    :goto_8
    throw v13

    #@100
    .line 130
    :catch_6
    move-exception v2

    #@101
    .line 131
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string/jumbo v14, "ThumbnailUtils"

    #@104
    const-string/jumbo v15, ""

    #@107
    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10a
    goto :goto_8

    #@10b
    .line 125
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    #@10c
    move-object v9, v10

    #@10d
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v9, "stream":Ljava/io/FileInputStream;
    goto :goto_7

    #@10e
    .line 121
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    #@10f
    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v9, v10

    #@110
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    #@111
    .line 123
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    #@112
    .restart local v6    # "oom":Ljava/lang/OutOfMemoryError;
    move-object v9, v10

    #@113
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I
    .param p3, "sizedThumbBitmap"    # Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    #@0
    .prologue
    .line 475
    if-nez p0, :cond_0

    #@2
    return-void

    #@3
    .line 477
    :cond_0
    const/4 v1, 0x0

    #@4
    .line 478
    .local v1, "exif":Landroid/media/ExifInterface;
    const/4 v8, 0x0

    #@5
    .line 480
    .local v8, "thumbData":[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    #@7
    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 481
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@d
    .end local v1    # "exif":Landroid/media/ExifInterface;
    move-result-object v8

    #@e
    .local v8, "thumbData":[B
    move-object v1, v2

    #@f
    .line 486
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v8    # "thumbData":[B
    :goto_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    #@11
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@14
    .line 487
    .local v5, "fullOptions":Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@16
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@19
    .line 488
    .local v3, "exifOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    #@1a
    .line 489
    .local v4, "exifThumbWidth":I
    const/4 v6, 0x0

    #@1b
    .line 492
    .local v6, "fullThumbWidth":I
    if-eqz v8, :cond_1

    #@1d
    .line 493
    const/4 v10, 0x1

    #@1e
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@20
    .line 494
    array-length v10, v8

    #@21
    const/4 v11, 0x0

    #@22
    invoke-static {v8, v11, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@25
    .line 495
    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@28
    move-result v10

    #@29
    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@2b
    .line 496
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@2d
    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@2f
    div-int v4, v10, v11

    #@31
    .line 500
    :cond_1
    const/4 v10, 0x1

    #@32
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@34
    .line 501
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@37
    .line 502
    invoke-static {v5, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@3a
    move-result v10

    #@3b
    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@3d
    .line 503
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@3f
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@41
    div-int v6, v10, v11

    #@43
    .line 506
    if-eqz v8, :cond_3

    #@45
    if-lt v4, v6, :cond_3

    #@47
    .line 507
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@49
    .line 508
    .local v9, "width":I
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@4b
    .line 509
    .local v7, "height":I
    const/4 v10, 0x0

    #@4c
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@4e
    .line 511
    array-length v10, v8

    #@4f
    .line 510
    const/4 v11, 0x0

    #@50
    invoke-static {v8, v11, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@53
    move-result-object v10

    #@54
    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    #@56
    .line 512
    iget-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    #@58
    if-eqz v10, :cond_2

    #@5a
    .line 513
    iput-object v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    #@5c
    .line 514
    iput v9, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    #@5e
    .line 515
    iput v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    #@60
    .line 474
    .end local v7    # "height":I
    .end local v9    # "width":I
    :cond_2
    :goto_1
    return-void

    #@61
    .line 482
    .end local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "exifThumbWidth":I
    .end local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "fullThumbWidth":I
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .local v8, "thumbData":[B
    :catch_0
    move-exception v0

    #@62
    .line 483
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    const-string/jumbo v10, "ThumbnailUtils"

    #@65
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_0

    #@69
    .line 518
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "thumbData":[B
    .restart local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "exifThumbWidth":I
    .restart local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "fullThumbWidth":I
    :cond_3
    const/4 v10, 0x0

    #@6a
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@6c
    .line 519
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@6f
    move-result-object v10

    #@70
    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    #@72
    goto :goto_1

    #@73
    .line 482
    .end local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "exifThumbWidth":I
    .end local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "fullThumbWidth":I
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v8    # "thumbData":[B
    :catch_1
    move-exception v0

    #@74
    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v1, v2

    #@75
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v1, "exif":Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    .line 155
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    #@3
    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    #@6
    .line 157
    .local v6, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    #@9
    .line 158
    const-wide/16 v10, -0x1

    #@b
    invoke-virtual {v6, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@12
    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_0

    #@14
    const/4 v10, 0x0

    #@15
    return-object v10

    #@16
    .line 166
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    #@17
    .local v2, "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    #@18
    .line 161
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    #@19
    .line 165
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    #@1c
    goto :goto_0

    #@1d
    .line 166
    :catch_2
    move-exception v2

    #@1e
    goto :goto_0

    #@1f
    .line 159
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    #@20
    .line 165
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    #@23
    goto :goto_0

    #@24
    .line 166
    :catch_4
    move-exception v2

    #@25
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    #@26
    .line 163
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    #@27
    .line 165
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    #@2a
    .line 163
    :goto_1
    throw v10

    #@2b
    .line 166
    :catch_5
    move-exception v2

    #@2c
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_1

    #@2d
    .line 173
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v10, 0x1

    #@2e
    if-ne p1, v10, :cond_2

    #@30
    .line 175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@33
    move-result v9

    #@34
    .line 176
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@37
    move-result v4

    #@38
    .line 177
    .local v4, "height":I
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v5

    #@3c
    .line 178
    .local v5, "max":I
    const/16 v10, 0x200

    #@3e
    if-le v5, v10, :cond_1

    #@40
    .line 179
    int-to-float v10, v5

    #@41
    const/high16 v11, 0x44000000    # 512.0f

    #@43
    div-float v7, v11, v10

    #@45
    .line 180
    .local v7, "scale":F
    int-to-float v10, v9

    #@46
    mul-float/2addr v10, v7

    #@47
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@4a
    move-result v8

    #@4b
    .line 181
    .local v8, "w":I
    int-to-float v10, v4

    #@4c
    mul-float/2addr v10, v7

    #@4d
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@50
    move-result v3

    #@51
    .line 182
    .local v3, "h":I
    const/4 v10, 0x1

    #@52
    invoke-static {v0, v8, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@55
    move-result-object v0

    #@56
    .line 190
    .end local v3    # "h":I
    .end local v4    # "height":I
    .end local v5    # "max":I
    .end local v7    # "scale":F
    .end local v8    # "w":I
    .end local v9    # "width":I
    :cond_1
    :goto_2
    return-object v0

    #@57
    .line 184
    :cond_2
    const/4 v10, 0x3

    #@58
    if-ne p1, v10, :cond_1

    #@5a
    .line 186
    const/16 v10, 0x60

    #@5c
    .line 187
    const/16 v11, 0x60

    #@5e
    .line 188
    const/4 v12, 0x2

    #@5f
    .line 185
    invoke-static {v0, v10, v11, v12}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    #@62
    move-result-object v0

    #@63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "options"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 215
    if-nez p0, :cond_0

    #@3
    .line 216
    return-object v3

    #@4
    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v3

    #@8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v4

    #@c
    if-ge v3, v4, :cond_1

    #@e
    .line 221
    int-to-float v3, p1

    #@f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@12
    move-result v4

    #@13
    int-to-float v4, v4

    #@14
    div-float v1, v3, v4

    #@16
    .line 225
    .local v1, "scale":F
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    #@18
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@1b
    .line 226
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    #@1e
    .line 228
    or-int/lit8 v3, p3, 0x1

    #@20
    .line 227
    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    #@23
    move-result-object v2

    #@24
    .line 229
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    return-object v2

    #@25
    .line 223
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "scale":F
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v3, p2

    #@26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@29
    move-result v4

    #@2a
    int-to-float v4, v4

    #@2b
    div-float v1, v3, v4

    #@2d
    .restart local v1    # "scale":F
    goto :goto_0
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 306
    const/4 v0, 0x0

    #@3
    .line 308
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    #@5
    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object p4

    #@9
    .line 309
    :cond_0
    if-nez p4, :cond_1

    #@b
    .line 331
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    #@e
    .line 309
    return-object v6

    #@f
    .line 310
    :cond_1
    if-nez p5, :cond_2

    #@11
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@13
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@16
    .end local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    #@17
    .line 312
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1a
    move-result-object v2

    #@1b
    .line 313
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    #@1c
    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@1e
    .line 314
    const/4 v4, 0x1

    #@1f
    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@21
    .line 315
    const/4 v4, 0x0

    #@22
    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@25
    .line 316
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    #@27
    if-nez v4, :cond_3

    #@29
    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    if-ne v4, v5, :cond_4

    #@2d
    .line 331
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    #@30
    .line 318
    return-object v6

    #@31
    .line 317
    :cond_4
    :try_start_2
    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@33
    if-eq v4, v5, :cond_3

    #@35
    .line 320
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    #@38
    move-result v4

    #@39
    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@3b
    .line 322
    const/4 v4, 0x0

    #@3c
    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@3e
    .line 324
    const/4 v4, 0x0

    #@3f
    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    #@41
    .line 325
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@43
    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    #@45
    .line 326
    const/4 v4, 0x0

    #@46
    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    move-result-object v0

    #@4a
    .line 331
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    #@4d
    .line 333
    return-object v0

    #@4e
    .line 327
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .local v0, "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    #@4f
    .line 328
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string/jumbo v4, "ThumbnailUtils"

    #@52
    const-string/jumbo v5, "Got oom exception "

    #@55
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    .line 331
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    #@5b
    .line 329
    return-object v6

    #@5c
    .line 330
    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    #@5d
    .line 331
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    #@60
    .line 330
    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 348
    :try_start_0
    const-string/jumbo v1, "r"

    #@3
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 349
    :catch_0
    move-exception v0

    #@9
    .line 350
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    #@a
    return-object v1
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "options"    # I

    #@0
    .prologue
    .line 362
    and-int/lit8 v3, p4, 0x1

    #@2
    if-eqz v3, :cond_2

    #@4
    const/16 v27, 0x1

    #@6
    .line 363
    .local v27, "scaleUp":Z
    :goto_0
    and-int/lit8 v3, p4, 0x2

    #@8
    if-eqz v3, :cond_3

    #@a
    const/16 v25, 0x1

    #@c
    .line 365
    .local v25, "recycle":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@f
    move-result v3

    #@10
    sub-int v16, v3, p2

    #@12
    .line 366
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@15
    move-result v3

    #@16
    sub-int v18, v3, p3

    #@18
    .line 367
    .local v18, "deltaY":I
    if-nez v27, :cond_4

    #@1a
    if-ltz v16, :cond_0

    #@1c
    if-gez v18, :cond_4

    #@1e
    .line 375
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@20
    .line 374
    move/from16 v0, p2

    #@22
    move/from16 v1, p3

    #@24
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@27
    move-result-object v11

    #@28
    .line 376
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    #@2a
    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2d
    .line 378
    .local v15, "c":Landroid/graphics/Canvas;
    div-int/lit8 v3, v16, 0x2

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v17

    #@34
    .line 379
    .local v17, "deltaXHalf":I
    div-int/lit8 v3, v18, 0x2

    #@36
    const/4 v4, 0x0

    #@37
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@3a
    move-result v19

    #@3b
    .line 380
    .local v19, "deltaYHalf":I
    new-instance v28, Landroid/graphics/Rect;

    #@3d
    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@40
    move-result v3

    #@41
    move/from16 v0, p2

    #@43
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@46
    move-result v3

    #@47
    add-int v3, v3, v17

    #@49
    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@4c
    move-result v4

    #@4d
    move/from16 v0, p3

    #@4f
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@52
    move-result v4

    #@53
    add-int v4, v4, v19

    #@55
    .line 380
    move-object/from16 v0, v28

    #@57
    move/from16 v1, v17

    #@59
    move/from16 v2, v19

    #@5b
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@5e
    .line 385
    .local v28, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    #@61
    move-result v3

    #@62
    sub-int v3, p2, v3

    #@64
    div-int/lit8 v21, v3, 0x2

    #@66
    .line 386
    .local v21, "dstX":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    #@69
    move-result v3

    #@6a
    sub-int v3, p3, v3

    #@6c
    div-int/lit8 v22, v3, 0x2

    #@6e
    .line 387
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    #@70
    .line 390
    sub-int v3, p2, v21

    #@72
    .line 391
    sub-int v4, p3, v22

    #@74
    .line 387
    move-object/from16 v0, v20

    #@76
    move/from16 v1, v21

    #@78
    move/from16 v2, v22

    #@7a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@7d
    .line 392
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    #@7e
    move-object/from16 v0, p1

    #@80
    move-object/from16 v1, v28

    #@82
    move-object/from16 v2, v20

    #@84
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@87
    .line 393
    if-eqz v25, :cond_1

    #@89
    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    #@8c
    .line 396
    :cond_1
    const/4 v3, 0x0

    #@8d
    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@90
    .line 397
    return-object v11

    #@91
    .line 362
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v16    # "deltaX":I
    .end local v17    # "deltaXHalf":I
    .end local v18    # "deltaY":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v25    # "recycle":Z
    .end local v27    # "scaleUp":Z
    .end local v28    # "src":Landroid/graphics/Rect;
    :cond_2
    const/16 v27, 0x0

    #@93
    .restart local v27    # "scaleUp":Z
    goto/16 :goto_0

    #@95
    .line 363
    :cond_3
    const/16 v25, 0x0

    #@97
    .restart local v25    # "recycle":Z
    goto/16 :goto_1

    #@99
    .line 399
    .restart local v16    # "deltaX":I
    .restart local v18    # "deltaY":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@9c
    move-result v3

    #@9d
    int-to-float v14, v3

    #@9e
    .line 400
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@a1
    move-result v3

    #@a2
    int-to-float v13, v3

    #@a3
    .line 402
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    #@a5
    .line 403
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    #@a7
    int-to-float v3, v0

    #@a8
    move/from16 v0, p3

    #@aa
    int-to-float v4, v0

    #@ab
    div-float v29, v3, v4

    #@ad
    .line 405
    .local v29, "viewAspect":F
    cmpl-float v3, v12, v29

    #@af
    if-lez v3, :cond_a

    #@b1
    .line 406
    move/from16 v0, p3

    #@b3
    int-to-float v3, v0

    #@b4
    div-float v26, v3, v13

    #@b6
    .line 407
    .local v26, "scale":F
    const v3, 0x3f666666    # 0.9f

    #@b9
    cmpg-float v3, v26, v3

    #@bb
    if-ltz v3, :cond_5

    #@bd
    const/high16 v3, 0x3f800000    # 1.0f

    #@bf
    cmpl-float v3, v26, v3

    #@c1
    if-lez v3, :cond_9

    #@c3
    .line 408
    :cond_5
    move-object/from16 v0, p0

    #@c5
    move/from16 v1, v26

    #@c7
    move/from16 v2, v26

    #@c9
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    #@cc
    .line 422
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    :goto_2
    if-eqz p0, :cond_d

    #@ce
    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@d1
    move-result v6

    #@d2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@d5
    move-result v7

    #@d6
    .line 424
    const/4 v4, 0x0

    #@d7
    const/4 v5, 0x0

    #@d8
    .line 425
    const/4 v9, 0x1

    #@d9
    move-object/from16 v3, p1

    #@db
    move-object/from16 v8, p0

    #@dd
    .line 424
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@e0
    move-result-object v10

    #@e1
    .line 430
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v25, :cond_6

    #@e3
    move-object/from16 v0, p1

    #@e5
    if-eq v10, v0, :cond_6

    #@e7
    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    #@ea
    .line 434
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    #@ed
    move-result v3

    #@ee
    sub-int v3, v3, p2

    #@f0
    const/4 v4, 0x0

    #@f1
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@f4
    move-result v23

    #@f5
    .line 435
    .local v23, "dx1":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    #@f8
    move-result v3

    #@f9
    sub-int v3, v3, p3

    #@fb
    const/4 v4, 0x0

    #@fc
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@ff
    move-result v24

    #@100
    .line 439
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    #@102
    .line 440
    div-int/lit8 v4, v24, 0x2

    #@104
    .line 437
    move/from16 v0, p2

    #@106
    move/from16 v1, p3

    #@108
    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    #@10b
    move-result-object v11

    #@10c
    .line 444
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_8

    #@10e
    .line 445
    if-nez v25, :cond_7

    #@110
    move-object/from16 v0, p1

    #@112
    if-eq v10, v0, :cond_8

    #@114
    .line 446
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    #@117
    .line 450
    :cond_8
    return-object v11

    #@118
    .line 410
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_9
    const/16 p0, 0x0

    #@11a
    .local p0, "scaler":Landroid/graphics/Matrix;
    goto :goto_2

    #@11b
    .line 413
    .end local v26    # "scale":F
    .local p0, "scaler":Landroid/graphics/Matrix;
    :cond_a
    move/from16 v0, p2

    #@11d
    int-to-float v3, v0

    #@11e
    div-float v26, v3, v14

    #@120
    .line 414
    .restart local v26    # "scale":F
    const v3, 0x3f666666    # 0.9f

    #@123
    cmpg-float v3, v26, v3

    #@125
    if-ltz v3, :cond_b

    #@127
    const/high16 v3, 0x3f800000    # 1.0f

    #@129
    cmpl-float v3, v26, v3

    #@12b
    if-lez v3, :cond_c

    #@12d
    .line 415
    :cond_b
    move-object/from16 v0, p0

    #@12f
    move/from16 v1, v26

    #@131
    move/from16 v2, v26

    #@133
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    #@136
    goto :goto_2

    #@137
    .line 417
    :cond_c
    const/16 p0, 0x0

    #@139
    .local p0, "scaler":Landroid/graphics/Matrix;
    goto :goto_2

    #@13a
    .line 427
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_d
    move-object/from16 v10, p1

    #@13c
    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

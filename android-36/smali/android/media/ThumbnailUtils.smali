.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$Resizer;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final greylist-max-o OPTIONS_NONE:I = 0x0

.field public static final whitelist OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final greylist-max-o OPTIONS_SCALE_UP:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final greylist TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-p closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 452
    return-void
.end method

.method private static greylist-max-p computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-p computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist convertKind(I)Landroid/util/Size;
    .registers 2
    .param p0, "kind"    # I

    .line 80
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getKindSize(I)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createAudioThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "file"    # Ljava/io/File;
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 152
    :cond_5
    new-instance v0, Landroid/media/ThumbnailUtils$Resizer;

    invoke-direct {v0, p1, p2}, Landroid/media/ThumbnailUtils$Resizer;-><init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V

    .line 153
    .local v0, "resizer":Landroid/media/ThumbnailUtils$Resizer;
    :try_start_a
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_f} :catch_c9

    .line 154
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v2

    .line 156
    .local v2, "raw":[B
    if-eqz v2, :cond_28

    .line 157
    invoke-static {v2}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_bf

    .line 159
    :try_start_24
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V

    .line 157
    return-object v3

    .line 159
    .end local v2    # "raw":[B
    :cond_28
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_c9

    .line 161
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    nop

    .line 164
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 170
    .local v1, "parent":Ljava/io/File;
    const/4 v3, 0x0

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    goto :goto_45

    :cond_44
    move-object v4, v3

    .line 171
    .local v4, "grandParent":Ljava/io/File;
    :goto_45
    if-eqz v1, :cond_5c

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_5c

    .line 173
    :cond_54
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No thumbnails in Downloads directories"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_5c
    :goto_5c
    if-eqz v4, :cond_71

    .line 176
    invoke-static {v4}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_71

    .line 177
    :cond_69
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No thumbnails in top-level directories"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_71
    :goto_71
    nop

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v5, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 187
    .local v2, "found":[Ljava/io/File;
    new-instance v5, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 195
    .local v5, "score":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/io/File;>;"
    new-instance v6, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/ToIntFunction;)V

    .line 199
    .local v6, "bestScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 200
    .local v3, "bestFile":Ljava/io/File;
    if-eqz v3, :cond_af

    .line 205
    if-eqz p2, :cond_a6

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 207
    :cond_a6
    invoke-static {v3}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 201
    :cond_af
    new-instance v7, Ljava/io/IOException;

    const-string v8, "No album art found"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "found":[Ljava/io/File;
    .end local v3    # "bestFile":Ljava/io/File;
    .end local v4    # "grandParent":Ljava/io/File;
    .end local v5    # "score":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/io/File;>;"
    .end local v6    # "bestScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    :cond_b7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No embedded album art found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_bf
    move-exception v2

    :try_start_c0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_c8

    :catchall_c4
    move-exception v3

    :try_start_c5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resizer":Landroid/media/ThumbnailUtils$Resizer;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "size":Landroid/util/Size;
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    :goto_c8
    throw v2
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_c9} :catch_c9

    .line 159
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "resizer":Landroid/media/ThumbnailUtils$Resizer;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "size":Landroid/util/Size;
    .restart local p2    # "signal":Landroid/os/CancellationSignal;
    :catch_c9
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to create thumbnail"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist createAudioThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->convertKind(I)Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/media/ThumbnailUtils;->createAudioThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object v0

    .line 126
    :catch_f
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ThumbnailUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-object v0
.end method

.method public static whitelist createImageThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 21
    .param p0, "file"    # Ljava/io/File;
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    move-object/from16 v1, p2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 250
    :cond_7
    new-instance v0, Landroid/media/ThumbnailUtils$Resizer;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroid/media/ThumbnailUtils$Resizer;-><init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V

    move-object v3, v0

    .line 251
    .local v3, "resizer":Landroid/media/ThumbnailUtils$Resizer;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "mimeType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 253
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 254
    .local v0, "exif":Landroid/media/ExifInterface;
    const/4 v6, 0x0

    .line 257
    .local v6, "orientation":I
    invoke-static {v4}, Landroid/media/MediaFile;->isExifMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 258
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Landroid/media/ExifInterface;-><init>(Ljava/io/File;)V

    move-object v0, v7

    .line 259
    const-string v7, "Orientation"

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    sparse-switch v7, :sswitch_data_100

    move v7, v6

    move-object v6, v0

    goto :goto_48

    .line 267
    :sswitch_35
    const/16 v6, 0x10e

    move v7, v6

    move-object v6, v0

    goto :goto_48

    .line 261
    :sswitch_3a
    const/16 v6, 0x5a

    .line 262
    move v7, v6

    move-object v6, v0

    goto :goto_48

    .line 264
    :sswitch_3f
    const/16 v6, 0xb4

    .line 265
    move v7, v6

    move-object v6, v0

    goto :goto_48

    .line 257
    :cond_44
    move-object/from16 v8, p0

    move v7, v6

    move-object v6, v0

    .line 272
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .local v6, "exif":Landroid/media/ExifInterface;
    .local v7, "orientation":I
    :goto_48
    const-string v0, "image/heif"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 273
    const-string v0, "image/heif-sequence"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 274
    const-string v0, "image/heic"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 275
    const-string v0, "image/heic-sequence"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 276
    const-string v0, "image/avif"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 277
    :cond_70
    :try_start_70
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_75} :catch_f6

    move-object v9, v0

    .line 278
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_76
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 280
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v10

    .line 281
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    .line 279
    const/4 v12, -0x1

    invoke-virtual {v9, v12, v0, v10, v11}, Landroid/media/MediaMetadataRetriever;->getThumbnailImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_eb

    move-object v5, v0

    .line 282
    :try_start_95
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_98} :catch_f6

    .line 284
    .end local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    nop

    .line 287
    :cond_99
    if-nez v5, :cond_b4

    if-eqz v6, :cond_b4

    .line 288
    invoke-virtual {v6}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v9

    .line 289
    .local v9, "raw":[B
    if-eqz v9, :cond_b4

    .line 291
    :try_start_a3
    invoke-static {v9}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_ab
    .catch Landroid/graphics/ImageDecoder$DecodeException; {:try_start_a3 .. :try_end_ab} :catch_ae

    move-object v5, v0

    .line 294
    move-object v11, v5

    goto :goto_b5

    .line 292
    :catch_ae
    move-exception v0

    .line 293
    .local v0, "e":Landroid/graphics/ImageDecoder$DecodeException;
    const-string v10, "ThumbnailUtils"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0    # "e":Landroid/graphics/ImageDecoder$DecodeException;
    .end local v9    # "raw":[B
    :cond_b4
    move-object v11, v5

    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    :goto_b5
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 301
    :cond_ba
    if-nez v11, :cond_c5

    .line 302
    invoke-static {v8}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 308
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c5
    if-eqz v7, :cond_ea

    if-eqz v11, :cond_ea

    .line 309
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 310
    .local v14, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 312
    .local v15, "height":I
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v16

    .line 313
    .local v0, "m":Landroid/graphics/Matrix;
    int-to-float v5, v7

    div-int/lit8 v9, v14, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v15, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v5, v9, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 314
    const/4 v13, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    .end local v0    # "m":Landroid/graphics/Matrix;
    .local v16, "m":Landroid/graphics/Matrix;
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 317
    .end local v14    # "width":I
    .end local v15    # "height":I
    .end local v16    # "m":Landroid/graphics/Matrix;
    :cond_ea
    return-object v11

    .line 277
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_eb
    move-exception v0

    move-object v10, v0

    :try_start_ed
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f1

    goto :goto_f5

    :catchall_f1
    move-exception v0

    :try_start_f2
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "resizer":Landroid/media/ThumbnailUtils$Resizer;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Landroid/media/ExifInterface;
    .end local v7    # "orientation":I
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "size":Landroid/util/Size;
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    :goto_f5
    throw v10
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_f6} :catch_f6

    .line 282
    .end local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "resizer":Landroid/media/ThumbnailUtils$Resizer;
    .restart local v4    # "mimeType":Ljava/lang/String;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "exif":Landroid/media/ExifInterface;
    .restart local v7    # "orientation":I
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "size":Landroid/util/Size;
    .restart local p2    # "signal":Landroid/os/CancellationSignal;
    :catch_f6
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Failed to create thumbnail"

    invoke-direct {v9, v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    nop

    :sswitch_data_100
    .sparse-switch
        0x3 -> :sswitch_3f
        0x6 -> :sswitch_3a
        0x8 -> :sswitch_35
    .end sparse-switch
.end method

.method public static whitelist createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->convertKind(I)Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object v0

    .line 224
    :catch_f
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ThumbnailUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    return-object v0
.end method

.method private static greylist-max-p createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I
    .param p3, "sizedThumbBitmap"    # Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    return-void
.end method

.method public static whitelist createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 360
    :cond_5
    new-instance v0, Landroid/media/ThumbnailUtils$Resizer;

    invoke-direct {v0, p1, p2}, Landroid/media/ThumbnailUtils$Resizer;-><init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V

    move-object v1, v0

    .line 361
    .local v1, "resizer":Landroid/media/ThumbnailUtils$Resizer;
    :try_start_b
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_9a

    move-object v2, v0

    .line 362
    .local v2, "mmr":Landroid/media/MediaMetadataRetriever;
    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    .line 366
    .local v0, "raw":[B
    if-eqz v0, :cond_2a

    .line 367
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_8f

    .line 390
    :try_start_26
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_29} :catch_9a

    .line 367
    return-object v3

    .line 370
    :cond_2a
    :try_start_2a
    new-instance v8, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 371
    .local v8, "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8, v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 373
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    .line 374
    .local v9, "width":I
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v10, v3

    .line 377
    .local v10, "height":I
    nop

    .line 378
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    .line 382
    .local v3, "thumbnailTimeUs":J
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v5, v9, :cond_77

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v5, v10, :cond_77

    .line 383
    nop

    .line 384
    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 383
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_73
    .catchall {:try_start_2a .. :try_end_73} :catchall_8f

    .line 390
    :try_start_73
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_76} :catch_9a

    .line 383
    return-object v5

    .line 386
    :cond_77
    nop

    .line 388
    :try_start_78
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 387
    const/4 v5, 0x2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 386
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_8b
    .catchall {:try_start_78 .. :try_end_8b} :catchall_8f

    .line 390
    :try_start_8b
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_8e} :catch_9a

    .line 386
    return-object v5

    .line 361
    .end local v0    # "raw":[B
    .end local v3    # "thumbnailTimeUs":J
    .end local v8    # "params":Landroid/media/MediaMetadataRetriever$BitmapParams;
    .end local v9    # "width":I
    .end local v10    # "height":I
    :catchall_8f
    move-exception v0

    move-object v3, v0

    :try_start_91
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v0

    :try_start_96
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resizer":Landroid/media/ThumbnailUtils$Resizer;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "size":Landroid/util/Size;
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    :goto_99
    throw v3
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_9a} :catch_9a

    .line 390
    .end local v2    # "mmr":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "resizer":Landroid/media/ThumbnailUtils$Resizer;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "size":Landroid/util/Size;
    .restart local p2    # "signal":Landroid/os/CancellationSignal;
    :catch_9a
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to create thumbnail"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->convertKind(I)Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    return-object v0

    .line 334
    :catch_f
    move-exception v1

    .line 335
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ThumbnailUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-object v0
.end method

.method public static whitelist extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 404
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "options"    # I

    .line 417
    if-nez p0, :cond_4

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 422
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 423
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .local v0, "scale":F
    goto :goto_1d

    .line 425
    .end local v0    # "scale":F
    :cond_16
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 427
    .restart local v0    # "scale":F
    :goto_1d
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 428
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 429
    or-int/lit8 v2, p3, 0x1

    invoke-static {v1, p0, p1, p2, v2}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 431
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method static synthetic blacklist lambda$createAudioThumbnail$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "lower":Ljava/lang/String;
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method static synthetic blacklist lambda$createAudioThumbnail$1(Ljava/io/File;)I
    .registers 5
    .param p0, "f"    # Ljava/io/File;

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "lower":Ljava/lang/String;
    const-string v1, "albumart.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x4

    return v1

    .line 190
    :cond_12
    const-string v1, "albumart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".jpg"

    if-eqz v2, :cond_24

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x3

    return v1

    .line 191
    :cond_24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x2

    return v1

    .line 192
    :cond_32
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    return v1

    .line 193
    :cond_3a
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$createAudioThumbnail$2(Ljava/util/function/ToIntFunction;Ljava/io/File;Ljava/io/File;)I
    .registers 5
    .param p0, "score"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # Ljava/io/File;
    .param p2, "b"    # Ljava/io/File;

    .line 196
    invoke-interface {p0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-p makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 460
    :catch_7
    move-exception v0

    .line 461
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-p transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 23
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    move/from16 v8, p3

    and-int/lit8 v2, p4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v9

    :goto_11
    move v10, v2

    .line 476
    .local v10, "scaleUp":Z
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    move v3, v9

    :goto_18
    move v11, v3

    .line 478
    .local v11, "recycle":Z
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v12, v2, v7

    .line 479
    .local v12, "deltaX":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v13, v2, v8

    .line 480
    .local v13, "deltaY":I
    if-nez v10, :cond_83

    if-ltz v12, :cond_2b

    if-gez v13, :cond_83

    .line 487
    :cond_2b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 489
    .local v2, "b2":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 491
    .local v3, "c":Landroid/graphics/Canvas;
    div-int/lit8 v4, v12, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 492
    .local v4, "deltaXHalf":I
    div-int/lit8 v5, v13, 0x2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 493
    .local v5, "deltaYHalf":I
    new-instance v6, Landroid/graphics/Rect;

    .line 496
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v4

    .line 497
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/2addr v14, v5

    invoke-direct {v6, v4, v5, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    .local v6, "src":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    .line 499
    .local v9, "dstX":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int v14, v8, v14

    div-int/lit8 v14, v14, 0x2

    .line 500
    .local v14, "dstY":I
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v16, v2

    .end local v2    # "b2":Landroid/graphics/Bitmap;
    .local v16, "b2":Landroid/graphics/Bitmap;
    sub-int v2, v7, v9

    move/from16 v17, v4

    .end local v4    # "deltaXHalf":I
    .local v17, "deltaXHalf":I
    sub-int v4, v8, v14

    invoke-direct {v15, v9, v14, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 505
    .local v15, "dst":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v3, v1, v6, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 506
    if-eqz v11, :cond_7f

    .line 507
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 509
    :cond_7f
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    return-object v16

    .line 512
    .end local v3    # "c":Landroid/graphics/Canvas;
    .end local v5    # "deltaYHalf":I
    .end local v6    # "src":Landroid/graphics/Rect;
    .end local v9    # "dstX":I
    .end local v14    # "dstY":I
    .end local v15    # "dst":Landroid/graphics/Rect;
    .end local v16    # "b2":Landroid/graphics/Bitmap;
    .end local v17    # "deltaXHalf":I
    :cond_83
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v14, v2

    .line 513
    .local v14, "bitmapWidthF":F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v15, v2

    .line 515
    .local v15, "bitmapHeightF":F
    div-float v16, v14, v15

    .line 516
    .local v16, "bitmapAspect":F
    int-to-float v2, v7

    int-to-float v3, v8

    div-float v17, v2, v3

    .line 518
    .local v17, "viewAspect":F
    cmpl-float v2, v16, v17

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    if-lez v2, :cond_ae

    .line 519
    int-to-float v2, v8

    div-float/2addr v2, v15

    .line 520
    .local v2, "scale":F
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_a9

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a7

    goto :goto_a9

    .line 523
    :cond_a7
    const/4 v0, 0x0

    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .local v0, "scaler":Landroid/graphics/Matrix;
    goto :goto_ac

    .line 521
    .end local v0    # "scaler":Landroid/graphics/Matrix;
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_a9
    :goto_a9
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 525
    .end local v2    # "scale":F
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .restart local v0    # "scaler":Landroid/graphics/Matrix;
    :goto_ac
    move-object v5, v0

    goto :goto_c0

    .line 526
    .end local v0    # "scaler":Landroid/graphics/Matrix;
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_ae
    int-to-float v2, v7

    div-float/2addr v2, v14

    .line 527
    .restart local v2    # "scale":F
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_bc

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b9

    goto :goto_bc

    .line 530
    :cond_b9
    const/4 v0, 0x0

    move-object v5, v0

    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .restart local v0    # "scaler":Landroid/graphics/Matrix;
    goto :goto_c0

    .line 528
    .end local v0    # "scaler":Landroid/graphics/Matrix;
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_bc
    :goto_bc
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, v0

    .line 535
    .end local v2    # "scale":F
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .local v5, "scaler":Landroid/graphics/Matrix;
    :goto_c0
    if-eqz v5, :cond_d5

    .line 537
    nop

    .line 538
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 537
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "b1":Landroid/graphics/Bitmap;
    goto :goto_d8

    .line 540
    .end local v1    # "b1":Landroid/graphics/Bitmap;
    :cond_d5
    move-object v0, v1

    move-object/from16 v1, p1

    .line 543
    .restart local v1    # "b1":Landroid/graphics/Bitmap;
    :goto_d8
    if-eqz v11, :cond_df

    if-eq v1, v0, :cond_df

    .line 544
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 547
    :cond_df
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 548
    .local v2, "dx1":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 550
    .local v3, "dy1":I
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v6, v3, 0x2

    invoke-static {v1, v4, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 557
    .local v4, "b2":Landroid/graphics/Bitmap;
    if-eq v4, v1, :cond_102

    .line 558
    if-nez v11, :cond_ff

    if-eq v1, v0, :cond_102

    .line 559
    :cond_ff
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 563
    :cond_102
    return-object v4
.end method

.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 41
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    #@9
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    #@6
    .line 50
    return-void
.end method

.method private native _getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native getEmbeddedPicture(I)[B
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
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
    .line 340
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 342
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 338
    return-void

    #@7
    .line 341
    :catchall_0
    move-exception v0

    #@8
    .line 342
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 341
    throw v0
.end method

.method public getEmbeddedPicture()[B
    .locals 1

    #@0
    .prologue
    .line 322
    const v0, 0xffff

    #@3
    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .locals 3

    #@0
    .prologue
    .line 308
    const-wide/16 v0, -0x1

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeUs"    # J

    #@0
    .prologue
    .line 290
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    #@0
    .prologue
    .line 261
    if-ltz p3, :cond_0

    #@2
    .line 262
    const/4 v0, 0x3

    #@3
    if-le p3, v0, :cond_1

    #@5
    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unsupported option: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 266
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JI)Landroid/graphics/Bitmap;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public native release()V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    if-nez p2, :cond_0

    #@2
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@b
    move-result-object v11

    #@c
    .line 164
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v11, :cond_1

    #@e
    const-string/jumbo v0, "file"

    #@11
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 165
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    #@1e
    .line 166
    return-void

    #@1f
    .line 169
    :cond_2
    const/4 v8, 0x0

    #@20
    .line 171
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v10

    #@24
    .line 173
    .local v10, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string/jumbo v0, "r"

    #@27
    invoke-virtual {v10, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v8

    #@2b
    .line 177
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_5

    #@2d
    .line 178
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@32
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    .line 193
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    #@34
    .line 196
    .local v7, "ex":Ljava/lang/SecurityException;
    if-eqz v8, :cond_3

    #@36
    .line 197
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@39
    .line 202
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    #@40
    .line 158
    return-void

    #@41
    .line 174
    .end local v7    # "ex":Ljava/lang/SecurityException;
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    #@42
    .line 175
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@44
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@47
    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@48
    .line 194
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    #@49
    .line 196
    if-eqz v8, :cond_4

    #@4b
    .line 197
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@4e
    .line 194
    :cond_4
    :goto_1
    throw v0

    #@4f
    .line 180
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@52
    move-result-object v1

    #@53
    .line 181
    .local v1, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@56
    move-result v0

    #@57
    if-nez v0, :cond_6

    #@59
    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5e
    throw v0

    #@5f
    .line 187
    :cond_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@62
    move-result-wide v2

    #@63
    const-wide/16 v4, 0x0

    #@65
    cmp-long v0, v2, v4

    #@67
    if-gez v0, :cond_8

    #@69
    .line 188
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@6c
    .line 196
    :goto_2
    if-eqz v8, :cond_7

    #@6e
    .line 197
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@71
    .line 192
    :cond_7
    :goto_3
    return-void

    #@72
    .line 190
    :cond_8
    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@75
    move-result-wide v2

    #@76
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@79
    move-result-wide v4

    #@7a
    move-object v0, p0

    #@7b
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@7e
    goto :goto_2

    #@7f
    .line 199
    :catch_2
    move-exception v9

    #@80
    .local v9, "ioEx":Ljava/io/IOException;
    goto :goto_3

    #@81
    .end local v1    # "descriptor":Ljava/io/FileDescriptor;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "ioEx":Ljava/io/IOException;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "ex":Ljava/lang/SecurityException;
    :catch_3
    move-exception v9

    #@82
    .restart local v9    # "ioEx":Ljava/io/IOException;
    goto :goto_0

    #@83
    .end local v7    # "ex":Ljava/lang/SecurityException;
    .end local v9    # "ioEx":Ljava/io/IOException;
    :catch_4
    move-exception v9

    #@84
    .restart local v9    # "ioEx":Ljava/io/IOException;
    goto :goto_1
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/media/MediaDataSource;)V

    #@3
    .line 211
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0x7ffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@c
    .line 142
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    if-nez p1, :cond_0

    #@2
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 67
    :cond_0
    const/4 v9, 0x0

    #@9
    .line 69
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    #@b
    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 70
    .local v10, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@11
    .end local v9    # "is":Ljava/io/FileInputStream;
    move-result-object v1

    #@12
    .line 71
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    #@14
    const-wide v4, 0x7ffffffffffffffL

    #@19
    move-object v0, p0

    #@1a
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    #@1d
    .line 79
    if-eqz v10, :cond_1

    #@1f
    .line 80
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@22
    .line 62
    :cond_1
    :goto_0
    return-void

    #@23
    .line 74
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    #@24
    .line 75
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v8, "ioEx":Ljava/io/IOException;
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@29
    throw v0

    #@2a
    .line 72
    .end local v8    # "ioEx":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    #@2b
    .line 73
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v7, "fileEx":Ljava/io/FileNotFoundException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@30
    throw v0

    #@31
    .line 82
    .end local v7    # "fileEx":Ljava/io/FileNotFoundException;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    #@32
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    #@33
    .line 72
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    #@34
    .restart local v7    # "fileEx":Ljava/io/FileNotFoundException;
    move-object v9, v10

    #@35
    .end local v10    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    goto :goto_2

    #@36
    .line 74
    .end local v7    # "fileEx":Ljava/io/FileNotFoundException;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    #@37
    .restart local v8    # "ioEx":Ljava/io/IOException;
    move-object v9, v10

    #@38
    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    .line 97
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@4
    move-result v5

    #@5
    new-array v3, v5, [Ljava/lang/String;

    #@7
    .line 98
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@a
    move-result v5

    #@b
    new-array v4, v5, [Ljava/lang/String;

    #@d
    .line 99
    .local v4, "values":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/Map$Entry;

    #@21
    .line 100
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Ljava/lang/String;

    #@27
    aput-object v5, v3, v2

    #@29
    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Ljava/lang/String;

    #@2f
    aput-object v5, v4, v2

    #@31
    .line 102
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 106
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@37
    move-result-object v5

    #@38
    .line 105
    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3b
    .line 95
    return-void
.end method

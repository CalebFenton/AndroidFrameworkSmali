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
    .line 332
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 334
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 330
    return-void

    #@7
    .line 333
    :catchall_0
    move-exception v0

    #@8
    .line 334
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 333
    throw v0
.end method

.method public getEmbeddedPicture()[B
    .locals 1

    #@0
    .prologue
    .line 314
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
    .line 300
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
    .line 282
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
    .line 253
    if-ltz p3, :cond_0

    #@2
    .line 254
    const/4 v0, 0x3

    #@3
    if-le p3, v0, :cond_1

    #@5
    .line 255
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
    .line 258
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
    .line 151
    if-nez p2, :cond_0

    #@2
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 155
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@b
    move-result-object v11

    #@c
    .line 156
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
    .line 157
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    #@1e
    .line 158
    return-void

    #@1f
    .line 161
    :cond_2
    const/4 v8, 0x0

    #@20
    .line 163
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v10

    #@24
    .line 165
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
    .line 169
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_5

    #@2d
    .line 170
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
    .line 185
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    #@34
    .line 188
    .local v7, "ex":Ljava/lang/SecurityException;
    if-eqz v8, :cond_3

    #@36
    .line 189
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@39
    .line 194
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    #@40
    .line 150
    return-void

    #@41
    .line 166
    .end local v7    # "ex":Ljava/lang/SecurityException;
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    #@42
    .line 167
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
    .line 186
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    #@49
    .line 188
    if-eqz v8, :cond_4

    #@4b
    .line 189
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@4e
    .line 186
    :cond_4
    :goto_1
    throw v0

    #@4f
    .line 172
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@52
    move-result-object v1

    #@53
    .line 173
    .local v1, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@56
    move-result v0

    #@57
    if-nez v0, :cond_6

    #@59
    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5e
    throw v0

    #@5f
    .line 179
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
    .line 180
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@6c
    .line 188
    :goto_2
    if-eqz v8, :cond_7

    #@6e
    .line 189
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@71
    .line 184
    :cond_7
    :goto_3
    return-void

    #@72
    .line 182
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
    .line 191
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
    .line 204
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/media/MediaDataSource;)V

    #@3
    .line 203
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
    .line 136
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
    .line 134
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
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 63
    if-nez p1, :cond_0

    #@3
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v0

    #@9
    .line 67
    :cond_0
    const/4 v8, 0x0

    #@a
    .local v8, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    #@c
    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 68
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    #@12
    move-result-object v1

    #@13
    .line 69
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    #@15
    const-wide v4, 0x7ffffffffffffffL

    #@1a
    move-object v0, p0

    #@1b
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1e
    .line 74
    if-eqz v9, :cond_1

    #@20
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    #@23
    :cond_1
    :goto_0
    if-eqz v10, :cond_5

    #@25
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    #@26
    .line 70
    :catch_0
    move-exception v6

    #@27
    .local v6, "fileEx":Ljava/io/FileNotFoundException;
    move-object v8, v9

    #@28
    .line 71
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "is":Ljava/io/FileInputStream;
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2d
    throw v0

    #@2e
    .line 74
    .end local v6    # "fileEx":Ljava/io/FileNotFoundException;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    #@31
    .end local v8    # "is":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@32
    :catchall_0
    move-exception v2

    #@33
    move-object v11, v2

    #@34
    move-object v2, v0

    #@35
    move-object v0, v11

    #@36
    :goto_3
    if-eqz v8, :cond_2

    #@38
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@3b
    :cond_2
    :goto_4
    if-eqz v2, :cond_4

    #@3d
    :try_start_6
    throw v2

    #@3e
    .line 70
    :catch_3
    move-exception v6

    #@3f
    .restart local v6    # "fileEx":Ljava/io/FileNotFoundException;
    goto :goto_1

    #@40
    .line 74
    .end local v6    # "fileEx":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    #@41
    if-nez v2, :cond_3

    #@43
    move-object v2, v3

    #@44
    goto :goto_4

    #@45
    :cond_3
    if-eq v2, v3, :cond_2

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@4a
    goto :goto_4

    #@4b
    .line 72
    :catch_5
    move-exception v7

    #@4c
    .line 73
    .local v7, "ioEx":Ljava/io/IOException;
    :goto_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@51
    throw v0

    #@52
    .line 74
    .end local v7    # "ioEx":Ljava/io/IOException;
    :cond_4
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@53
    .line 62
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :cond_5
    return-void

    #@54
    .line 72
    :catch_6
    move-exception v7

    #@55
    .restart local v7    # "ioEx":Ljava/io/IOException;
    move-object v8, v9

    #@56
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v8, "is":Ljava/io/FileInputStream;
    goto :goto_5

    #@57
    .line 74
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "ioEx":Ljava/io/IOException;
    .local v8, "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    #@58
    move-object v2, v10

    #@59
    goto :goto_3

    #@5a
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    #@5b
    move-object v2, v10

    #@5c
    move-object v8, v9

    #@5d
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v8, "is":Ljava/io/FileInputStream;
    goto :goto_3

    #@5e
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    #@5f
    move-object v8, v9

    #@60
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2
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
    .line 88
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    .line 89
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@4
    move-result v5

    #@5
    new-array v3, v5, [Ljava/lang/String;

    #@7
    .line 90
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@a
    move-result v5

    #@b
    new-array v4, v5, [Ljava/lang/String;

    #@d
    .line 91
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
    .line 92
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Ljava/lang/String;

    #@27
    aput-object v5, v3, v2

    #@29
    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Ljava/lang/String;

    #@2f
    aput-object v5, v4, v2

    #@31
    .line 94
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 98
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@37
    move-result-object v5

    #@38
    .line 97
    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3b
    .line 87
    return-void
.end method

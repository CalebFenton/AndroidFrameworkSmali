.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .registers 3
    .param p0, "extendedMetadata"    # [B

    .line 103
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils-IA;)V

    return-object v0
.end method

.method private static greylist-max-o quietlyDispose(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closable"    # Ljava/io/Closeable;

    .line 87
    if-eqz p0, :cond_8

    .line 88
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 90
    :catch_6
    move-exception v0

    goto :goto_9

    .line 92
    :cond_8
    :goto_8
    nop

    .line 93
    :goto_9
    return-void
.end method

.method static greylist-max-o readBytes(Ljava/io/File;)[B
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    .local v0, "inputStream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v1, "bufferedStream":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 53
    .local v2, "data":[B
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .line 54
    .local v3, "length":I
    if-lez v3, :cond_17

    .line 55
    new-array v4, v3, [B

    move-object v2, v4

    .line 57
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1f

    .line 60
    .end local v3    # "length":I
    :cond_17
    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 62
    nop

    .line 63
    return-object v2

    .line 60
    :catchall_1f
    move-exception v3

    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 62
    throw v3
.end method

.method static greylist-max-o readBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o removeFile(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    return-void
.end method

.method static greylist-max-o writeToFile(Ljava/lang/String;[B)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 72
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 73
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 75
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 76
    goto :goto_17

    .line 75
    :catchall_12
    move-exception v1

    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    .line 76
    throw v1

    .line 78
    :cond_17
    :goto_17
    return-void
.end method

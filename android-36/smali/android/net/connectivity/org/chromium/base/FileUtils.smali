.class public Landroid/net/connectivity/org/chromium/base/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/FileUtils$Natives;
    }
.end annotation


# static fields
.field public static blacklist DELETE_ALL:Ljava/util/function/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/net/connectivity/org/chromium/base/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/FileUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/FileUtils;->DELETE_ALL:Ljava/util/function/Function;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 102
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "amountRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 105
    :cond_11
    return-void
.end method

.method public static blacklist copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "tmpOutputFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_21
    const-string v2, "FileUtils"

    const-string v3, "Writing to %s"

    invoke-static {v2, v3, p1}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    invoke-static {p0, v1}, Landroid/net/connectivity/org/chromium/base/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3b

    .line 118
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 119
    .end local v1    # "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 122
    return-void

    .line 120
    :cond_35
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 115
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw v2
.end method

.method public static blacklist getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 201
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FileUtilsJni;->get()Landroid/net/connectivity/org/chromium/base/FileUtils$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/FileUtils$Natives;->getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/lang/String;

    .line 162
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 163
    .local v0, "lastSep":I
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 164
    .local v1, "lastDot":I
    if-lt v0, v1, :cond_11

    const-string v2, ""

    return-object v2

    .line 165
    :cond_11
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getFileSizeBytes(Ljava/io/File;)J
    .registers 9
    .param p0, "file"    # Ljava/io/File;

    .line 81
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 82
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "size":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 85
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_14

    .line 86
    return-wide v0

    .line 88
    :cond_14
    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 89
    .local v5, "f":Ljava/io/File;
    invoke-static {v5}, Landroid/net/connectivity/org/chromium/base/FileUtils;->getFileSizeBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 88
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 91
    :cond_22
    return-wide v0

    .line 93
    .end local v0    # "size":J
    .end local v2    # "files":[Ljava/io/File;
    :cond_23
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 141
    const/4 v0, 0x0

    .line 146
    .local v0, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 149
    goto :goto_20

    .line 147
    :catch_7
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create content uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileUtils"

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20
    if-nez v0, :cond_26

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 153
    :cond_26
    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "filepath"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist queryBitmapFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 171
    const-string v0, "FileUtils"

    .line 172
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_85

    .line 173
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_2c

    .line 174
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null ParcelFileDescriptor from uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_79

    .line 175
    nop

    .line 188
    if-eqz v2, :cond_2b

    :try_start_28
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_85

    .line 175
    :cond_2b
    return-object v1

    .line 177
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 178
    .local v3, "fileDescriptor":Ljava/io/FileDescriptor;
    if-nez v3, :cond_4f

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null FileDescriptor from uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_79

    .line 180
    nop

    .line 188
    if-eqz v2, :cond_4e

    :try_start_4b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_85

    .line 180
    :cond_4e
    return-object v1

    .line 182
    :cond_4f
    :try_start_4f
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 183
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_72

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode image from uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_4f .. :try_end_6b} :catchall_79

    .line 185
    nop

    .line 188
    if-eqz v2, :cond_71

    :try_start_6e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 185
    :cond_71
    return-object v1

    .line 187
    :cond_72
    nop

    .line 188
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_78} :catch_85

    .line 187
    :cond_78
    return-object v4

    .line 171
    .end local v3    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_79
    move-exception v3

    if-eqz v2, :cond_84

    :try_start_7c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception v4

    :try_start_81
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_84
    :goto_84
    throw v3
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_85

    .line 188
    .end local v2    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_85
    move-exception v2

    .line 189
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception when reading uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    return-object v1
.end method

.method public static blacklist readStream(Ljava/io/InputStream;)[B
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v0, "data":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist recursivelyDeleteFile(Ljava/io/File;Ljava/util/function/Function;)Z
    .registers 6
    .param p0, "currentFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 48
    .local p1, "canDelete":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 52
    return v1

    .line 54
    :cond_b
    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 55
    return v1

    .line 58
    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_36

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_36

    aget-object v3, v0, v2

    .line 62
    .local v3, "file":Ljava/io/File;
    invoke-static {v3, p1}, Landroid/net/connectivity/org/chromium/base/FileUtils;->recursivelyDeleteFile(Ljava/io/File;Ljava/util/function/Function;)Z

    .line 61
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 67
    .end local v0    # "files":[Ljava/io/File;
    :cond_36
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 68
    .local v0, "ret":Z
    if-nez v0, :cond_43

    .line 69
    const-string v1, "FileUtils"

    const-string v2, "Failed to delete: %s"

    invoke-static {v1, v2, p0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_43
    return v0
.end method

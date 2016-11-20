.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 164
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    #@a
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@10
    .line 70
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@12
    if-lez v0, :cond_0

    #@14
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    #@1a
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    #@20
    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 164
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    #@a
    .line 53
    if-nez p1, :cond_0

    #@c
    .line 54
    const/4 v0, 0x0

    #@d
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@f
    .line 55
    return-void

    #@10
    .line 57
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@16
    .line 58
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@18
    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    #@1a
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    #@20
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    #@22
    .line 52
    return-void
.end method

.method private static compress([B)[B
    .locals 10
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 201
    const/4 v1, 0x0

    #@2
    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@3
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 202
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "resultStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    #@a
    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@d
    .line 203
    .local v4, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    #@10
    .line 204
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    #@13
    .line 205
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@16
    move-result-object v8

    #@17
    .line 209
    if-eqz v4, :cond_0

    #@19
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@1c
    :cond_0
    move-object v6, v7

    #@1d
    :goto_0
    if-eqz v2, :cond_1

    #@1f
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@22
    :cond_1
    move-object v5, v6

    #@23
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    #@25
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@26
    .line 206
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    #@28
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    #@29
    .line 207
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :goto_2
    const-string/jumbo v5, "InputMethodSubtypeArray"

    #@2c
    const-string/jumbo v6, "Failed to compress the data."

    #@2f
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    .line 208
    return-object v7

    #@33
    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v6

    #@34
    goto :goto_0

    #@35
    :catch_2
    move-exception v5

    #@36
    if-eqz v6, :cond_2

    #@38
    if-eq v6, v5, :cond_1

    #@3a
    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@3d
    move-object v5, v6

    #@3e
    goto :goto_1

    #@3f
    .line 205
    :cond_3
    return-object v8

    #@40
    .line 209
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v5

    #@41
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@42
    :catchall_0
    move-exception v6

    #@43
    move-object v9, v6

    #@44
    move-object v6, v5

    #@45
    move-object v5, v9

    #@46
    :goto_4
    if-eqz v3, :cond_4

    #@48
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    #@4b
    :cond_4
    move-object v8, v6

    #@4c
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    #@4e
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    #@51
    :cond_6
    move-object v6, v8

    #@52
    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    #@54
    :try_start_a
    throw v6

    #@55
    .line 206
    :catch_4
    move-exception v0

    #@56
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@57
    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    #@58
    if-eqz v6, :cond_5

    #@5a
    if-eq v6, v8, :cond_4

    #@5c
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@5f
    move-object v8, v6

    #@60
    goto :goto_5

    #@61
    :catch_6
    move-exception v6

    #@62
    if-eqz v8, :cond_7

    #@64
    if-eq v8, v6, :cond_6

    #@66
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@69
    move-object v6, v8

    #@6a
    goto :goto_6

    #@6b
    :cond_8
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    #@6c
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v5

    #@6d
    move-object v6, v7

    #@6e
    goto :goto_4

    #@6f
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v5

    #@70
    move-object v6, v7

    #@71
    move-object v1, v2

    #@72
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    #@73
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v5

    #@74
    move-object v6, v7

    #@75
    move-object v3, v4

    #@76
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    #@77
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    #@78
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception v5

    #@79
    move-object v1, v2

    #@7a
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    #@7b
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v5

    #@7c
    move-object v3, v4

    #@7d
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    #@7e
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private static decompress([BI)[B
    .locals 14
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 213
    const/4 v1, 0x0

    #@2
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    #@3
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@5
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 214
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    #@a
    invoke-direct {v8, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@d
    .line 215
    .local v8, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-array v5, p1, [B

    #@f
    .line 216
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v5, "result":[B
    const/4 v6, 0x0

    #@10
    .line 217
    .local v6, "totalReadBytes":I
    :goto_0
    array-length v9, v5

    #@11
    if-ge v6, v9, :cond_0

    #@13
    .line 218
    array-length v9, v5

    #@14
    sub-int v4, v9, v6

    #@16
    .line 219
    .local v4, "restBytes":I
    invoke-virtual {v8, v5, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@19
    move-result v3

    #@1a
    .line 220
    .local v3, "readBytes":I
    if-gez v3, :cond_4

    #@1c
    .line 225
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :cond_0
    if-eq p1, v6, :cond_6

    #@1e
    .line 232
    if-eqz v8, :cond_1

    #@20
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@23
    :cond_1
    move-object v10, v11

    #@24
    :goto_1
    if-eqz v2, :cond_2

    #@26
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@29
    :cond_2
    move-object v9, v10

    #@2a
    :cond_3
    :goto_2
    if-eqz v9, :cond_5

    #@2c
    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@2d
    .line 229
    :catch_0
    move-exception v0

    #@2e
    .local v0, "e":Ljava/lang/Exception;
    move-object v7, v8

    #@2f
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    #@30
    .line 230
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :goto_3
    const-string/jumbo v9, "InputMethodSubtypeArray"

    #@33
    const-string/jumbo v10, "Failed to decompress the data."

    #@36
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 231
    return-object v11

    #@3a
    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "readBytes":I
    .restart local v4    # "restBytes":I
    .restart local v5    # "result":[B
    .restart local v6    # "totalReadBytes":I
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_4
    add-int/2addr v6, v3

    #@3b
    goto :goto_0

    #@3c
    .line 232
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :catch_1
    move-exception v10

    #@3d
    goto :goto_1

    #@3e
    :catch_2
    move-exception v9

    #@3f
    if-eqz v10, :cond_3

    #@41
    if-eq v10, v9, :cond_2

    #@43
    :try_start_6
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@46
    move-object v9, v10

    #@47
    goto :goto_2

    #@48
    .line 226
    :cond_5
    return-object v11

    #@49
    .line 232
    :cond_6
    if-eqz v8, :cond_7

    #@4b
    :try_start_7
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    #@4e
    :cond_7
    move-object v10, v11

    #@4f
    :goto_4
    if-eqz v2, :cond_8

    #@51
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    #@54
    :cond_8
    move-object v9, v10

    #@55
    :cond_9
    :goto_5
    if-eqz v9, :cond_a

    #@57
    :try_start_9
    throw v9

    #@58
    :catch_3
    move-exception v10

    #@59
    goto :goto_4

    #@5a
    :catch_4
    move-exception v9

    #@5b
    if-eqz v10, :cond_9

    #@5d
    if-eq v10, v9, :cond_8

    #@5f
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    #@62
    move-object v9, v10

    #@63
    goto :goto_5

    #@64
    .line 228
    :cond_a
    return-object v5

    #@65
    .line 232
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v9

    #@66
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :goto_6
    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@67
    :catchall_0
    move-exception v10

    #@68
    move-object v13, v10

    #@69
    move-object v10, v9

    #@6a
    move-object v9, v13

    #@6b
    :goto_7
    if-eqz v7, :cond_b

    #@6d
    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    #@70
    :cond_b
    move-object v12, v10

    #@71
    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    #@73
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    #@76
    :cond_d
    move-object v10, v12

    #@77
    :cond_e
    :goto_9
    if-eqz v10, :cond_f

    #@79
    :try_start_d
    throw v10

    #@7a
    .line 229
    :catch_6
    move-exception v0

    #@7b
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@7c
    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v12

    #@7d
    if-eqz v10, :cond_c

    #@7f
    if-eq v10, v12, :cond_b

    #@81
    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@84
    move-object v12, v10

    #@85
    goto :goto_8

    #@86
    :catch_8
    move-exception v10

    #@87
    if-eqz v12, :cond_e

    #@89
    if-eq v12, v10, :cond_d

    #@8b
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@8e
    move-object v10, v12

    #@8f
    goto :goto_9

    #@90
    :cond_f
    throw v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    #@91
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v9

    #@92
    move-object v10, v11

    #@93
    goto :goto_7

    #@94
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v9

    #@95
    move-object v10, v11

    #@96
    move-object v1, v2

    #@97
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    #@98
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v9

    #@99
    move-object v10, v11

    #@9a
    move-object v7, v8

    #@9b
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    #@9c
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    #@9d
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_9
    move-exception v9

    #@9e
    move-object v1, v2

    #@9f
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    #@a0
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_a
    move-exception v9

    #@a1
    move-object v7, v8

    #@a2
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    #@a3
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_6
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 172
    const/4 v0, 0x0

    #@1
    .line 174
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 175
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@9
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .line 178
    if-eqz v0, :cond_0

    #@f
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@12
    .line 180
    const/4 v0, 0x0

    #@13
    .line 176
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    return-object v1

    #@14
    .line 177
    :catchall_0
    move-exception v1

    #@15
    .line 178
    if-eqz v0, :cond_1

    #@17
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 180
    const/4 v0, 0x0

    #@1b
    .line 177
    :cond_1
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 186
    const/4 v0, 0x0

    #@1
    .line 188
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 189
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    #@a
    .line 190
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@e
    .line 191
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 193
    if-eqz v0, :cond_0

    #@18
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 195
    const/4 v0, 0x0

    #@1c
    .line 191
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    return-object v1

    #@1d
    .line 192
    :catchall_0
    move-exception v1

    #@1e
    .line 193
    if-eqz v0, :cond_1

    #@20
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 195
    const/4 v0, 0x0

    #@24
    .line 192
    :cond_1
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 131
    if-ltz p1, :cond_0

    #@2
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@4
    if-gt v2, p1, :cond_1

    #@6
    .line 132
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v2

    #@c
    .line 134
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    #@e
    .line 135
    .local v1, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v1, :cond_3

    #@10
    .line 136
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    #@12
    monitor-enter v3

    #@13
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    #@15
    .line 138
    if-nez v1, :cond_2

    #@17
    .line 140
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    #@19
    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    #@1b
    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    #@1e
    move-result-object v0

    #@1f
    .line 142
    .local v0, "decompressedData":[B
    const/4 v2, 0x0

    #@20
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    #@22
    .line 143
    const/4 v2, 0x0

    #@23
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    #@25
    .line 144
    if-eqz v0, :cond_4

    #@27
    .line 145
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    #@2a
    move-result-object v1

    #@2b
    .line 150
    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .end local v0    # "decompressedData":[B
    :cond_2
    monitor-exit v3

    #@2e
    .line 154
    :cond_3
    aget-object v2, v1, p1

    #@30
    return-object v2

    #@31
    .line 147
    .restart local v0    # "decompressedData":[B
    :cond_4
    :try_start_1
    const-string/jumbo v2, "InputMethodSubtypeArray"

    #@34
    const-string/jumbo v4, "Failed to decompress data. Returns null as fallback."

    #@37
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 148
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@3c
    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 136
    .end local v0    # "decompressedData":[B
    :catchall_0
    move-exception v2

    #@40
    monitor-exit v3

    #@41
    throw v2
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 86
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@3
    if-nez v3, :cond_0

    #@5
    .line 87
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 88
    return-void

    #@b
    .line 91
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    #@d
    .line 92
    .local v0, "compressedData":[B
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    #@f
    .line 93
    .local v2, "decompressedSize":I
    if-nez v0, :cond_2

    #@11
    if-nez v2, :cond_2

    #@13
    .line 94
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    #@15
    monitor-enter v4

    #@16
    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    #@18
    .line 96
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    #@1a
    .line 97
    if-nez v0, :cond_1

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 98
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    #@20
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    #@23
    move-result-object v1

    #@24
    .line 99
    .local v1, "decompressedData":[B
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    #@27
    move-result-object v0

    #@28
    .line 100
    if-nez v0, :cond_3

    #@2a
    .line 101
    const/4 v2, -0x1

    #@2b
    .line 102
    const-string/jumbo v3, "InputMethodSubtypeArray"

    #@2e
    const-string/jumbo v5, "Failed to compress data."

    #@31
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 106
    :goto_0
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    #@36
    .line 107
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .end local v1    # "decompressedData":[B
    :cond_1
    monitor-exit v4

    #@39
    .line 112
    :cond_2
    if-eqz v0, :cond_4

    #@3b
    if-lez v2, :cond_4

    #@3d
    .line 113
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    #@3f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@48
    .line 85
    :goto_1
    return-void

    #@49
    .line 104
    .restart local v1    # "decompressedData":[B
    :cond_3
    :try_start_1
    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 94
    .end local v1    # "decompressedData":[B
    :catchall_0
    move-exception v3

    #@4c
    monitor-exit v4

    #@4d
    throw v3

    #@4e
    .line 117
    :cond_4
    const-string/jumbo v3, "InputMethodSubtypeArray"

    #@51
    const-string/jumbo v4, "Unexpected state. Behaving as an empty array."

    #@54
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 118
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    goto :goto_1
.end method

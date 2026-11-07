.class Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;
.super Landroid/icu/impl/SoftCache;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;",
        "Landroid/icu/impl/ICUResourceBundleReader;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleReader-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .registers 12
    .param p1, "key"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 187
    const-string v0, "android/icu/impl/data/icudata"

    iget-object v1, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "fullName":Ljava/lang/String;
    :try_start_a
    iget-object v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_c} :catch_4e

    if-eqz v2, :cond_30

    :try_start_e
    iget-object v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "itemPath":Ljava/lang/String;
    invoke-static {p2, v1, v0}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 193
    .local v2, "inBytes":Ljava/nio/ByteBuffer;
    if-nez v2, :cond_2b

    .line 194
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$sfgetNULL_READER()Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_2d

    return-object v3

    .line 196
    .end local v0    # "itemPath":Ljava/lang/String;
    :cond_2b
    move-object v4, v2

    goto :goto_40

    .line 205
    .end local v2    # "inBytes":Ljava/nio/ByteBuffer;
    :catch_2d
    move-exception v0

    move-object v7, p2

    goto :goto_50

    .line 198
    :cond_30
    :try_start_30
    invoke-static {p2, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_4e

    .line 199
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_3b

    .line 200
    :try_start_36
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$sfgetNULL_READER()Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_2d

    return-object v2

    .line 202
    :cond_3b
    :try_start_3b
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v4, v2

    .line 204
    .end local v0    # "stream":Ljava/io/InputStream;
    .local v4, "inBytes":Ljava/nio/ByteBuffer;
    :goto_40
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v5, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    iget-object v6, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_4e

    const/4 v8, 0x0

    move-object v7, p2

    .end local p2    # "loader":Ljava/lang/ClassLoader;
    .local v7, "loader":Ljava/lang/ClassLoader;
    :try_start_48
    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader-IA;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    return-object v3

    .line 205
    .end local v4    # "inBytes":Ljava/nio/ByteBuffer;
    :catch_4c
    move-exception v0

    goto :goto_50

    .end local v7    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "loader":Ljava/lang/ClassLoader;
    :catch_4e
    move-exception v0

    move-object v7, p2

    .line 206
    .end local p2    # "loader":Ljava/lang/ClassLoader;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v7    # "loader":Ljava/lang/ClassLoader;
    :goto_50
    new-instance p2, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected bridge synthetic greylist-max-o createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 181
    check-cast p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object p1

    return-object p1
.end method

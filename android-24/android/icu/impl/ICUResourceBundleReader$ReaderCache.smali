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
        "Landroid/icu/impl/SoftCache",
        "<",
        "Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;",
        "Landroid/icu/impl/ICUResourceBundleReader;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 10
    .param p1, "key"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 183
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@2
    iget-object v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    #@4
    invoke-static {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 186
    .local v7, "fullName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "android/icu/impl/data/icudt56b"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 187
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    #@1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    .line 188
    .local v8, "itemPath":Ljava/lang/String;
    invoke-static {p2, v7, v8}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v1

    #@28
    .line 189
    .local v1, "inBytes":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_2

    #@2a
    .line 190
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-get0()Landroid/icu/impl/ICUResourceBundleReader;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 194
    .end local v1    # "inBytes":Ljava/nio/ByteBuffer;
    .end local v8    # "itemPath":Ljava/lang/String;
    :cond_0
    invoke-static {p2, v7}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    #@32
    move-result-object v9

    #@33
    .line 195
    .local v9, "stream":Ljava/io/InputStream;
    if-nez v9, :cond_1

    #@35
    .line 196
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-get0()Landroid/icu/impl/ICUResourceBundleReader;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 198
    :cond_1
    invoke-static {v9}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@3d
    move-result-object v1

    #@3e
    .line 200
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v1    # "inBytes":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    #@40
    iget-object v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@42
    iget-object v3, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    #@44
    const/4 v5, 0x0

    #@45
    move-object v4, p2

    #@46
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    return-object v0

    #@4a
    .line 201
    .end local v1    # "inBytes":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    #@4b
    .line 202
    .local v6, "ex":Ljava/io/IOException;
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "Data file "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    const-string/jumbo v3, " is corrupt - "

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-direct {v0, v2, v6}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@73
    throw v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "loader"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 182
    check-cast p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/ClassLoader;

    #@4
    .end local p2    # "loader":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

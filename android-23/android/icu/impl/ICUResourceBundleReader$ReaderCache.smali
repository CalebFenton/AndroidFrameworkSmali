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
        "Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;",
        "Landroid/icu/impl/ICUResourceBundleReader;",
        "Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 324
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
.method protected createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;)Landroid/icu/impl/ICUResourceBundleReader;
    .locals 10
    .param p1, "key"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;
    .param p2, "data"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;

    #@0
    .prologue
    .line 330
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@2
    iget-object v2, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->localeID:Ljava/lang/String;

    #@4
    invoke-static {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 333
    .local v7, "fullName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 334
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

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
    .line 335
    .local v8, "itemPath":Ljava/lang/String;
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@26
    invoke-static {v0, v7, v8}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@29
    move-result-object v1

    #@2a
    .line 336
    .local v1, "inBytes":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_2

    #@2c
    .line 337
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-get0()Landroid/icu/impl/ICUResourceBundleReader;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 341
    .end local v1    # "inBytes":Ljava/nio/ByteBuffer;
    .end local v8    # "itemPath":Ljava/lang/String;
    :cond_0
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@33
    invoke-static {v0, v7}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    #@36
    move-result-object v9

    #@37
    .line 342
    .local v9, "stream":Ljava/io/InputStream;
    if-nez v9, :cond_1

    #@39
    .line 343
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->-get0()Landroid/icu/impl/ICUResourceBundleReader;

    #@3c
    move-result-object v0

    #@3d
    return-object v0

    #@3e
    .line 345
    :cond_1
    invoke-static {v9}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@41
    move-result-object v1

    #@42
    .line 347
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v1    # "inBytes":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader;

    #@44
    iget-object v2, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@46
    iget-object v3, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->localeID:Ljava/lang/String;

    #@48
    iget-object v4, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@4a
    const/4 v5, 0x0

    #@4b
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    return-object v0

    #@4f
    .line 348
    .end local v1    # "inBytes":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    #@50
    .line 349
    .local v6, "ex":Ljava/io/IOException;
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v3, "Data file "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    const-string/jumbo v3, " is corrupt - "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-direct {v0, v2, v6}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@78
    throw v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 329
    check-cast p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$ReaderCache;->createInstance(Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;)Landroid/icu/impl/ICUResourceBundleReader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

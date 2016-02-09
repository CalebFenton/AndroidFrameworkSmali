.class Ljava/net/URLClassLoader$URLJarHandler;
.super Ljava/net/URLClassLoader$URLHandler;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLJarHandler"
.end annotation


# instance fields
.field final index:Ljava/net/URLClassLoader$IndexFile;

.field final jf:Ljava/util/jar/JarFile;

.field final prefixName:Ljava/lang/String;

.field final subHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/net/URLClassLoader;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "jarURL"    # Ljava/net/URL;
    .param p4, "jf"    # Ljava/util/jar/JarFile;
    .param p5, "prefixName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 245
    iput-object p1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@3
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    #@6
    .line 243
    new-instance v2, Ljava/util/HashMap;

    #@8
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    #@d
    .line 247
    iput-object p4, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    #@f
    .line 248
    iput-object p5, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    #@11
    .line 249
    iput-object p3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    #@13
    .line 250
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    #@16
    invoke-virtual {p4, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@19
    move-result-object v0

    #@1a
    .line 251
    .local v0, "je":Ljava/util/jar/JarEntry;
    if-nez v0, :cond_0

    #@1c
    :goto_0
    iput-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@1e
    .line 245
    return-void

    #@1f
    .line 251
    :cond_0
    invoke-static {p4, v0, p2}, Ljava/net/URLClassLoader$IndexFile;->readIndexFile(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/net/URL;)Ljava/net/URLClassLoader$IndexFile;

    #@22
    move-result-object v1

    #@23
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/net/URLClassLoader$IndexFile;)V
    .locals 1
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "jarURL"    # Ljava/net/URL;
    .param p4, "jf"    # Ljava/util/jar/JarFile;
    .param p5, "prefixName"    # Ljava/lang/String;
    .param p6, "index"    # Ljava/net/URLClassLoader$IndexFile;

    #@0
    .prologue
    .line 254
    iput-object p1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@2
    .line 255
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    #@5
    .line 243
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    #@c
    .line 256
    iput-object p4, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    #@e
    .line 257
    iput-object p5, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    #@10
    .line 258
    iput-object p6, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@12
    .line 259
    iput-object p3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    #@14
    .line 254
    return-void
.end method

.method private createClass(Ljava/util/jar/JarEntry;Ljava/util/jar/Manifest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 15
    .param p1, "entry"    # Ljava/util/jar/JarEntry;
    .param p2, "manifest"    # Ljava/util/jar/Manifest;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/jar/Manifest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@7
    move-result-object v13

    #@8
    .line 334
    .local v13, "is":Ljava/io/InputStream;
    invoke-static {v13}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v10

    #@c
    .line 338
    .local v10, "clBuf":[B
    if-eqz p3, :cond_0

    #@e
    .line 339
    const/16 v1, 0x2f

    #@10
    const/16 v3, 0x2e

    #@12
    move-object/from16 v0, p3

    #@14
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 340
    .local v2, "packageDotName":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@1a
    invoke-static {v1, v2}, Ljava/net/URLClassLoader;->-wrap3(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    #@1d
    move-result-object v14

    #@1e
    .line 341
    .local v14, "packageObj":Ljava/lang/Package;
    if-nez v14, :cond_2

    #@20
    .line 342
    if-eqz p2, :cond_1

    #@22
    .line 343
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@24
    .line 344
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    #@26
    .line 343
    move-object/from16 v0, p2

    #@28
    invoke-virtual {v1, v2, v0, v3}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    #@2b
    .line 363
    .end local v2    # "packageDotName":Ljava/lang/String;
    .end local v14    # "packageObj":Ljava/lang/Package;
    :cond_0
    :goto_0
    new-instance v8, Ljava/security/CodeSource;

    #@2d
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    #@2f
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v8, v1, v3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    #@36
    .line 364
    .local v8, "codeS":Ljava/security/CodeSource;
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@38
    array-length v7, v10

    #@39
    const/4 v6, 0x0

    #@3a
    move-object/from16 v4, p4

    #@3c
    move-object v5, v10

    #@3d
    invoke-static/range {v3 .. v8}, Ljava/net/URLClassLoader;->-wrap1(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    #@40
    move-result-object v1

    #@41
    return-object v1

    #@42
    .line 335
    .end local v8    # "codeS":Ljava/security/CodeSource;
    .end local v10    # "clBuf":[B
    .end local v13    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    #@43
    .line 336
    .local v11, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@44
    return-object v1

    #@45
    .line 346
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "packageDotName":Ljava/lang/String;
    .restart local v10    # "clBuf":[B
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "packageObj":Ljava/lang/Package;
    :cond_1
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@47
    const/4 v3, 0x0

    #@48
    const/4 v4, 0x0

    #@49
    .line 347
    const/4 v5, 0x0

    #@4a
    const/4 v6, 0x0

    #@4b
    const/4 v7, 0x0

    #@4c
    const/4 v8, 0x0

    #@4d
    const/4 v9, 0x0

    #@4e
    .line 346
    invoke-static/range {v1 .. v9}, Ljava/net/URLClassLoader;->-wrap2(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    #@51
    goto :goto_0

    #@52
    .line 350
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Package;->isSealed()Z

    #@55
    move-result v12

    #@56
    .line 351
    .local v12, "exception":Z
    if-eqz p2, :cond_3

    #@58
    .line 352
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    move-object/from16 v0, p3

    #@61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    const-string/jumbo v4, "/"

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    move-object/from16 v0, p2

    #@72
    invoke-static {v1, v0, v3}, Ljava/net/URLClassLoader;->-wrap0(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_3

    #@78
    .line 354
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    #@7a
    .line 353
    invoke-virtual {v14, v1}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_4

    #@80
    const/4 v12, 0x0

    #@81
    .line 357
    .end local v12    # "exception":Z
    :cond_3
    :goto_1
    if-eqz v12, :cond_0

    #@83
    .line 358
    new-instance v1, Ljava/lang/SecurityException;

    #@85
    const-string/jumbo v3, "Package %s is sealed"

    #@88
    const/4 v4, 0x1

    #@89
    new-array v4, v4, [Ljava/lang/Object;

    #@8b
    .line 359
    const/4 v5, 0x0

    #@8c
    aput-object p3, v4, v5

    #@8e
    .line 358
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@95
    throw v1

    #@96
    .line 353
    .restart local v12    # "exception":Z
    :cond_4
    const/4 v12, 0x1

    #@97
    .local v12, "exception":Z
    goto :goto_1
.end method

.method private createURLSubJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 14
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 424
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@4
    move-result-object v8

    #@5
    .line 425
    .local v8, "file":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "!/"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 426
    const-string/jumbo v5, ""

    #@15
    .line 437
    .local v5, "prefixName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/net/JarURLConnection;

    #@1b
    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    #@1e
    move-result-object v3

    #@1f
    .line 439
    .local v3, "jarURL":Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    #@21
    .line 440
    const-string/jumbo v2, "jar"

    #@24
    const-string/jumbo v6, ""

    #@27
    .line 441
    new-instance v11, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@2f
    move-result-object v12

    #@30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    const-string/jumbo v12, "!/"

    #@37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v11

    #@3f
    .line 439
    invoke-direct {v1, v2, v6, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@45
    move-result-object v9

    #@46
    check-cast v9, Ljava/net/JarURLConnection;

    #@48
    .line 442
    .local v9, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v9}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@4b
    move-result-object v4

    #@4c
    .line 443
    .local v4, "jf":Ljava/util/jar/JarFile;
    new-instance v0, Ljava/net/URLClassLoader$URLJarHandler;

    #@4e
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@50
    const/4 v6, 0x0

    #@51
    move-object v2, p1

    #@52
    invoke-direct/range {v0 .. v6}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/net/URLClassLoader$IndexFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 445
    .local v0, "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    return-object v0

    #@56
    .line 428
    .end local v0    # "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    .end local v3    # "jarURL":Ljava/net/URL;
    .end local v4    # "jf":Ljava/util/jar/JarFile;
    .end local v5    # "prefixName":Ljava/lang/String;
    .end local v9    # "juc":Ljava/net/JarURLConnection;
    :cond_0
    const-string/jumbo v1, "!/"

    #@59
    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@5c
    move-result v10

    #@5d
    .line 429
    .local v10, "sepIdx":I
    const/4 v1, -0x1

    #@5e
    if-ne v10, v1, :cond_1

    #@60
    .line 431
    return-object v13

    #@61
    .line 433
    :cond_1
    add-int/lit8 v10, v10, 0x2

    #@63
    .line 434
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .restart local v5    # "prefixName":Ljava/lang/String;
    goto :goto_0

    #@68
    .line 446
    .end local v10    # "sepIdx":I
    :catch_0
    move-exception v7

    #@69
    .line 448
    .local v7, "e":Ljava/io/IOException;
    return-object v13
.end method

.method private declared-synchronized getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 404
    :try_start_0
    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/net/URLClassLoader$URLHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 405
    .local v1, "sub":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v1, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 406
    return-object v1

    #@d
    .line 408
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 409
    .local v0, "protocol":Ljava/lang/String;
    const-string/jumbo v2, "jar"

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 410
    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@1c
    invoke-static {v2, p1}, Ljava/net/URLClassLoader;->-wrap5(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@1f
    move-result-object v1

    #@20
    .line 416
    :goto_0
    if-eqz v1, :cond_1

    #@22
    .line 417
    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    #@24
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 419
    return-object v1

    #@29
    .line 411
    :cond_2
    :try_start_2
    const-string/jumbo v2, "file"

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 412
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->createURLSubJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@35
    move-result-object v1

    #@36
    goto :goto_0

    #@37
    .line 414
    :cond_3
    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #@39
    invoke-static {v2, p1}, Ljava/net/URLClassLoader;->-wrap4(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    move-result-object v1

    #@3d
    goto :goto_0

    #@3e
    .end local v0    # "protocol":Ljava/lang/String;
    .end local v1    # "sub":Ljava/net/URLClassLoader$URLHandler;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit p0

    #@40
    throw v2
.end method


# virtual methods
.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v10, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    #@8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v9

    #@c
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v9

    #@10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 294
    .local v2, "entryName":Ljava/lang/String;
    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    #@16
    invoke-virtual {v9, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@19
    move-result-object v1

    #@1a
    .line 295
    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_0

    #@1c
    .line 302
    :try_start_0
    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    #@1e
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@21
    move-result-object v4

    #@22
    .line 303
    .local v4, "manifest":Ljava/util/jar/Manifest;
    invoke-direct {p0, v1, v4, p1, p3}, Ljava/net/URLClassLoader$URLJarHandler;->createClass(Ljava/util/jar/JarEntry;Ljava/util/jar/Manifest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v9

    #@26
    return-object v9

    #@27
    .line 304
    .end local v4    # "manifest":Ljava/util/jar/Manifest;
    :catch_0
    move-exception v0

    #@28
    .line 307
    :cond_0
    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@2a
    if-eqz v9, :cond_3

    #@2c
    .line 309
    if-nez p1, :cond_2

    #@2e
    .line 310
    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@30
    invoke-virtual {v9, p2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    #@33
    move-result-object v8

    #@34
    .line 314
    .local v8, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :goto_0
    if-eqz v8, :cond_3

    #@36
    .line 315
    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    #@38
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3b
    .line 316
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v7

    #@3f
    .local v7, "url$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v9

    #@43
    if-eqz v9, :cond_3

    #@45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v6

    #@49
    check-cast v6, Ljava/net/URL;

    #@4b
    .line 317
    .local v6, "url":Ljava/net/URL;
    invoke-direct {p0, v6}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@4e
    move-result-object v3

    #@4f
    .line 318
    .local v3, "h":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v3, :cond_1

    #@51
    .line 319
    invoke-virtual {v3, p1, p2, p3}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    #@54
    move-result-object v5

    #@55
    .line 320
    .local v5, "res":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_1

    #@57
    .line 321
    return-object v5

    #@58
    .line 312
    .end local v3    # "h":Ljava/net/URLClassLoader$URLHandler;
    .end local v5    # "res":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "url$iterator":Ljava/util/Iterator;
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_2
    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@5a
    invoke-virtual {v9, p1}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    #@5d
    move-result-object v8

    #@5e
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    goto :goto_0

    #@5f
    .line 327
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_3
    return-object v11
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 377
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;

    #@5
    move-result-object v3

    #@6
    .line 378
    .local v3, "res":Ljava/net/URL;
    if-eqz v3, :cond_0

    #@8
    .line 379
    return-object v3

    #@9
    .line 381
    :cond_0
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@b
    if-eqz v7, :cond_3

    #@d
    .line 382
    const-string/jumbo v7, "/"

    #@10
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@13
    move-result v2

    #@14
    .line 385
    .local v2, "pos":I
    if-lez v2, :cond_2

    #@16
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 386
    .local v1, "indexedName":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@1c
    invoke-virtual {v7, v1}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    #@1f
    move-result-object v6

    #@20
    .line 387
    .local v6, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    if-eqz v6, :cond_3

    #@22
    .line 388
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    #@24
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    .line 389
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v5

    #@2b
    .local v5, "url$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_3

    #@31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Ljava/net/URL;

    #@37
    .line 390
    .local v4, "url":Ljava/net/URL;
    invoke-direct {p0, v4}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@3a
    move-result-object v0

    #@3b
    .line 391
    .local v0, "h":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v0, :cond_1

    #@3d
    .line 392
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@40
    move-result-object v3

    #@41
    .line 393
    if-eqz v3, :cond_1

    #@43
    .line 394
    return-object v3

    #@44
    .line 385
    .end local v0    # "h":Ljava/net/URLClassLoader$URLHandler;
    .end local v1    # "indexedName":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "url$iterator":Ljava/util/Iterator;
    .end local v6    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_2
    move-object v1, p1

    #@45
    .restart local v1    # "indexedName":Ljava/lang/String;
    goto :goto_0

    #@46
    .line 400
    .end local v1    # "indexedName":Ljava/lang/String;
    .end local v2    # "pos":I
    :cond_3
    return-object v8
.end method

.method findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 369
    .local v0, "entryName":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 370
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    #@1e
    invoke-virtual {p0, v1, p1}, Ljava/net/URLClassLoader$URLJarHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 372
    :cond_0
    return-object v3
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v8, 0x0

    #@1
    .line 268
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;

    #@4
    move-result-object v3

    #@5
    .line 269
    .local v3, "res":Ljava/net/URL;
    if-eqz v3, :cond_0

    #@7
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_2

    #@d
    .line 272
    :cond_0
    :goto_0
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@f
    if-eqz v7, :cond_4

    #@11
    .line 273
    const-string/jumbo v7, "/"

    #@14
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    .line 276
    .local v2, "pos":I
    if-lez v2, :cond_3

    #@1a
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 277
    .local v1, "indexedName":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@20
    invoke-virtual {v7, v1}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    #@23
    move-result-object v6

    #@24
    .line 278
    .local v6, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    if-eqz v6, :cond_4

    #@26
    .line 279
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    #@28
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2b
    .line 280
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v5

    #@2f
    .local v5, "url$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_4

    #@35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Ljava/net/URL;

    #@3b
    .line 281
    .local v4, "url":Ljava/net/URL;
    invoke-direct {p0, v4}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@3e
    move-result-object v0

    #@3f
    .line 282
    .local v0, "h":Ljava/net/URLClassLoader$URLHandler;
    if-eqz v0, :cond_1

    #@41
    .line 283
    invoke-virtual {v0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@44
    goto :goto_2

    #@45
    .line 270
    .end local v0    # "h":Ljava/net/URLClassLoader$URLHandler;
    .end local v1    # "indexedName":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "url$iterator":Ljava/util/Iterator;
    .end local v6    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_2
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 276
    .restart local v2    # "pos":I
    :cond_3
    move-object v1, p1

    #@4a
    .restart local v1    # "indexedName":Ljava/lang/String;
    goto :goto_1

    #@4b
    .line 267
    .end local v1    # "indexedName":Ljava/lang/String;
    .end local v2    # "pos":I
    :cond_4
    return-void
.end method

.method getIndex()Ljava/net/URLClassLoader$IndexFile;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    #@2
    return-object v0
.end method

.class Ljava/net/URLClassLoader$URLFileHandler;
.super Ljava/net/URLClassLoader$URLHandler;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLFileHandler"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Ljava/net/URLClassLoader;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .locals 6
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .param p2, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Ljava/net/URLClassLoader$URLFileHandler;->this$0:Ljava/net/URLClassLoader;

    #@2
    .line 457
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    #@5
    .line 458
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 459
    .local v0, "baseFile":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 460
    .local v2, "host":Ljava/lang/String;
    const/4 v3, 0x0

    #@e
    .line 461
    .local v3, "hostLength":I
    if-eqz v2, :cond_0

    #@10
    .line 462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    .line 464
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    add-int/lit8 v4, v3, 0x2

    #@18
    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1b
    move-result v5

    #@1c
    .line 464
    add-int/2addr v4, v5

    #@1d
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@20
    .line 466
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    #@22
    .line 467
    const-string/jumbo v4, "//"

    #@25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 470
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    iput-object v4, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    #@35
    .line 456
    return-void
.end method


# virtual methods
.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
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
    const/4 v8, 0x0

    #@1
    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v7, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    #@8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v6

    #@c
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 478
    .local v4, "filename":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    #@17
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v4

    #@1b
    .line 485
    new-instance v3, Ljava/io/File;

    #@1d
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    .line 486
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_0

    #@26
    .line 488
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    #@28
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@2b
    .line 489
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v5, p1, p3}, Ljava/net/URLClassLoader$URLFileHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@2e
    move-result-object v6

    #@2f
    return-object v6

    #@30
    .line 481
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@31
    .line 482
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return-object v8

    #@32
    .line 479
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    #@33
    .line 480
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-object v8

    #@34
    .line 490
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    #@35
    .line 493
    :cond_0
    return-object v8
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 498
    const/4 v3, 0x0

    #@2
    .line 502
    .local v3, "idx":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-ge v3, v4, :cond_1

    #@8
    .line 503
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v4

    #@c
    const/16 v5, 0x2f

    #@e
    if-eq v4, v5, :cond_0

    #@10
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v4

    #@14
    const/16 v5, 0x5c

    #@16
    if-ne v4, v5, :cond_1

    #@18
    .line 504
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 507
    :cond_1
    if-lez v3, :cond_2

    #@1d
    .line 508
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    .line 512
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    iget-object v5, p0, Ljava/net/URLClassLoader$URLFileHandler;->prefix:Ljava/lang/String;

    #@28
    const-string/jumbo v6, "UTF-8"

    #@2b
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 514
    .local v2, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@3d
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_3

    #@46
    .line 515
    iget-object v4, p0, Ljava/net/URLClassLoader$URLFileHandler;->url:Ljava/net/URL;

    #@48
    invoke-virtual {p0, v4, p1}, Ljava/net/URLClassLoader$URLFileHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v4

    #@4c
    return-object v4

    #@4d
    .line 517
    :cond_3
    return-object v7

    #@4e
    .line 520
    .end local v2    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4f
    .line 522
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    #@51
    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@54
    throw v4

    #@55
    .line 518
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    #@56
    .line 519
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v7
.end method

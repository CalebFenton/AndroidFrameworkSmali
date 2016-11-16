.class Lsun/misc/URLClassPath$Loader;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final base:Ljava/net/URL;

.field private jarfile:Ljava/util/jar/JarFile;


# direct methods
.method static synthetic -get0(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 480
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    #@5
    .line 479
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 577
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    #@6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    #@9
    .line 575
    :cond_0
    return-void
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 493
    :try_start_0
    new-instance v6, Ljava/net/URL;

    #@3
    iget-object v7, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    #@5
    const/4 v8, 0x0

    #@6
    invoke-static {p1, v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@9
    move-result-object v8

    #@a
    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 499
    .local v6, "url":Ljava/net/URL;
    if-eqz p2, :cond_0

    #@f
    .line 500
    :try_start_1
    invoke-static {v6}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    #@12
    .line 507
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@15
    move-result-object v5

    #@16
    .line 508
    .local v5, "uc":Ljava/net/URLConnection;
    instance-of v7, v5, Ljava/net/HttpURLConnection;

    #@18
    if-eqz v7, :cond_1

    #@1a
    .line 509
    move-object v0, v5

    #@1b
    nop

    #@1c
    nop

    #@1d
    move-object v3, v0

    #@1e
    .line 510
    .local v3, "hconn":Ljava/net/HttpURLConnection;
    const-string/jumbo v7, "HEAD"

    #@21
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@24
    .line 511
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result v7

    #@28
    const/16 v8, 0x190

    #@2a
    if-lt v7, v8, :cond_2

    #@2c
    .line 512
    return-object v9

    #@2d
    .line 494
    .end local v3    # "hconn":Ljava/net/HttpURLConnection;
    .end local v5    # "uc":Ljava/net/URLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    #@2e
    .line 495
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v8, "name"

    #@33
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v7

    #@37
    .line 516
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "uc":Ljava/net/URLConnection;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@3a
    move-result-object v4

    #@3b
    .line 517
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@3e
    .line 519
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    return-object v6

    #@3f
    .line 520
    .end local v5    # "uc":Ljava/net/URLConnection;
    :catch_1
    move-exception v1

    #@40
    .line 521
    .local v1, "e":Ljava/lang/Exception;
    return-object v9
.end method

.method getBaseURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method getClassPath()[Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 585
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 568
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    #@0
    .prologue
    .line 528
    :try_start_0
    new-instance v6, Ljava/net/URL;

    #@2
    iget-object v7, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    #@4
    const/4 v8, 0x0

    #@5
    invoke-static {p1, v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@8
    move-result-object v8

    #@9
    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 534
    .local v6, "url":Ljava/net/URL;
    if-eqz p2, :cond_0

    #@e
    .line 535
    :try_start_1
    invoke-static {v6}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    #@11
    .line 537
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@14
    move-result-object v5

    #@15
    .line 538
    .local v5, "uc":Ljava/net/URLConnection;
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@18
    move-result-object v3

    #@19
    .line 539
    .local v3, "in":Ljava/io/InputStream;
    instance-of v7, v5, Ljava/net/JarURLConnection;

    #@1b
    if-eqz v7, :cond_1

    #@1d
    .line 543
    move-object v0, v5

    #@1e
    nop

    #@1f
    nop

    #@20
    move-object v4, v0

    #@21
    .line 544
    .local v4, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@24
    move-result-object v7

    #@25
    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    #@28
    move-result-object v7

    #@29
    iput-object v7, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 549
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    :cond_1
    new-instance v7, Lsun/misc/URLClassPath$Loader$1;

    #@2d
    invoke-direct {v7, p0, p1, v6, v5}, Lsun/misc/URLClassPath$Loader$1;-><init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V

    #@30
    return-object v7

    #@31
    .line 529
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "uc":Ljava/net/URLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    #@32
    .line 530
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v8, "name"

    #@37
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v7

    #@3b
    .line 546
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    #@3c
    .line 547
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    #@3d
    return-object v7
.end method

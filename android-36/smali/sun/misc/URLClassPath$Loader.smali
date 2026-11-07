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
.field private final greylist-max-o base:Ljava/net/URL;

.field private greylist-max-o jarfile:Ljava/util/jar/JarFile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbase(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/net/URL;)V
    .registers 2
    .param p1, "url"    # Ljava/net/URL;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    .line 698
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_9

    .line 795
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 797
    :cond_9
    return-void
.end method

.method greylist-max-o findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 710
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_c} :catch_3a

    .line 713
    .local v0, "url":Ljava/net/URL;
    nop

    .line 716
    const/4 v1, 0x0

    if-eqz p2, :cond_13

    .line 717
    :try_start_10
    invoke-static {v0}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 724
    :cond_13
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 725
    .local v3, "uc":Ljava/net/URLConnection;
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_2d

    .line 726
    move-object v2, v3

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 727
    .local v2, "hconn":Ljava/net/HttpURLConnection;
    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_2c

    .line 729
    return-object v1

    .line 731
    .end local v2    # "hconn":Ljava/net/HttpURLConnection;
    :cond_2c
    goto :goto_37

    .line 733
    :cond_2d
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 734
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 735
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_38

    .line 737
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_37
    return-object v0

    .line 738
    .end local v3    # "uc":Ljava/net/URLConnection;
    :catch_38
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/Exception;
    return-object v1

    .line 711
    .end local v0    # "url":Ljava/net/URL;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v0

    .line 712
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getBaseURL()Ljava/net/URL;
    .registers 2

    .line 704
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method

.method greylist-max-o getClassPath()[Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 786
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 746
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_c} :catch_35

    .line 749
    .local v0, "url":Ljava/net/URL;
    nop

    .line 752
    if-eqz p2, :cond_12

    .line 753
    :try_start_f
    invoke-static {v0}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 755
    :cond_12
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 756
    .local v1, "uc":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 757
    .local v2, "in":Ljava/io/InputStream;
    instance-of v3, v1, Ljava/net/JarURLConnection;

    if-eqz v3, :cond_2b

    .line 761
    move-object v3, v1

    check-cast v3, Ljava/net/JarURLConnection;

    .line 762
    .local v3, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v3}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v4

    invoke-static {v4}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v4

    iput-object v4, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_32

    .line 766
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "juc":Ljava/net/JarURLConnection;
    :cond_2b
    nop

    .line 767
    new-instance v2, Lsun/misc/URLClassPath$Loader$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lsun/misc/URLClassPath$Loader$1;-><init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V

    return-object v2

    .line 764
    .end local v1    # "uc":Ljava/net/URLConnection;
    :catch_32
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2

    .line 747
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v0

    .line 748
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

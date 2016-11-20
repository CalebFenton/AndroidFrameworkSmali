.class Lsun/misc/URLClassPath$JarLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JarLoader"
.end annotation


# instance fields
.field private closed:Z

.field private csu:Ljava/net/URL;

.field private handler:Ljava/net/URLStreamHandler;

.field private index:Lsun/misc/JarIndex;

.field private jar:Ljava/util/jar/JarFile;

.field private lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private metaIndex:Lsun/misc/MetaIndex;


# direct methods
.method static synthetic -get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;
    .locals 0

    #@0
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .locals 0

    #@0
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jarHandler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URLStreamHandler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "loaderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lsun/misc/URLClassPath$Loader;>;"
    const/4 v8, 0x0

    #@1
    .line 609
    new-instance v0, Ljava/net/URL;

    #@3
    const-string/jumbo v1, "jar"

    #@6
    const-string/jumbo v2, ""

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "!/"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    const/4 v3, -0x1

    #@1e
    move-object v5, p2

    #@1f
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@22
    invoke-direct {p0, v0}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    #@25
    .line 599
    const/4 v0, 0x0

    #@26
    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    #@28
    .line 610
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    #@2a
    .line 611
    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    #@2c
    .line 612
    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    #@2e
    .line 614
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_1

    #@34
    .line 615
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    #@37
    .line 607
    :cond_0
    :goto_0
    return-void

    #@38
    .line 617
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 618
    .local v7, "fileName":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@3e
    .line 619
    invoke-static {v7}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 620
    new-instance v6, Ljava/io/File;

    #@44
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@47
    .line 621
    .local v6, "f":Ljava/io/File;
    invoke-static {v6}, Lsun/misc/MetaIndex;->forJar(Ljava/io/File;)Lsun/misc/MetaIndex;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@4d
    .line 628
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@4f
    if-eqz v0, :cond_2

    #@51
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_3

    #@57
    .line 636
    .end local v6    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@59
    if-nez v0, :cond_0

    #@5b
    .line 637
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    #@5e
    goto :goto_0

    #@5f
    .line 629
    .restart local v6    # "f":Ljava/io/File;
    :cond_3
    iput-object v8, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@61
    goto :goto_1
.end method

.method static checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .locals 3
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v2

    #@4
    if-eqz v2, :cond_0

    #@6
    invoke-static {}, Lsun/misc/URLClassPath;->-get1()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 717
    :cond_0
    return-object p0

    #@d
    .line 707
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->startsWithLocHeader()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 708
    new-instance v1, Ljava/io/IOException;

    #@15
    const-string/jumbo v2, "Invalid Jar file"

    #@18
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    .line 710
    .local v1, "x":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 714
    :goto_0
    throw v1

    #@1f
    .line 711
    :catch_0
    move-exception v0

    #@20
    .line 712
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@23
    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 662
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 665
    :try_start_0
    new-instance v1, Lsun/misc/URLClassPath$JarLoader$1;

    #@6
    invoke-direct {v1, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    #@9
    .line 664
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 661
    :cond_0
    return-void

    #@d
    .line 698
    :catch_0
    move-exception v0

    #@e
    .line 699
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/io/IOException;

    #@14
    throw v1
.end method

.method private getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 722
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 723
    new-instance v1, Lsun/misc/FileURLMapper;

    #@8
    invoke-direct {v1, p1}, Lsun/misc/FileURLMapper;-><init>(Ljava/net/URL;)V

    #@b
    .line 724
    .local v1, "p":Lsun/misc/FileURLMapper;
    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->exists()Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 725
    new-instance v3, Ljava/io/FileNotFoundException;

    #@13
    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v3

    #@1b
    .line 727
    :cond_0
    new-instance v3, Ljava/util/jar/JarFile;

    #@1d
    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-direct {v3, v4}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    #@24
    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    #@27
    move-result-object v3

    #@28
    return-object v3

    #@29
    .line 729
    .end local v1    # "p":Lsun/misc/FileURLMapper;
    :cond_1
    invoke-virtual {p0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@30
    move-result-object v2

    #@31
    .line 730
    .local v2, "uc":Ljava/net/URLConnection;
    const-string/jumbo v3, "UA-Java-Version"

    #@34
    sget-object v4, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    #@36
    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 731
    check-cast v2, Ljava/net/JarURLConnection;

    #@3b
    .end local v2    # "uc":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@3e
    move-result-object v0

    #@3f
    .line 732
    .local v0, "jarFile":Ljava/util/jar/JarFile;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    #@42
    move-result-object v3

    #@43
    return-object v3
.end method

.method private isOptimizable(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 658
    const-string/jumbo v0, "file"

    #@3
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .locals 5
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1011
    new-instance v2, Ljava/util/StringTokenizer;

    #@2
    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@5
    .line 1012
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    #@8
    move-result v4

    #@9
    new-array v3, v4, [Ljava/net/URL;

    #@b
    .line 1013
    .local v3, "urls":[Ljava/net/URL;
    const/4 v0, 0x0

    #@c
    .line 1014
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 1015
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1016
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    #@18
    invoke-direct {v4, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@1b
    aput-object v4, v3, v0

    #@1d
    .line 1017
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1019
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private parseExtensionsDependencies()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1001
    return-void
.end method


# virtual methods
.method checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .param p3, "entry"    # Ljava/util/jar/JarEntry;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 756
    :try_start_0
    new-instance v3, Ljava/net/URL;

    #@3
    invoke-virtual {p0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    #@6
    move-result-object v4

    #@7
    const/4 v5, 0x0

    #@8
    invoke-static {p1, v5}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@f
    .line 757
    .local v3, "url":Ljava/net/URL;
    if-eqz p2, :cond_0

    #@11
    .line 758
    invoke-static {v3}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 769
    :cond_0
    new-instance v4, Lsun/misc/URLClassPath$JarLoader$2;

    #@16
    invoke-direct {v4, p0, p1, v3, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    #@19
    return-object v4

    #@1a
    .line 765
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    #@1b
    .line 766
    .local v2, "e":Ljava/security/AccessControlException;
    return-object v6

    #@1c
    .line 763
    .end local v2    # "e":Ljava/security/AccessControlException;
    :catch_1
    move-exception v0

    #@1d
    .line 764
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    #@1e
    .line 760
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@1f
    .line 761
    .local v1, "e":Ljava/net/MalformedURLException;
    return-object v6
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    iget-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 646
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    #@7
    .line 648
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    #@a
    .line 649
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@c
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    #@f
    .line 643
    :cond_0
    return-void
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 817
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    #@4
    move-result-object v0

    #@5
    .line 818
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_0

    #@7
    .line 819
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 821
    :cond_0
    return-object v1
.end method

.method getClassPath()[Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 973
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 974
    return-object v4

    #@6
    .line 977
    :cond_0
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 978
    return-object v4

    #@b
    .line 981
    :cond_1
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    #@e
    .line 982
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    #@11
    .line 983
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@13
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->hasClassPathAttribute()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 984
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@1b
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@1e
    move-result-object v1

    #@1f
    .line 985
    .local v1, "man":Ljava/util/jar/Manifest;
    if-eqz v1, :cond_2

    #@21
    .line 986
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@24
    move-result-object v0

    #@25
    .line 987
    .local v0, "attr":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_2

    #@27
    .line 988
    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    #@29
    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 989
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@2f
    .line 990
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    #@31
    invoke-direct {p0, v3, v2}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    #@34
    move-result-object v3

    #@35
    return-object v3

    #@36
    .line 995
    .end local v0    # "attr":Ljava/util/jar/Attributes;
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method getIndex()Lsun/misc/JarIndex;
    .locals 2

    #@0
    .prologue
    .line 740
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 744
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@5
    return-object v1

    #@6
    .line 741
    :catch_0
    move-exception v0

    #@7
    .line 742
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    #@9
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/InternalError;

    #@12
    throw v1
.end method

.method getJarFile()Ljava/util/jar/JarFile;
    .locals 1

    #@0
    .prologue
    .line 654
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@2
    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 828
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 829
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    #@7
    invoke-virtual {v3, p1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 830
    return-object v4

    #@e
    .line 835
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 839
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@13
    invoke-virtual {v3, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@16
    move-result-object v1

    #@17
    .line 840
    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_1

    #@19
    .line 841
    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 836
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v0

    #@1f
    .line 837
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    #@21
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/lang/InternalError;

    #@2a
    throw v3

    #@2b
    .line 843
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Ljava/util/jar/JarEntry;
    :cond_1
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@2d
    if-nez v3, :cond_2

    #@2f
    .line 844
    return-object v4

    #@30
    .line 846
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    #@32
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@35
    .line 847
    .local v2, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    #@38
    move-result-object v3

    #@39
    return-object v3
.end method

.method getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/misc/Resource;"
        }
    .end annotation

    #@0
    .prologue
    .line 862
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 863
    .local v5, "done":Z
    const/4 v3, 0x0

    #@2
    .line 864
    .local v3, "count":I
    const/4 v10, 0x0

    #@3
    .line 869
    .local v10, "jarFilesList":Ljava/util/LinkedList;
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@7
    move-object/from16 v21, v0

    #@9
    move-object/from16 v0, v21

    #@b
    move-object/from16 v1, p1

    #@d
    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    #@10
    move-result-object v10

    #@11
    .local v10, "jarFilesList":Ljava/util/LinkedList;
    if-nez v10, :cond_1

    #@13
    .line 870
    const/16 v21, 0x0

    #@15
    return-object v21

    #@16
    .line 961
    .end local v3    # "count":I
    .local v4, "count":I
    .local v9, "jarFiles":[Ljava/lang/Object;
    .local v17, "size":I
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@1a
    move-object/from16 v21, v0

    #@1c
    move-object/from16 v0, v21

    #@1e
    move-object/from16 v1, p1

    #@20
    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    #@23
    move-result-object v10

    #@24
    .line 964
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    #@27
    move-result v21

    #@28
    move/from16 v0, v21

    #@2a
    if-ge v4, v0, :cond_b

    #@2c
    move v3, v4

    #@2d
    .line 873
    .end local v4    # "count":I
    .end local v9    # "jarFiles":[Ljava/lang/Object;
    .end local v17    # "size":I
    .restart local v3    # "count":I
    :cond_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    #@30
    move-result-object v9

    #@31
    .line 874
    .restart local v9    # "jarFiles":[Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    #@34
    move-result v17

    #@35
    .restart local v17    # "size":I
    move v4, v3

    #@36
    .line 876
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :goto_0
    move/from16 v0, v17

    #@38
    if-ge v4, v0, :cond_0

    #@3a
    .line 877
    add-int/lit8 v3, v4, 0x1

    #@3c
    .end local v4    # "count":I
    .restart local v3    # "count":I
    aget-object v11, v9, v4

    #@3e
    check-cast v11, Ljava/lang/String;

    #@40
    .line 882
    .local v11, "jarName":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/net/URL;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    #@46
    move-object/from16 v21, v0

    #@48
    move-object/from16 v0, v18

    #@4a
    move-object/from16 v1, v21

    #@4c
    invoke-direct {v0, v1, v11}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@4f
    .line 883
    .local v18, "url":Ljava/net/URL;
    invoke-static/range {v18 .. v18}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    #@52
    move-result-object v19

    #@53
    .line 884
    .local v19, "urlNoFragString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    #@57
    move-object/from16 v21, v0

    #@59
    move-object/from16 v0, v21

    #@5b
    move-object/from16 v1, v19

    #@5d
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v13

    #@61
    check-cast v13, Lsun/misc/URLClassPath$JarLoader;

    #@63
    .local v13, "newLoader":Lsun/misc/URLClassPath$JarLoader;
    if-nez v13, :cond_3

    #@65
    .line 889
    new-instance v21, Lsun/misc/URLClassPath$JarLoader$3;

    #@67
    move-object/from16 v0, v21

    #@69
    move-object/from16 v1, p0

    #@6b
    move-object/from16 v2, v18

    #@6d
    invoke-direct {v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    #@70
    .line 888
    invoke-static/range {v21 .. v21}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@73
    move-result-object v13

    #@74
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    check-cast v13, Lsun/misc/URLClassPath$JarLoader;

    #@76
    .line 900
    .restart local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    #@79
    move-result-object v12

    #@7a
    .line 901
    .local v12, "newIndex":Lsun/misc/JarIndex;
    if-eqz v12, :cond_2

    #@7c
    .line 902
    const-string/jumbo v21, "/"

    #@7f
    move-object/from16 v0, v21

    #@81
    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@84
    move-result v15

    #@85
    .line 903
    .local v15, "pos":I
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    #@89
    move-object/from16 v22, v0

    #@8b
    const/16 v21, -0x1

    #@8d
    move/from16 v0, v21

    #@8f
    if-ne v15, v0, :cond_4

    #@91
    .line 904
    const/16 v21, 0x0

    #@93
    .line 903
    :goto_1
    move-object/from16 v0, v22

    #@95
    move-object/from16 v1, v21

    #@97
    invoke-virtual {v12, v0, v1}, Lsun/misc/JarIndex;->merge(Lsun/misc/JarIndex;Ljava/lang/String;)V

    #@9a
    .line 908
    .end local v15    # "pos":I
    :cond_2
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    #@9e
    move-object/from16 v21, v0

    #@a0
    move-object/from16 v0, v21

    #@a2
    move-object/from16 v1, v19

    #@a4
    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    .line 920
    .end local v12    # "newIndex":Lsun/misc/JarIndex;
    :cond_3
    invoke-static/range {v18 .. v18}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    #@aa
    move-result-object v21

    #@ab
    move-object/from16 v0, p3

    #@ad
    move-object/from16 v1, v21

    #@af
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b2
    move-result v21

    #@b3
    if-eqz v21, :cond_5

    #@b5
    const/16 v20, 0x0

    #@b7
    .line 921
    .local v20, "visitedURL":Z
    :goto_2
    if-nez v20, :cond_7

    #@b9
    .line 923
    :try_start_1
    invoke-direct {v13}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@bc
    .line 927
    iget-object v0, v13, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@be
    move-object/from16 v21, v0

    #@c0
    move-object/from16 v0, v21

    #@c2
    move-object/from16 v1, p1

    #@c4
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@c7
    move-result-object v8

    #@c8
    .line 928
    .local v8, "entry":Ljava/util/jar/JarEntry;
    if-eqz v8, :cond_6

    #@ca
    .line 929
    move-object/from16 v0, p1

    #@cc
    move/from16 v1, p2

    #@ce
    invoke-virtual {v13, v0, v1, v8}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    #@d1
    move-result-object v21

    #@d2
    return-object v21

    #@d3
    .line 904
    .end local v8    # "entry":Ljava/util/jar/JarEntry;
    .end local v20    # "visitedURL":Z
    .restart local v12    # "newIndex":Lsun/misc/JarIndex;
    .restart local v15    # "pos":I
    :cond_4
    add-int/lit8 v21, v15, 0x1

    #@d5
    const/16 v23, 0x0

    #@d7
    :try_start_2
    move/from16 v0, v23

    #@d9
    move/from16 v1, v21

    #@db
    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    #@de
    move-result-object v21

    #@df
    goto :goto_1

    #@e0
    .line 912
    .end local v12    # "newIndex":Lsun/misc/JarIndex;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .end local v15    # "pos":I
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "urlNoFragString":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@e1
    .local v7, "e":Ljava/net/MalformedURLException;
    move v4, v3

    #@e2
    .line 913
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    #@e4
    .line 910
    .end local v4    # "count":I
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "count":I
    :catch_1
    move-exception v14

    #@e5
    .local v14, "pae":Ljava/security/PrivilegedActionException;
    move v4, v3

    #@e6
    .line 911
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    #@e8
    .line 920
    .end local v4    # "count":I
    .end local v14    # "pae":Ljava/security/PrivilegedActionException;
    .restart local v3    # "count":I
    .restart local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "urlNoFragString":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x1

    #@ea
    .restart local v20    # "visitedURL":Z
    goto :goto_2

    #@eb
    .line 924
    :catch_2
    move-exception v6

    #@ec
    .line 925
    .local v6, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/InternalError;

    #@ee
    invoke-direct/range {v21 .. v21}, Ljava/lang/InternalError;-><init>()V

    #@f1
    move-object/from16 v0, v21

    #@f3
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@f6
    move-result-object v21

    #@f7
    check-cast v21, Ljava/lang/InternalError;

    #@f9
    throw v21

    #@fa
    .line 936
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "entry":Ljava/util/jar/JarEntry;
    :cond_6
    move-object/from16 v0, p1

    #@fc
    invoke-virtual {v13, v0}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    #@ff
    move-result v21

    #@100
    if-nez v21, :cond_7

    #@102
    .line 938
    new-instance v21, Lsun/misc/InvalidJarIndexException;

    #@104
    const-string/jumbo v22, "Invalid index"

    #@107
    invoke-direct/range {v21 .. v22}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v21

    #@10b
    .line 947
    .end local v8    # "entry":Ljava/util/jar/JarEntry;
    :cond_7
    if-nez v20, :cond_8

    #@10d
    move-object/from16 v0, p0

    #@10f
    if-ne v13, v0, :cond_9

    #@111
    :cond_8
    move v4, v3

    #@112
    .line 949
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    #@114
    .line 948
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_9
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    #@117
    move-result-object v21

    #@118
    if-eqz v21, :cond_8

    #@11a
    .line 954
    move-object/from16 v0, p1

    #@11c
    move/from16 v1, p2

    #@11e
    move-object/from16 v2, p3

    #@120
    invoke-virtual {v13, v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    #@123
    move-result-object v16

    #@124
    .local v16, "res":Lsun/misc/Resource;
    if-eqz v16, :cond_a

    #@126
    .line 956
    return-object v16

    #@127
    :cond_a
    move v4, v3

    #@128
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0

    #@12a
    .line 965
    .end local v11    # "jarName":Ljava/lang/String;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .end local v16    # "res":Lsun/misc/Resource;
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "urlNoFragString":Ljava/lang/String;
    .end local v20    # "visitedURL":Z
    :cond_b
    const/16 v21, 0x0

    #@12c
    return-object v21
.end method

.method validIndex(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 792
    move-object v3, p1

    #@3
    .line 794
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "/"

    #@6
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@9
    move-result v4

    #@a
    .local v4, "pos":I
    if-eq v4, v7, :cond_0

    #@c
    .line 795
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 800
    :cond_0
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    #@12
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    #@15
    move-result-object v2

    #@16
    .line 801
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_3

    #@1c
    .line 802
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@22
    .line 803
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 804
    .local v1, "entryName":Ljava/lang/String;
    const-string/jumbo v5, "/"

    #@29
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@2c
    move-result v4

    #@2d
    if-eq v4, v7, :cond_2

    #@2f
    .line 805
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 806
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 807
    const/4 v5, 0x1

    #@3a
    return v5

    #@3b
    .line 810
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "entryName":Ljava/lang/String;
    :cond_3
    return v6
.end method

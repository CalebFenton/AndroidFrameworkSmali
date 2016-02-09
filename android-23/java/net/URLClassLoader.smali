.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLClassLoader$IndexFile;,
        Ljava/net/URLClassLoader$URLHandler;,
        Ljava/net/URLClassLoader$URLJarHandler;,
        Ljava/net/URLClassLoader$URLFileHandler;
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DMI_COLLECTION_OF_URLS",
        "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"
    }
.end annotation


# instance fields
.field private factory:Ljava/net/URLStreamHandlerFactory;

.field handlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field handlerMap:Ljava/util/Map;
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

.field originalUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .locals 1
    .param p1, "manifest"    # Ljava/util/jar/Manifest;
    .param p2, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "cs"    # Ljava/security/CodeSource;

    #@0
    .prologue
    invoke-virtual/range {p0 .. p5}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "specTitle"    # Ljava/lang/String;
    .param p3, "specVersion"    # Ljava/lang/String;
    .param p4, "specVendor"    # Ljava/lang/String;
    .param p5, "implTitle"    # Ljava/lang/String;
    .param p6, "implVersion"    # Ljava/lang/String;
    .param p7, "implVendor"    # Ljava/lang/String;
    .param p8, "sealBase"    # Ljava/net/URL;

    #@0
    .prologue
    invoke-virtual/range {p0 .. p8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .locals 2
    .param p1, "urls"    # [Ljava/net/URL;

    #@0
    .prologue
    .line 540
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    #@8
    .line 539
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 555
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    #@4
    .line 554
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .locals 5
    .param p1, "searchUrls"    # [Ljava/net/URL;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "factory"    # Ljava/net/URLStreamHandlerFactory;

    #@0
    .prologue
    .line 710
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@3
    .line 61
    new-instance v3, Ljava/util/HashMap;

    #@5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    #@a
    .line 711
    iput-object p3, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    #@c
    .line 712
    array-length v2, p1

    #@d
    .line 713
    .local v2, "nbUrls":I
    new-instance v3, Ljava/util/ArrayList;

    #@f
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iput-object v3, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    #@14
    .line 714
    new-instance v3, Ljava/util/ArrayList;

    #@16
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    iput-object v3, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    #@1b
    .line 715
    new-instance v3, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@20
    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    #@23
    move-result-object v3

    #@24
    iput-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    #@26
    .line 716
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@29
    .line 717
    iget-object v3, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    #@2b
    aget-object v4, p1, v1

    #@2d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 719
    :try_start_0
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    #@32
    aget-object v4, p1, v1

    #@34
    invoke-direct {p0, v4}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    #@37
    move-result-object v4

    #@38
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 716
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 709
    :cond_0
    return-void

    #@3f
    .line 720
    :catch_0
    move-exception v0

    #@40
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_1
.end method

.method private createSearchURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 764
    if-nez p1, :cond_0

    #@3
    .line 765
    return-object p1

    #@4
    .line 768
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 770
    .local v6, "protocol":Ljava/lang/String;
    invoke-static {p1}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    const-string/jumbo v0, "jar"

    #@11
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 771
    :cond_1
    return-object p1

    #@18
    .line 773
    :cond_2
    iget-object v0, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    #@1a
    if-nez v0, :cond_3

    #@1c
    .line 774
    new-instance v0, Ljava/net/URL;

    #@1e
    const-string/jumbo v1, "jar"

    #@21
    const-string/jumbo v2, ""

    #@24
    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, "!/"

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 774
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@3f
    return-object v0

    #@40
    .line 778
    :cond_3
    new-instance v0, Ljava/net/URL;

    #@42
    const-string/jumbo v1, "jar"

    #@45
    const-string/jumbo v2, ""

    #@48
    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    const-string/jumbo v5, "!/"

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 780
    iget-object v5, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    #@62
    const-string/jumbo v7, "jar"

    #@65
    invoke-interface {v5, v7}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@68
    move-result-object v5

    #@69
    .line 778
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@6c
    return-object v0
.end method

.method private createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 851
    new-instance v0, Ljava/net/URLClassLoader$URLFileHandler;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLFileHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    #@5
    return-object v0
.end method

.method private createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 847
    new-instance v0, Ljava/net/URLClassLoader$URLHandler;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    #@5
    return-object v0
.end method

.method private createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .locals 17
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 856
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v10

    #@4
    .line 857
    .local v10, "file":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    const-string/jumbo v4, "!/"

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 858
    const-string/jumbo v7, ""

    #@14
    .line 869
    .local v7, "prefixName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/net/JarURLConnection;

    #@1a
    invoke-virtual {v3}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    #@1d
    move-result-object v5

    #@1e
    .line 871
    .local v5, "jarURL":Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    #@20
    .line 872
    const-string/jumbo v4, "jar"

    #@23
    const-string/jumbo v14, ""

    #@26
    .line 873
    new-instance v15, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@2e
    move-result-object v16

    #@2f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v15

    #@33
    const-string/jumbo v16, "!/"

    #@36
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v15

    #@3a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v15

    #@3e
    .line 871
    invoke-direct {v3, v4, v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@41
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@44
    move-result-object v11

    #@45
    check-cast v11, Ljava/net/JarURLConnection;

    #@47
    .line 874
    .local v11, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v11}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@4a
    move-result-object v6

    #@4b
    .line 875
    .local v6, "jf":Ljava/util/jar/JarFile;
    new-instance v2, Ljava/net/URLClassLoader$URLJarHandler;

    #@4d
    move-object/from16 v3, p0

    #@4f
    move-object/from16 v4, p1

    #@51
    invoke-direct/range {v2 .. v7}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V

    #@54
    .line 877
    .local v2, "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    invoke-virtual {v2}, Ljava/net/URLClassLoader$URLJarHandler;->getIndex()Ljava/net/URLClassLoader$IndexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result-object v3

    #@58
    if-nez v3, :cond_0

    #@5a
    .line 879
    :try_start_1
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@5d
    move-result-object v12

    #@5e
    .line 880
    .local v12, "manifest":Ljava/util/jar/Manifest;
    if-eqz v12, :cond_0

    #@60
    .line 881
    invoke-virtual {v12}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@63
    move-result-object v3

    #@64
    .line 882
    sget-object v4, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    #@66
    .line 881
    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    .line 883
    .local v8, "classpath":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@6c
    .line 884
    move-object/from16 v0, p0

    #@6e
    iget-object v3, v0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    #@70
    move-object/from16 v0, p0

    #@72
    move-object/from16 v1, p1

    #@74
    invoke-direct {v0, v1, v8}, Ljava/net/URLClassLoader;->getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;

    #@77
    move-result-object v4

    #@78
    const/4 v14, 0x0

    #@79
    invoke-interface {v3, v14, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7c
    .line 890
    .end local v8    # "classpath":Ljava/lang/String;
    .end local v12    # "manifest":Ljava/util/jar/Manifest;
    :cond_0
    :goto_1
    return-object v2

    #@7d
    .line 860
    .end local v2    # "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    .end local v5    # "jarURL":Ljava/net/URL;
    .end local v6    # "jf":Ljava/util/jar/JarFile;
    .end local v7    # "prefixName":Ljava/lang/String;
    .end local v11    # "juc":Ljava/net/JarURLConnection;
    :cond_1
    const-string/jumbo v3, "!/"

    #@80
    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@83
    move-result v13

    #@84
    .line 861
    .local v13, "sepIdx":I
    const/4 v3, -0x1

    #@85
    if-ne v13, v3, :cond_2

    #@87
    .line 863
    const/4 v3, 0x0

    #@88
    return-object v3

    #@89
    .line 865
    :cond_2
    add-int/lit8 v13, v13, 0x2

    #@8b
    .line 866
    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    .restart local v7    # "prefixName":Ljava/lang/String;
    goto :goto_0

    #@90
    .line 891
    .end local v13    # "sepIdx":I
    :catch_0
    move-exception v9

    #@91
    .line 893
    .local v9, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    #@92
    return-object v3

    #@93
    .line 887
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v2    # "jarH":Ljava/net/URLClassLoader$URLJarHandler;
    .restart local v5    # "jarURL":Ljava/net/URL;
    .restart local v6    # "jf":Ljava/util/jar/JarFile;
    .restart local v11    # "juc":Ljava/net/JarURLConnection;
    :catch_1
    move-exception v9

    #@94
    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private getHandler(I)Ljava/net/URLClassLoader$URLHandler;
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 811
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 812
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/net/URLClassLoader$URLHandler;

    #@10
    return-object v0

    #@11
    .line 814
    :cond_0
    invoke-direct {p0}, Ljava/net/URLClassLoader;->makeNewHandler()V

    #@14
    .line 815
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    if-ge p1, v0, :cond_1

    #@1c
    .line 816
    iget-object v0, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/net/URLClassLoader$URLHandler;

    #@24
    return-object v0

    #@25
    .line 818
    :cond_1
    const/4 v0, 0x0

    #@26
    return-object v0
.end method

.method private getInternalURLs(Ljava/net/URL;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "root"    # Ljava/net/URL;
    .param p2, "classpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 988
    new-instance v6, Ljava/util/StringTokenizer;

    #@3
    invoke-direct {v6, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@6
    .line 989
    .local v6, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 990
    .local v0, "addedURLs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 991
    .local v3, "file":Ljava/lang/String;
    const-string/jumbo v8, "!/"

    #@12
    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@15
    move-result v8

    #@16
    add-int/lit8 v5, v8, -0x1

    #@18
    .line 992
    .local v5, "jarIndex":I
    const-string/jumbo v8, "/"

    #@1b
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@1e
    move-result v8

    #@1f
    add-int/lit8 v4, v8, 0x1

    #@21
    .line 993
    .local v4, "index":I
    if-nez v4, :cond_0

    #@23
    .line 995
    const-string/jumbo v8, "file.separator"

    #@26
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 994
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@2d
    move-result v8

    #@2e
    add-int/lit8 v4, v8, 0x1

    #@30
    .line 997
    :cond_0
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 998
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_2

    #@3a
    .line 999
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 1000
    .local v2, "element":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@41
    move-result v8

    #@42
    if-nez v8, :cond_1

    #@44
    .line 1003
    :try_start_0
    new-instance v7, Ljava/net/URL;

    #@46
    new-instance v8, Ljava/net/URL;

    #@48
    invoke-direct {v8, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@4b
    invoke-direct {v7, v8, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@4e
    .line 1004
    .local v7, "url":Ljava/net/URL;
    invoke-direct {p0, v7}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    goto :goto_0

    #@56
    .line 1005
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    #@57
    .local v1, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    #@58
    .line 1010
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static isDirectory(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 661
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 662
    .local v0, "file":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-lez v2, :cond_0

    #@b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    add-int/lit8 v2, v2, -0x1

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    const/16 v3, 0x2f

    #@17
    if-ne v2, v3, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_0
    return v1
.end method

.method private isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .locals 4
    .param p1, "manifest"    # Ljava/util/jar/Manifest;
    .param p2, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 965
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@3
    move-result-object v0

    #@4
    .line 966
    .local v0, "attributes":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_0

    #@6
    .line 967
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@8
    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 968
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@e
    .line 969
    const-string/jumbo v3, "true"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    return v3

    #@16
    .line 972
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@19
    move-result-object v1

    #@1a
    .line 973
    .local v1, "mainAttributes":Ljava/util/jar/Attributes;
    sget-object v3, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@1c
    invoke-virtual {v1, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 974
    .restart local v2    # "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@22
    const-string/jumbo v3, "true"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v3

    #@29
    :goto_0
    return v3

    #@2a
    :cond_1
    const/4 v3, 0x0

    #@2b
    goto :goto_0
.end method

.method private declared-synchronized makeNewHandler()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 822
    :cond_0
    :try_start_0
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_4

    #@9
    .line 823
    iget-object v3, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    #@b
    const/4 v4, 0x0

    #@c
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/net/URL;

    #@12
    .line 824
    .local v0, "nextCandidate":Ljava/net/URL;
    if-nez v0, :cond_1

    #@14
    .line 825
    new-instance v3, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v4, "nextCandidate == null"

    #@19
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .end local v0    # "nextCandidate":Ljava/net/URL;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit p0

    #@1f
    throw v3

    #@20
    .line 827
    .restart local v0    # "nextCandidate":Ljava/net/URL;
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    #@22
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_0

    #@28
    .line 829
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 830
    .local v1, "protocol":Ljava/lang/String;
    const-string/jumbo v3, "jar"

    #@2f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 831
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@38
    move-result-object v2

    #@39
    .line 837
    .local v2, "result":Ljava/net/URLClassLoader$URLHandler;
    :goto_0
    if-eqz v2, :cond_0

    #@3b
    .line 838
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerMap:Ljava/util/Map;

    #@3d
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 839
    iget-object v3, p0, Ljava/net/URLClassLoader;->handlerList:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    monitor-exit p0

    #@46
    .line 840
    return-void

    #@47
    .line 832
    .end local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "file"

    #@4a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_3

    #@50
    .line 833
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLFileHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    #@53
    move-result-object v2

    #@54
    .restart local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    goto :goto_0

    #@55
    .line 835
    .end local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    :cond_3
    invoke-direct {p0, v0}, Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    move-result-object v2

    #@59
    .restart local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    goto :goto_0

    #@5a
    .end local v0    # "nextCandidate":Ljava/net/URL;
    .end local v1    # "protocol":Ljava/lang/String;
    .end local v2    # "result":Ljava/net/URLClassLoader$URLHandler;
    :cond_4
    monitor-exit p0

    #@5b
    .line 821
    return-void
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 2
    .param p0, "urls"    # [Ljava/net/URL;

    #@0
    .prologue
    .line 675
    new-instance v0, Ljava/net/URLClassLoader;

    #@2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    #@9
    return-object v0
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .locals 1
    .param p0, "urls"    # [Ljava/net/URL;
    .param p1, "parentCl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 690
    new-instance v0, Ljava/net/URLClassLoader;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    #@5
    return-object v0
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 566
    :try_start_0
    iget-object v1, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 567
    iget-object v1, p0, Ljava/net/URLClassLoader;->searchList:Ljava/util/List;

    #@7
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 564
    :goto_0
    return-void

    #@f
    .line 568
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "manifest"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@3
    move-result-object v10

    #@4
    .line 914
    .local v10, "mainAttributes":Ljava/util/jar/Attributes;
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const/16 v1, 0x2e

    #@b
    const/16 v8, 0x2f

    #@d
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "/"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v9

    #@20
    .line 915
    .local v9, "dirName":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@23
    move-result-object v12

    #@24
    .line 916
    .local v12, "packageAttributes":Ljava/util/jar/Attributes;
    const/4 v11, 0x0

    #@25
    .line 917
    .local v11, "noEntry":Z
    if-nez v12, :cond_0

    #@27
    .line 918
    const/4 v11, 0x1

    #@28
    .line 919
    move-object v12, v10

    #@29
    .line 922
    :cond_0
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@2b
    .line 921
    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 923
    .local v2, "specificationTitle":Ljava/lang/String;
    if-nez v2, :cond_1

    #@31
    if-eqz v11, :cond_7

    #@33
    .line 928
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@35
    .line 927
    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 929
    .local v3, "specificationVersion":Ljava/lang/String;
    if-nez v3, :cond_2

    #@3b
    if-eqz v11, :cond_8

    #@3d
    .line 934
    :cond_2
    :goto_1
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@3f
    .line 933
    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 935
    .local v4, "specificationVendor":Ljava/lang/String;
    if-nez v4, :cond_3

    #@45
    if-eqz v11, :cond_9

    #@47
    .line 940
    :cond_3
    :goto_2
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@49
    .line 939
    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 941
    .local v5, "implementationTitle":Ljava/lang/String;
    if-nez v5, :cond_4

    #@4f
    if-eqz v11, :cond_a

    #@51
    .line 946
    :cond_4
    :goto_3
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@53
    .line 945
    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    .line 947
    .local v6, "implementationVersion":Ljava/lang/String;
    if-nez v6, :cond_5

    #@59
    if-eqz v11, :cond_b

    #@5b
    .line 952
    :cond_5
    :goto_4
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@5d
    .line 951
    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    .line 953
    .local v7, "implementationVendor":Ljava/lang/String;
    if-nez v7, :cond_6

    #@63
    if-eqz v11, :cond_c

    #@65
    .line 960
    :cond_6
    :goto_5
    invoke-direct {p0, p2, v9}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_d

    #@6b
    move-object/from16 v8, p3

    #@6d
    :goto_6
    move-object v0, p0

    #@6e
    move-object v1, p1

    #@6f
    .line 958
    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    #@72
    move-result-object v0

    #@73
    return-object v0

    #@74
    .line 925
    .end local v3    # "specificationVersion":Ljava/lang/String;
    .end local v4    # "specificationVendor":Ljava/lang/String;
    .end local v5    # "implementationTitle":Ljava/lang/String;
    .end local v6    # "implementationVersion":Ljava/lang/String;
    .end local v7    # "implementationVendor":Ljava/lang/String;
    :cond_7
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@76
    .line 924
    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    goto :goto_0

    #@7b
    .line 931
    .restart local v3    # "specificationVersion":Ljava/lang/String;
    :cond_8
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@7d
    .line 930
    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    goto :goto_1

    #@82
    .line 937
    .restart local v4    # "specificationVendor":Ljava/lang/String;
    :cond_9
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@84
    .line 936
    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    goto :goto_2

    #@89
    .line 943
    .restart local v5    # "implementationTitle":Ljava/lang/String;
    :cond_a
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@8b
    .line 942
    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    goto :goto_3

    #@90
    .line 949
    .restart local v6    # "implementationVersion":Ljava/lang/String;
    :cond_b
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@92
    .line 948
    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    goto :goto_4

    #@97
    .line 955
    .restart local v7    # "implementationVendor":Ljava/lang/String;
    :cond_c
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@99
    .line 954
    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    goto :goto_5

    #@9e
    .line 961
    :cond_d
    const/4 v8, 0x0

    #@9f
    goto :goto_6
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x2f

    #@2
    .line 735
    const/16 v8, 0x2e

    #@4
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 736
    .local v5, "partialName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    const-string/jumbo v9, ".class"

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 737
    .local v0, "classFileName":Ljava/lang/String;
    const/4 v4, 0x0

    #@19
    .line 738
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    #@1c
    move-result v6

    #@1d
    .line 739
    .local v6, "position":I
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    #@20
    move-result v6

    #@21
    const/4 v8, -0x1

    #@22
    if-eq v6, v8, :cond_0

    #@24
    .line 740
    const/4 v8, 0x0

    #@25
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 742
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@2a
    .line 744
    .local v2, "n":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@2c
    .end local v2    # "n":I
    .local v3, "n":I
    invoke-direct {p0, v2}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    #@2f
    move-result-object v1

    #@30
    .line 745
    .local v1, "handler":Ljava/net/URLClassLoader$URLHandler;
    if-nez v1, :cond_1

    #@32
    .line 753
    new-instance v8, Ljava/lang/ClassNotFoundException;

    #@34
    invoke-direct {v8, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@37
    throw v8

    #@38
    .line 748
    :cond_1
    invoke-virtual {v1, v4, v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    #@3b
    move-result-object v7

    #@3c
    .line 749
    .local v7, "res":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v7, :cond_2

    #@3e
    .line 750
    return-object v7

    #@3f
    :cond_2
    move v2, v3

    #@40
    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_0
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 793
    if-nez p1, :cond_0

    #@3
    .line 794
    return-object v4

    #@4
    .line 796
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 798
    .local v1, "n":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@7
    .end local v1    # "n":I
    .local v2, "n":I
    invoke-direct {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    #@a
    move-result-object v0

    #@b
    .line 799
    .local v0, "handler":Ljava/net/URLClassLoader$URLHandler;
    if-nez v0, :cond_1

    #@d
    .line 807
    return-object v4

    #@e
    .line 802
    :cond_1
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@11
    move-result-object v3

    #@12
    .line 803
    .local v3, "res":Ljava/net/URL;
    if-eqz v3, :cond_2

    #@14
    .line 804
    return-object v3

    #@15
    :cond_2
    move v1, v2

    #@16
    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_0
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 583
    if-nez p1, :cond_0

    #@3
    .line 584
    return-object v4

    #@4
    .line 586
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 587
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v1, 0x0

    #@a
    .line 589
    .local v1, "n":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@c
    .end local v1    # "n":I
    .local v2, "n":I
    invoke-direct {p0, v1}, Ljava/net/URLClassLoader;->getHandler(I)Ljava/net/URLClassLoader$URLHandler;

    #@f
    move-result-object v0

    #@10
    .line 590
    .local v0, "handler":Ljava/net/URLClassLoader$URLHandler;
    if-nez v0, :cond_1

    #@12
    .line 595
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@15
    move-result-object v4

    #@16
    return-object v4

    #@17
    .line 593
    :cond_1
    invoke-virtual {v0, p1, v3}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@1a
    move v1, v2

    #@1b
    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_0
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 8
    .param p1, "codesource"    # Ljava/security/CodeSource;

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    .line 612
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    #@5
    move-result-object v3

    #@6
    .line 613
    .local v3, "pc":Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    #@9
    move-result-object v4

    #@a
    .line 614
    .local v4, "u":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    const-string/jumbo v6, "jar"

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 617
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Ljava/net/JarURLConnection;

    #@1d
    invoke-virtual {v5}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v4

    #@21
    .line 623
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, "file"

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_4

    #@2e
    .line 624
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 625
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 626
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3b
    move-result v5

    #@3c
    if-lez v5, :cond_1

    #@3e
    .line 627
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "//"

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 630
    :cond_1
    sget-char v5, Ljava/io/File;->separatorChar:C

    #@58
    if-eq v5, v7, :cond_2

    #@5a
    .line 631
    sget-char v5, Ljava/io/File;->separatorChar:C

    #@5c
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    .line 633
    :cond_2
    invoke-static {v4}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_3

    #@66
    .line 634
    new-instance v5, Ljava/io/FilePermission;

    #@68
    new-instance v6, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    const-string/jumbo v7, "-"

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    const-string/jumbo v7, "read"

    #@7f
    invoke-direct {v5, v6, v7}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@82
    invoke-virtual {v3, v5}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    #@85
    .line 645
    .end local v2    # "path":Ljava/lang/String;
    :goto_1
    return-object v3

    #@86
    .line 636
    .restart local v2    # "path":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/io/FilePermission;

    #@88
    const-string/jumbo v6, "read"

    #@8b
    invoke-direct {v5, v2, v6}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8e
    invoke-virtual {v3, v5}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    #@91
    goto :goto_1

    #@92
    .line 639
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 640
    .restart local v1    # "host":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@99
    move-result v5

    #@9a
    if-nez v5, :cond_5

    #@9c
    .line 641
    const-string/jumbo v1, "localhost"

    #@9f
    .line 643
    :cond_5
    new-instance v5, Ljava/net/SocketPermission;

    #@a1
    const-string/jumbo v6, "connect, accept"

    #@a4
    invoke-direct {v5, v1, v6}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    invoke-virtual {v3, v5}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    #@aa
    goto :goto_1

    #@ab
    .line 618
    .end local v1    # "host":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@ac
    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 2

    #@0
    .prologue
    .line 654
    iget-object v0, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Ljava/net/URLClassLoader;->originalUrls:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Ljava/net/URL;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/net/URL;

    #@10
    return-object v0
.end method

.class Ljava/lang/VMClassLoader;
.super Ljava/lang/Object;
.source "VMClassLoader.java"


# static fields
.field private static final bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-static {}, Ljava/lang/VMClassLoader;->createBootClassPathUrlHandlers()[Llibcore/io/ClassPathURLStreamHandler;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    #@6
    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createBootClassPathUrlHandlers()[Llibcore/io/ClassPathURLStreamHandler;
    .locals 11

    #@0
    .prologue
    .line 39
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathEntries()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 40
    .local v0, "bootClassPathEntries":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    #@6
    array-length v7, v0

    #@7
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 42
    .local v6, "zipFileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@c
    array-length v7, v0

    #@d
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    .line 43
    .local v5, "urlStreamHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URLStreamHandler;>;"
    const/4 v7, 0x0

    #@11
    array-length v8, v0

    #@12
    :goto_0
    if-ge v7, v8, :cond_0

    #@14
    aget-object v1, v0, v7

    #@16
    .line 45
    .local v1, "bootClassPathEntry":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/File;

    #@18
    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 49
    .local v3, "entryUri":Ljava/lang/String;
    new-instance v4, Llibcore/io/ClassPathURLStreamHandler;

    #@25
    invoke-direct {v4, v1}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;)V

    #@28
    .line 50
    .local v4, "urlStreamHandler":Ljava/net/URLStreamHandler;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 51
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 43
    .end local v3    # "entryUri":Ljava/lang/String;
    .end local v4    # "urlStreamHandler":Ljava/net/URLStreamHandler;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@30
    goto :goto_0

    #@31
    .line 52
    :catch_0
    move-exception v2

    #@32
    .line 54
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v10, "Unable to open boot classpath entry: "

    #@3a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-static {v9, v2}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@49
    goto :goto_1

    #@4a
    .line 57
    .end local v1    # "bootClassPathEntry":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v7

    #@4e
    new-array v7, v7, [Llibcore/io/ClassPathURLStreamHandler;

    #@50
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, [Llibcore/io/ClassPathURLStreamHandler;

    #@56
    return-object v7
.end method

.method static native findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method private static native getBootClassPathEntries()[Ljava/lang/String;
.end method

.method static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 67
    sget-object v3, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    #@3
    const/4 v2, 0x0

    #@4
    array-length v4, v3

    #@5
    :goto_0
    if-ge v2, v4, :cond_1

    #@7
    aget-object v1, v3, v2

    #@9
    .line 68
    .local v1, "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    invoke-virtual {v1, p0}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    #@c
    move-result-object v0

    #@d
    .line 69
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    #@f
    .line 70
    return-object v0

    #@10
    .line 67
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 73
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    :cond_1
    return-object v5
.end method

.method static getResources(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 81
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    sget-object v4, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    #@7
    const/4 v3, 0x0

    #@8
    array-length v5, v4

    #@9
    :goto_0
    if-ge v3, v5, :cond_1

    #@b
    aget-object v2, v4, v3

    #@d
    .line 82
    .local v2, "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    invoke-virtual {v2, p0}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    #@10
    move-result-object v1

    #@11
    .line 83
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    #@13
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 81
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 87
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    :cond_1
    return-object v0
.end method

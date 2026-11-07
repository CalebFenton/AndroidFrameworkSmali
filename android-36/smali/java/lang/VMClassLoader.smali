.class Ljava/lang/VMClassLoader;
.super Ljava/lang/Object;
.source "VMClassLoader.java"


# static fields
.field private static final blacklist bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    invoke-static {}, Ljava/lang/VMClassLoader;->createBootClassPathUrlHandlers()[Llibcore/io/ClassPathURLStreamHandler;

    move-result-object v0

    sput-object v0, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    .line 33
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createBootClassPathUrlHandlers()[Llibcore/io/ClassPathURLStreamHandler;
    .registers 8

    .line 40
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathEntries()[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "bootClassPathEntries":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v1, "urlStreamHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URLStreamHandler;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_34

    aget-object v4, v0, v3

    .line 46
    .local v4, "bootClassPathEntry":Ljava/lang/String;
    :try_start_10
    new-instance v5, Llibcore/io/ClassPathURLStreamHandler;

    invoke-direct {v5, v4}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "urlStreamHandler":Ljava/net/URLStreamHandler;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_1a

    .line 52
    nop

    .end local v5    # "urlStreamHandler":Ljava/net/URLStreamHandler;
    goto :goto_31

    .line 49
    :catch_1a
    move-exception v5

    .line 51
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open boot classpath entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v4    # "bootClassPathEntry":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 54
    :cond_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Llibcore/io/ClassPathURLStreamHandler;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Llibcore/io/ClassPathURLStreamHandler;

    return-object v2
.end method

.method static native blacklist findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist getBootClassPathEntries()[Ljava/lang/String;
.end method

.method static blacklist getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 65
    .local v3, "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    invoke-virtual {v3, p0}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 66
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_f

    .line 67
    return-object v4

    .line 64
    .end local v3    # "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    .end local v4    # "url":Ljava/net/URL;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 70
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getResources(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    sget-object v1, Ljava/lang/VMClassLoader;->bootClassPathUrlHandlers:[Llibcore/io/ClassPathURLStreamHandler;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 79
    .local v4, "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    invoke-virtual {v4, p0}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 80
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_16

    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v4    # "urlHandler":Llibcore/io/ClassPathURLStreamHandler;
    .end local v5    # "url":Ljava/net/URL;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 84
    :cond_19
    return-object v0
.end method

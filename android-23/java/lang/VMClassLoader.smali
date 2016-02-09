.class Ljava/lang/VMClassLoader;
.super Ljava/lang/Object;
.source "VMClassLoader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static native findLoadedClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method private static native getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native getBootClassPathSize()I
.end method

.method static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 36
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathSize()I

    #@4
    move-result v2

    #@5
    .line 37
    .local v2, "numEntries":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@8
    .line 38
    invoke-static {p0, v0}, Ljava/lang/VMClassLoader;->getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 39
    .local v3, "urlStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@e
    .line 41
    :try_start_0
    new-instance v4, Ljava/net/URL;

    #@10
    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    return-object v4

    #@14
    .line 42
    :catch_0
    move-exception v1

    #@15
    .line 43
    .local v1, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@18
    .line 37
    .end local v1    # "mue":Ljava/net/MalformedURLException;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 48
    .end local v3    # "urlStr":Ljava/lang/String;
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
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 56
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-static {}, Ljava/lang/VMClassLoader;->getBootClassPathSize()I

    #@8
    move-result v3

    #@9
    .line 57
    .local v3, "numEntries":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@c
    .line 58
    invoke-static {p0, v0}, Ljava/lang/VMClassLoader;->getBootClassPathResource(Ljava/lang/String;I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 59
    .local v4, "urlStr":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@12
    .line 61
    :try_start_0
    new-instance v5, Ljava/net/URL;

    #@14
    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 62
    :catch_0
    move-exception v2

    #@1e
    .line 63
    .local v2, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@21
    goto :goto_1

    #@22
    .line 68
    .end local v2    # "mue":Ljava/net/MalformedURLException;
    .end local v4    # "urlStr":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

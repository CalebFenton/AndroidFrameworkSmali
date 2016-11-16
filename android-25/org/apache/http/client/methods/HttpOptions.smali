.class public Lorg/apache/http/client/methods/HttpOptions;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpOptions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "OPTIONS"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 85
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    #@a
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    #@6
    .line 75
    return-void
.end method


# virtual methods
.method public getAllowedMethods(Lorg/apache/http/HttpResponse;)Ljava/util/Set;
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "HTTP response may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 98
    :cond_0
    const-string/jumbo v5, "Allow"

    #@e
    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    #@11
    move-result-object v3

    #@12
    .line 99
    .local v3, "it":Lorg/apache/http/HeaderIterator;
    new-instance v4, Ljava/util/HashSet;

    #@14
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@17
    .line 100
    .local v4, "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 101
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    #@20
    move-result-object v2

    #@21
    .line 102
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    #@24
    move-result-object v1

    #@25
    .line 103
    .local v1, "elements":[Lorg/apache/http/HeaderElement;
    const/4 v5, 0x0

    #@26
    array-length v6, v1

    #@27
    :goto_0
    if-ge v5, v6, :cond_1

    #@29
    aget-object v0, v1, v5

    #@2b
    .line 104
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@32
    .line 103
    add-int/lit8 v5, v5, 0x1

    #@34
    goto :goto_0

    #@35
    .line 107
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    .end local v1    # "elements":[Lorg/apache/http/HeaderElement;
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_2
    return-object v4
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    const-string/jumbo v0, "OPTIONS"

    #@3
    return-object v0
.end method

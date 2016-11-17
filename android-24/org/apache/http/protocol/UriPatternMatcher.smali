.class public Lorg/apache/http/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handlerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@a
    .line 61
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "requestURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "Request URI may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 96
    :cond_0
    const-string/jumbo v5, "?"

    #@e
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 97
    .local v2, "index":I
    const/4 v5, -0x1

    #@13
    if-eq v2, v5, :cond_1

    #@15
    .line 98
    const/4 v5, 0x0

    #@16
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    .line 102
    :cond_1
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@1c
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .line 103
    .local v1, "handler":Ljava/lang/Object;
    if-nez v1, :cond_5

    #@22
    .line 105
    const/4 v0, 0x0

    #@23
    .line 106
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@25
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v3

    #@2d
    .end local v0    # "bestMatch":Ljava/lang/String;
    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_5

    #@33
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Ljava/lang/String;

    #@39
    .line 108
    .local v4, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_2

    #@3f
    .line 110
    if-eqz v0, :cond_3

    #@41
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@44
    move-result v5

    #@45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@48
    move-result v6

    #@49
    if-ge v5, v6, :cond_4

    #@4b
    .line 113
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@4d
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    .line 114
    move-object v0, v4

    #@52
    .local v0, "bestMatch":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 112
    .end local v0    # "bestMatch":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@56
    move-result v5

    #@57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@5a
    move-result v6

    #@5b
    if-ne v5, v6, :cond_2

    #@5d
    const-string/jumbo v5, "*"

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@63
    move-result v5

    #@64
    .line 110
    if-eqz v5, :cond_2

    #@66
    goto :goto_1

    #@67
    .line 119
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 123
    const-string/jumbo v2, "*"

    #@5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 124
    return v0

    #@c
    .line 127
    :cond_0
    const-string/jumbo v2, "*"

    #@f
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_2

    #@25
    .line 128
    :cond_1
    const-string/jumbo v2, "*"

    #@28
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_3

    #@2e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@31
    move-result v1

    #@32
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    .line 126
    :cond_2
    :goto_0
    return v0

    #@3b
    :cond_3
    move v0, v1

    #@3c
    .line 128
    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 67
    if-nez p1, :cond_0

    #@2
    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "URI request pattern may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 70
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "HTTP request handelr may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 73
    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 66
    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Map of handlers may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@d
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@10
    .line 88
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@12
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@15
    .line 83
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    if-nez p1, :cond_0

    #@2
    .line 78
    return-void

    #@3
    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 76
    return-void
.end method

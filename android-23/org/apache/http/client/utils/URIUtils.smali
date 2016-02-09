.class public Lorg/apache/http/client/utils/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 87
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    #@7
    .line 88
    if-eqz p0, :cond_0

    #@9
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 90
    const-string/jumbo v1, "://"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 92
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 93
    if-lez p2, :cond_1

    #@17
    .line 94
    const/16 v1, 0x3a

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 98
    :cond_1
    if-eqz p3, :cond_5

    #@21
    const-string/jumbo v1, "/"

    #@24
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_5

    #@2a
    .line 101
    :goto_0
    if-eqz p3, :cond_2

    #@2c
    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 104
    :cond_2
    if-eqz p4, :cond_3

    #@31
    .line 105
    const/16 v1, 0x3f

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 106
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 108
    :cond_3
    if-eqz p5, :cond_4

    #@3b
    .line 109
    const/16 v1, 0x23

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 110
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 112
    :cond_4
    new-instance v1, Ljava/net/URI;

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@4c
    return-object v1

    #@4d
    .line 99
    :cond_5
    const/16 v1, 0x2f

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    goto :goto_0
.end method

.method public static resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p0, "baseURI"    # Ljava/net/URI;
    .param p1, "reference"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 5
    .param p0, "baseURI"    # Ljava/net/URI;
    .param p1, "reference"    # Ljava/net/URI;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 189
    if-nez p0, :cond_0

    #@3
    .line 190
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "Base URI may nor be null"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 192
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "Reference URI may nor be null"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_4

    #@21
    const/4 v0, 0x1

    #@22
    .line 196
    .local v0, "emptyReference":Z
    :goto_0
    if-eqz v0, :cond_2

    #@24
    .line 197
    const-string/jumbo v3, "#"

    #@27
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@2a
    move-result-object p1

    #@2b
    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    #@2e
    move-result-object v1

    #@2f
    .line 200
    .local v1, "resolved":Ljava/net/URI;
    if-eqz v0, :cond_3

    #@31
    .line 201
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 203
    .local v2, "resolvedString":Ljava/lang/String;
    const/16 v3, 0x23

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@3a
    move-result v3

    #@3b
    .line 202
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@42
    move-result-object v1

    #@43
    .line 205
    .end local v2    # "resolvedString":Ljava/lang/String;
    :cond_3
    return-object v1

    #@44
    .line 195
    .end local v0    # "emptyReference":Z
    .end local v1    # "resolved":Ljava/net/URI;
    :cond_4
    const/4 v0, 0x0

    #@45
    .restart local v0    # "emptyReference":Z
    goto :goto_0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    .locals 7
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "dropFragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 135
    if-nez p0, :cond_0

    #@3
    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "URI may nor be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 138
    :cond_0
    if-eqz p1, :cond_2

    #@e
    .line 140
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 141
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 142
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    #@19
    move-result v2

    #@1a
    .line 143
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 144
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 145
    if-eqz p2, :cond_1

    #@24
    move-object v5, v6

    #@25
    .line 139
    :goto_0
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 145
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    goto :goto_0

    #@2f
    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 152
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 153
    if-eqz p2, :cond_3

    #@39
    move-object v5, v6

    #@3a
    .line 150
    :goto_1
    const/4 v2, -0x1

    #@3b
    move-object v0, v6

    #@3c
    move-object v1, v6

    #@3d
    .line 147
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 153
    :cond_3
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    goto :goto_1
.end method

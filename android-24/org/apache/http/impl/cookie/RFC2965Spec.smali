.class public Lorg/apache/http/impl/cookie/RFC2965Spec;
.super Lorg/apache/http/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    #@5
    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    #@3
    .line 76
    const-string/jumbo v0, "domain"

    #@6
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    #@8
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    #@b
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@e
    .line 77
    const-string/jumbo v0, "port"

    #@11
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    #@13
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    #@16
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@19
    .line 78
    const-string/jumbo v0, "commenturl"

    #@1c
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    #@1e
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    #@21
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@24
    .line 79
    const-string/jumbo v0, "discard"

    #@27
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    #@29
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    #@2c
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@2f
    .line 80
    const-string/jumbo v0, "version"

    #@32
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    #@34
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    #@37
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@3a
    .line 74
    return-void
.end method

.method private static adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;
    .locals 8
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 228
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x1

    #@5
    .line 229
    .local v3, "isLocalHost":Z
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    if-ge v2, v4, :cond_1

    #@c
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 231
    .local v0, "ch":C
    const/16 v4, 0x2e

    #@12
    if-eq v0, v4, :cond_0

    #@14
    const/16 v4, 0x3a

    #@16
    if-ne v0, v4, :cond_2

    #@18
    .line 232
    :cond_0
    const/4 v3, 0x0

    #@19
    .line 236
    .end local v0    # "ch":C
    :cond_1
    if-eqz v3, :cond_3

    #@1b
    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ".local"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 238
    new-instance v4, Lorg/apache/http/cookie/CookieOrigin;

    #@31
    .line 240
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    #@34
    move-result v5

    #@35
    .line 241
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    .line 242
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->isSecure()Z

    #@3c
    move-result v7

    #@3d
    .line 238
    invoke-direct {v4, v1, v5, v6, v7}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    #@40
    return-object v4

    #@41
    .line 229
    .restart local v0    # "ch":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 244
    .end local v0    # "ch":C
    :cond_3
    return-object p0
.end method

.method private createCookie(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 85
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 86
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    #@c
    .line 87
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    #@13
    .line 88
    return-object v0
.end method

.method private createCookie2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 93
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 94
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie2;
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setPath(Ljava/lang/String;)V

    #@c
    .line 95
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setDomain(Ljava/lang/String;)V

    #@13
    .line 96
    const/4 v1, 0x1

    #@14
    new-array v1, v1, [I

    #@16
    invoke-virtual {p3}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    #@19
    move-result v2

    #@1a
    const/4 v3, 0x0

    #@1b
    aput v2, v1, v3

    #@1d
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setPorts([I)V

    #@20
    .line 97
    return-object v0
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p3, "version"    # I

    #@0
    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    #@3
    .line 190
    instance-of v4, p2, Lorg/apache/http/cookie/ClientCookie;

    #@5
    if-eqz v4, :cond_2

    #@7
    move-object v4, p2

    #@8
    .line 192
    check-cast v4, Lorg/apache/http/cookie/ClientCookie;

    #@a
    const-string/jumbo v5, "port"

    #@d
    invoke-interface {v4, v5}, Lorg/apache/http/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 193
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@13
    .line 194
    const-string/jumbo v4, "; $Port"

    #@16
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@19
    .line 195
    const-string/jumbo v4, "=\""

    #@1c
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1f
    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@26
    move-result v4

    #@27
    if-lez v4, :cond_1

    #@29
    .line 197
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    #@2c
    move-result-object v2

    #@2d
    .line 198
    .local v2, "ports":[I
    if-eqz v2, :cond_1

    #@2f
    .line 199
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    array-length v1, v2

    #@31
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@33
    .line 200
    if-lez v0, :cond_0

    #@35
    .line 201
    const-string/jumbo v4, ","

    #@38
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3b
    .line 203
    :cond_0
    aget v4, v2, v0

    #@3d
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@44
    .line 199
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 207
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "ports":[I
    :cond_1
    const-string/jumbo v4, "\""

    #@4a
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@4d
    .line 187
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 250
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 2

    #@0
    .prologue
    .line 255
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v1, 0x28

    #@4
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 256
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string/jumbo v1, "Cookie2"

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@d
    .line 257
    const-string/jumbo v1, ": "

    #@10
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@13
    .line 258
    const-string/jumbo v1, "$Version="

    #@16
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@19
    .line 259
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersion()I

    #@1c
    move-result v1

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@24
    .line 260
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    #@26
    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@29
    return-object v1
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 172
    if-nez p1, :cond_0

    #@2
    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 175
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Cookie origin may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 178
    :cond_1
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    #@19
    move-result-object p2

    #@1a
    .line 179
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 22
    .param p1, "header"    # Lorg/apache/http/Header;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    if-nez p1, :cond_0

    #@2
    .line 105
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v19, "Header may not be null"

    #@7
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v18

    #@b
    .line 107
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 108
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v19, "Cookie origin may not be null"

    #@12
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v18

    #@16
    .line 111
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    #@19
    move-result-object p2

    #@1a
    .line 113
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    #@1d
    move-result-object v8

    #@1e
    .line 115
    .local v8, "elems":[Lorg/apache/http/HeaderElement;
    new-instance v7, Ljava/util/ArrayList;

    #@20
    array-length v0, v8

    #@21
    move/from16 v18, v0

    #@23
    move/from16 v0, v18

    #@25
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@28
    .line 116
    .local v7, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/16 v18, 0x0

    #@2a
    array-length v0, v8

    #@2b
    move/from16 v19, v0

    #@2d
    :goto_0
    move/from16 v0, v18

    #@2f
    move/from16 v1, v19

    #@31
    if-ge v0, v1, :cond_8

    #@33
    aget-object v12, v8, v18

    #@35
    .line 117
    .local v12, "headerelement":Lorg/apache/http/HeaderElement;
    invoke-interface {v12}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@38
    move-result-object v14

    #@39
    .line 118
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v12}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@3c
    move-result-object v17

    #@3d
    .line 119
    .local v17, "value":Ljava/lang/String;
    if-eqz v14, :cond_2

    #@3f
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@42
    move-result v20

    #@43
    if-nez v20, :cond_3

    #@45
    .line 120
    :cond_2
    new-instance v18, Lorg/apache/http/cookie/MalformedCookieException;

    #@47
    const-string/jumbo v19, "Cookie name may not be empty"

    #@4a
    invoke-direct/range {v18 .. v19}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v18

    #@4e
    .line 124
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@51
    move-result-object v20

    #@52
    const-string/jumbo v21, "Set-Cookie2"

    #@55
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v20

    #@59
    if-eqz v20, :cond_4

    #@5b
    .line 125
    move-object/from16 v0, p0

    #@5d
    move-object/from16 v1, v17

    #@5f
    move-object/from16 v2, p2

    #@61
    invoke-direct {v0, v14, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->createCookie2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    #@64
    move-result-object v6

    #@65
    .line 131
    .local v6, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :goto_1
    invoke-interface {v12}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    #@68
    move-result-object v5

    #@69
    .line 136
    .local v5, "attribs":[Lorg/apache/http/NameValuePair;
    new-instance v4, Ljava/util/HashMap;

    #@6b
    array-length v0, v5

    #@6c
    move/from16 v20, v0

    #@6e
    move/from16 v0, v20

    #@70
    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    #@73
    .line 137
    .local v4, "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    array-length v0, v5

    #@74
    move/from16 v20, v0

    #@76
    add-int/lit8 v13, v20, -0x1

    #@78
    .local v13, "j":I
    :goto_2
    if-ltz v13, :cond_5

    #@7a
    .line 138
    aget-object v15, v5, v13

    #@7c
    .line 139
    .local v15, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v15}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@7f
    move-result-object v20

    #@80
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@82
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@85
    move-result-object v20

    #@86
    move-object/from16 v0, v20

    #@88
    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 137
    add-int/lit8 v13, v13, -0x1

    #@8d
    goto :goto_2

    #@8e
    .line 127
    .end local v4    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v6    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v13    # "j":I
    .end local v15    # "param":Lorg/apache/http/NameValuePair;
    :cond_4
    move-object/from16 v0, p0

    #@90
    move-object/from16 v1, v17

    #@92
    move-object/from16 v2, p2

    #@94
    invoke-direct {v0, v14, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->createCookie(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    #@97
    move-result-object v6

    #@98
    .restart local v6    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    goto :goto_1

    #@99
    .line 141
    .restart local v4    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .restart local v5    # "attribs":[Lorg/apache/http/NameValuePair;
    .restart local v13    # "j":I
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9c
    move-result-object v20

    #@9d
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a0
    move-result-object v10

    #@a1
    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@a4
    move-result v20

    #@a5
    if-eqz v20, :cond_7

    #@a7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v9

    #@ab
    check-cast v9, Ljava/util/Map$Entry;

    #@ad
    .line 142
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b0
    move-result-object v3

    #@b1
    check-cast v3, Lorg/apache/http/NameValuePair;

    #@b3
    .line 143
    .local v3, "attrib":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@b6
    move-result-object v20

    #@b7
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@b9
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@bc
    move-result-object v16

    #@bd
    .line 145
    .local v16, "s":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@c0
    move-result-object v20

    #@c1
    move-object/from16 v0, v16

    #@c3
    move-object/from16 v1, v20

    #@c5
    invoke-virtual {v6, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@c8
    .line 147
    move-object/from16 v0, p0

    #@ca
    move-object/from16 v1, v16

    #@cc
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    #@cf
    move-result-object v11

    #@d0
    .line 148
    .local v11, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v11, :cond_6

    #@d2
    .line 149
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@d5
    move-result-object v20

    #@d6
    move-object/from16 v0, v20

    #@d8
    invoke-interface {v11, v6, v0}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    #@db
    goto :goto_3

    #@dc
    .line 152
    .end local v3    # "attrib":Lorg/apache/http/NameValuePair;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v11    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    .end local v16    # "s":Ljava/lang/String;
    :cond_7
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@df
    .line 116
    add-int/lit8 v18, v18, 0x1

    #@e1
    goto/16 :goto_0

    #@e3
    .line 154
    .end local v4    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v6    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v13    # "j":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_8
    return-object v7
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    if-nez p1, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 163
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Cookie origin may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 166
    :cond_1
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    #@19
    move-result-object p2

    #@1a
    .line 167
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@1d
    .line 159
    return-void
.end method

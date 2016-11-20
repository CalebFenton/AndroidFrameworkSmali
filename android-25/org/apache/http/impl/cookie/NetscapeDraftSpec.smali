.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final EXPIRES_PATTERN:Ljava/lang/String; = "EEE, dd-MMM-yyyy HH:mm:ss z"


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    #@4
    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "datepatterns"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    #@3
    .line 79
    if-eqz p1, :cond_0

    #@5
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    #@d
    .line 84
    :goto_0
    const-string/jumbo v0, "path"

    #@10
    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    #@12
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    #@15
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@18
    .line 85
    const-string/jumbo v0, "domain"

    #@1b
    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;

    #@1d
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;-><init>()V

    #@20
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@23
    .line 86
    const-string/jumbo v0, "max-age"

    #@26
    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    #@28
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    #@2b
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@2e
    .line 87
    const-string/jumbo v0, "secure"

    #@31
    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    #@33
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    #@36
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@39
    .line 88
    const-string/jumbo v0, "comment"

    #@3c
    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    #@3e
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    #@41
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@44
    .line 89
    const-string/jumbo v0, "expires"

    #@47
    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    #@49
    .line 90
    iget-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    #@4b
    .line 89
    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    #@4e
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@51
    .line 77
    return-void

    #@52
    .line 82
    :cond_0
    const/4 v0, 0x1

    #@53
    new-array v0, v0, [Ljava/lang/String;

    #@55
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    #@58
    const/4 v2, 0x0

    #@59
    aput-object v1, v0, v2

    #@5b
    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    #@5d
    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    #@2
    .line 154
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "List of cookies may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 156
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 157
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v6, "List of cookies may not be empty"

    #@16
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v5

    #@1a
    .line 159
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1f
    move-result v5

    #@20
    mul-int/lit8 v5, v5, 0x14

    #@22
    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@25
    .line 160
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string/jumbo v5, "Cookie"

    #@28
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2b
    .line 161
    const-string/jumbo v5, ": "

    #@2e
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@31
    .line 162
    const/4 v3, 0x0

    #@32
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@35
    move-result v5

    #@36
    if-ge v3, v5, :cond_4

    #@38
    .line 163
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lorg/apache/http/cookie/Cookie;

    #@3e
    .line 164
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    if-lez v3, :cond_2

    #@40
    .line 165
    const-string/jumbo v5, "; "

    #@43
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@46
    .line 167
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@4d
    .line 168
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 169
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@53
    .line 170
    const-string/jumbo v5, "="

    #@56
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@59
    .line 171
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@5c
    .line 162
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 174
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    #@61
    const/4 v5, 0x1

    #@62
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@65
    .line 175
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    #@67
    invoke-direct {v5, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@6a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 176
    return-object v2
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 184
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 126
    if-nez p1, :cond_0

    #@3
    .line 127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "Header may not be null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 129
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 130
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v5, "Cookie origin may not be null"

    #@13
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v4

    #@17
    .line 132
    :cond_1
    sget-object v2, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    #@19
    .line 135
    .local v2, "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v4, p1, Lorg/apache/http/FormattedHeader;

    #@1b
    if-eqz v4, :cond_2

    #@1d
    move-object v4, p1

    #@1e
    .line 136
    check-cast v4, Lorg/apache/http/FormattedHeader;

    #@20
    invoke-interface {v4}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    #@23
    move-result-object v0

    #@24
    .line 137
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@26
    .line 138
    check-cast p1, Lorg/apache/http/FormattedHeader;

    #@28
    .end local p1    # "header":Lorg/apache/http/Header;
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    #@2b
    move-result v4

    #@2c
    .line 139
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@2f
    move-result v5

    #@30
    .line 137
    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@33
    .line 149
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_0
    const/4 v4, 0x1

    #@34
    new-array v4, v4, [Lorg/apache/http/HeaderElement;

    #@36
    invoke-virtual {v2, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    #@39
    move-result-object v5

    #@3a
    aput-object v5, v4, v6

    #@3c
    invoke-virtual {p0, v4, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@3f
    move-result-object v4

    #@40
    return-object v4

    #@41
    .line 141
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .restart local p1    # "header":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 142
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_3

    #@47
    .line 143
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@49
    const-string/jumbo v5, "Header value is null"

    #@4c
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 145
    :cond_3
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@55
    move-result v4

    #@56
    invoke-direct {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@59
    .line 146
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@5c
    .line 147
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@5e
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@61
    move-result v4

    #@62
    invoke-direct {v1, v6, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@65
    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    goto :goto_0
.end method

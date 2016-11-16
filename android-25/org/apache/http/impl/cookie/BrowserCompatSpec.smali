.class public Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 67
    const/16 v0, 0xe

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 68
    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 69
    const-string/jumbo v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 70
    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 71
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 72
    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 73
    const-string/jumbo v1, "EEE, dd MMM yy HH:mm:ss z"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 74
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 75
    const-string/jumbo v1, "EEE dd MMM yyyy HH:mm:ss z"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 76
    const-string/jumbo v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 77
    const-string/jumbo v1, "EEE dd-MMM-yy HH:mm:ss z"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 78
    const-string/jumbo v1, "EEE dd MMM yy HH:mm:ss z"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 79
    const-string/jumbo v1, "EEE,dd-MMM-yy HH:mm:ss z"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 80
    const-string/jumbo v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 81
    const-string/jumbo v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 67
    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    #@60
    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    #@4
    .line 104
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "datepatterns"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    #@3
    .line 89
    if-eqz p1, :cond_0

    #@5
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    #@d
    .line 94
    :goto_0
    const-string/jumbo v0, "path"

    #@10
    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    #@12
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    #@15
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@18
    .line 95
    const-string/jumbo v0, "domain"

    #@1b
    new-instance v1, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    #@1d
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    #@20
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@23
    .line 96
    const-string/jumbo v0, "max-age"

    #@26
    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    #@28
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    #@2b
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@2e
    .line 97
    const-string/jumbo v0, "secure"

    #@31
    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    #@33
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    #@36
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@39
    .line 98
    const-string/jumbo v0, "comment"

    #@3c
    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    #@3e
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    #@41
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@44
    .line 99
    const-string/jumbo v0, "expires"

    #@47
    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    #@49
    .line 100
    iget-object v2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    #@4b
    .line 99
    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    #@4e
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@51
    .line 87
    return-void

    #@52
    .line 92
    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    #@54
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    #@56
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
    .line 159
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    #@2
    .line 160
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "List of cookies may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 163
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v6, "List of cookies may not be empty"

    #@16
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v5

    #@1a
    .line 165
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
    .line 166
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string/jumbo v5, "Cookie"

    #@28
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2b
    .line 167
    const-string/jumbo v5, ": "

    #@2e
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@31
    .line 168
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
    .line 169
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lorg/apache/http/cookie/Cookie;

    #@3e
    .line 170
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    if-lez v3, :cond_2

    #@40
    .line 171
    const-string/jumbo v5, "; "

    #@43
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@46
    .line 173
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@4d
    .line 174
    const-string/jumbo v5, "="

    #@50
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@53
    .line 175
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 176
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@59
    .line 177
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@5c
    .line 168
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 180
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    #@61
    const/4 v5, 0x1

    #@62
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@65
    .line 181
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    #@67
    invoke-direct {v5, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@6a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6d
    .line 182
    return-object v2
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 186
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 190
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 12
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
    .line 110
    if-nez p1, :cond_0

    #@2
    .line 111
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v11, "Header may not be null"

    #@7
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v10

    #@b
    .line 113
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 114
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v11, "Cookie origin may not be null"

    #@12
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v10

    #@16
    .line 116
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 117
    .local v4, "headervalue":Ljava/lang/String;
    const/4 v7, 0x0

    #@1b
    .line 118
    .local v7, "isNetscapeCookie":Z
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1d
    invoke-virtual {v4, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object v10

    #@21
    const-string/jumbo v11, "expires="

    #@24
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@27
    move-result v5

    #@28
    .line 119
    .local v5, "i1":I
    const/4 v10, -0x1

    #@29
    if-eq v5, v10, :cond_3

    #@2b
    .line 120
    const-string/jumbo v10, "expires="

    #@2e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@31
    move-result v10

    #@32
    add-int/2addr v5, v10

    #@33
    .line 121
    const/16 v10, 0x3b

    #@35
    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->indexOf(II)I

    #@38
    move-result v6

    #@39
    .line 122
    .local v6, "i2":I
    const/4 v10, -0x1

    #@3a
    if-ne v6, v10, :cond_2

    #@3c
    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3f
    move-result v6

    #@40
    .line 126
    :cond_2
    :try_start_0
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v10

    #@44
    iget-object v11, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    #@46
    invoke-static {v10, v11}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 127
    const/4 v7, 0x1

    #@4a
    .line 132
    .end local v6    # "i2":I
    :cond_3
    :goto_0
    const/4 v3, 0x0

    #@4b
    .line 133
    .local v3, "elems":[Lorg/apache/http/HeaderElement;
    if-eqz v7, :cond_6

    #@4d
    .line 134
    sget-object v8, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    #@4f
    .line 137
    .local v8, "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v10, p1, Lorg/apache/http/FormattedHeader;

    #@51
    if-eqz v10, :cond_4

    #@53
    move-object v10, p1

    #@54
    .line 138
    check-cast v10, Lorg/apache/http/FormattedHeader;

    #@56
    invoke-interface {v10}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    #@59
    move-result-object v0

    #@5a
    .line 139
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@5c
    .line 140
    check-cast p1, Lorg/apache/http/FormattedHeader;

    #@5e
    .end local p1    # "header":Lorg/apache/http/Header;
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    #@61
    move-result v10

    #@62
    .line 141
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@65
    move-result v11

    #@66
    .line 139
    invoke-direct {v1, v10, v11}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@69
    .line 151
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_1
    const/4 v10, 0x1

    #@6a
    new-array v3, v10, [Lorg/apache/http/HeaderElement;

    #@6c
    .end local v3    # "elems":[Lorg/apache/http/HeaderElement;
    invoke-virtual {v8, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    #@6f
    move-result-object v10

    #@70
    const/4 v11, 0x0

    #@71
    aput-object v10, v3, v11

    #@73
    .line 155
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .end local v8    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .local v3, "elems":[Lorg/apache/http/HeaderElement;
    :goto_2
    invoke-virtual {p0, v3, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@76
    move-result-object v10

    #@77
    return-object v10

    #@78
    .line 143
    .local v3, "elems":[Lorg/apache/http/HeaderElement;
    .restart local v8    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .restart local p1    # "header":Lorg/apache/http/Header;
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    .line 144
    .local v9, "s":Ljava/lang/String;
    if-nez v9, :cond_5

    #@7e
    .line 145
    new-instance v10, Lorg/apache/http/cookie/MalformedCookieException;

    #@80
    const-string/jumbo v11, "Header value is null"

    #@83
    invoke-direct {v10, v11}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@86
    throw v10

    #@87
    .line 147
    :cond_5
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@89
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@8c
    move-result v10

    #@8d
    invoke-direct {v0, v10}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@90
    .line 148
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@93
    .line 149
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@95
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@98
    move-result v10

    #@99
    const/4 v11, 0x0

    #@9a
    invoke-direct {v1, v11, v10}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@9d
    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    goto :goto_1

    #@9e
    .line 153
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    .end local v8    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .end local v9    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    #@a1
    move-result-object v3

    #@a2
    .local v3, "elems":[Lorg/apache/http/HeaderElement;
    goto :goto_2

    #@a3
    .line 128
    .end local v3    # "elems":[Lorg/apache/http/HeaderElement;
    .restart local v6    # "i2":I
    :catch_0
    move-exception v2

    #@a4
    .local v2, "e":Lorg/apache/http/impl/cookie/DateParseException;
    goto :goto_0
.end method

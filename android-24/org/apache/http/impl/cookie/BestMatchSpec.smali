.class public Lorg/apache/http/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

.field private final oneHeader:Z

.field private strict:Lorg/apache/http/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    #@5
    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    #@5
    .line 68
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->oneHeader:Z

    #@7
    .line 65
    return-void
.end method

.method private getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;
    .locals 2

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 84
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@6
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    #@8
    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@d
    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@f
    return-object v0
.end method

.method private getNetscape()Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
    .locals 2

    #@0
    .prologue
    .line 90
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    #@6
    .line 92
    .local v0, "patterns":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .line 93
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    #@a
    .line 95
    :cond_0
    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    #@c
    invoke-direct {v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    #@f
    iput-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    #@11
    .line 97
    .end local v0    # "patterns":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    #@13
    return-object v1
.end method

.method private getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;
    .locals 3

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@6
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    #@8
    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->oneHeader:Z

    #@a
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    #@d
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@f
    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@11
    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 167
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    #@2
    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "List of cookie may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 170
    :cond_0
    const v2, 0x7fffffff

    #@e
    .line 171
    .local v2, "version":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lorg/apache/http/cookie/Cookie;

    #@1e
    .line 172
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@21
    move-result v3

    #@22
    if-ge v3, v2, :cond_1

    #@24
    .line 173
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@27
    move-result v2

    #@28
    goto :goto_0

    #@29
    .line 176
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_2
    if-lez v2, :cond_3

    #@2b
    .line 177
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    #@32
    move-result-object v3

    #@33
    return-object v3

    #@34
    .line 179
    :cond_3
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    #@3b
    move-result-object v3

    #@3c
    return-object v3
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersion()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersionHeader()Lorg/apache/http/Header;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 153
    if-nez p1, :cond_0

    #@2
    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 156
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Cookie origin may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 159
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_2

    #@1c
    .line 160
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 162
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    #@2c
    move-result v0

    #@2d
    return v0
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
    .line 103
    if-nez p1, :cond_0

    #@2
    .line 104
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "Header may not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 106
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 107
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "Cookie origin may not be null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 109
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    #@19
    move-result-object v1

    #@1a
    .line 110
    .local v1, "helems":[Lorg/apache/http/HeaderElement;
    const/4 v3, 0x0

    #@1b
    .line 111
    .local v3, "versioned":Z
    const/4 v2, 0x0

    #@1c
    .line 112
    .local v2, "netscape":Z
    const/4 v4, 0x0

    #@1d
    array-length v5, v1

    #@1e
    :goto_0
    if-ge v4, v5, :cond_4

    #@20
    aget-object v0, v1, v4

    #@22
    .line 113
    .local v0, "helem":Lorg/apache/http/HeaderElement;
    const-string/jumbo v6, "version"

    #@25
    invoke-interface {v0, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    #@28
    move-result-object v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 114
    const/4 v3, 0x1

    #@2c
    .line 116
    :cond_2
    const-string/jumbo v6, "expires"

    #@2f
    invoke-interface {v0, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    #@32
    move-result-object v6

    #@33
    if-eqz v6, :cond_3

    #@35
    .line 117
    const/4 v2, 0x1

    #@36
    .line 112
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 120
    .end local v0    # "helem":Lorg/apache/http/HeaderElement;
    :cond_4
    if-eqz v2, :cond_5

    #@3b
    .line 124
    :cond_5
    if-eqz v3, :cond_6

    #@3d
    .line 125
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@44
    move-result-object v4

    #@45
    return-object v4

    #@46
    .line 126
    :cond_6
    if-eqz v2, :cond_7

    #@48
    .line 130
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getNetscape()Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4, p1, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@4f
    move-result-object v4

    #@50
    return-object v4

    #@51
    .line 132
    :cond_7
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4, v1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@58
    move-result-object v4

    #@59
    return-object v4
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
    .line 139
    if-nez p1, :cond_0

    #@2
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 142
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Cookie origin may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 145
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_2

    #@1c
    .line 146
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@23
    .line 138
    :goto_0
    return-void

    #@24
    .line 148
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@2b
    goto :goto_0
.end method

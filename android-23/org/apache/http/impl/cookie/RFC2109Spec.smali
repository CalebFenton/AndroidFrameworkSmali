.class public Lorg/apache/http/impl/cookie/RFC2109Spec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DATE_PATTERNS:[Ljava/lang/String;

.field private static final PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 73
    new-instance v0, Lorg/apache/http/cookie/CookiePathComparator;

    #@2
    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePathComparator;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    #@7
    .line 75
    const/4 v0, 0x3

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    .line 76
    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 77
    const-string/jumbo v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 78
    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    #@19
    const/4 v2, 0x2

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 75
    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    #@1e
    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    #@5
    .line 104
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 3
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    #@3
    .line 87
    if-eqz p1, :cond_0

    #@5
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    #@d
    .line 92
    :goto_0
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->oneHeader:Z

    #@f
    .line 93
    const-string/jumbo v0, "version"

    #@12
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;

    #@14
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    #@17
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@1a
    .line 94
    const-string/jumbo v0, "path"

    #@1d
    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    #@1f
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    #@22
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@25
    .line 95
    const-string/jumbo v0, "domain"

    #@28
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;

    #@2a
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    #@2d
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@30
    .line 96
    const-string/jumbo v0, "max-age"

    #@33
    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    #@35
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    #@38
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@3b
    .line 97
    const-string/jumbo v0, "secure"

    #@3e
    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    #@40
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    #@43
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@46
    .line 98
    const-string/jumbo v0, "comment"

    #@49
    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    #@4b
    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    #@4e
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@51
    .line 99
    const-string/jumbo v0, "expires"

    #@54
    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    #@56
    .line 100
    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    #@58
    .line 99
    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    #@5b
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    #@5e
    .line 85
    return-void

    #@5f
    .line 90
    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    #@61
    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    #@63
    goto :goto_0
.end method

.method private doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 179
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v5

    #@6
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 180
    .local v3, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "cookie$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lorg/apache/http/cookie/Cookie;

    #@19
    .line 181
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@1c
    move-result v4

    #@1d
    .line 182
    .local v4, "version":I
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@1f
    const/16 v5, 0x28

    #@21
    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@24
    .line 183
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string/jumbo v5, "Cookie: "

    #@27
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2a
    .line 184
    const-string/jumbo v5, "$Version="

    #@2d
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@30
    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@37
    .line 186
    const-string/jumbo v5, "; "

    #@3a
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3d
    .line 187
    invoke-virtual {p0, v0, v1, v4}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    #@40
    .line 188
    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    #@42
    invoke-direct {v5, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@45
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 190
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "version":I
    :cond_0
    return-object v3
.end method

.method private doFormatOneHeader(Ljava/util/List;)Ljava/util/List;
    .locals 8
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
    .line 156
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const v6, 0x7fffffff

    #@3
    .line 158
    .local v6, "version":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "cookie$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lorg/apache/http/cookie/Cookie;

    #@13
    .line 159
    .local v1, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@16
    move-result v7

    #@17
    if-ge v7, v6, :cond_0

    #@19
    .line 160
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@1c
    move-result v6

    #@1d
    goto :goto_0

    #@1e
    .line 163
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@20
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@23
    move-result v7

    #@24
    mul-int/lit8 v7, v7, 0x28

    #@26
    invoke-direct {v0, v7}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@29
    .line 164
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string/jumbo v7, "Cookie"

    #@2c
    invoke-virtual {v0, v7}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2f
    .line 165
    const-string/jumbo v7, ": "

    #@32
    invoke-virtual {v0, v7}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@35
    .line 166
    const-string/jumbo v7, "$Version="

    #@38
    invoke-virtual {v0, v7}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3b
    .line 167
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v0, v7}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@42
    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v4

    #@46
    .local v4, "cooky$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_2

    #@4c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v3

    #@50
    check-cast v3, Lorg/apache/http/cookie/Cookie;

    #@52
    .line 169
    .local v3, "cooky":Lorg/apache/http/cookie/Cookie;
    const-string/jumbo v7, "; "

    #@55
    invoke-virtual {v0, v7}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@58
    .line 170
    move-object v1, v3

    #@59
    .line 171
    .restart local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v0, v1, v6}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    #@5c
    goto :goto_1

    #@5d
    .line 173
    .end local v1    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v3    # "cooky":Lorg/apache/http/cookie/Cookie;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    #@5f
    const/4 v7, 0x1

    #@60
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@63
    .line 174
    .local v5, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v7, Lorg/apache/http/message/BufferedHeader;

    #@65
    invoke-direct {v7, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@68
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    .line 175
    return-object v5
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p3, "version"    # I

    #@0
    .prologue
    .line 226
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    #@b
    .line 227
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 228
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    #@13
    if-eqz v0, :cond_0

    #@15
    move-object v0, p2

    #@16
    .line 229
    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    #@18
    const-string/jumbo v1, "path"

    #@1b
    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    .line 228
    if-eqz v0, :cond_0

    #@21
    .line 230
    const-string/jumbo v0, "; "

    #@24
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@27
    .line 231
    const-string/jumbo v0, "$Path"

    #@2a
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    #@31
    .line 234
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 235
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    #@39
    if-eqz v0, :cond_1

    #@3b
    move-object v0, p2

    #@3c
    .line 236
    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    #@3e
    const-string/jumbo v1, "domain"

    #@41
    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    #@44
    move-result v0

    #@45
    .line 235
    if-eqz v0, :cond_1

    #@47
    .line 237
    const-string/jumbo v0, "; "

    #@4a
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@4d
    .line 238
    const-string/jumbo v0, "$Domain"

    #@50
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    #@57
    .line 225
    :cond_1
    return-void
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    .line 137
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    #@2
    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "List of cookies may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 140
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "List of cookies may not be empty"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    if-le v1, v2, :cond_2

    #@21
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@26
    .line 146
    .end local p1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    sget-object v1, Lorg/apache/http/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    #@28
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2b
    move-object p1, v0

    #@2c
    .line 148
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local p1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    iget-boolean v1, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->oneHeader:Z

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 149
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->doFormatOneHeader(Ljava/util/List;)Ljava/util/List;

    #@33
    move-result-object v1

    #@34
    return-object v1

    #@35
    .line 151
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method protected formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "version"    # I

    #@0
    .prologue
    const/16 v1, 0x22

    #@2
    .line 204
    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@5
    .line 205
    const-string/jumbo v0, "="

    #@8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@b
    .line 206
    if-eqz p3, :cond_0

    #@d
    .line 207
    if-lez p4, :cond_1

    #@f
    .line 208
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@12
    .line 209
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@15
    .line 210
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@18
    .line 203
    :cond_0
    :goto_0
    return-void

    #@19
    .line 212
    :cond_1
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1c
    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 244
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 3
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
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Header may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 113
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "Cookie origin may not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 116
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    #@19
    move-result-object v0

    #@1a
    .line 117
    .local v0, "elems":[Lorg/apache/http/HeaderElement;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    if-nez p1, :cond_0

    #@2
    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Cookie may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 126
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 127
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x20

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v1

    #@15
    const/4 v2, -0x1

    #@16
    if-eq v1, v2, :cond_1

    #@18
    .line 128
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    #@1a
    const-string/jumbo v2, "Cookie name may not contain blanks"

    #@1d
    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 130
    :cond_1
    const-string/jumbo v1, "$"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 131
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    #@2c
    const-string/jumbo v2, "Cookie name may not start with $"

    #@2f
    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 133
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@36
    .line 122
    return-void
.end method

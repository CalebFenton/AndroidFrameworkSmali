.class public final Lcom/android/okhttp/internal/http/OkHeaders;
.super Ljava/lang/Object;
.source "OkHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/OkHeaders$1;
    }
.end annotation


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PREFIX:Ljava/lang/String;

.field public static final RECEIVED_MILLIS:Ljava/lang/String;

.field public static final SELECTED_PROTOCOL:Ljava/lang/String;

.field public static final SENT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    new-instance v0, Lcom/android/okhttp/internal/http/OkHeaders$1;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/http/OkHeaders$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 40
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    #@11
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "-Sent-Millis"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    #@29
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "-Received-Millis"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    #@41
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    const-string/jumbo v1, "-Selected-Protocol"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    #@59
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V
    .locals 4
    .param p0, "builder"    # Lcom/android/okhttp/Request$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p1, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/String;

    #@1a
    .line 111
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "Cookie"

    #@1d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    const-string/jumbo v3, "Cookie2"

    #@26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Ljava/util/List;

    #@32
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_0

    #@38
    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Ljava/util/List;

    #@3e
    invoke-static {v3}, Lcom/android/okhttp/internal/http/OkHeaders;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@45
    goto :goto_0

    #@46
    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v3

    #@5
    const/4 v4, 0x1

    #@6
    if-ne v3, v4, :cond_0

    #@8
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/lang/String;

    #@e
    return-object v3

    #@f
    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 125
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@18
    move-result v2

    #@19
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@1b
    .line 126
    if-lez v0, :cond_1

    #@1d
    const-string/jumbo v3, "; "

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 127
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Ljava/lang/String;

    #@29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 125
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 129
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    return-object v3
.end method

.method public static contentLength(Lcom/android/okhttp/Headers;)J
    .locals 2
    .param p0, "headers"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "Content-Length"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->stringToLong(Ljava/lang/String;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public static contentLength(Lcom/android/okhttp/Request;)J
    .locals 2
    .param p0, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static contentLength(Lcom/android/okhttp/Response;)J
    .locals 2
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static hasVaryAll(Lcom/android/okhttp/Headers;)Z
    .locals 2
    .param p0, "responseHeaders"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 157
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "*"

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static hasVaryAll(Lcom/android/okhttp/Response;)Z
    .locals 1
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 220
    const-string/jumbo v1, "Connection"

    #@4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 221
    const-string/jumbo v1, "Keep-Alive"

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 220
    :cond_0
    :goto_0
    return v0

    #@14
    .line 222
    :cond_1
    const-string/jumbo v1, "Proxy-Authenticate"

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 223
    const-string/jumbo v1, "Proxy-Authorization"

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    .line 224
    const-string/jumbo v1, "TE"

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 225
    const-string/jumbo v1, "Trailers"

    #@32
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_0

    #@38
    .line 226
    const-string/jumbo v1, "Transfer-Encoding"

    #@3b
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_0

    #@41
    .line 227
    const-string/jumbo v1, "Upgrade"

    #@44
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-nez v1, :cond_0

    #@4a
    const/4 v0, 0x1

    #@4b
    goto :goto_0
.end method

.method public static parseChallenges(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "responseHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 241
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    const/4 v6, 0x0

    #@6
    .local v6, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@9
    move-result v11

    #@a
    .local v11, "size":I
    :goto_0
    if-ge v6, v11, :cond_2

    #@c
    .line 242
    invoke-virtual {p0, v6}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 241
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@18
    goto :goto_0

    #@19
    .line 245
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 246
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x0

    #@1e
    .line 247
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@21
    move-result v1

    #@22
    if-ge v2, v1, :cond_0

    #@24
    .line 248
    move v12, v2

    #@25
    .line 249
    .local v12, "tokenStart":I
    const-string/jumbo v1, " "

    #@28
    invoke-static {v0, v2, v1}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    #@2b
    move-result v2

    #@2c
    .line 251
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@33
    move-result-object v10

    #@34
    .line 252
    .local v10, "scheme":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    #@37
    move-result v2

    #@38
    .line 258
    const-string/jumbo v3, "realm=\""

    #@3b
    const-string/jumbo v1, "realm=\""

    #@3e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@41
    move-result v5

    #@42
    const/4 v1, 0x1

    #@43
    const/4 v4, 0x0

    #@44
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_0

    #@4a
    .line 262
    const-string/jumbo v1, "realm=\""

    #@4d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v1

    #@51
    add-int/2addr v2, v1

    #@52
    .line 263
    move v8, v2

    #@53
    .line 264
    .local v8, "realmStart":I
    const-string/jumbo v1, "\""

    #@56
    invoke-static {v0, v2, v1}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    #@59
    move-result v2

    #@5a
    .line 265
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    .line 266
    .local v7, "realm":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    #@60
    .line 267
    const-string/jumbo v1, ","

    #@63
    invoke-static {v0, v2, v1}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    #@66
    move-result v2

    #@67
    .line 268
    add-int/lit8 v2, v2, 0x1

    #@69
    .line 269
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    #@6c
    move-result v2

    #@6d
    .line 270
    new-instance v1, Lcom/android/okhttp/Challenge;

    #@6f
    invoke-direct {v1, v10, v7}, Lcom/android/okhttp/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@72
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    goto :goto_1

    #@76
    .line 273
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "realmStart":I
    .end local v10    # "scheme":Ljava/lang/String;
    .end local v12    # "tokenStart":I
    :cond_2
    return-object v9
.end method

.method public static processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;
    .locals 2
    .param p0, "authenticator"    # Lcom/android/okhttp/Authenticator;
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x197

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 284
    invoke-interface {p0, p2, p1}, Lcom/android/okhttp/Authenticator;->authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    #@b
    move-result-object v0

    #@c
    .line 283
    :goto_0
    return-object v0

    #@d
    .line 285
    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/android/okhttp/Authenticator;->authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 74
    if-nez p0, :cond_0

    #@4
    return-wide v2

    #@5
    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-wide v2

    #@9
    return-wide v2

    #@a
    .line 77
    :catch_0
    move-exception v0

    #@b
    .line 78
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method

.method public static toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "headers"    # Lcom/android/okhttp/Headers;
    .param p1, "valueForNullKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 89
    new-instance v4, Ljava/util/TreeMap;

    #@3
    sget-object v7, Lcom/android/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    #@5
    invoke-direct {v4, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@8
    .line 90
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@c
    move-result v5

    #@d
    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_1

    #@f
    .line 91
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 92
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 94
    .local v6, "value":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 95
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Ljava/util/List;

    #@22
    .line 96
    .local v3, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    #@24
    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@27
    .line 99
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v7

    #@2e
    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 90
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 102
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    #@36
    .line 103
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@39
    move-result-object v7

    #@3a
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@3d
    move-result-object v7

    #@3e
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 105
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@44
    move-result-object v7

    #@45
    return-object v7
.end method

.method public static varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;
    .locals 9
    .param p0, "responseHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v1

    #@4
    .line 170
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@8
    move-result v2

    #@9
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@b
    .line 171
    const-string/jumbo v5, "Vary"

    #@e
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_1

    #@18
    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 173
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 174
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    .line 175
    new-instance v1, Ljava/util/TreeSet;

    #@27
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@29
    invoke-direct {v1, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@2c
    .line 177
    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v5, ","

    #@2f
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    const/4 v5, 0x0

    #@34
    array-length v7, v6

    #@35
    :goto_1
    if-ge v5, v7, :cond_0

    #@37
    aget-object v4, v6, v5

    #@39
    .line 178
    .local v4, "varyField":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    .line 177
    add-int/lit8 v5, v5, 0x1

    #@42
    goto :goto_1

    #@43
    .line 181
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "varyField":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static varyFields(Lcom/android/okhttp/Response;)Ljava/util/Set;
    .locals 1
    .param p0, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .locals 6
    .param p0, "requestHeaders"    # Lcom/android/okhttp/Headers;
    .param p1, "responseHeaders"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 202
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    .line 203
    .local v4, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    new-instance v5, Lcom/android/okhttp/Headers$Builder;

    #@c
    invoke-direct {v5}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@f
    invoke-virtual {v5}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@12
    move-result-object v5

    #@13
    return-object v5

    #@14
    .line 205
    :cond_0
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    #@16
    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@19
    .line 206
    .local v2, "result":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    #@1d
    move-result v3

    #@1e
    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@20
    .line 207
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 208
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 209
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v2, v0, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@31
    .line 206
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 212
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@37
    move-result-object v5

    #@38
    return-object v5
.end method

.method public static varyHeaders(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;
    .locals 3
    .param p0, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@b
    move-result-object v0

    #@c
    .line 193
    .local v0, "requestHeaders":Lcom/android/okhttp/Headers;
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@f
    move-result-object v1

    #@10
    .line 194
    .local v1, "responseHeaders":Lcom/android/okhttp/Headers;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method

.method public static varyMatches(Lcom/android/okhttp/Response;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lcom/android/okhttp/Response;
    .param p1, "cachedRequest"    # Lcom/android/okhttp/Headers;
    .param p2, "newRequest"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Response;)Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "field$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 139
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p2, v0}, Lcom/android/okhttp/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_0

    #@22
    const/4 v2, 0x0

    #@23
    return v2

    #@24
    .line 141
    .end local v0    # "field":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    #@25
    return v2
.end method

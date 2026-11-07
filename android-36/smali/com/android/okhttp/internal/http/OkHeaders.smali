.class public final Lcom/android/okhttp/internal/http/OkHeaders;
.super Ljava/lang/Object;
.source "OkHeaders.java"


# static fields
.field private static final blacklist FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist PREFIX:Ljava/lang/String;

.field public static final blacklist RECEIVED_MILLIS:Ljava/lang/String;

.field public static final blacklist RESPONSE_SOURCE:Ljava/lang/String;

.field public static final blacklist SELECTED_PROTOCOL:Ljava/lang/String;

.field public static final blacklist SENT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/okhttp/internal/http/OkHeaders$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/OkHeaders$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 42
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->PREFIX:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Sent-Millis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Received-Millis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Selected-Protocol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-Response-Source"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/OkHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCookies(Lcom/android/okhttp/Request$Builder;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    const-string v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 117
    :cond_2a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_8

    :cond_44
    return-void
.end method

.method private static blacklist buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 129
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_18
    if-ge v2, v1, :cond_2d

    if-lez v2, :cond_21

    .line 131
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 134
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist contentLength(Lcom/android/okhttp/Headers;)J
    .registers 3

    .line 75
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist contentLength(Lcom/android/okhttp/Request;)J
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist contentLength(Lcom/android/okhttp/Response;)J
    .registers 3

    .line 71
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist hasVaryAll(Lcom/android/okhttp/Headers;)Z
    .registers 2

    .line 162
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasVaryAll(Lcom/android/okhttp/Response;)Z
    .registers 1

    .line 154
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Headers;)Z

    move-result p0

    return p0
.end method

.method static blacklist isEndToEnd(Ljava/lang/String;)Z
    .registers 2

    .line 225
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist parseChallenges(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_68

    .line 247
    invoke-virtual {p0, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_65

    .line 250
    :cond_18
    invoke-virtual {p0, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    move v4, v2

    .line 252
    :goto_1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_65

    .line 254
    const-string v6, " "

    invoke-static {v5, v4, v6}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 256
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v6, 0x1

    .line 263
    const-string v8, "realm=\""

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_65

    :cond_41
    add-int/lit8 v7, v7, 0x7

    .line 269
    const-string v6, "\""

    invoke-static {v5, v7, v6}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 270
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 272
    const-string v8, ","

    invoke-static {v5, v6, v8}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 274
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v6

    .line 275
    new-instance v8, Lcom/android/okhttp/Challenge;

    invoke-direct {v8, v4, v7}, Lcom/android/okhttp/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_1d

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_68
    return-object v0
.end method

.method public static blacklist processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_d

    .line 289
    invoke-interface {p0, p2, p1}, Lcom/android/okhttp/Authenticator;->authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0

    .line 290
    :cond_d
    invoke-interface {p0, p2, p1}, Lcom/android/okhttp/Authenticator;->authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist stringToLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 81
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    return-wide v0
.end method

.method public static blacklist toMultimap(Lcom/android/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/android/okhttp/internal/http/OkHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_33

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_26

    .line 102
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_26
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_33
    if-eqz p1, :cond_41

    .line 108
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Headers;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 175
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_41

    .line 176
    const-string v4, "Vary"

    invoke-virtual {p0, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_3e

    .line 178
    :cond_17
    invoke-virtual {p0, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 180
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 182
    :cond_28
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_30
    if-ge v6, v5, :cond_3e

    aget-object v7, v4, v6

    .line 183
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_41
    return-object v0
.end method

.method private static blacklist varyFields(Lcom/android/okhttp/Response;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Response;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;
    .registers 7

    .line 207
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Headers;)Ljava/util/Set;

    move-result-object p1

    .line 208
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {p0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0

    .line 210
    :cond_14
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 211
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_34

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 217
    :cond_34
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist varyHeaders(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->networkResponse()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p0

    .line 199
    invoke-static {v0, p0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Headers;Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist varyMatches(Lcom/android/okhttp/Response;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z
    .registers 5

    .line 143
    invoke-static {p0}, Lcom/android/okhttp/internal/http/OkHeaders;->varyFields(Lcom/android/okhttp/Response;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/android/okhttp/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

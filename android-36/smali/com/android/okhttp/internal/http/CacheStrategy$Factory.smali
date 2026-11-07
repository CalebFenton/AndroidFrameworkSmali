.class public Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private greylist-max-o ageSeconds:I

.field final greylist-max-o cacheResponse:Lcom/android/okhttp/Response;

.field private greylist-max-o etag:Ljava/lang/String;

.field private greylist-max-o expires:Ljava/util/Date;

.field private greylist-max-o lastModified:Ljava/util/Date;

.field private greylist-max-o lastModifiedString:Ljava/lang/String;

.field final greylist-max-o nowMillis:J

.field private greylist-max-o receivedResponseMillis:J

.field final greylist-max-o request:Lcom/android/okhttp/Request;

.field private greylist-max-o sentRequestMillis:J

.field private greylist-max-o servedDate:Ljava/util/Date;

.field private greylist-max-o servedDateString:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .registers 8

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 131
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 132
    iput-object p3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    .line 133
    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz p4, :cond_8c

    .line 136
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_17
    if-ge p3, p2, :cond_8c

    .line 138
    invoke-virtual {p1, p3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object p4

    .line 139
    invoke-virtual {p1, p3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 141
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 142
    iput-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_89

    .line 143
    :cond_32
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 144
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_89

    .line 145
    :cond_41
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 146
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 147
    iput-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_89

    .line 148
    :cond_52
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 149
    iput-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_89

    .line 150
    :cond_5d
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 151
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_89

    .line 152
    :cond_6c
    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 153
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_89

    .line 154
    :cond_7b
    sget-object v2, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_89

    .line 155
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    :cond_89
    :goto_89
    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    :cond_8c
    return-void
.end method

.method private greylist-max-o cacheResponseAge()J
    .registers 10

    .line 280
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    .line 281
    iget-wide v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 283
    :cond_11
    iget v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_21

    .line 284
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 286
    :cond_21
    iget-wide v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v5, v3, v5

    .line 287
    iget-wide v7, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private greylist-max-o computeFreshnessLifetime()J
    .registers 8

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 253
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 254
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_37

    .line 255
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_28

    .line 256
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_2a

    .line 257
    :cond_28
    iget-wide v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 258
    :goto_2a
    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long p0, v5, v1

    if-lez p0, :cond_36

    return-wide v5

    :cond_36
    return-wide v1

    .line 260
    :cond_37
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    .line 261
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_65

    .line 266
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_54

    .line 267
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_56

    .line 268
    :cond_54
    iget-wide v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    .line 269
    :goto_56
    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-lez p0, :cond_65

    const-wide/16 v0, 0xa

    .line 270
    div-long/2addr v3, v0

    return-wide v3

    :cond_65
    return-wide v1
.end method

.method private greylist-max-o getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;
    .registers 14

    .line 179
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 180
    new-instance v0, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 184
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    if-nez v0, :cond_25

    .line 185
    new-instance v0, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 191
    :cond_25
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 192
    new-instance v0, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0

    .line 195
    :cond_37
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v2

    if-nez v2, :cond_113

    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-static {v2}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto/16 :goto_113

    .line 200
    :cond_4d
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v2

    .line 201
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v4

    .line 203
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6b

    .line 204
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 208
    :cond_6b
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v6

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_7f

    .line 209
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    goto :goto_80

    :cond_7f
    move-wide v10, v8

    .line 213
    :goto_80
    iget-object v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v6}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v6

    .line 214
    invoke-virtual {v6}, Lcom/android/okhttp/CacheControl;->mustRevalidate()Z

    move-result v12

    if-nez v12, :cond_9d

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v12

    if-eq v12, v7, :cond_9d

    .line 215
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 218
    :cond_9d
    invoke-virtual {v6}, Lcom/android/okhttp/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_d6

    add-long/2addr v10, v2

    add-long/2addr v8, v4

    cmp-long v0, v10, v8

    if-gez v0, :cond_d6

    .line 219
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    cmp-long v4, v10, v4

    .line 220
    const-string v5, "Warning"

    if-ltz v4, :cond_ba

    .line 221
    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v5, v4}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    :cond_ba
    const-wide/32 v6, 0x5265c00

    cmp-long v2, v2, v6

    if-lez v2, :cond_cc

    .line 224
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result p0

    if-eqz p0, :cond_cc

    .line 225
    const-string p0, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v5, p0}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    .line 227
    :cond_cc
    new-instance p0, Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object p0

    .line 230
    :cond_d6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v2, :cond_e6

    .line 233
    const-string v3, "If-None-Match"

    invoke-virtual {v0, v3, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_fb

    .line 234
    :cond_e6
    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    const-string v3, "If-Modified-Since"

    if-eqz v2, :cond_f2

    .line 235
    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    goto :goto_fb

    .line 236
    :cond_f2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_fb

    .line 237
    iget-object v2, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    .line 240
    :cond_fb
    :goto_fb
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 242
    new-instance v2, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v2

    .line 243
    :cond_10d
    new-instance p0, Lcom/android/okhttp/internal/http/CacheStrategy;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object p0

    .line 197
    :cond_113
    :goto_113
    new-instance v0, Lcom/android/okhttp/internal/http/CacheStrategy;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object v0
.end method

.method private static greylist-max-o hasConditions(Lcom/android/okhttp/Request;)Z
    .registers 2

    .line 306
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o isFreshnessLifetimeHeuristic()Z
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    invoke-virtual {v0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist-max-o get()Lcom/android/okhttp/internal/http/CacheStrategy;
    .registers 3

    .line 166
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 168
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/CacheControl;->onlyIfCached()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 170
    new-instance p0, Lcom/android/okhttp/internal/http/CacheStrategy;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy$1;)V

    return-object p0

    :cond_1b
    return-object v0
.end method

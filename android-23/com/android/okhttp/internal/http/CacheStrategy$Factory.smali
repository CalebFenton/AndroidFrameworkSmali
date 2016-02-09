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
.field private ageSeconds:I

.field final cacheResponse:Lcom/android/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/android/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "cacheResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 124
    iput v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    #@6
    .line 127
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    #@8
    .line 128
    iput-object p3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@a
    .line 129
    iput-object p4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@c
    .line 131
    if-eqz p4, :cond_7

    #@e
    .line 132
    invoke-virtual {p4}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@11
    move-result-object v1

    #@12
    .line 133
    .local v1, "headers":Lcom/android/okhttp/Headers;
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    #@16
    move-result v3

    #@17
    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_7

    #@19
    .line 134
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 135
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 136
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Date"

    #@24
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 137
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@2d
    move-result-object v5

    #@2e
    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@30
    .line 138
    iput-object v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    #@32
    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 139
    :cond_1
    const-string/jumbo v5, "Expires"

    #@38
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_2

    #@3e
    .line 140
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@41
    move-result-object v5

    #@42
    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    #@44
    goto :goto_1

    #@45
    .line 141
    :cond_2
    const-string/jumbo v5, "Last-Modified"

    #@48
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_3

    #@4e
    .line 142
    invoke-static {v4}, Lcom/android/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@51
    move-result-object v5

    #@52
    iput-object v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    #@54
    .line 143
    iput-object v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    #@56
    goto :goto_1

    #@57
    .line 144
    :cond_3
    const-string/jumbo v5, "ETag"

    #@5a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d
    move-result v5

    #@5e
    if-eqz v5, :cond_4

    #@60
    .line 145
    iput-object v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    #@62
    goto :goto_1

    #@63
    .line 146
    :cond_4
    const-string/jumbo v5, "Age"

    #@66
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@69
    move-result v5

    #@6a
    if-eqz v5, :cond_5

    #@6c
    .line 147
    invoke-static {v4, v8}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    #@6f
    move-result v5

    #@70
    iput v5, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    #@72
    goto :goto_1

    #@73
    .line 148
    :cond_5
    sget-object v5, Lcom/android/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    #@75
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@78
    move-result v5

    #@79
    if-eqz v5, :cond_6

    #@7b
    .line 149
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@7e
    move-result-wide v6

    #@7f
    iput-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    #@81
    goto :goto_1

    #@82
    .line 150
    :cond_6
    sget-object v5, Lcom/android/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    #@84
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_0

    #@8a
    .line 151
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@8d
    move-result-wide v6

    #@8e
    iput-wide v6, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    #@90
    goto :goto_1

    #@91
    .line 126
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lcom/android/okhttp/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 14

    #@0
    .prologue
    .line 276
    iget-object v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 277
    const-wide/16 v8, 0x0

    #@6
    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    #@8
    iget-object v12, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@a
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v12

    #@e
    sub-long/2addr v10, v12

    #@f
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    #@12
    move-result-wide v0

    #@13
    .line 279
    .local v0, "apparentReceivedAge":J
    :goto_0
    iget v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    #@15
    const/4 v9, -0x1

    #@16
    if-eq v8, v9, :cond_1

    #@18
    .line 280
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@1a
    iget v9, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    #@1c
    int-to-long v10, v9

    #@1d
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@20
    move-result-wide v8

    #@21
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    #@24
    move-result-wide v2

    #@25
    .line 282
    .local v2, "receivedAge":J
    :goto_1
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    #@27
    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    #@29
    sub-long v6, v8, v10

    #@2b
    .line 283
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    #@2d
    iget-wide v10, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    #@2f
    sub-long v4, v8, v10

    #@31
    .line 284
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    #@33
    add-long/2addr v8, v4

    #@34
    return-wide v8

    #@35
    .line 278
    .end local v0    # "apparentReceivedAge":J
    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_0
    const-wide/16 v0, 0x0

    #@37
    .restart local v0    # "apparentReceivedAge":J
    goto :goto_0

    #@38
    .line 281
    :cond_1
    move-wide v2, v0

    #@39
    .restart local v2    # "receivedAge":J
    goto :goto_1
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 247
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@4
    invoke-virtual {v3}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@7
    move-result-object v2

    #@8
    .line 248
    .local v2, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    #@b
    move-result v3

    #@c
    const/4 v8, -0x1

    #@d
    if-eq v3, v8, :cond_0

    #@f
    .line 249
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@11
    invoke-virtual {v2}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    #@14
    move-result v6

    #@15
    int-to-long v6, v6

    #@16
    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@19
    move-result-wide v6

    #@1a
    return-wide v6

    #@1b
    .line 250
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 251
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 252
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@25
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@28
    move-result-wide v4

    #@29
    .line 254
    .local v4, "servedMillis":J
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    #@2b
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@2e
    move-result-wide v8

    #@2f
    sub-long v0, v8, v4

    #@31
    .line 255
    .local v0, "delta":J
    cmp-long v3, v0, v6

    #@33
    if-lez v3, :cond_2

    #@35
    .end local v0    # "delta":J
    :goto_1
    return-wide v0

    #@36
    .line 253
    .end local v4    # "servedMillis":J
    :cond_1
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    #@38
    .restart local v4    # "servedMillis":J
    goto :goto_0

    #@39
    .restart local v0    # "delta":J
    :cond_2
    move-wide v0, v6

    #@3a
    .line 255
    goto :goto_1

    #@3b
    .line 256
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_3
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    #@3d
    if-eqz v3, :cond_6

    #@3f
    .line 257
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@41
    invoke-virtual {v3}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    if-nez v3, :cond_6

    #@4f
    .line 262
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@51
    if-eqz v3, :cond_5

    #@53
    .line 263
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@55
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@58
    move-result-wide v4

    #@59
    .line 265
    .restart local v4    # "servedMillis":J
    :goto_2
    iget-object v3, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    #@5b
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@5e
    move-result-wide v8

    #@5f
    sub-long v0, v4, v8

    #@61
    .line 266
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    #@63
    if-lez v3, :cond_4

    #@65
    const-wide/16 v6, 0xa

    #@67
    div-long v6, v0, v6

    #@69
    :cond_4
    return-wide v6

    #@6a
    .line 264
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    #@6c
    .restart local v4    # "servedMillis":J
    goto :goto_2

    #@6d
    .line 268
    .end local v4    # "servedMillis":J
    :cond_6
    return-wide v6
.end method

.method private getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;
    .locals 22

    #@0
    .prologue
    .line 175
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@4
    move-object/from16 v17, v0

    #@6
    if-nez v17, :cond_0

    #@8
    .line 176
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@e
    move-object/from16 v18, v0

    #@10
    const/16 v19, 0x0

    #@12
    const/16 v20, 0x0

    #@14
    invoke-direct/range {v17 .. v20}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@17
    return-object v17

    #@18
    .line 180
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@1c
    move-object/from16 v17, v0

    #@1e
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Request;->isHttps()Z

    #@21
    move-result v17

    #@22
    if-eqz v17, :cond_1

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@28
    move-object/from16 v17, v0

    #@2a
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    #@2d
    move-result-object v17

    #@2e
    if-nez v17, :cond_1

    #@30
    .line 181
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@36
    move-object/from16 v18, v0

    #@38
    const/16 v19, 0x0

    #@3a
    const/16 v20, 0x0

    #@3c
    invoke-direct/range {v17 .. v20}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@3f
    return-object v17

    #@40
    .line 187
    :cond_1
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@44
    move-object/from16 v17, v0

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@4a
    move-object/from16 v18, v0

    #@4c
    invoke-static/range {v17 .. v18}, Lcom/android/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z

    #@4f
    move-result v17

    #@50
    if-nez v17, :cond_2

    #@52
    .line 188
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@58
    move-object/from16 v18, v0

    #@5a
    const/16 v19, 0x0

    #@5c
    const/16 v20, 0x0

    #@5e
    invoke-direct/range {v17 .. v20}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@61
    return-object v17

    #@62
    .line 191
    :cond_2
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@66
    move-object/from16 v17, v0

    #@68
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@6b
    move-result-object v9

    #@6c
    .line 192
    .local v9, "requestCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->noCache()Z

    #@6f
    move-result v17

    #@70
    if-nez v17, :cond_3

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@76
    move-object/from16 v17, v0

    #@78
    invoke-static/range {v17 .. v17}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    #@7b
    move-result v17

    #@7c
    if-eqz v17, :cond_4

    #@7e
    .line 193
    :cond_3
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@84
    move-object/from16 v18, v0

    #@86
    const/16 v19, 0x0

    #@88
    const/16 v20, 0x0

    #@8a
    invoke-direct/range {v17 .. v20}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@8d
    return-object v17

    #@8e
    .line 196
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    #@91
    move-result-wide v4

    #@92
    .line 197
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    #@95
    move-result-wide v10

    #@96
    .line 199
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    #@99
    move-result v17

    #@9a
    const/16 v18, -0x1

    #@9c
    move/from16 v0, v17

    #@9e
    move/from16 v1, v18

    #@a0
    if-eq v0, v1, :cond_5

    #@a2
    .line 200
    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@a4
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    #@a7
    move-result v18

    #@a8
    move/from16 v0, v18

    #@aa
    int-to-long v0, v0

    #@ab
    move-wide/from16 v18, v0

    #@ad
    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@b0
    move-result-wide v18

    #@b1
    move-wide/from16 v0, v18

    #@b3
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@b6
    move-result-wide v10

    #@b7
    .line 203
    :cond_5
    const-wide/16 v14, 0x0

    #@b9
    .line 204
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    #@bc
    move-result v17

    #@bd
    const/16 v18, -0x1

    #@bf
    move/from16 v0, v17

    #@c1
    move/from16 v1, v18

    #@c3
    if-eq v0, v1, :cond_6

    #@c5
    .line 205
    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@c7
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->minFreshSeconds()I

    #@ca
    move-result v18

    #@cb
    move/from16 v0, v18

    #@cd
    int-to-long v0, v0

    #@ce
    move-wide/from16 v18, v0

    #@d0
    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@d3
    move-result-wide v14

    #@d4
    .line 208
    :cond_6
    const-wide/16 v12, 0x0

    #@d6
    .line 209
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@da
    move-object/from16 v17, v0

    #@dc
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@df
    move-result-object v16

    #@e0
    .line 210
    .local v16, "responseCaching":Lcom/android/okhttp/CacheControl;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/CacheControl;->mustRevalidate()Z

    #@e3
    move-result v17

    #@e4
    if-nez v17, :cond_7

    #@e6
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    #@e9
    move-result v17

    #@ea
    const/16 v18, -0x1

    #@ec
    move/from16 v0, v17

    #@ee
    move/from16 v1, v18

    #@f0
    if-eq v0, v1, :cond_7

    #@f2
    .line 211
    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@f4
    invoke-virtual {v9}, Lcom/android/okhttp/CacheControl;->maxStaleSeconds()I

    #@f7
    move-result v18

    #@f8
    move/from16 v0, v18

    #@fa
    int-to-long v0, v0

    #@fb
    move-wide/from16 v18, v0

    #@fd
    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@100
    move-result-wide v12

    #@101
    .line 214
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/CacheControl;->noCache()Z

    #@104
    move-result v17

    #@105
    if-nez v17, :cond_a

    #@107
    add-long v18, v4, v14

    #@109
    add-long v20, v10, v12

    #@10b
    cmp-long v17, v18, v20

    #@10d
    if-gez v17, :cond_a

    #@10f
    .line 215
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@113
    move-object/from16 v17, v0

    #@115
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Response;->newBuilder()Lcom/android/okhttp/Response$Builder;

    #@118
    move-result-object v6

    #@119
    .line 216
    .local v6, "builder":Lcom/android/okhttp/Response$Builder;
    add-long v18, v4, v14

    #@11b
    cmp-long v17, v18, v10

    #@11d
    if-ltz v17, :cond_8

    #@11f
    .line 217
    const-string/jumbo v17, "Warning"

    #@122
    const-string/jumbo v18, "110 HttpURLConnection \"Response is stale\""

    #@125
    move-object/from16 v0, v17

    #@127
    move-object/from16 v1, v18

    #@129
    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@12c
    .line 219
    :cond_8
    const-wide/32 v18, 0x5265c00

    #@12f
    .line 220
    cmp-long v17, v4, v18

    #@131
    if-lez v17, :cond_9

    #@133
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    #@136
    move-result v17

    #@137
    if-eqz v17, :cond_9

    #@139
    .line 221
    const-string/jumbo v17, "Warning"

    #@13c
    const-string/jumbo v18, "113 HttpURLConnection \"Heuristic expiration\""

    #@13f
    move-object/from16 v0, v17

    #@141
    move-object/from16 v1, v18

    #@143
    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@146
    .line 223
    :cond_9
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@148
    invoke-virtual {v6}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@14b
    move-result-object v18

    #@14c
    const/16 v19, 0x0

    #@14e
    const/16 v20, 0x0

    #@150
    move-object/from16 v0, v17

    #@152
    move-object/from16 v1, v19

    #@154
    move-object/from16 v2, v18

    #@156
    move-object/from16 v3, v20

    #@158
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@15b
    return-object v17

    #@15c
    .line 226
    .end local v6    # "builder":Lcom/android/okhttp/Response$Builder;
    :cond_a
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@160
    move-object/from16 v17, v0

    #@162
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    #@165
    move-result-object v8

    #@166
    .line 228
    .local v8, "conditionalRequestBuilder":Lcom/android/okhttp/Request$Builder;
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    #@16a
    move-object/from16 v17, v0

    #@16c
    if-eqz v17, :cond_c

    #@16e
    .line 229
    const-string/jumbo v17, "If-None-Match"

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    #@175
    move-object/from16 v18, v0

    #@177
    move-object/from16 v0, v17

    #@179
    move-object/from16 v1, v18

    #@17b
    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@17e
    .line 236
    :cond_b
    :goto_0
    invoke-virtual {v8}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@181
    move-result-object v7

    #@182
    .line 237
    .local v7, "conditionalRequest":Lcom/android/okhttp/Request;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/android/okhttp/Request;)Z

    #@185
    move-result v17

    #@186
    if-eqz v17, :cond_e

    #@188
    .line 238
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@18e
    move-object/from16 v18, v0

    #@190
    const/16 v19, 0x0

    #@192
    move-object/from16 v0, v17

    #@194
    move-object/from16 v1, v18

    #@196
    move-object/from16 v2, v19

    #@198
    invoke-direct {v0, v7, v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@19b
    .line 237
    :goto_1
    return-object v17

    #@19c
    .line 230
    .end local v7    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    #@1a0
    move-object/from16 v17, v0

    #@1a2
    if-eqz v17, :cond_d

    #@1a4
    .line 231
    const-string/jumbo v17, "If-Modified-Since"

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    #@1ab
    move-object/from16 v18, v0

    #@1ad
    move-object/from16 v0, v17

    #@1af
    move-object/from16 v1, v18

    #@1b1
    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@1b4
    goto :goto_0

    #@1b5
    .line 232
    :cond_d
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    #@1b9
    move-object/from16 v17, v0

    #@1bb
    if-eqz v17, :cond_b

    #@1bd
    .line 233
    const-string/jumbo v17, "If-Modified-Since"

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    #@1c4
    move-object/from16 v18, v0

    #@1c6
    move-object/from16 v0, v17

    #@1c8
    move-object/from16 v1, v18

    #@1ca
    invoke-virtual {v8, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@1cd
    goto :goto_0

    #@1ce
    .line 239
    .restart local v7    # "conditionalRequest":Lcom/android/okhttp/Request;
    :cond_e
    new-instance v17, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@1d0
    const/16 v18, 0x0

    #@1d2
    const/16 v19, 0x0

    #@1d4
    move-object/from16 v0, v17

    #@1d6
    move-object/from16 v1, v18

    #@1d8
    move-object/from16 v2, v19

    #@1da
    invoke-direct {v0, v7, v1, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@1dd
    goto :goto_1
.end method

.method private static hasConditions(Lcom/android/okhttp/Request;)Z
    .locals 2
    .param p0, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 302
    const-string/jumbo v1, "If-Modified-Since"

    #@4
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    if-nez v1, :cond_0

    #@a
    const-string/jumbo v1, "If-None-Match"

    #@d
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 293
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/android/okhttp/Response;

    #@3
    invoke-virtual {v1}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_0

    #@e
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    #@10
    if-nez v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0
.end method


# virtual methods
.method public get()Lcom/android/okhttp/internal/http/CacheStrategy;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 162
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/android/okhttp/internal/http/CacheStrategy;

    #@4
    move-result-object v0

    #@5
    .line 164
    .local v0, "candidate":Lcom/android/okhttp/internal/http/CacheStrategy;
    iget-object v1, v0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/android/okhttp/Request;

    #@b
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->onlyIfCached()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 166
    new-instance v1, Lcom/android/okhttp/internal/http/CacheStrategy;

    #@17
    invoke-direct {v1, v2, v2, v2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@1a
    return-object v1

    #@1b
    .line 169
    :cond_0
    return-object v0
.end method

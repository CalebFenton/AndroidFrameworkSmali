.class public final Lcom/android/okhttp/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o FORCE_CACHE:Lcom/android/okhttp/CacheControl;

.field public static final greylist-max-o FORCE_NETWORK:Lcom/android/okhttp/CacheControl;


# instance fields
.field greylist-max-o headerValue:Ljava/lang/String;

.field private final greylist-max-o isPrivate:Z

.field private final greylist-max-o isPublic:Z

.field private final greylist-max-o maxAgeSeconds:I

.field private final greylist-max-o maxStaleSeconds:I

.field private final greylist-max-o minFreshSeconds:I

.field private final greylist-max-o mustRevalidate:Z

.field private final greylist-max-o noCache:Z

.field private final greylist-max-o noStore:Z

.field private final greylist-max-o noTransform:Z

.field private final greylist-max-o onlyIfCached:Z

.field private final greylist-max-o sMaxAgeSeconds:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->noCache()Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_NETWORK:Lcom/android/okhttp/CacheControl;

    .line 30
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_CACHE:Lcom/android/okhttp/CacheControl;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/CacheControl$Builder;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    .line 68
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    .line 69
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    .line 74
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    .line 75
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    .line 76
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    .line 77
    iget-boolean p1, p1, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    iput-boolean p1, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .registers 13

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    .line 53
    iput-boolean p2, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    .line 54
    iput p3, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    .line 55
    iput p4, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 56
    iput-boolean p5, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    .line 57
    iput-boolean p6, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    .line 58
    iput-boolean p7, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    .line 59
    iput p8, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    .line 60
    iput p9, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    .line 61
    iput-boolean p10, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    .line 62
    iput-boolean p11, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    .line 63
    iput-object p12, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o headerValue()Ljava/lang/String;
    .registers 5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_e
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_17
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_2b
    iget v1, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3c

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_3c
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_45

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_45
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    if-eqz v1, :cond_4e

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_4e
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_57

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_57
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_68

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_68
    iget v1, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_79

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_79
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_82

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_82
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    if-eqz p0, :cond_8b

    const-string p0, "no-transform, "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_94

    const-string p0, ""

    return-object p0

    .line 269
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;
    .registers 23

    move-object/from16 v0, p0

    .line 169
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_18
    if-ge v6, v1, :cond_139

    .line 170
    invoke-virtual {v0, v6}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    const/16 v21, 0x1

    .line 171
    invoke-virtual {v0, v6}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string v5, "Cache-Control"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-eqz v8, :cond_30

    :goto_2e
    const/4 v7, 0x0

    goto :goto_3b

    :cond_30
    move-object v8, v4

    goto :goto_3b

    .line 180
    :cond_32
    const-string v5, "Pragma"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_132

    goto :goto_2e

    :goto_3b
    const/4 v2, 0x0

    .line 188
    :goto_3c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_132

    .line 190
    const-string v5, "=,;"

    invoke-static {v4, v2, v5}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 191
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_99

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2c

    if-eq v3, v0, :cond_99

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_67

    goto :goto_99

    :cond_67
    add-int/lit8 v5, v5, 0x1

    .line 199
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_8a

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_8a

    add-int/lit8 v0, v0, 0x1

    .line 205
    const-string v3, "\""

    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 206
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 212
    :cond_8a
    const-string v3, ",;"

    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 213
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_99
    :goto_99
    add-int/lit8 v5, v5, 0x1

    move v3, v5

    const/4 v0, 0x0

    .line 217
    :goto_9d
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    move/from16 v9, v21

    :goto_a7
    const/4 v5, -0x1

    goto/16 :goto_12d

    .line 219
    :cond_aa
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    move/from16 v10, v21

    goto :goto_a7

    .line 221
    :cond_b5
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const/4 v5, -0x1

    .line 222
    invoke-static {v0, v5}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    goto/16 :goto_12d

    .line 223
    :cond_c5
    const-string v5, "s-maxage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    const/4 v5, -0x1

    .line 224
    invoke-static {v0, v5}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v12, v0

    goto :goto_12d

    .line 225
    :cond_d4
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_df

    move/from16 v13, v21

    goto :goto_a7

    .line 227
    :cond_df
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    move/from16 v14, v21

    goto :goto_a7

    .line 229
    :cond_ea
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f5

    move/from16 v15, v21

    goto :goto_a7

    .line 231
    :cond_f5
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_107

    const v2, 0x7fffffff

    .line 232
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move/from16 v16, v0

    goto :goto_a7

    .line 233
    :cond_107
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_117

    const/4 v5, -0x1

    .line 234
    invoke-static {v0, v5}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move/from16 v17, v0

    goto :goto_12d

    :cond_117
    const/4 v5, -0x1

    .line 235
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    move/from16 v18, v21

    goto :goto_12d

    .line 237
    :cond_123
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    move/from16 v19, v21

    :cond_12d
    :goto_12d
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3c

    :cond_132
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_18

    :cond_139
    if-nez v7, :cond_13e

    const/16 v20, 0x0

    goto :goto_140

    :cond_13e
    move-object/from16 v20, v8

    .line 246
    :goto_140
    new-instance v8, Lcom/android/okhttp/CacheControl;

    invoke-direct/range {v8 .. v20}, Lcom/android/okhttp/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public greylist-max-o isPrivate()Z
    .registers 1

    .line 115
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    return p0
.end method

.method public greylist-max-o isPublic()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    return p0
.end method

.method public greylist-max-o maxAgeSeconds()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    return p0
.end method

.method public greylist-max-o maxStaleSeconds()I
    .registers 1

    .line 127
    iget p0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    return p0
.end method

.method public greylist-max-o minFreshSeconds()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    return p0
.end method

.method public greylist-max-o mustRevalidate()Z
    .registers 1

    .line 123
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    return p0
.end method

.method public greylist-max-o noCache()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    return p0
.end method

.method public greylist-max-o noStore()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    return p0
.end method

.method public greylist-max-o noTransform()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    return p0
.end method

.method public greylist-max-o onlyIfCached()Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    return p0
.end method

.method public greylist-max-o sMaxAgeSeconds()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 252
    :cond_5
    invoke-direct {p0}, Lcom/android/okhttp/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    return-object v0
.end method

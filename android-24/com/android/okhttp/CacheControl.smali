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
.field public static final FORCE_CACHE:Lcom/android/okhttp/CacheControl;

.field public static final FORCE_NETWORK:Lcom/android/okhttp/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 20
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->noCache()Lcom/android/okhttp/CacheControl$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_NETWORK:Lcom/android/okhttp/CacheControl;

    #@f
    .line 28
    new-instance v0, Lcom/android/okhttp/CacheControl$Builder;

    #@11
    invoke-direct {v0}, Lcom/android/okhttp/CacheControl$Builder;-><init>()V

    #@14
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;

    #@17
    move-result-object v0

    #@18
    .line 30
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@1a
    const v2, 0x7fffffff

    #@1d
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Lcom/android/okhttp/CacheControl$Builder;->build()Lcom/android/okhttp/CacheControl;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Lcom/android/okhttp/CacheControl;->FORCE_CACHE:Lcom/android/okhttp/CacheControl;

    #@27
    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/CacheControl$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/okhttp/CacheControl$Builder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 65
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    #@6
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    #@8
    .line 66
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    #@a
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    #@c
    .line 67
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    #@e
    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    #@10
    .line 68
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    #@13
    .line 69
    iput-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    #@15
    .line 70
    iput-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    #@17
    .line 71
    iput-boolean v1, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    #@19
    .line 72
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    #@1b
    iput v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    #@1d
    .line 73
    iget v0, p1, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    #@1f
    iput v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    #@21
    .line 74
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    #@23
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    #@25
    .line 75
    iget-boolean v0, p1, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    #@27
    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    #@29
    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/CacheControl$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;)V

    #@3
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "headerValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-boolean p1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    #@5
    .line 51
    iput-boolean p2, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    #@7
    .line 52
    iput p3, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    #@9
    .line 53
    iput p4, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    #@b
    .line 54
    iput-boolean p5, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    #@d
    .line 55
    iput-boolean p6, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    #@f
    .line 56
    iput-boolean p7, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    #@11
    .line 57
    iput p8, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    #@13
    .line 58
    iput p9, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    #@15
    .line 59
    iput-boolean p10, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    #@17
    .line 60
    iput-boolean p11, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    #@19
    .line 61
    iput-object p12, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    #@1b
    .line 49
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 255
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    const-string/jumbo v1, "no-cache, "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 256
    :cond_0
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    #@12
    if-eqz v1, :cond_1

    #@14
    const-string/jumbo v1, "no-store, "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 257
    :cond_1
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    #@1c
    if-eq v1, v3, :cond_2

    #@1e
    const-string/jumbo v1, "max-age="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, ", "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 258
    :cond_2
    iget v1, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    #@33
    if-eq v1, v3, :cond_3

    #@35
    const-string/jumbo v1, "s-maxage="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, ", "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 259
    :cond_3
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    #@4a
    if-eqz v1, :cond_4

    #@4c
    const-string/jumbo v1, "private, "

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 260
    :cond_4
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    #@54
    if-eqz v1, :cond_5

    #@56
    const-string/jumbo v1, "public, "

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 261
    :cond_5
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    #@5e
    if-eqz v1, :cond_6

    #@60
    const-string/jumbo v1, "must-revalidate, "

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 262
    :cond_6
    iget v1, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    #@68
    if-eq v1, v3, :cond_7

    #@6a
    const-string/jumbo v1, "max-stale="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget v2, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    const-string/jumbo v2, ", "

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 263
    :cond_7
    iget v1, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    #@7f
    if-eq v1, v3, :cond_8

    #@81
    const-string/jumbo v1, "min-fresh="

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    iget v2, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    const-string/jumbo v2, ", "

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 264
    :cond_8
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    #@96
    if-eqz v1, :cond_9

    #@98
    const-string/jumbo v1, "only-if-cached, "

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    .line 265
    :cond_9
    iget-boolean v1, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    #@a0
    if-eqz v1, :cond_a

    #@a2
    const-string/jumbo v1, "no-transform, "

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 266
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@ab
    move-result v1

    #@ac
    if-nez v1, :cond_b

    #@ae
    const-string/jumbo v1, ""

    #@b1
    return-object v1

    #@b2
    .line 267
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@b5
    move-result v1

    #@b6
    add-int/lit8 v1, v1, -0x2

    #@b8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@bb
    move-result v2

    #@bc
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@bf
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v1

    #@c3
    return-object v1
.end method

.method public static parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;
    .locals 27
    .param p0, "headers"    # Lcom/android/okhttp/Headers;

    #@0
    .prologue
    .line 152
    const/4 v4, 0x0

    #@1
    .line 153
    .local v4, "noCache":Z
    const/4 v5, 0x0

    #@2
    .line 154
    .local v5, "noStore":Z
    const/4 v6, -0x1

    #@3
    .line 155
    .local v6, "maxAgeSeconds":I
    const/4 v7, -0x1

    #@4
    .line 156
    .local v7, "sMaxAgeSeconds":I
    const/4 v8, 0x0

    #@5
    .line 157
    .local v8, "isPrivate":Z
    const/4 v9, 0x0

    #@6
    .line 158
    .local v9, "isPublic":Z
    const/4 v10, 0x0

    #@7
    .line 159
    .local v10, "mustRevalidate":Z
    const/4 v11, -0x1

    #@8
    .line 160
    .local v11, "maxStaleSeconds":I
    const/4 v12, -0x1

    #@9
    .line 161
    .local v12, "minFreshSeconds":I
    const/4 v13, 0x0

    #@a
    .line 162
    .local v13, "onlyIfCached":Z
    const/4 v14, 0x0

    #@b
    .line 164
    .local v14, "noTransform":Z
    const/16 v16, 0x1

    #@d
    .line 165
    .local v16, "canUseHeaderValue":Z
    const/4 v15, 0x0

    #@e
    .line 167
    .local v15, "headerValue":Ljava/lang/String;
    const/16 v18, 0x0

    #@10
    .local v18, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/Headers;->size()I

    #@13
    move-result v23

    #@14
    .end local v15    # "headerValue":Ljava/lang/String;
    .local v23, "size":I
    :goto_0
    move/from16 v0, v18

    #@16
    move/from16 v1, v23

    #@18
    if-ge v0, v1, :cond_11

    #@1a
    .line 168
    move-object/from16 v0, p0

    #@1c
    move/from16 v1, v18

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@21
    move-result-object v19

    #@22
    .line 169
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v18

    #@26
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@29
    move-result-object v25

    #@2a
    .line 171
    .local v25, "value":Ljava/lang/String;
    const-string/jumbo v3, "Cache-Control"

    #@2d
    move-object/from16 v0, v19

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 172
    if-eqz v15, :cond_2

    #@37
    .line 174
    const/16 v16, 0x0

    #@39
    .line 185
    :goto_1
    const/16 v22, 0x0

    #@3b
    .line 186
    .local v22, "pos":I
    :cond_0
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@3e
    move-result v3

    #@3f
    move/from16 v0, v22

    #@41
    if-ge v0, v3, :cond_10

    #@43
    .line 187
    move/from16 v24, v22

    #@45
    .line 188
    .local v24, "tokenStart":I
    const-string/jumbo v3, "=,;"

    #@48
    move-object/from16 v0, v25

    #@4a
    move/from16 v1, v22

    #@4c
    invoke-static {v0, v1, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    #@4f
    move-result v22

    #@50
    .line 189
    move-object/from16 v0, v25

    #@52
    move/from16 v1, v24

    #@54
    move/from16 v2, v22

    #@56
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5d
    move-result-object v17

    #@5e
    .line 192
    .local v17, "directive":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@61
    move-result v3

    #@62
    move/from16 v0, v22

    #@64
    if-eq v0, v3, :cond_1

    #@66
    move-object/from16 v0, v25

    #@68
    move/from16 v1, v22

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@6d
    move-result v3

    #@6e
    const/16 v26, 0x2c

    #@70
    move/from16 v0, v26

    #@72
    if-ne v3, v0, :cond_4

    #@74
    .line 193
    :cond_1
    add-int/lit8 v22, v22, 0x1

    #@76
    .line 194
    const/16 v20, 0x0

    #@78
    .line 215
    :goto_3
    const-string/jumbo v3, "no-cache"

    #@7b
    move-object/from16 v0, v17

    #@7d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_6

    #@83
    .line 216
    const/4 v4, 0x1

    #@84
    goto :goto_2

    #@85
    .line 176
    .end local v17    # "directive":Ljava/lang/String;
    .end local v22    # "pos":I
    .end local v24    # "tokenStart":I
    :cond_2
    move-object/from16 v15, v25

    #@87
    .local v15, "headerValue":Ljava/lang/String;
    goto :goto_1

    #@88
    .line 178
    .end local v15    # "headerValue":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "Pragma"

    #@8b
    move-object/from16 v0, v19

    #@8d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_10

    #@93
    .line 180
    const/16 v16, 0x0

    #@95
    goto :goto_1

    #@96
    .line 192
    .restart local v17    # "directive":Ljava/lang/String;
    .restart local v22    # "pos":I
    .restart local v24    # "tokenStart":I
    :cond_4
    move-object/from16 v0, v25

    #@98
    move/from16 v1, v22

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@9d
    move-result v3

    #@9e
    const/16 v26, 0x3b

    #@a0
    move/from16 v0, v26

    #@a2
    if-eq v3, v0, :cond_1

    #@a4
    .line 196
    add-int/lit8 v22, v22, 0x1

    #@a6
    .line 197
    move-object/from16 v0, v25

    #@a8
    move/from16 v1, v22

    #@aa
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    #@ad
    move-result v22

    #@ae
    .line 200
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@b1
    move-result v3

    #@b2
    move/from16 v0, v22

    #@b4
    if-ge v0, v3, :cond_5

    #@b6
    move-object/from16 v0, v25

    #@b8
    move/from16 v1, v22

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@bd
    move-result v3

    #@be
    const/16 v26, 0x22

    #@c0
    move/from16 v0, v26

    #@c2
    if-ne v3, v0, :cond_5

    #@c4
    .line 201
    add-int/lit8 v22, v22, 0x1

    #@c6
    .line 202
    move/from16 v21, v22

    #@c8
    .line 203
    .local v21, "parameterStart":I
    const-string/jumbo v3, "\""

    #@cb
    move-object/from16 v0, v25

    #@cd
    move/from16 v1, v22

    #@cf
    invoke-static {v0, v1, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    #@d2
    move-result v22

    #@d3
    .line 204
    move-object/from16 v0, v25

    #@d5
    move/from16 v1, v21

    #@d7
    move/from16 v2, v22

    #@d9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@dc
    move-result-object v20

    #@dd
    .line 205
    .local v20, "parameter":Ljava/lang/String;
    add-int/lit8 v22, v22, 0x1

    #@df
    .line 200
    goto :goto_3

    #@e0
    .line 209
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v21    # "parameterStart":I
    :cond_5
    move/from16 v21, v22

    #@e2
    .line 210
    .restart local v21    # "parameterStart":I
    const-string/jumbo v3, ",;"

    #@e5
    move-object/from16 v0, v25

    #@e7
    move/from16 v1, v22

    #@e9
    invoke-static {v0, v1, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    #@ec
    move-result v22

    #@ed
    .line 211
    move-object/from16 v0, v25

    #@ef
    move/from16 v1, v21

    #@f1
    move/from16 v2, v22

    #@f3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f6
    move-result-object v3

    #@f7
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@fa
    move-result-object v20

    #@fb
    .restart local v20    # "parameter":Ljava/lang/String;
    goto/16 :goto_3

    #@fd
    .line 217
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v21    # "parameterStart":I
    :cond_6
    const-string/jumbo v3, "no-store"

    #@100
    move-object/from16 v0, v17

    #@102
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@105
    move-result v3

    #@106
    if-eqz v3, :cond_7

    #@108
    .line 218
    const/4 v5, 0x1

    #@109
    goto/16 :goto_2

    #@10b
    .line 219
    :cond_7
    const-string/jumbo v3, "max-age"

    #@10e
    move-object/from16 v0, v17

    #@110
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@113
    move-result v3

    #@114
    if-eqz v3, :cond_8

    #@116
    .line 220
    const/4 v3, -0x1

    #@117
    move-object/from16 v0, v20

    #@119
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    #@11c
    move-result v6

    #@11d
    goto/16 :goto_2

    #@11f
    .line 221
    :cond_8
    const-string/jumbo v3, "s-maxage"

    #@122
    move-object/from16 v0, v17

    #@124
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@127
    move-result v3

    #@128
    if-eqz v3, :cond_9

    #@12a
    .line 222
    const/4 v3, -0x1

    #@12b
    move-object/from16 v0, v20

    #@12d
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    #@130
    move-result v7

    #@131
    goto/16 :goto_2

    #@133
    .line 223
    :cond_9
    const-string/jumbo v3, "private"

    #@136
    move-object/from16 v0, v17

    #@138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13b
    move-result v3

    #@13c
    if-eqz v3, :cond_a

    #@13e
    .line 224
    const/4 v8, 0x1

    #@13f
    goto/16 :goto_2

    #@141
    .line 225
    :cond_a
    const-string/jumbo v3, "public"

    #@144
    move-object/from16 v0, v17

    #@146
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@149
    move-result v3

    #@14a
    if-eqz v3, :cond_b

    #@14c
    .line 226
    const/4 v9, 0x1

    #@14d
    goto/16 :goto_2

    #@14f
    .line 227
    :cond_b
    const-string/jumbo v3, "must-revalidate"

    #@152
    move-object/from16 v0, v17

    #@154
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@157
    move-result v3

    #@158
    if-eqz v3, :cond_c

    #@15a
    .line 228
    const/4 v10, 0x1

    #@15b
    goto/16 :goto_2

    #@15d
    .line 229
    :cond_c
    const-string/jumbo v3, "max-stale"

    #@160
    move-object/from16 v0, v17

    #@162
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@165
    move-result v3

    #@166
    if-eqz v3, :cond_d

    #@168
    .line 230
    const v3, 0x7fffffff

    #@16b
    move-object/from16 v0, v20

    #@16d
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    #@170
    move-result v11

    #@171
    goto/16 :goto_2

    #@173
    .line 231
    :cond_d
    const-string/jumbo v3, "min-fresh"

    #@176
    move-object/from16 v0, v17

    #@178
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17b
    move-result v3

    #@17c
    if-eqz v3, :cond_e

    #@17e
    .line 232
    const/4 v3, -0x1

    #@17f
    move-object/from16 v0, v20

    #@181
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    #@184
    move-result v12

    #@185
    goto/16 :goto_2

    #@187
    .line 233
    :cond_e
    const-string/jumbo v3, "only-if-cached"

    #@18a
    move-object/from16 v0, v17

    #@18c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18f
    move-result v3

    #@190
    if-eqz v3, :cond_f

    #@192
    .line 234
    const/4 v13, 0x1

    #@193
    goto/16 :goto_2

    #@195
    .line 235
    :cond_f
    const-string/jumbo v3, "no-transform"

    #@198
    move-object/from16 v0, v17

    #@19a
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19d
    move-result v3

    #@19e
    if-eqz v3, :cond_0

    #@1a0
    .line 236
    const/4 v14, 0x1

    #@1a1
    goto/16 :goto_2

    #@1a3
    .line 167
    .end local v17    # "directive":Ljava/lang/String;
    .end local v22    # "pos":I
    .end local v24    # "tokenStart":I
    :cond_10
    add-int/lit8 v18, v18, 0x1

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 241
    .end local v19    # "name":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_11
    if-nez v16, :cond_12

    #@1a9
    .line 242
    const/4 v15, 0x0

    #@1aa
    .line 244
    :cond_12
    new-instance v3, Lcom/android/okhttp/CacheControl;

    #@1ac
    invoke-direct/range {v3 .. v15}, Lcom/android/okhttp/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    #@1af
    return-object v3
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPrivate:Z

    #@2
    return v0
.end method

.method public isPublic()Z
    .locals 1

    #@0
    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->isPublic:Z

    #@2
    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Lcom/android/okhttp/CacheControl;->maxAgeSeconds:I

    #@2
    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Lcom/android/okhttp/CacheControl;->maxStaleSeconds:I

    #@2
    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Lcom/android/okhttp/CacheControl;->minFreshSeconds:I

    #@2
    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    #@0
    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->mustRevalidate:Z

    #@2
    return v0
.end method

.method public noCache()Z
    .locals 1

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noCache:Z

    #@2
    return v0
.end method

.method public noStore()Z
    .locals 1

    #@0
    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noStore:Z

    #@2
    return v0
.end method

.method public noTransform()Z
    .locals 1

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->noTransform:Z

    #@2
    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/okhttp/CacheControl;->onlyIfCached:Z

    #@2
    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Lcom/android/okhttp/CacheControl;->sMaxAgeSeconds:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    #@2
    .line 250
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/CacheControl;->headerValue()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    #@b
    goto :goto_0
.end method

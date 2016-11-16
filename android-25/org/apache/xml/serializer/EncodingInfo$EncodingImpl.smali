.class Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;
.super Ljava/lang/Object;
.source "EncodingInfo.java"

# interfaces
.implements Lorg/apache/xml/serializer/EncodingInfo$InEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodingImpl"
.end annotation


# static fields
.field private static final RANGE:I = 0x80


# instance fields
.field private m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_alreadyKnown:[Z

.field private m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_encoding:Ljava/lang/String;

.field private final m_explFirst:I

.field private final m_explLast:I

.field private final m_first:I

.field private final m_isInEncoding:[Z

.field private final m_last:I

.field final synthetic this$0:Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method private constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;)V
    .locals 6
    .param p1, "this$0"    # Lorg/apache/xml/serializer/EncodingInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 340
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@3
    const v4, 0x7fffffff

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v5, v3

    #@9
    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    #@c
    .line 337
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V
    .locals 7
    .param p1, "this$0"    # Lorg/apache/xml/serializer/EncodingInfo;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "first"    # I
    .param p4, "last"    # I
    .param p5, "codePoint"    # I

    #@0
    .prologue
    const/16 v6, 0x7f

    #@2
    const/16 v5, 0x80

    #@4
    const/4 v4, 0x1

    #@5
    .line 343
    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    #@7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@a
    .line 330
    new-array v2, v5, [Z

    #@c
    iput-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@e
    .line 335
    new-array v2, v5, [Z

    #@10
    iput-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@12
    .line 346
    iput p3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    #@14
    .line 347
    iput p4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    #@16
    .line 351
    iput p5, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@18
    .line 352
    add-int/lit8 v2, p5, 0x7f

    #@1a
    iput v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    #@1c
    .line 354
    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@1e
    .line 356
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 359
    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@24
    if-ltz v2, :cond_2

    #@26
    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@28
    if-gt v2, v6, :cond_2

    #@2a
    .line 362
    const-string/jumbo v2, "UTF8"

    #@2d
    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_0

    #@35
    .line 363
    const-string/jumbo v2, "UTF-16"

    #@38
    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 362
    if-nez v2, :cond_0

    #@40
    .line 364
    const-string/jumbo v2, "ASCII"

    #@43
    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    .line 362
    if-nez v2, :cond_0

    #@4b
    .line 365
    const-string/jumbo v2, "US-ASCII"

    #@4e
    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v2

    #@54
    .line 362
    if-nez v2, :cond_0

    #@56
    .line 366
    const-string/jumbo v2, "Unicode"

    #@59
    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v2

    #@5f
    .line 362
    if-nez v2, :cond_0

    #@61
    .line 367
    const-string/jumbo v2, "UNICODE"

    #@64
    iget-object v3, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    .line 362
    if-nez v2, :cond_0

    #@6c
    .line 368
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@6e
    const-string/jumbo v3, "ISO8859"

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@74
    move-result v2

    #@75
    .line 362
    if-eqz v2, :cond_2

    #@77
    .line 381
    :cond_0
    const/4 v1, 0x1

    #@78
    .local v1, "unicode":I
    :goto_0
    if-ge v1, v6, :cond_2

    #@7a
    .line 382
    iget v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@7c
    sub-int v0, v1, v2

    #@7e
    .line 383
    .local v0, "idx":I
    if-ltz v0, :cond_1

    #@80
    if-ge v0, v5, :cond_1

    #@82
    .line 384
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@84
    aput-boolean v4, v2, v0

    #@86
    .line 385
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@88
    aput-boolean v4, v2, v0

    #@8a
    .line 381
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 401
    .end local v0    # "idx":I
    .end local v1    # "unicode":I
    :cond_2
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@8f
    if-nez v2, :cond_3

    #@91
    .line 402
    const/4 v0, 0x0

    #@92
    .restart local v0    # "idx":I
    :goto_1
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@94
    array-length v2, v2

    #@95
    if-ge v0, v2, :cond_3

    #@97
    .line 403
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@99
    aput-boolean v4, v2, v0

    #@9b
    .line 404
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@9d
    aput-boolean v4, v2, v0

    #@9f
    .line 402
    add-int/lit8 v0, v0, 0x1

    #@a1
    goto :goto_1

    #@a2
    .line 343
    .end local v0    # "idx":I
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/serializer/EncodingInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;)V

    #@3
    return-void
.end method


# virtual methods
.method public isInEncoding(C)Z
    .locals 8
    .param p1, "ch1"    # C

    #@0
    .prologue
    .line 189
    invoke-static {p1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(C)I

    #@3
    move-result v5

    #@4
    .line 190
    .local v5, "codePoint":I
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@6
    if-ge v5, v0, :cond_1

    #@8
    .line 195
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 197
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    #@e
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    #@10
    .line 198
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@12
    .line 199
    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    #@14
    .line 200
    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@16
    add-int/lit8 v4, v4, -0x1

    #@18
    .line 197
    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    #@1b
    .line 196
    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@1d
    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@1f
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    #@22
    move-result v7

    #@23
    .line 231
    .local v7, "ret":Z
    :goto_0
    return v7

    #@24
    .line 203
    .end local v7    # "ret":Z
    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    #@26
    if-ge v0, v5, :cond_3

    #@28
    .line 208
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@2a
    if-nez v0, :cond_2

    #@2c
    .line 210
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    #@2e
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    #@30
    .line 211
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@32
    .line 212
    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    #@34
    add-int/lit8 v3, v3, 0x1

    #@36
    .line 213
    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    #@38
    .line 210
    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    #@3b
    .line 209
    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@3d
    .line 215
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@3f
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    #@42
    move-result v7

    #@43
    .restart local v7    # "ret":Z
    goto :goto_0

    #@44
    .line 218
    .end local v7    # "ret":Z
    :cond_3
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@46
    sub-int v6, v5, v0

    #@48
    .line 221
    .local v6, "idx":I
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@4a
    aget-boolean v0, v0, v6

    #@4c
    if-eqz v0, :cond_4

    #@4e
    .line 222
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@50
    aget-boolean v7, v0, v6

    #@52
    .restart local v7    # "ret":Z
    goto :goto_0

    #@53
    .line 226
    .end local v7    # "ret":Z
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@55
    invoke-static {p1, v0}, Lorg/apache/xml/serializer/EncodingInfo;->-wrap0(CLjava/lang/String;)Z

    #@58
    move-result v7

    #@59
    .line 227
    .restart local v7    # "ret":Z
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@5b
    const/4 v1, 0x1

    #@5c
    aput-boolean v1, v0, v6

    #@5e
    .line 228
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@60
    aput-boolean v7, v0, v6

    #@62
    goto :goto_0
.end method

.method public isInEncoding(CC)Z
    .locals 8
    .param p1, "high"    # C
    .param p2, "low"    # C

    #@0
    .prologue
    .line 236
    invoke-static {p1, p2}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    #@3
    move-result v5

    #@4
    .line 237
    .local v5, "codePoint":I
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@6
    if-ge v5, v0, :cond_1

    #@8
    .line 242
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 244
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    #@e
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    #@10
    .line 245
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@12
    .line 246
    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    #@14
    .line 247
    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@16
    add-int/lit8 v4, v4, -0x1

    #@18
    .line 244
    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    #@1b
    .line 243
    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@1d
    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@1f
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    #@22
    move-result v7

    #@23
    .line 278
    .local v7, "ret":Z
    :goto_0
    return v7

    #@24
    .line 250
    .end local v7    # "ret":Z
    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    #@26
    if-ge v0, v5, :cond_3

    #@28
    .line 255
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@2a
    if-nez v0, :cond_2

    #@2c
    .line 257
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    #@2e
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    #@30
    .line 258
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@32
    .line 259
    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    #@34
    add-int/lit8 v3, v3, 0x1

    #@36
    .line 260
    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    #@38
    .line 257
    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    #@3b
    .line 256
    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@3d
    .line 262
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@3f
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    #@42
    move-result v7

    #@43
    .restart local v7    # "ret":Z
    goto :goto_0

    #@44
    .line 265
    .end local v7    # "ret":Z
    :cond_3
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    #@46
    sub-int v6, v5, v0

    #@48
    .line 268
    .local v6, "idx":I
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@4a
    aget-boolean v0, v0, v6

    #@4c
    if-eqz v0, :cond_4

    #@4e
    .line 269
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@50
    aget-boolean v7, v0, v6

    #@52
    .restart local v7    # "ret":Z
    goto :goto_0

    #@53
    .line 273
    .end local v7    # "ret":Z
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    #@55
    invoke-static {p1, p2, v0}, Lorg/apache/xml/serializer/EncodingInfo;->-wrap1(CCLjava/lang/String;)Z

    #@58
    move-result v7

    #@59
    .line 274
    .restart local v7    # "ret":Z
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    #@5b
    const/4 v1, 0x1

    #@5c
    aput-boolean v1, v0, v6

    #@5e
    .line 275
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    #@60
    aput-boolean v7, v0, v6

    #@62
    goto :goto_0
.end method

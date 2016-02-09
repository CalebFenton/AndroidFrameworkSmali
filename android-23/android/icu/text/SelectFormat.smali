.class public Landroid/icu/text/SelectFormat;
.super Ljava/text/Format;
.source "SelectFormat.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x2989d201f7bc66f8L


# instance fields
.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/SelectFormat;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/SelectFormat;->-assertionsDisabled:Z

    #@b
    .line 151
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@3
    .line 158
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@6
    .line 171
    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    #@9
    .line 170
    return-void
.end method

.method static findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I
    .locals 7
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 223
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    #@4
    move-result v0

    #@5
    .line 224
    .local v0, "count":I
    const/4 v1, 0x0

    #@6
    .line 227
    .local v1, "msgStart":I
    :goto_0
    add-int/lit8 v3, p1, 0x1

    #@8
    .end local p1    # "partIndex":I
    .local v3, "partIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@b
    move-result-object v2

    #@c
    .line 228
    .local v2, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@f
    move-result-object v4

    #@10
    .line 229
    .local v4, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@12
    if-ne v4, v5, :cond_1

    #@14
    move p1, v3

    #@15
    .line 242
    .end local v3    # "partIndex":I
    .restart local p1    # "partIndex":I
    :cond_0
    return v1

    #@16
    .line 232
    .end local p1    # "partIndex":I
    .restart local v3    # "partIndex":I
    :cond_1
    sget-boolean v5, Landroid/icu/text/SelectFormat;->-assertionsDisabled:Z

    #@18
    if-nez v5, :cond_3

    #@1a
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@1c
    if-ne v4, v5, :cond_2

    #@1e
    const/4 v5, 0x1

    #@1f
    :goto_1
    if-nez v5, :cond_3

    #@21
    new-instance v5, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v5

    #@27
    :cond_2
    move v5, v6

    #@28
    goto :goto_1

    #@29
    .line 234
    :cond_3
    invoke-virtual {p0, v2, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_4

    #@2f
    .line 236
    return v3

    #@30
    .line 237
    :cond_4
    if-nez v1, :cond_5

    #@32
    const-string/jumbo v5, "other"

    #@35
    invoke-virtual {p0, v2, v5}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_5

    #@3b
    .line 238
    move v1, v3

    #@3c
    .line 240
    :cond_5
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@3f
    move-result p1

    #@40
    .line 241
    .end local v3    # "partIndex":I
    .restart local p1    # "partIndex":I
    add-int/lit8 p1, p1, 0x1

    #@42
    if-ge p1, v0, :cond_0

    #@44
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 380
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 381
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@9
    invoke-virtual {p0, v0}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    #@c
    .line 378
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@3
    .line 179
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 180
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@9
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    #@c
    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    iput-object p1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@2
    .line 194
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 195
    new-instance v1, Landroid/icu/text/MessagePattern;

    #@8
    invoke-direct {v1}, Landroid/icu/text/MessagePattern;-><init>()V

    #@b
    iput-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@d
    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@f
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 192
    return-void

    #@13
    .line 199
    :catch_0
    move-exception v0

    #@14
    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/icu/text/SelectFormat;->reset()V

    #@17
    .line 201
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 346
    if-ne p0, p1, :cond_0

    #@4
    .line 347
    return v1

    #@5
    .line 349
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/SelectFormat;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 350
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 352
    check-cast v0, Landroid/icu/text/SelectFormat;

    #@15
    .line 353
    .local v0, "sf":Landroid/icu/text/SelectFormat;
    iget-object v3, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@17
    if-nez v3, :cond_4

    #@19
    iget-object v3, v0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1b
    if-nez v3, :cond_3

    #@1d
    :goto_0
    return v1

    #@1e
    :cond_3
    move v1, v2

    #@1f
    goto :goto_0

    #@20
    :cond_4
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@22
    iget-object v2, v0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@24
    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    goto :goto_0
.end method

.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 255
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    #@4
    move-result v8

    #@5
    if-nez v8, :cond_0

    #@7
    .line 256
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v9, "Invalid formatting argument."

    #@c
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v8

    #@10
    .line 259
    :cond_0
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@12
    if-eqz v8, :cond_1

    #@14
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@16
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->countParts()I

    #@19
    move-result v8

    #@1a
    if-nez v8, :cond_2

    #@1c
    .line 260
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v9, "Invalid format error."

    #@21
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v8

    #@25
    .line 264
    :cond_2
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@27
    invoke-static {v8, v9, p1}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    #@2a
    move-result v3

    #@2b
    .line 265
    .local v3, "msgStart":I
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2d
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    #@30
    move-result v8

    #@31
    if-nez v8, :cond_3

    #@33
    .line 266
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@35
    invoke-virtual {v8, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@38
    move-result v2

    #@39
    .line 267
    .local v2, "msgLimit":I
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@3b
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    iget-object v9, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@41
    invoke-virtual {v9, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@48
    move-result v9

    #@49
    .line 268
    iget-object v10, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4b
    invoke-virtual {v10, v2}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    #@4e
    move-result v10

    #@4f
    .line 267
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    return-object v8

    #@54
    .line 271
    .end local v2    # "msgLimit":I
    :cond_3
    const/4 v6, 0x0

    #@55
    .line 272
    .local v6, "result":Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@57
    invoke-virtual {v8, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@5e
    move-result v5

    #@5f
    .line 273
    .local v5, "prevIndex":I
    move v0, v3

    #@60
    .line 274
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .local v0, "i":I
    :cond_4
    :goto_0
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@62
    add-int/lit8 v0, v0, 0x1

    #@64
    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@67
    move-result-object v4

    #@68
    .line 275
    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@6b
    move-result-object v7

    #@6c
    .line 276
    .local v7, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@6f
    move-result v1

    #@70
    .line 277
    .local v1, "index":I
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@72
    if-ne v7, v8, :cond_6

    #@74
    .line 278
    if-nez v6, :cond_5

    #@76
    .line 279
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@78
    invoke-virtual {v8, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    return-object v8

    #@7d
    .line 281
    :cond_5
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@7f
    invoke-virtual {v6, v8, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    return-object v8

    #@88
    .line 283
    :cond_6
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@8a
    if-ne v7, v8, :cond_8

    #@8c
    .line 284
    if-nez v6, :cond_7

    #@8e
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    .line 287
    :cond_7
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@95
    invoke-virtual {v6, v8, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@98
    .line 288
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@9b
    move-result v5

    #@9c
    goto :goto_0

    #@9d
    .line 289
    :cond_8
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@9f
    if-ne v7, v8, :cond_4

    #@a1
    .line 290
    if-nez v6, :cond_9

    #@a3
    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    .line 293
    :cond_9
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@aa
    invoke-virtual {v6, v8, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@ad
    .line 294
    move v5, v1

    #@ae
    .line 295
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@b0
    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@b3
    move-result v0

    #@b4
    .line 296
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@b6
    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@bd
    move-result v1

    #@be
    .line 297
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@c0
    invoke-static {v8, v5, v1, v6}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    #@c3
    .line 298
    move v5, v1

    #@c4
    goto :goto_0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 318
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 319
    check-cast p1, Ljava/lang/String;

    #@6
    .end local p1    # "keyword":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 323
    return-object p2

    #@e
    .line 321
    .restart local p1    # "keyword":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "\'"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "\' is not a String"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 363
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 365
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "pattern=\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\'"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

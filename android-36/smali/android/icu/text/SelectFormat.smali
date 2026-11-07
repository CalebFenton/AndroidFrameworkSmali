.class public Landroid/icu/text/SelectFormat;
.super Ljava/text/Format;
.source "SelectFormat.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = 0x2989d201f7bc66f8L


# instance fields
.field private transient greylist-max-o msgPattern:Landroid/icu/text/MessagePattern;

.field private greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 151
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method static greylist-max-o findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I
    .registers 8
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 221
    .local v0, "count":I
    const/4 v1, 0x0

    .line 224
    .local v1, "msgStart":I
    :cond_5
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "partIndex":I
    .local v2, "partIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 225
    .local p1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 226
    .local v3, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_14

    .line 227
    goto :goto_30

    .line 229
    :cond_14
    nop

    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 233
    return v2

    .line 234
    :cond_1c
    if-nez v1, :cond_27

    const-string v4, "other"

    invoke-virtual {p0, p1, v4}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 235
    move v1, v2

    .line 237
    :cond_27
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 238
    .end local v2    # "partIndex":I
    .end local v3    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .local p1, "partIndex":I
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_5

    move v2, p1

    .line 239
    .end local p1    # "partIndex":I
    .restart local v2    # "partIndex":I
    :goto_30
    return v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 371
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 372
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    .line 374
    :cond_c
    return-void
.end method

.method private greylist-max-o reset()V
    .registers 2

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_c

    .line 179
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    .line 181
    :cond_c
    return-void
.end method


# virtual methods
.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_d

    .line 193
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 196
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_12} :catch_14

    .line 200
    nop

    .line 201
    return-void

    .line 197
    :catch_14
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/icu/text/SelectFormat;->reset()V

    .line 199
    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 339
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 340
    return v0

    .line 342
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 345
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/icu/text/SelectFormat;

    .line 346
    .local v2, "sf":Landroid/icu/text/SelectFormat;
    iget-object v3, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v3, :cond_20

    iget-object v3, v2, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v3, :cond_1e

    goto :goto_28

    :cond_1e
    move v0, v1

    goto :goto_28

    :cond_20
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v1, v2, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_28
    return v0

    .line 343
    .end local v2    # "sf":Landroid/icu/text/SelectFormat;
    :cond_29
    :goto_29
    return v1
.end method

.method public final whitelist test-api format(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "keyword"    # Ljava/lang/String;

    .line 251
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 255
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-eqz v0, :cond_b5

    .line 260
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v0

    .line 261
    .local v0, "msgStart":I
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v1

    if-nez v1, :cond_42

    .line 262
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 263
    .local v1, "msgLimit":I
    iget-object v2, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v3, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v3

    iget-object v4, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 264
    invoke-virtual {v4, v1}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v4

    .line 263
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 267
    .end local v1    # "msgLimit":I
    :cond_42
    const/4 v1, 0x0

    .line 268
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 269
    .local v2, "prevIndex":I
    move v3, v0

    .line 270
    .local v3, "i":I
    :goto_4e
    iget-object v4, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 271
    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    .line 272
    .local v5, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 273
    .local v6, "index":I
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_76

    .line 274
    if-nez v1, :cond_6b

    .line 275
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 277
    :cond_6b
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 279
    :cond_76
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_8c

    .line 280
    if-nez v1, :cond_82

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 283
    :cond_82
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto :goto_b4

    .line 285
    :cond_8c
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_b4

    .line 286
    if-nez v1, :cond_98

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 289
    :cond_98
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 290
    move v2, v6

    .line 291
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v3

    .line 292
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 293
    iget-object v7, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-static {v7, v2, v6, v1}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 294
    move v2, v6

    .line 296
    .end local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v5    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v6    # "index":I
    :cond_b4
    :goto_b4
    goto :goto_4e

    .line 256
    .end local v0    # "msgStart":I
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "prevIndex":I
    .end local v3    # "i":I
    :cond_b5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid format error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid formatting argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "keyword"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 313
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 314
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/SelectFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    return-object p2

    .line 316
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 355
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 357
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pattern=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

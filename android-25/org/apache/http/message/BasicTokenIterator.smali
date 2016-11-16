.class public Lorg/apache/http/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lorg/apache/http/TokenIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lorg/apache/http/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .locals 2
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    if-nez p1, :cond_0

    #@5
    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 92
    const-string/jumbo v1, "Header iterator must not be null."

    #@a
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 95
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@10
    .line 96
    const/4 v0, -0x1

    #@11
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    #@17
    .line 89
    return-void
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 221
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected findNext(I)I
    .locals 4
    .param p1, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 176
    if-gez p1, :cond_1

    #@3
    .line 178
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@5
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 179
    return v3

    #@c
    .line 181
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@e
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@18
    .line 182
    const/4 p1, 0x0

    #@19
    .line 188
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenStart(I)I

    #@1c
    move-result v1

    #@1d
    .line 189
    .local v1, "start":I
    if-gez v1, :cond_2

    #@1f
    .line 190
    const/4 v2, 0x0

    #@20
    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    #@22
    .line 191
    return v3

    #@23
    .line 185
    .end local v1    # "start":I
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenSeparator(I)I

    #@26
    move-result p1

    #@27
    goto :goto_0

    #@28
    .line 194
    .restart local v1    # "start":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenEnd(I)I

    #@2b
    move-result v0

    #@2c
    .line 195
    .local v0, "end":I
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@2e
    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/http/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    #@34
    .line 196
    return v0
.end method

.method protected findTokenEnd(I)I
    .locals 5
    .param p1, "from"    # I

    #@0
    .prologue
    .line 332
    if-gez p1, :cond_0

    #@2
    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Token start position must not be negative: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 333
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 337
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v1

    #@22
    .line 338
    .local v1, "to":I
    add-int/lit8 v0, p1, 0x1

    #@24
    .line 339
    .local v0, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@26
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v2

    #@2c
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 340
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 343
    :cond_1
    return v0
.end method

.method protected findTokenSeparator(I)I
    .locals 6
    .param p1, "from"    # I

    #@0
    .prologue
    .line 292
    if-gez p1, :cond_0

    #@2
    .line 293
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "Search position must not be negative: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 293
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 297
    :cond_0
    const/4 v1, 0x0

    #@1d
    .line 298
    .local v1, "found":Z
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@22
    move-result v2

    #@23
    .line 299
    .local v2, "to":I
    :goto_0
    if-nez v1, :cond_4

    #@25
    if-ge p1, v2, :cond_4

    #@27
    .line 300
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v0

    #@2d
    .line 301
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 302
    const/4 v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 303
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 304
    add-int/lit8 p1, p1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 305
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_3

    #@44
    .line 306
    new-instance v3, Lorg/apache/http/ParseException;

    #@46
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Tokens without separator (pos "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 308
    const-string/jumbo v5, "): "

    #@59
    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 308
    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@5f
    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    .line 306
    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v3

    #@6b
    .line 310
    :cond_3
    new-instance v3, Lorg/apache/http/ParseException;

    #@6d
    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "Invalid character after token (pos "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    .line 312
    const-string/jumbo v5, "): "

    #@80
    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 312
    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@86
    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    .line 310
    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@91
    throw v3

    #@92
    .line 316
    .end local v0    # "ch":C
    :cond_4
    return p1
.end method

.method protected findTokenStart(I)I
    .locals 6
    .param p1, "from"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 236
    if-gez p1, :cond_0

    #@3
    .line 237
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "Search position must not be negative: "

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 237
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3

    #@1d
    .line 241
    :cond_0
    const/4 v1, 0x0

    #@1e
    .line 242
    .local v1, "found":Z
    :cond_1
    :goto_0
    if-nez v1, :cond_7

    #@20
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@22
    if-eqz v3, :cond_7

    #@24
    .line 244
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@29
    move-result v2

    #@2a
    .line 245
    .local v2, "to":I
    :goto_1
    if-nez v1, :cond_5

    #@2c
    if-ge p1, v2, :cond_5

    #@2e
    .line 247
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v0

    #@34
    .line 248
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_2

    #@3a
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 250
    :cond_2
    add-int/lit8 p1, p1, 0x1

    #@42
    goto :goto_1

    #@43
    .line 251
    :cond_3
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v3

    #@49
    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_4

    #@4f
    .line 253
    const/4 v1, 0x1

    #@50
    goto :goto_1

    #@51
    .line 255
    :cond_4
    new-instance v3, Lorg/apache/http/ParseException;

    #@53
    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "Invalid character before token (pos "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 257
    const-string/jumbo v5, "): "

    #@66
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 257
    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@6c
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    .line 255
    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    #@77
    throw v3

    #@78
    .line 260
    .end local v0    # "ch":C
    :cond_5
    if-nez v1, :cond_1

    #@7a
    .line 261
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@7c
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@7f
    move-result v3

    #@80
    if-eqz v3, :cond_6

    #@82
    .line 262
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@84
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    #@87
    move-result-object v3

    #@88
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    iput-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@8e
    .line 263
    const/4 p1, 0x0

    #@8f
    goto :goto_0

    #@90
    .line 265
    :cond_6
    iput-object v4, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    #@92
    goto :goto_0

    #@93
    .line 270
    .end local v2    # "to":I
    :cond_7
    if-eqz v1, :cond_8

    #@95
    .end local p1    # "from":I
    :goto_2
    return p1

    #@96
    .restart local p1    # "from":I
    :cond_8
    const/4 p1, -0x1

    #@97
    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected isHttpSeparator(C)Z
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 429
    const-string/jumbo v1, " ,;=()<>@:\\\"/[]?{}\t"

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    if-ltz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method protected isTokenChar(C)Z
    .locals 3
    .param p1, "ch"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 397
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 398
    return v2

    #@9
    .line 401
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 402
    return v1

    #@10
    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->isHttpSeparator(C)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 406
    return v1

    #@17
    .line 414
    :cond_2
    return v2
.end method

.method protected isTokenSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 359
    const/16 v0, 0x2c

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected isWhitespace(C)Z
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 378
    const/16 v0, 0x9

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/apache/http/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 118
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v2, "Iteration already finished."

    #@9
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    #@f
    .line 123
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    #@11
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    #@17
    .line 125
    return-object v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 153
    const-string/jumbo v1, "Removing tokens is not supported."

    #@5
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

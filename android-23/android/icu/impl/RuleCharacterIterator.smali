.class public Landroid/icu/impl/RuleCharacterIterator;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"


# static fields
.field public static final DONE:I = -0x1

.field public static final PARSE_ESCAPES:I = 0x2

.field public static final PARSE_VARIABLES:I = 0x1

.field public static final SKIP_WHITESPACE:I = 0x4


# instance fields
.field private buf:[C

.field private bufPos:I

.field private isEscaped:Z

.field private pos:Ljava/text/ParsePosition;

.field private sym:Landroid/icu/text/SymbolTable;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sym"    # Landroid/icu/text/SymbolTable;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 104
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-le v0, v1, :cond_1

    #@10
    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v0

    #@16
    .line 107
    :cond_1
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@18
    .line 108
    iput-object p2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    #@1a
    .line 109
    iput-object p3, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@1c
    .line 110
    iput-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@1e
    .line 103
    return-void
.end method

.method private _advance(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 333
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 334
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@7
    add-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@a
    .line 335
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@c
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@e
    array-length v1, v1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 336
    iput-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@13
    .line 332
    :cond_0
    :goto_0
    return-void

    #@14
    .line 339
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@16
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@18
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@1b
    move-result v1

    #@1c
    add-int/2addr v1, p1

    #@1d
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@20
    .line 340
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@22
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@25
    move-result v0

    #@26
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@2b
    move-result v1

    #@2c
    if-le v0, v1, :cond_0

    #@2e
    .line 341
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@30
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@35
    move-result v1

    #@36
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@39
    goto :goto_0
.end method

.method private _current()I
    .locals 5

    #@0
    .prologue
    .line 320
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 321
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@6
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@8
    array-length v2, v2

    #@9
    iget v3, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@b
    const/4 v4, 0x0

    #@c
    invoke-static {v1, v4, v2, v3}, Landroid/icu/text/UTF16;->charAt([CIII)I

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 323
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@13
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@16
    move-result v0

    #@17
    .line 324
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1c
    move-result v1

    #@1d
    if-ge v0, v1, :cond_1

    #@1f
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@21
    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@24
    move-result v1

    #@25
    :goto_0
    return v1

    #@26
    :cond_1
    const/4 v1, -0x1

    #@27
    goto :goto_0
.end method


# virtual methods
.method public atEnd()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 117
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@7
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@a
    move-result v1

    #@b
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-ne v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public getPos(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 215
    if-nez p1, :cond_0

    #@5
    .line 216
    new-array v2, v4, [Ljava/lang/Object;

    #@7
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@9
    aput-object v3, v2, v5

    #@b
    new-array v3, v4, [I

    #@d
    iget-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@f
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@12
    move-result v4

    #@13
    aput v4, v3, v5

    #@15
    iget v4, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@17
    aput v4, v3, v6

    #@19
    aput-object v3, v2, v6

    #@1b
    return-object v2

    #@1c
    :cond_0
    move-object v0, p1

    #@1d
    .line 218
    check-cast v0, [Ljava/lang/Object;

    #@1f
    .line 219
    .local v0, "a":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@21
    aput-object v2, v0, v5

    #@23
    .line 220
    aget-object v1, v0, v6

    #@25
    check-cast v1, [I

    #@27
    .line 221
    .local v1, "v":[I
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@29
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    #@2c
    move-result v2

    #@2d
    aput v2, v1, v5

    #@2f
    .line 222
    iget v2, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@31
    aput v2, v1, v6

    #@33
    .line 223
    return-object p1
.end method

.method public inVariable()Z
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

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

.method public isEscaped()Z
    .locals 1

    #@0
    .prologue
    .line 185
    iget-boolean v0, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    #@2
    return v0
.end method

.method public jumpahead(I)V
    .locals 4
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 283
    if-gez p1, :cond_0

    #@3
    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v1

    #@9
    .line 286
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@b
    if-eqz v1, :cond_3

    #@d
    .line 287
    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@f
    add-int/2addr v1, p1

    #@10
    iput v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@12
    .line 288
    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@14
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@16
    array-length v2, v2

    #@17
    if-le v1, v2, :cond_1

    #@19
    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1e
    throw v1

    #@1f
    .line 291
    :cond_1
    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@21
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@23
    array-length v2, v2

    #@24
    if-ne v1, v2, :cond_2

    #@26
    .line 292
    iput-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@28
    .line 282
    :cond_2
    return-void

    #@29
    .line 295
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@2b
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@2e
    move-result v1

    #@2f
    add-int v0, v1, p1

    #@31
    .line 296
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@33
    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@36
    .line 297
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3b
    move-result v1

    #@3c
    if-le v0, v1, :cond_2

    #@3e
    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@43
    throw v1
.end method

.method public lookahead()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 271
    new-instance v0, Ljava/lang/String;

    #@6
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@8
    iget v2, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@a
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@c
    array-length v3, v3

    #@d
    iget v4, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@f
    sub-int/2addr v3, v4

    #@10
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@13
    return-object v0

    #@14
    .line 273
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@16
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@18
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public next(I)I
    .locals 10
    .param p1, "options"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 129
    const/4 v0, -0x1

    #@4
    .line 130
    .local v0, "c":I
    iput-boolean v7, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    #@6
    .line 133
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    #@9
    move-result v0

    #@a
    .line 134
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@d
    move-result v3

    #@e
    invoke-direct {p0, v3}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    #@11
    .line 136
    const/16 v3, 0x24

    #@13
    if-ne v0, v3, :cond_4

    #@15
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@17
    if-nez v3, :cond_4

    #@19
    .line 137
    and-int/lit8 v3, p1, 0x1

    #@1b
    if-eqz v3, :cond_4

    #@1d
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    #@1f
    if-eqz v3, :cond_4

    #@21
    .line 138
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    #@23
    iget-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@25
    iget-object v5, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@27
    iget-object v6, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2c
    move-result v6

    #@2d
    invoke-interface {v3, v4, v5, v6}, Landroid/icu/text/SymbolTable;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 141
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_2

    #@33
    .line 175
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return v0

    #@34
    .line 144
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    iput v7, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@36
    .line 145
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    #@38
    invoke-interface {v3, v1}, Landroid/icu/text/SymbolTable;->lookup(Ljava/lang/String;)[C

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@3e
    .line 146
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@40
    if-nez v3, :cond_3

    #@42
    .line 147
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@44
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "Undefined variable: "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 147
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 151
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@5e
    array-length v3, v3

    #@5f
    if-nez v3, :cond_0

    #@61
    .line 152
    iput-object v8, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@63
    goto :goto_0

    #@64
    .line 157
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    and-int/lit8 v3, p1, 0x4

    #@66
    if-eqz v3, :cond_5

    #@68
    .line 158
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@6b
    move-result v3

    #@6c
    .line 157
    if-nez v3, :cond_0

    #@6e
    .line 162
    :cond_5
    const/16 v3, 0x5c

    #@70
    if-ne v0, v3, :cond_1

    #@72
    and-int/lit8 v3, p1, 0x2

    #@74
    if-eqz v3, :cond_1

    #@76
    .line 163
    new-array v2, v9, [I

    #@78
    aput v7, v2, v7

    #@7a
    .line 164
    .local v2, "offset":[I
    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-static {v3, v2}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@81
    move-result v0

    #@82
    .line 165
    aget v3, v2, v7

    #@84
    invoke-virtual {p0, v3}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    #@87
    .line 166
    iput-boolean v9, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    #@89
    .line 167
    if-gez v0, :cond_1

    #@8b
    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8d
    const-string/jumbo v4, "Invalid escape"

    #@90
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@93
    throw v3
.end method

.method public setPos(Ljava/lang/Object;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p1

    #@3
    .line 232
    check-cast v0, [Ljava/lang/Object;

    #@5
    .line 233
    .local v0, "a":[Ljava/lang/Object;
    aget-object v2, v0, v3

    #@7
    check-cast v2, [C

    #@9
    iput-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    #@b
    .line 234
    aget-object v1, v0, v4

    #@d
    check-cast v1, [I

    #@f
    .line 235
    .local v1, "v":[I
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@11
    aget v3, v1, v3

    #@13
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@16
    .line 236
    aget v2, v1, v4

    #@18
    iput v2, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    #@1a
    .line 231
    return-void
.end method

.method public skipIgnored(I)V
    .locals 2
    .param p1, "options"    # I

    #@0
    .prologue
    .line 248
    and-int/lit8 v1, p1, 0x4

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 250
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    #@7
    move-result v0

    #@8
    .line 251
    .local v0, "a":I
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 247
    .end local v0    # "a":I
    :cond_0
    return-void

    #@f
    .line 252
    .restart local v0    # "a":I
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@12
    move-result v1

    #@13
    invoke-direct {p0, v1}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    #@16
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 310
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    #@2
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@5
    move-result v0

    #@6
    .line 311
    .local v0, "b":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const/16 v2, 0x7c

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

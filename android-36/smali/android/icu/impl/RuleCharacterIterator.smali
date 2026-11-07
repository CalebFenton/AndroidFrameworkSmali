.class public Landroid/icu/impl/RuleCharacterIterator;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/RuleCharacterIterator$Position;
    }
.end annotation


# static fields
.field public static final blacklist DONE:I = -0x1

.field public static final blacklist PARSE_ESCAPES:I = 0x2

.field public static final blacklist PARSE_VARIABLES:I = 0x1

.field public static final blacklist SKIP_WHITESPACE:I = 0x4


# instance fields
.field private blacklist buf:Ljava/lang/String;

.field private greylist-max-o bufPos:I

.field private greylist-max-o isEscaped:Z

.field private greylist-max-o pos:Ljava/text/ParsePosition;

.field private greylist-max-o sym:Landroid/icu/text/SymbolTable;

.field private greylist-max-o text:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sym"    # Landroid/icu/text/SymbolTable;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-eqz p1, :cond_19

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_19

    .line 118
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    .line 120
    iput-object p3, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    .line 122
    return-void

    .line 116
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o _advance(I)V
    .registers 4
    .param p1, "count"    # I

    .line 354
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 355
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 356
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    goto :goto_3c

    .line 360
    :cond_17
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 361
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3c

    .line 362
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 365
    :cond_3c
    :goto_3c
    return-void
.end method

.method private greylist-max-o _current()I
    .registers 3

    .line 341
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 342
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 344
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 345
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_23

    :cond_22
    const/4 v1, -0x1

    :goto_23
    return v1
.end method


# virtual methods
.method public blacklist atEnd()Z
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist getCurrentBuffer()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    return-object v0

    .line 284
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCurrentBufferPos()I
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 290
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    return v0

    .line 292
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0
.end method

.method public blacklist getPos(Landroid/icu/impl/RuleCharacterIterator$Position;)Landroid/icu/impl/RuleCharacterIterator$Position;
    .registers 3
    .param p1, "p"    # Landroid/icu/impl/RuleCharacterIterator$Position;

    .line 229
    if-nez p1, :cond_8

    .line 230
    new-instance v0, Landroid/icu/impl/RuleCharacterIterator$Position;

    invoke-direct {v0}, Landroid/icu/impl/RuleCharacterIterator$Position;-><init>()V

    move-object p1, v0

    .line 232
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/icu/impl/RuleCharacterIterator$Position;->-$$Nest$fputbuf(Landroid/icu/impl/RuleCharacterIterator$Position;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    invoke-static {p1, v0}, Landroid/icu/impl/RuleCharacterIterator$Position;->-$$Nest$fputbufPos(Landroid/icu/impl/RuleCharacterIterator$Position;I)V

    .line 234
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Landroid/icu/impl/RuleCharacterIterator$Position;->-$$Nest$fputposIndex(Landroid/icu/impl/RuleCharacterIterator$Position;I)V

    .line 235
    return-object p1
.end method

.method public blacklist inVariable()Z
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isEscaped()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    return v0
.end method

.method public blacklist jumpahead(I)V
    .registers 4
    .param p1, "count"    # I

    .line 303
    if-ltz p1, :cond_44

    .line 306
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 307
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 308
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_23

    .line 311
    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    goto :goto_3d

    .line 309
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 315
    :cond_29
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    .line 316
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 317
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3e

    .line 321
    .end local v0    # "i":I
    :cond_3d
    :goto_3d
    return-void

    .line 318
    .restart local v0    # "i":I
    :cond_3e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 304
    .end local v0    # "i":I
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist next(I)I
    .registers 8
    .param p1, "options"    # I

    .line 140
    const/4 v0, -0x1

    .line 141
    .local v0, "c":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    .line 144
    :goto_4
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    move-result v0

    .line 145
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    .line 147
    const/16 v2, 0x24

    if-ne v0, v2, :cond_65

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    if-nez v2, :cond_65

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    if-eqz v2, :cond_65

    .line 149
    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v5, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/icu/text/SymbolTable;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_32

    .line 153
    goto :goto_9e

    .line 155
    :cond_32
    iput v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 156
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    invoke-interface {v3, v2}, Landroid/icu/text/SymbolTable;->lookup(Ljava/lang/String;)[C

    move-result-object v3

    .line 157
    .local v3, "chars":[C
    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    .line 163
    array-length v5, v3

    if-nez v5, :cond_42

    .line 164
    iput-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    .line 166
    :cond_42
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    .line 167
    goto :goto_4

    .line 158
    :cond_4a
    iput-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined variable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "chars":[C
    :cond_65
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_70

    .line 171
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 172
    goto :goto_4

    .line 175
    :cond_70
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_9e

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_9e

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->getCurrentBuffer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->getCurrentBufferPos()I

    move-result v2

    .line 176
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 178
    .local v1, "cpAndLength":I
    if-ltz v1, :cond_96

    .line 181
    invoke-static {v1}, Landroid/icu/impl/Utility;->cpFromCodePointAndLength(I)I

    move-result v0

    .line 182
    invoke-static {v1}, Landroid/icu/impl/Utility;->lengthFromCodePointAndLength(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 183
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    .line 184
    .end local v1    # "cpAndLength":I
    goto :goto_9e

    .line 179
    .restart local v1    # "cpAndLength":I
    :cond_96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid escape"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .end local v1    # "cpAndLength":I
    :cond_9e
    :goto_9e
    return v0
.end method

.method public blacklist setPos(Landroid/icu/impl/RuleCharacterIterator$Position;)V
    .registers 4
    .param p1, "p"    # Landroid/icu/impl/RuleCharacterIterator$Position;

    .line 244
    invoke-static {p1}, Landroid/icu/impl/RuleCharacterIterator$Position;->-$$Nest$fgetbuf(Landroid/icu/impl/RuleCharacterIterator$Position;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-static {p1}, Landroid/icu/impl/RuleCharacterIterator$Position;->-$$Nest$fgetposIndex(Landroid/icu/impl/RuleCharacterIterator$Position;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 246
    invoke-static {p1}, Landroid/icu/impl/RuleCharacterIterator$Position;->-$$Nest$fgetbufPos(Landroid/icu/impl/RuleCharacterIterator$Position;)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    .line 247
    return-void
.end method

.method public blacklist skipIgnored(I)V
    .registers 4
    .param p1, "options"    # I

    .line 258
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_17

    .line 260
    :goto_4
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    move-result v0

    .line 261
    .local v0, "a":I
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_17

    .line 262
    :cond_f
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    .line 263
    .end local v0    # "a":I
    goto :goto_4

    .line 265
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 331
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 332
    .local v0, "b":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

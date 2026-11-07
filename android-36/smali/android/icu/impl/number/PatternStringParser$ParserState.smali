.class Landroid/icu/impl/number/PatternStringParser$ParserState;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserState"
.end annotation


# instance fields
.field greylist-max-o offset:I

.field final greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    .line 230
    return-void
.end method


# virtual methods
.method greylist-max-o next()I
    .registers 4

    .line 256
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    .line 257
    .local v0, "codePoint":I
    iget v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    .line 258
    return v0
.end method

.method greylist-max-o peek()I
    .registers 3

    .line 234
    iget v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    iget-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 235
    const/4 v0, -0x1

    return v0

    .line 237
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method blacklist peek2()I
    .registers 5

    .line 243
    iget v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    iget-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_c

    .line 244
    return v2

    .line 246
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 247
    .local v0, "cp1":I
    iget v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 248
    .local v1, "offset2":I
    iget-object v3, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_24

    .line 249
    return v2

    .line 251
    :cond_24
    iget-object v2, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    return v2
.end method

.method greylist-max-o toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Malformed pattern for ICU DecimalFormat: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

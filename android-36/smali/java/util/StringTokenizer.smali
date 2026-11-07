.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o currentPosition:I

.field private greylist-max-o delimiterCodePoints:[I

.field private greylist-max-o delimiters:Ljava/lang/String;

.field private greylist-max-o delimsChanged:Z

.field private greylist-max-o hasSurrogates:Z

.field private greylist-max-o maxDelimCodePoint:I

.field private greylist-max-o maxPosition:I

.field private greylist-max-o newPosition:I

.field private greylist-max-o retDelims:Z

.field private greylist-max-o str:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 234
    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelims"    # Z

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    .line 193
    iput v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 194
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 195
    iput-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    .line 196
    iput-object p1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/util/StringTokenizer;->maxPosition:I

    .line 198
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 199
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    .line 200
    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    .line 201
    return-void
.end method

.method private greylist-max-o isDelimiter(I)Z
    .registers 7
    .param p1, "codePoint"    # I

    .line 298
    iget-object v0, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    .line 299
    .local v4, "delimiterCodePoint":I
    if-ne v4, p1, :cond_d

    .line 300
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v4    # "delimiterCodePoint":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 303
    :cond_10
    return v2
.end method

.method private greylist-max-o scanToken(I)I
    .registers 5
    .param p1, "startPos"    # I

    .line 269
    move v0, p1

    .line 270
    .local v0, "position":I
    :goto_1
    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_37

    .line 271
    iget-boolean v1, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v1, :cond_20

    .line 272
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 273
    .local v1, "c":C
    iget v2, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v2, :cond_1c

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1c

    .line 274
    goto :goto_37

    .line 275
    :cond_1c
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 276
    goto :goto_1

    .line 277
    :cond_20
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 278
    .local v1, "c":I
    iget v2, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v2, :cond_31

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 279
    goto :goto_37

    .line 280
    :cond_31
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 281
    .end local v1    # "c":I
    goto :goto_1

    .line 283
    :cond_37
    :goto_37
    iget-boolean v1, p0, Ljava/util/StringTokenizer;->retDelims:Z

    if-eqz v1, :cond_6b

    if-ne p1, v0, :cond_6b

    .line 284
    iget-boolean v1, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v1, :cond_56

    .line 285
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 286
    .local v1, "c":C
    iget v2, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v2, :cond_55

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_55

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 288
    .end local v1    # "c":C
    :cond_55
    goto :goto_6b

    .line 289
    :cond_56
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 290
    .local v1, "c":I
    iget v2, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v2, :cond_6b

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 291
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 294
    .end local v1    # "c":I
    :cond_6b
    :goto_6b
    return v0
.end method

.method private greylist-max-o setMaxDelimCodePoint()V
    .registers 7

    .line 141
    iget-object v0, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    .line 143
    return-void

    .line 146
    :cond_8
    const/4 v0, 0x0

    .line 148
    .local v0, "m":I
    const/4 v1, 0x0

    .line 149
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 150
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 151
    .local v3, "c":I
    const v4, 0xd800

    if-lt v3, v4, :cond_2c

    const v4, 0xdfff

    if-gt v3, v4, :cond_2c

    .line 152
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 153
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    .line 155
    :cond_2c
    if-ge v0, v3, :cond_2f

    .line 156
    move v0, v3

    .line 157
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 149
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_b

    .line 159
    .end local v2    # "i":I
    .end local v3    # "c":I
    :cond_37
    iput v0, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    .line 161
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-eqz v2, :cond_57

    .line 162
    new-array v2, v1, [I

    iput-object v2, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    .line 163
    const/4 v2, 0x0

    .restart local v2    # "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_43
    if-ge v2, v1, :cond_57

    .line 164
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 165
    .local v4, "c":I
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    aput v4, v5, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_43

    .line 168
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "c":I
    :cond_57
    return-void
.end method

.method private greylist-max-o skipDelimiters(I)I
    .registers 5
    .param p1, "startPos"    # I

    .line 243
    iget-object v0, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 246
    move v0, p1

    .line 247
    .local v0, "position":I
    :goto_5
    iget-boolean v1, p0, Ljava/util/StringTokenizer;->retDelims:Z

    if-nez v1, :cond_3f

    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_3f

    .line 248
    iget-boolean v1, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    if-nez v1, :cond_28

    .line 249
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 250
    .local v1, "c":C
    iget v2, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v2, :cond_3f

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_24

    .line 251
    goto :goto_3f

    .line 252
    :cond_24
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 253
    goto :goto_5

    .line 254
    :cond_28
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 255
    .local v1, "c":I
    iget v2, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    if-gt v1, v2, :cond_3f

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 256
    goto :goto_3f

    .line 258
    :cond_39
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    .end local v1    # "c":I
    goto :goto_5

    .line 261
    :cond_3f
    :goto_3f
    return v0

    .line 244
    .end local v0    # "position":I
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api countTokens()I
    .registers 4

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "count":I
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 420
    .local v1, "currpos":I
    :goto_3
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_17

    .line 421
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v1

    .line 422
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_10

    .line 423
    goto :goto_17

    .line 424
    :cond_10
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    move-result v1

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 427
    :cond_17
    :goto_17
    return v0
.end method

.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 389
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasMoreTokens()Z
    .registers 3

    .line 321
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v0

    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 322
    iget v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 405
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextToken()Ljava/lang/String;
    .registers 4

    .line 339
    iget v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    if-ltz v0, :cond_b

    iget-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    if-nez v0, :cond_b

    .line 340
    iget v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    goto :goto_11

    :cond_b
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    move-result v0

    :goto_11
    iput v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    .line 346
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_32

    .line 348
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 349
    .local v0, "start":I
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    move-result v1

    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    .line 350
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Ljava/util/StringTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 347
    .end local v0    # "start":I
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "delim"    # Ljava/lang/String;

    .line 369
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    .line 374
    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    .line 375
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

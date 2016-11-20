.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private delimiterCodePoints:[I

.field private delimiters:Ljava/lang/String;

.field private delimsChanged:Z

.field private hasSurrogates:Z

.field private maxDelimCodePoint:I

.field private maxPosition:I

.field private newPosition:I

.field private retDelims:Z

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    const-string/jumbo v0, " \t\n\r\u000c"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@7
    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelims"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 130
    iput-boolean v1, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    #@6
    .line 195
    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@8
    .line 196
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    #@b
    .line 197
    iput-boolean v1, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    #@d
    .line 198
    iput-object p1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@f
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@15
    .line 200
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@17
    .line 201
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    #@19
    .line 202
    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    #@1c
    .line 194
    return-void
.end method

.method private isDelimiter(I)Z
    .locals 2
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 301
    iget-object v1, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 302
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 305
    :cond_1
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method private scanToken(I)I
    .locals 4
    .param p1, "startPos"    # I

    #@0
    .prologue
    .line 271
    move v2, p1

    #@1
    .line 272
    .local v2, "position":I
    :goto_0
    iget v3, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@3
    if-ge v2, v3, :cond_0

    #@5
    .line 273
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    #@7
    if-nez v3, :cond_3

    #@9
    .line 274
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@b
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 275
    .local v0, "c":C
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@11
    if-gt v0, v3, :cond_2

    #@13
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@15
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v3

    #@19
    if-ltz v3, :cond_2

    #@1b
    .line 285
    .end local v0    # "c":C
    :cond_0
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    #@1d
    if-eqz v3, :cond_1

    #@1f
    if-ne p1, v2, :cond_1

    #@21
    .line 286
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    #@23
    if-nez v3, :cond_5

    #@25
    .line 287
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@27
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v0

    #@2b
    .line 288
    .restart local v0    # "c":C
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@2d
    if-gt v0, v3, :cond_1

    #@2f
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@34
    move-result v3

    #@35
    if-ltz v3, :cond_1

    #@37
    .line 289
    add-int/lit8 v2, v2, 0x1

    #@39
    .line 296
    .end local v0    # "c":C
    :cond_1
    :goto_1
    return v2

    #@3a
    .line 277
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 279
    .end local v0    # "c":C
    :cond_3
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@3f
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    #@42
    move-result v1

    #@43
    .line 280
    .local v1, "c":I
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@45
    if-gt v1, v3, :cond_4

    #@47
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_0

    #@4d
    .line 282
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@50
    move-result v3

    #@51
    add-int/2addr v2, v3

    #@52
    goto :goto_0

    #@53
    .line 291
    .end local v1    # "c":I
    :cond_5
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@55
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    #@58
    move-result v1

    #@59
    .line 292
    .restart local v1    # "c":I
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@5b
    if-gt v1, v3, :cond_1

    #@5d
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_1

    #@63
    .line 293
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@66
    move-result v3

    #@67
    add-int/2addr v2, v3

    #@68
    goto :goto_1
.end method

.method private setMaxDelimCodePoint()V
    .locals 6

    #@0
    .prologue
    .line 143
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 144
    const/4 v5, 0x0

    #@5
    iput v5, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@7
    .line 145
    return-void

    #@8
    .line 148
    :cond_0
    const/4 v4, 0x0

    #@9
    .line 150
    .local v4, "m":I
    const/4 v1, 0x0

    #@a
    .line 151
    .local v1, "count":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@10
    move-result v5

    #@11
    if-ge v2, v5, :cond_3

    #@13
    .line 152
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@15
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 153
    .local v0, "c":I
    const v5, 0xd800

    #@1c
    if-lt v0, v5, :cond_1

    #@1e
    const v5, 0xdfff

    #@21
    if-gt v0, v5, :cond_1

    #@23
    .line 154
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@25
    invoke-virtual {v5, v2}, Ljava/lang/String;->codePointAt(I)I

    #@28
    move-result v0

    #@29
    .line 155
    const/4 v5, 0x1

    #@2a
    iput-boolean v5, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    #@2c
    .line 157
    :cond_1
    if-ge v4, v0, :cond_2

    #@2e
    .line 158
    move v4, v0

    #@2f
    .line 159
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@31
    .line 151
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@34
    move-result v5

    #@35
    add-int/2addr v2, v5

    #@36
    goto :goto_0

    #@37
    .line 161
    .end local v0    # "c":I
    :cond_3
    iput v4, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@39
    .line 163
    iget-boolean v5, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    #@3b
    if-eqz v5, :cond_4

    #@3d
    .line 164
    new-array v5, v1, [I

    #@3f
    iput-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    #@41
    .line 165
    const/4 v2, 0x0

    #@42
    const/4 v3, 0x0

    #@43
    .local v3, "j":I
    :goto_1
    if-ge v2, v1, :cond_4

    #@45
    .line 166
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@47
    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    #@4a
    move-result v0

    #@4b
    .line 167
    .restart local v0    # "c":I
    iget-object v5, p0, Ljava/util/StringTokenizer;->delimiterCodePoints:[I

    #@4d
    aput v0, v5, v2

    #@4f
    .line 165
    add-int/lit8 v2, v2, 0x1

    #@51
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@54
    move-result v5

    #@55
    add-int/2addr v3, v5

    #@56
    goto :goto_1

    #@57
    .line 142
    .end local v0    # "c":I
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method private skipDelimiters(I)I
    .locals 4
    .param p1, "startPos"    # I

    #@0
    .prologue
    .line 245
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 246
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 248
    :cond_0
    move v2, p1

    #@b
    .line 249
    .local v2, "position":I
    :goto_0
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->retDelims:Z

    #@d
    if-nez v3, :cond_1

    #@f
    iget v3, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@11
    if-ge v2, v3, :cond_1

    #@13
    .line 250
    iget-boolean v3, p0, Ljava/util/StringTokenizer;->hasSurrogates:Z

    #@15
    if-nez v3, :cond_3

    #@17
    .line 251
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 252
    .local v0, "c":C
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@1f
    if-gt v0, v3, :cond_1

    #@21
    iget-object v3, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v3

    #@27
    if-gez v3, :cond_2

    #@29
    .line 263
    .end local v0    # "c":C
    :cond_1
    return v2

    #@2a
    .line 254
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 256
    .end local v0    # "c":C
    :cond_3
    iget-object v3, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    #@32
    move-result v1

    #@33
    .line 257
    .local v1, "c":I
    iget v3, p0, Ljava/util/StringTokenizer;->maxDelimCodePoint:I

    #@35
    if-gt v1, v3, :cond_1

    #@37
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->isDelimiter(I)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 260
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@40
    move-result v3

    #@41
    add-int/2addr v2, v3

    #@42
    goto :goto_0
.end method


# virtual methods
.method public countTokens()I
    .locals 3

    #@0
    .prologue
    .line 420
    const/4 v0, 0x0

    #@1
    .line 421
    .local v0, "count":I
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@3
    .line 422
    .local v1, "currpos":I
    :goto_0
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 423
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    #@a
    move-result v1

    #@b
    .line 424
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@d
    if-lt v1, v2, :cond_1

    #@f
    .line 429
    :cond_0
    return v0

    #@10
    .line 426
    :cond_1
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    #@13
    move-result v1

    #@14
    .line 427
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0
.end method

.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 391
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasMoreTokens()Z
    .locals 2

    #@0
    .prologue
    .line 323
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@2
    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    #@8
    .line 324
    iget v0, p0, Ljava/util/StringTokenizer;->newPosition:I

    #@a
    iget v1, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 407
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 341
    iget v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    #@3
    if-ltz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 342
    :cond_0
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@b
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->skipDelimiters(I)I

    #@e
    move-result v1

    #@f
    .line 341
    :goto_0
    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@11
    .line 345
    iput-boolean v2, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    #@13
    .line 346
    const/4 v1, -0x1

    #@14
    iput v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    #@16
    .line 348
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@18
    iget v2, p0, Ljava/util/StringTokenizer;->maxPosition:I

    #@1a
    if-lt v1, v2, :cond_2

    #@1c
    .line 349
    new-instance v1, Ljava/util/NoSuchElementException;

    #@1e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@21
    throw v1

    #@22
    .line 342
    :cond_1
    iget v1, p0, Ljava/util/StringTokenizer;->newPosition:I

    #@24
    goto :goto_0

    #@25
    .line 350
    :cond_2
    iget v0, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@27
    .line 351
    .local v0, "start":I
    iget v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@29
    invoke-direct {p0, v1}, Ljava/util/StringTokenizer;->scanToken(I)I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@2f
    .line 352
    iget-object v1, p0, Ljava/util/StringTokenizer;->str:Ljava/lang/String;

    #@31
    iget v2, p0, Ljava/util/StringTokenizer;->currentPosition:I

    #@33
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    #@2
    .line 374
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Ljava/util/StringTokenizer;->delimsChanged:Z

    #@5
    .line 376
    invoke-direct {p0}, Ljava/util/StringTokenizer;->setMaxDelimCodePoint()V

    #@8
    .line 377
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

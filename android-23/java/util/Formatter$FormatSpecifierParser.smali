.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatSpecifierParser"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private i:I

.field private length:I

.field private startIndex:I


# direct methods
.method static synthetic -get0(Ljava/util/Formatter$FormatSpecifierParser;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@2
    return v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2287
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@5
    .line 2288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    #@b
    .line 2286
    return-void
.end method

.method private advance()C
    .locals 3

    #@0
    .prologue
    .line 2314
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@2
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 2315
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 2317
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@d
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private failNextInt()I
    .locals 1

    #@0
    .prologue
    .line 2417
    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2418
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@d
    goto :goto_0

    #@e
    .line 2420
    :cond_0
    const/4 v0, -0x1

    #@f
    return v0
.end method

.method private nextInt()I
    .locals 7

    #@0
    .prologue
    .line 2405
    const-wide/16 v0, 0x0

    #@2
    .line 2406
    .local v0, "value":J
    :cond_0
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@4
    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    #@6
    if-ge v2, v3, :cond_1

    #@8
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@a
    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 2407
    const-wide/16 v2, 0xa

    #@18
    mul-long/2addr v2, v0

    #@19
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@1b
    iget v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@1d
    add-int/lit8 v6, v5, 0x1

    #@1f
    iput v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v4

    #@25
    add-int/lit8 v4, v4, -0x30

    #@27
    int-to-long v4, v4

    #@28
    add-long v0, v2, v4

    #@2a
    .line 2408
    const-wide/32 v2, 0x7fffffff

    #@2d
    cmp-long v2, v0, v2

    #@2f
    if-lez v2, :cond_0

    #@31
    .line 2409
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->failNextInt()I

    #@34
    move-result v2

    #@35
    return v2

    #@36
    .line 2412
    :cond_1
    long-to-int v2, v0

    #@37
    return v2
.end method

.method private parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .locals 5
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;

    #@0
    .prologue
    .line 2326
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@2
    .line 2327
    .local v2, "position":I
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@5
    move-result v0

    #@6
    .line 2328
    .local v0, "ch":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_4

    #@c
    .line 2329
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    #@f
    move-result v1

    #@10
    .line 2330
    .local v1, "number":I
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@13
    move-result v3

    #@14
    const/16 v4, 0x24

    #@16
    if-ne v3, v4, :cond_2

    #@18
    .line 2332
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@1b
    .line 2333
    const/4 v3, -0x1

    #@1c
    if-ne v1, v3, :cond_0

    #@1e
    .line 2334
    new-instance v3, Ljava/util/MissingFormatArgumentException;

    #@20
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 2338
    :cond_0
    add-int/lit8 v3, v1, -0x1

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    #@32
    .line 2354
    .end local v1    # "number":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@35
    move-result v3

    #@36
    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setFlag(I)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_5

    #@3c
    .line 2355
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@3f
    goto :goto_0

    #@40
    .line 2340
    .restart local v1    # "number":I
    :cond_2
    const/16 v3, 0x30

    #@42
    if-ne v0, v3, :cond_3

    #@44
    .line 2342
    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@46
    goto :goto_0

    #@47
    .line 2345
    :cond_3
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    #@4a
    move-result-object v3

    #@4b
    return-object v3

    #@4c
    .line 2348
    .end local v1    # "number":I
    :cond_4
    const/16 v3, 0x3c

    #@4e
    if-ne v0, v3, :cond_1

    #@50
    .line 2349
    const/4 v3, -0x2

    #@51
    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    #@54
    .line 2350
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@57
    goto :goto_0

    #@58
    .line 2359
    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@5b
    move-result v0

    #@5c
    .line 2360
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_6

    #@62
    .line 2361
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    #@65
    move-result v3

    #@66
    invoke-direct {p0, p1, v3}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    #@69
    move-result-object v3

    #@6a
    return-object v3

    #@6b
    .line 2362
    :cond_6
    const/16 v3, 0x2e

    #@6d
    if-ne v0, v3, :cond_7

    #@6f
    .line 2363
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    #@72
    move-result-object v3

    #@73
    return-object v3

    #@74
    .line 2365
    :cond_7
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    #@77
    move-result-object v3

    #@78
    return-object v3
.end method

.method private parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .locals 3
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;

    #@0
    .prologue
    .line 2394
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@3
    move-result v0

    #@4
    .line 2395
    .local v0, "conversionType":C
    invoke-virtual {p1, v0}, Ljava/util/Formatter$FormatToken;->setConversionType(C)V

    #@7
    .line 2396
    const/16 v2, 0x74

    #@9
    if-eq v0, v2, :cond_0

    #@b
    const/16 v2, 0x54

    #@d
    if-ne v0, v2, :cond_1

    #@f
    .line 2397
    :cond_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@12
    move-result v1

    #@13
    .line 2398
    .local v1, "dateSuffix":C
    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setDateSuffix(C)V

    #@16
    .line 2400
    .end local v1    # "dateSuffix":C
    :cond_1
    return-object p1
.end method

.method private parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .locals 2
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;

    #@0
    .prologue
    .line 2382
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@3
    .line 2383
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@6
    move-result v0

    #@7
    .line 2384
    .local v0, "ch":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2385
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@14
    .line 2386
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 2389
    :cond_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method private parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;
    .locals 2
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;
    .param p2, "width"    # I

    #@0
    .prologue
    .line 2372
    invoke-virtual {p1, p2}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    #@3
    .line 2373
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    #@6
    move-result v0

    #@7
    .line 2374
    .local v0, "ch":I
    const/16 v1, 0x2e

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 2375
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 2377
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method private peek()I
    .locals 2

    #@0
    .prologue
    .line 2310
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@2
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@8
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, -0x1

    #@10
    goto :goto_0
.end method

.method private unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .locals 2

    #@0
    .prologue
    .line 2321
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@2
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
.end method


# virtual methods
.method getFormatSpecifierText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2306
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    #@4
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method parseFormatToken(I)Ljava/util/Formatter$FormatToken;
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 2296
    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    #@2
    .line 2297
    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    #@4
    .line 2298
    new-instance v0, Ljava/util/Formatter$FormatToken;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Ljava/util/Formatter$FormatToken;-><init>(Ljava/util/Formatter$FormatToken;)V

    #@a
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

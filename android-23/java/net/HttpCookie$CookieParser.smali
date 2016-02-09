.class Ljava/net/HttpCookie$CookieParser;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookieParser"
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME_TERMINATORS:Ljava/lang/String; = ",;= \t"

.field private static final WHITESPACE:Ljava/lang/String; = " \t"


# instance fields
.field hasExpires:Z

.field hasMaxAge:Z

.field hasVersion:Z

.field private final input:Ljava/lang/String;

.field private final inputLowerCase:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 217
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@6
    .line 227
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    #@8
    .line 228
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    #@a
    .line 229
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    #@c
    .line 232
    iput-object p1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@e
    .line 233
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    #@16
    .line 231
    return-void
.end method

.method private find(Ljava/lang/String;)I
    .locals 3
    .param p1, "chars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@2
    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 423
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v1

    #@14
    const/4 v2, -0x1

    #@15
    if-eq v1, v2, :cond_0

    #@17
    .line 424
    return v0

    #@18
    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 427
    :cond_1
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    return v1
.end method

.method private readAttributeName(Z)Ljava/lang/String;
    .locals 4
    .param p1, "returnLowerCase"    # Z

    #@0
    .prologue
    .line 368
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    #@3
    .line 369
    const-string/jumbo v3, ",;= \t"

    #@6
    invoke-direct {p0, v3}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    .line 370
    .local v0, "c":I
    if-eqz p1, :cond_0

    #@c
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    #@e
    .line 371
    .local v1, "forSubstring":Ljava/lang/String;
    :goto_0
    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@10
    if-ge v3, v0, :cond_1

    #@12
    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@14
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 372
    :goto_1
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@1a
    .line 373
    return-object v2

    #@1b
    .line 370
    .end local v1    # "forSubstring":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@1d
    .restart local v1    # "forSubstring":Ljava/lang/String;
    goto :goto_0

    #@1e
    .line 371
    :cond_1
    const/4 v2, 0x0

    #@1f
    .local v2, "result":Ljava/lang/String;
    goto :goto_1
.end method

.method private readAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "terminators"    # Ljava/lang/String;

    #@0
    .prologue
    .line 394
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    #@3
    .line 400
    iget v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@5
    iget-object v5, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    if-ge v4, v5, :cond_2

    #@d
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@f
    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v4

    #@15
    const/16 v5, 0x22

    #@17
    if-eq v4, v5, :cond_0

    #@19
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@1b
    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v4

    #@21
    const/16 v5, 0x27

    #@23
    if-ne v4, v5, :cond_2

    #@25
    .line 401
    :cond_0
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@27
    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@29
    add-int/lit8 v6, v5, 0x1

    #@2b
    iput v6, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v2

    #@31
    .line 402
    .local v2, "quoteCharacter":C
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@33
    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@35
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(II)I

    #@38
    move-result v1

    #@39
    .line 403
    .local v1, "closeQuote":I
    const/4 v4, -0x1

    #@3a
    if-ne v1, v4, :cond_1

    #@3c
    .line 404
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "Unterminated string literal in "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    iget-object v6, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v4

    #@58
    .line 406
    :cond_1
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@5a
    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@5c
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 407
    .local v3, "result":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    #@62
    iput v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@64
    .line 408
    return-object v3

    #@65
    .line 411
    .end local v1    # "closeQuote":I
    .end local v2    # "quoteCharacter":C
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    #@68
    move-result v0

    #@69
    .line 412
    .local v0, "c":I
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@6b
    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@6d
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    .line 413
    .restart local v3    # "result":Ljava/lang/String;
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@73
    .line 414
    return-object v3
.end method

.method private readEqualsSign()Z
    .locals 2

    #@0
    .prologue
    .line 380
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    #@3
    .line 381
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@5
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    iget-object v0, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@f
    iget v1, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    const/16 v1, 0x3d

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 382
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@1f
    .line 383
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 385
    :cond_0
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method private setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cookie"    # Ljava/net/HttpCookie;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v6, 0x1

    #@3
    .line 319
    const-string/jumbo v4, "comment"

    #@6
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    invoke-static {p1}, Ljava/net/HttpCookie;->-get0(Ljava/net/HttpCookie;)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 320
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->-set0(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    #@15
    .line 318
    .end local p3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 321
    .restart local p3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "commenturl"

    #@19
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    invoke-static {p1}, Ljava/net/HttpCookie;->-get1(Ljava/net/HttpCookie;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    if-nez v4, :cond_2

    #@25
    .line 322
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->-set1(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    #@28
    goto :goto_0

    #@29
    .line 323
    :cond_2
    const-string/jumbo v4, "discard"

    #@2c
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_3

    #@32
    .line 324
    invoke-static {p1, v6}, Ljava/net/HttpCookie;->-set2(Ljava/net/HttpCookie;Z)Z

    #@35
    goto :goto_0

    #@36
    .line 325
    :cond_3
    const-string/jumbo v4, "domain"

    #@39
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_4

    #@3f
    invoke-static {p1}, Ljava/net/HttpCookie;->-get2(Ljava/net/HttpCookie;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    if-nez v4, :cond_4

    #@45
    .line 326
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->-set3(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    #@48
    goto :goto_0

    #@49
    .line 327
    :cond_4
    const-string/jumbo v4, "expires"

    #@4c
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_6

    #@52
    .line 328
    iput-boolean v6, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    #@54
    .line 329
    invoke-static {p1}, Ljava/net/HttpCookie;->-get3(Ljava/net/HttpCookie;)J

    #@57
    move-result-wide v4

    #@58
    cmp-long v4, v4, v8

    #@5a
    if-nez v4, :cond_0

    #@5c
    .line 330
    invoke-static {p3}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@5f
    move-result-object v0

    #@60
    .line 331
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_5

    #@62
    .line 332
    invoke-static {p1, v0}, Ljava/net/HttpCookie;->-wrap0(Ljava/net/HttpCookie;Ljava/util/Date;)V

    #@65
    goto :goto_0

    #@66
    .line 334
    :cond_5
    const-wide/16 v4, 0x0

    #@68
    invoke-static {p1, v4, v5}, Ljava/net/HttpCookie;->-set5(Ljava/net/HttpCookie;J)J

    #@6b
    goto :goto_0

    #@6c
    .line 337
    .end local v0    # "date":Ljava/util/Date;
    :cond_6
    const-string/jumbo v4, "max-age"

    #@6f
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_7

    #@75
    invoke-static {p1}, Ljava/net/HttpCookie;->-get3(Ljava/net/HttpCookie;)J

    #@78
    move-result-wide v4

    #@79
    cmp-long v4, v4, v8

    #@7b
    if-nez v4, :cond_7

    #@7d
    .line 344
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@80
    move-result-wide v2

    #@81
    .line 345
    .local v2, "maxAge":J
    const/4 v4, 0x1

    #@82
    iput-boolean v4, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    #@84
    .line 346
    invoke-static {p1, v2, v3}, Ljava/net/HttpCookie;->-set5(Ljava/net/HttpCookie;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@87
    goto :goto_0

    #@88
    .line 347
    .end local v2    # "maxAge":J
    :catch_0
    move-exception v1

    #@89
    .line 348
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8b
    new-instance v5, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v6, "Invalid max-age: "

    #@93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v5

    #@9f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v4

    #@a3
    .line 350
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string/jumbo v4, "path"

    #@a6
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v4

    #@aa
    if-eqz v4, :cond_8

    #@ac
    invoke-static {p1}, Ljava/net/HttpCookie;->-get4(Ljava/net/HttpCookie;)Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    if-nez v4, :cond_8

    #@b2
    .line 351
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->-set6(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    #@b5
    goto/16 :goto_0

    #@b7
    .line 352
    :cond_8
    const-string/jumbo v4, "port"

    #@ba
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v4

    #@be
    if-eqz v4, :cond_a

    #@c0
    invoke-static {p1}, Ljava/net/HttpCookie;->-get5(Ljava/net/HttpCookie;)Ljava/lang/String;

    #@c3
    move-result-object v4

    #@c4
    if-nez v4, :cond_a

    #@c6
    .line 353
    if-eqz p3, :cond_9

    #@c8
    .end local p3    # "value":Ljava/lang/String;
    :goto_1
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->-set7(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    #@cb
    goto/16 :goto_0

    #@cd
    .restart local p3    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo p3, ""

    #@d0
    goto :goto_1

    #@d1
    .line 354
    :cond_a
    const-string/jumbo v4, "secure"

    #@d4
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result v4

    #@d8
    if-eqz v4, :cond_b

    #@da
    .line 355
    invoke-static {p1, v6}, Ljava/net/HttpCookie;->-set8(Ljava/net/HttpCookie;Z)Z

    #@dd
    goto/16 :goto_0

    #@df
    .line 356
    :cond_b
    const-string/jumbo v4, "httponly"

    #@e2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v4

    #@e6
    if-eqz v4, :cond_c

    #@e8
    .line 357
    invoke-static {p1, v6}, Ljava/net/HttpCookie;->-set4(Ljava/net/HttpCookie;Z)Z

    #@eb
    goto/16 :goto_0

    #@ed
    .line 358
    :cond_c
    const-string/jumbo v4, "version"

    #@f0
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f3
    move-result v4

    #@f4
    if-eqz v4, :cond_0

    #@f6
    iget-boolean v4, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    #@f8
    if-nez v4, :cond_0

    #@fa
    .line 359
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fd
    move-result v4

    #@fe
    invoke-static {p1, v4}, Ljava/net/HttpCookie;->-set9(Ljava/net/HttpCookie;I)I

    #@101
    goto/16 :goto_0
.end method

.method private skipWhitespace()V
    .locals 3

    #@0
    .prologue
    .line 431
    :goto_0
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@2
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 432
    const-string/jumbo v0, " \t"

    #@d
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@f
    iget v2, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v0

    #@19
    const/4 v1, -0x1

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 430
    :cond_0
    return-void

    #@1d
    .line 431
    :cond_1
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@23
    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 237
    new-instance v3, Ljava/util/ArrayList;

    #@4
    const/4 v8, 0x2

    #@5
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 240
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v5, 0x1

    #@9
    .line 241
    .local v5, "pre2965":Z
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    #@b
    const-string/jumbo v11, "set-cookie2:"

    #@e
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v8

    #@12
    if-eqz v8, :cond_1

    #@14
    .line 242
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@16
    const-string/jumbo v11, "set-cookie2:"

    #@19
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@1c
    move-result v11

    #@1d
    add-int/2addr v8, v11

    #@1e
    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@20
    .line 243
    const/4 v5, 0x0

    #@21
    .line 244
    iput-boolean v10, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    #@23
    .line 254
    :cond_0
    :goto_0
    invoke-direct {p0, v9}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 255
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_3

    #@29
    .line 256
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_2

    #@2f
    .line 257
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v9, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v10, "No cookies in "

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@3f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v8

    #@4b
    .line 245
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    #@4d
    const-string/jumbo v11, "set-cookie:"

    #@50
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_0

    #@56
    .line 246
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@58
    const-string/jumbo v11, "set-cookie:"

    #@5b
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@5e
    move-result v11

    #@5f
    add-int/2addr v8, v11

    #@60
    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@62
    goto :goto_0

    #@63
    .line 259
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    return-object v3

    #@64
    .line 262
    :cond_3
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    #@67
    move-result v8

    #@68
    if-nez v8, :cond_4

    #@6a
    .line 263
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@6c
    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v10, "Expected \'=\' after "

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    const-string/jumbo v10, " in "

    #@7f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v9

    #@8d
    .line 263
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@90
    throw v8

    #@91
    .line 267
    :cond_4
    if-eqz v5, :cond_6

    #@93
    const-string/jumbo v8, ";"

    #@96
    :goto_1
    invoke-direct {p0, v8}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 268
    .local v7, "value":Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    #@9c
    invoke-direct {v2, v4, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 269
    .local v2, "cookie":Ljava/net/HttpCookie;
    if-eqz v5, :cond_7

    #@a1
    move v8, v9

    #@a2
    :goto_2
    invoke-static {v2, v8}, Ljava/net/HttpCookie;->-set9(Ljava/net/HttpCookie;I)I

    #@a5
    .line 270
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a8
    .line 278
    :cond_5
    :goto_3
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    #@ab
    .line 279
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@ad
    iget-object v11, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@af
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@b2
    move-result v11

    #@b3
    if-ne v8, v11, :cond_8

    #@b5
    .line 310
    :goto_4
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    #@b7
    if-eqz v8, :cond_e

    #@b9
    .line 311
    invoke-static {v2, v9}, Ljava/net/HttpCookie;->-set9(Ljava/net/HttpCookie;I)I

    #@bc
    goto/16 :goto_0

    #@be
    .line 267
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, ",;"

    #@c1
    goto :goto_1

    #@c2
    .restart local v2    # "cookie":Ljava/net/HttpCookie;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_7
    move v8, v10

    #@c3
    .line 269
    goto :goto_2

    #@c4
    .line 283
    :cond_8
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@c6
    iget v11, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@c8
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    #@cb
    move-result v8

    #@cc
    const/16 v11, 0x2c

    #@ce
    if-ne v8, v11, :cond_9

    #@d0
    .line 284
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@d2
    add-int/lit8 v8, v8, 0x1

    #@d4
    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@d6
    goto :goto_4

    #@d7
    .line 286
    :cond_9
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    #@d9
    iget v11, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@db
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    #@de
    move-result v8

    #@df
    const/16 v11, 0x3b

    #@e1
    if-ne v8, v11, :cond_a

    #@e3
    .line 287
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@e5
    add-int/lit8 v8, v8, 0x1

    #@e7
    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    #@e9
    .line 290
    :cond_a
    invoke-direct {p0, v10}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    .line 291
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_5

    #@ef
    .line 299
    if-nez v5, :cond_b

    #@f1
    .line 300
    const-string/jumbo v8, "expires"

    #@f4
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v8

    #@f8
    .line 299
    if-nez v8, :cond_b

    #@fa
    .line 300
    const-string/jumbo v8, "port"

    #@fd
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@100
    move-result v8

    #@101
    .line 299
    if-eqz v8, :cond_d

    #@103
    .line 301
    :cond_b
    const-string/jumbo v6, ";"

    #@106
    .line 303
    .local v6, "terminators":Ljava/lang/String;
    :goto_5
    const/4 v1, 0x0

    #@107
    .line 304
    .local v1, "attributeValue":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    #@10a
    move-result v8

    #@10b
    if-eqz v8, :cond_c

    #@10d
    .line 305
    invoke-direct {p0, v6}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    #@110
    move-result-object v1

    #@111
    .line 307
    .end local v1    # "attributeValue":Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v2, v0, v1}, Ljava/net/HttpCookie$CookieParser;->setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    #@114
    goto :goto_3

    #@115
    .line 302
    .end local v6    # "terminators":Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, ";,"

    #@118
    .restart local v6    # "terminators":Ljava/lang/String;
    goto :goto_5

    #@119
    .line 312
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v6    # "terminators":Ljava/lang/String;
    :cond_e
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    #@11b
    if-eqz v8, :cond_0

    #@11d
    .line 313
    invoke-static {v2, v10}, Ljava/net/HttpCookie;->-set9(Ljava/net/HttpCookie;I)I

    #@120
    goto/16 :goto_0
.end method

.class public Lgov/nist/javax/sip/parser/URLParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "URLParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    .line 56
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const-string/jumbo v1, "sip_urlLexer"

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@d
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 50
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    #@5
    const-string/jumbo v1, "sip_urlLexer"

    #@8
    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    .line 49
    return-void
.end method

.method private base_phone_number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 376
    .local v1, "s":Ljava/lang/StringBuffer;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 377
    const-string/jumbo v3, "base_phone_number"

    #@c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 379
    :cond_0
    const/4 v0, 0x0

    #@10
    .line 380
    .local v0, "lc":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@12
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    .line 381
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v2

    #@1f
    .line 382
    .local v2, "w":C
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isDigit(C)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_1

    #@25
    .line 383
    const/16 v3, 0x2d

    #@27
    if-ne v2, v3, :cond_2

    #@29
    .line 387
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@2f
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@32
    .line 389
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 384
    :cond_2
    const/16 v3, 0x2e

    #@37
    if-eq v2, v3, :cond_1

    #@39
    .line 385
    const/16 v3, 0x28

    #@3b
    if-eq v2, v3, :cond_1

    #@3d
    .line 386
    const/16 v3, 0x29

    #@3f
    if-eq v2, v3, :cond_1

    #@41
    .line 390
    if-lez v0, :cond_5

    #@43
    .line 395
    .end local v2    # "w":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    move-result-object v3

    #@47
    .line 397
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@49
    if-eqz v4, :cond_4

    #@4b
    .line 398
    const-string/jumbo v4, "base_phone_number"

    #@4e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@51
    .line 395
    :cond_4
    return-object v3

    #@52
    .line 393
    .restart local v2    # "w":C
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "unexpected "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@69
    move-result-object v3

    #@6a
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    .line 396
    .end local v2    # "w":C
    :catchall_0
    move-exception v3

    #@6c
    .line 397
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@6e
    if-eqz v4, :cond_6

    #@70
    .line 398
    const-string/jumbo v4, "base_phone_number"

    #@73
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@76
    .line 396
    :cond_6
    throw v3
.end method

.method private final global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 6
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 474
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 475
    const-string/jumbo v4, "global_phone_number"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 477
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@c
    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    #@f
    .line 478
    .local v2, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    const/4 v4, 0x1

    #@10
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    #@13
    .line 479
    const/4 v1, 0x0

    #@14
    .line 480
    .local v1, "nv":Lgov/nist/core/NameValueList;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    const/16 v5, 0x2b

    #@18
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1b
    .line 481
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 482
    .local v0, "b":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    #@22
    .line 483
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 484
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@30
    move-result v3

    #@31
    .line 485
    .local v3, "tok":C
    const/16 v4, 0x3b

    #@33
    if-ne v3, v4, :cond_1

    #@35
    if-eqz p1, :cond_1

    #@37
    .line 486
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@39
    const/4 v5, 0x1

    #@3a
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@3d
    .line 487
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    #@40
    move-result-object v1

    #@41
    .line 488
    .local v1, "nv":Lgov/nist/core/NameValueList;
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 493
    .end local v1    # "nv":Lgov/nist/core/NameValueList;
    .end local v3    # "tok":C
    :cond_1
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@46
    if-eqz v4, :cond_2

    #@48
    .line 494
    const-string/jumbo v4, "global_phone_number"

    #@4b
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@4e
    .line 491
    :cond_2
    return-object v2

    #@4f
    .line 492
    .end local v0    # "b":Ljava/lang/String;
    .end local v2    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :catchall_0
    move-exception v4

    #@50
    .line 493
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@52
    if-eqz v5, :cond_3

    #@54
    .line 494
    const-string/jumbo v5, "global_phone_number"

    #@57
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@5a
    .line 492
    :cond_3
    throw v4
.end method

.method protected static isMark(C)Z
    .locals 1
    .param p0, "next"    # C

    #@0
    .prologue
    .line 59
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 69
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 59
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isReserved(C)Z
    .locals 1
    .param p0, "next"    # C

    #@0
    .prologue
    .line 177
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 190
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 188
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 177
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isReservedNoSlash(C)Z
    .locals 1
    .param p0, "next"    # C

    #@0
    .prologue
    .line 80
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 91
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 89
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 80
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isUnreserved(C)Z
    .locals 1
    .param p0, "next"    # C

    #@0
    .prologue
    .line 76
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method protected static isUserUnreserved(C)Z
    .locals 1
    .param p0, "la"    # C

    #@0
    .prologue
    .line 99
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 111
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 109
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 99
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private local_number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 408
    .local v2, "s":Ljava/lang/StringBuffer;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 409
    const-string/jumbo v3, "local_number"

    #@c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 411
    :cond_0
    const/4 v1, 0x0

    #@10
    .line 412
    .local v1, "lc":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@12
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    .line 413
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v0

    #@1f
    .line 414
    .local v0, "la":C
    const/16 v3, 0x2a

    #@21
    if-eq v0, v3, :cond_1

    #@23
    .line 415
    const/16 v3, 0x23

    #@25
    if-ne v0, v3, :cond_2

    #@27
    .line 422
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@2d
    .line 423
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 424
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 416
    :cond_2
    const/16 v3, 0x2d

    #@35
    if-eq v0, v3, :cond_1

    #@37
    .line 417
    const/16 v3, 0x2e

    #@39
    if-eq v0, v3, :cond_1

    #@3b
    .line 418
    const/16 v3, 0x28

    #@3d
    if-eq v0, v3, :cond_1

    #@3f
    .line 419
    const/16 v3, 0x29

    #@41
    if-eq v0, v3, :cond_1

    #@43
    .line 421
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    #@46
    move-result v3

    #@47
    .line 414
    if-nez v3, :cond_1

    #@49
    .line 425
    if-lez v1, :cond_5

    #@4b
    .line 430
    .end local v0    # "la":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    move-result-object v3

    #@4f
    .line 432
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@51
    if-eqz v4, :cond_4

    #@53
    .line 433
    const-string/jumbo v4, "local_number"

    #@56
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@59
    .line 430
    :cond_4
    return-object v3

    #@5a
    .line 428
    .restart local v0    # "la":C
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "unexepcted "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@71
    move-result-object v3

    #@72
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    .line 431
    .end local v0    # "la":C
    :catchall_0
    move-exception v3

    #@74
    .line 432
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@76
    if-eqz v4, :cond_6

    #@78
    .line 433
    const-string/jumbo v4, "local_number"

    #@7b
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@7e
    .line 431
    :cond_6
    throw v3
.end method

.method private local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 6
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 500
    const-string/jumbo v4, "local_phone_number"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 501
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@c
    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    #@f
    .line 502
    .local v2, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    const/4 v4, 0x0

    #@10
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    #@13
    .line 503
    const/4 v1, 0x0

    #@14
    .line 504
    .local v1, "nv":Lgov/nist/core/NameValueList;
    const/4 v0, 0x0

    #@15
    .line 506
    .local v0, "b":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->local_number()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 507
    .local v0, "b":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    #@1c
    .line 508
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 509
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    #@29
    move-result-object v3

    #@2a
    .line 510
    .local v3, "tok":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v4

    #@2e
    packed-switch v4, :pswitch_data_0

    #@31
    .line 527
    .end local v1    # "nv":Lgov/nist/core/NameValueList;
    .end local v3    # "tok":Lgov/nist/core/Token;
    :cond_1
    :goto_0
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 528
    const-string/jumbo v4, "local_phone_number"

    #@38
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@3b
    .line 530
    :cond_2
    return-object v2

    #@3c
    .line 513
    .restart local v1    # "nv":Lgov/nist/core/NameValueList;
    .restart local v3    # "tok":Lgov/nist/core/Token;
    :pswitch_0
    if-eqz p1, :cond_1

    #@3e
    .line 514
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@40
    const/4 v5, 0x1

    #@41
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@44
    .line 515
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    #@47
    move-result-object v1

    #@48
    .line 516
    .local v1, "nv":Lgov/nist/core/NameValueList;
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 526
    .end local v0    # "b":Ljava/lang/String;
    .end local v1    # "nv":Lgov/nist/core/NameValueList;
    .end local v3    # "tok":Lgov/nist/core/Token;
    :catchall_0
    move-exception v4

    #@4d
    .line 527
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@4f
    if-eqz v5, :cond_3

    #@51
    .line 528
    const-string/jumbo v5, "local_phone_number"

    #@54
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@57
    .line 526
    :cond_3
    throw v4

    #@58
    .line 510
    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 818
    const/4 v4, 0x3

    #@1
    new-array v2, v4, [Ljava/lang/String;

    #@3
    const-string/jumbo v4, "sip:alice@example.com"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v2, v5

    #@9
    .line 819
    const-string/jumbo v4, "sips:alice@examples.com"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v2, v5

    #@f
    .line 820
    const-string/jumbo v4, "sip:3Zqkv5dajqaaas0tCjCxT0xH2ZEuEMsFl0xoasip%3A%2B3519116786244%40siplab.domain.com@213.0.115.163:7070"

    #@12
    const/4 v5, 0x2

    #@13
    aput-object v4, v2, v5

    #@15
    .line 822
    .local v2, "test":[Ljava/lang/String;
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@17
    if-ge v0, v4, :cond_0

    #@19
    .line 824
    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    #@1b
    aget-object v4, v2, v0

    #@1d
    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    #@20
    .line 826
    .local v1, "p":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    #@23
    move-result-object v3

    #@24
    .line 827
    .local v3, "uri":Lgov/nist/javax/sip/address/GenericURI;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@26
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "uri type returned "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 828
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    aget-object v6, v2, v0

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    const-string/jumbo v6, " is SipUri? "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->isSipURI()Z

    #@5c
    move-result v6

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    .line 829
    const-string/jumbo v6, ">"

    #@64
    .line 828
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 829
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .line 828
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@77
    .line 822
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 815
    .end local v1    # "p":Lgov/nist/javax/sip/parser/URLParser;
    .end local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    :cond_0
    return-void
.end method

.method private phone_context()Lgov/nist/core/NameValue;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 570
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@3
    const/16 v4, 0x3d

    #@5
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@8
    .line 572
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@a
    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@d
    move-result v0

    #@e
    .line 574
    .local v0, "la":C
    const/16 v3, 0x2b

    #@10
    if-ne v0, v3, :cond_0

    #@12
    .line 575
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@14
    const/4 v4, 0x1

    #@15
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@18
    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "+"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 583
    .local v2, "value":Ljava/lang/Object;
    :goto_0
    new-instance v3, Lgov/nist/core/NameValue;

    #@32
    const-string/jumbo v4, "phone-context"

    #@35
    invoke-direct {v3, v4, v2, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@38
    return-object v3

    #@39
    .line 577
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 578
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@41
    const/16 v4, 0xfff

    #@43
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@46
    move-result-object v1

    #@47
    .line 579
    .local v1, "t":Lgov/nist/core/Token;
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    #@4c
    .line 581
    .end local v1    # "t":Lgov/nist/core/Token;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    #@4e
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Invalid phone-context:"

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    const/4 v5, -0x1

    #@63
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@66
    throw v3
.end method

.method private tel_parameters()Lgov/nist/core/NameValueList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 534
    new-instance v1, Lgov/nist/core/NameValueList;

    #@4
    invoke-direct {v1}, Lgov/nist/core/NameValueList;-><init>()V

    #@7
    .line 540
    .local v1, "nvList":Lgov/nist/core/NameValueList;
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 543
    .local v2, "pname":Ljava/lang/String;
    const-string/jumbo v4, "phone-context"

    #@e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 544
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->phone_context()Lgov/nist/core/NameValue;

    #@17
    move-result-object v0

    #@18
    .line 554
    .local v0, "nv":Lgov/nist/core/NameValue;
    :goto_1
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@1b
    .line 556
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1d
    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@20
    move-result v4

    #@21
    const/16 v5, 0x3b

    #@23
    if-ne v4, v5, :cond_2

    #@25
    .line 557
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@27
    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 546
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2d
    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@30
    move-result v4

    #@31
    const/16 v5, 0x3d

    #@33
    if-ne v4, v5, :cond_1

    #@35
    .line 547
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    #@3a
    .line 548
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 549
    .local v3, "value":Ljava/lang/String;
    new-instance v0, Lgov/nist/core/NameValue;

    #@40
    invoke-direct {v0, v2, v3, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@43
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    goto :goto_1

    #@44
    .line 551
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Lgov/nist/core/NameValue;

    #@46
    const-string/jumbo v4, ""

    #@49
    invoke-direct {v0, v2, v4, v7}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@4c
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    goto :goto_1

    #@4d
    .line 559
    :cond_2
    return-object v1
.end method

.method private uriParam()Lgov/nist/core/NameValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 153
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 154
    const-string/jumbo v4, "uriParam"

    #@8
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@b
    .line 156
    :cond_0
    :try_start_0
    const-string/jumbo v3, ""

    #@e
    .line 157
    .local v3, "pvalue":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 158
    .local v2, "pname":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@18
    move-result v1

    #@19
    .line 159
    .local v1, "next":C
    const/4 v0, 0x1

    #@1a
    .line 160
    .local v0, "isFlagParam":Z
    const/16 v4, 0x3d

    #@1c
    if-ne v1, v4, :cond_1

    #@1e
    .line 161
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@20
    const/4 v5, 0x1

    #@21
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@24
    .line 162
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 163
    const/4 v0, 0x0

    #@29
    .line 165
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_4

    #@2f
    .line 166
    if-eqz v3, :cond_2

    #@31
    .line 167
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_4

    #@37
    .line 171
    :cond_2
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@39
    if-eqz v4, :cond_3

    #@3b
    .line 172
    const-string/jumbo v4, "uriParam"

    #@3e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@41
    .line 168
    :cond_3
    return-object v6

    #@42
    .line 169
    :cond_4
    :try_start_1
    new-instance v4, Lgov/nist/core/NameValue;

    #@44
    invoke-direct {v4, v2, v3, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 171
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@49
    if-eqz v5, :cond_5

    #@4b
    .line 172
    const-string/jumbo v5, "uriParam"

    #@4e
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@51
    .line 169
    :cond_5
    return-object v4

    #@52
    .line 170
    .end local v0    # "isFlagParam":Z
    .end local v1    # "next":C
    .end local v2    # "pname":Ljava/lang/String;
    .end local v3    # "pvalue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@53
    .line 171
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@55
    if-eqz v5, :cond_6

    #@57
    .line 172
    const-string/jumbo v5, "uriParam"

    #@5a
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@5d
    .line 170
    :cond_6
    throw v4
.end method


# virtual methods
.method protected escaped()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 215
    const-string/jumbo v4, "escaped"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 217
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    .line 218
    .local v3, "retval":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@11
    const/4 v5, 0x0

    #@12
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@15
    move-result v0

    #@16
    .line 219
    .local v0, "next":C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v5, 0x1

    #@19
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v1

    #@1d
    .line 220
    .local v1, "next1":C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/4 v5, 0x2

    #@20
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@23
    move-result v2

    #@24
    .line 221
    .local v2, "next2":C
    const/16 v4, 0x25

    #@26
    if-ne v0, v4, :cond_2

    #@28
    .line 222
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    #@2b
    move-result v4

    #@2c
    .line 221
    if-eqz v4, :cond_2

    #@2e
    .line 223
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    #@31
    move-result v4

    #@32
    .line 221
    if-eqz v4, :cond_2

    #@34
    .line 224
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    const/4 v5, 0x3

    #@37
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@3a
    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3d
    .line 226
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@40
    .line 227
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    move-result-object v4

    #@47
    .line 232
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@49
    if-eqz v5, :cond_1

    #@4b
    .line 233
    const-string/jumbo v5, "escaped"

    #@4e
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@51
    .line 230
    :cond_1
    return-object v4

    #@52
    .line 229
    :cond_2
    :try_start_1
    const-string/jumbo v4, "escaped"

    #@55
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@58
    move-result-object v4

    #@59
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 231
    .end local v0    # "next":C
    .end local v1    # "next1":C
    .end local v2    # "next2":C
    .end local v3    # "retval":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    #@5b
    .line 232
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@5d
    if-eqz v5, :cond_3

    #@5f
    .line 233
    const-string/jumbo v5, "escaped"

    #@62
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@65
    .line 231
    :cond_3
    throw v4
.end method

.method protected hvalue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 700
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 701
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 702
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@13
    move-result v1

    #@14
    .line 704
    .local v1, "la":C
    const/4 v0, 0x0

    #@15
    .line 705
    .local v0, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    #@18
    .line 724
    :goto_1
    if-nez v0, :cond_0

    #@1a
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 725
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@22
    const/4 v4, 0x1

    #@23
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@26
    .line 726
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@29
    goto :goto_0

    #@2a
    .line 722
    :sswitch_0
    const/4 v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 727
    :cond_1
    const/16 v3, 0x25

    #@2e
    if-ne v1, v3, :cond_2

    #@30
    .line 728
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->escaped()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    goto :goto_0

    #@38
    .line 732
    .end local v0    # "isValidChar":Z
    .end local v1    # "la":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    return-object v3

    #@3d
    .line 705
    nop

    #@3e
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected isEscaped()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 205
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@7
    move-result v2

    #@8
    const/16 v3, 0x25

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 206
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@e
    const/4 v3, 0x1

    #@f
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@12
    move-result v2

    #@13
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    #@16
    move-result v2

    #@17
    .line 205
    if-eqz v2, :cond_0

    #@19
    .line 207
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    const/4 v3, 0x2

    #@1c
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1f
    move-result v2

    #@20
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result v1

    #@24
    .line 205
    :cond_0
    return v1

    #@25
    .line 208
    :catch_0
    move-exception v0

    #@26
    .line 209
    .local v0, "ex":Ljava/lang/Exception;
    return v1
.end method

.method protected mark()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    sget-boolean v1, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 239
    const-string/jumbo v1, "mark"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 241
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@10
    move-result v0

    #@11
    .line 242
    .local v0, "next":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 243
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@1d
    .line 244
    new-instance v1, Ljava/lang/String;

    #@1f
    const/4 v2, 0x1

    #@20
    new-array v2, v2, [C

    #@22
    const/4 v3, 0x0

    #@23
    aput-char v0, v2, v3

    #@25
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 248
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 249
    const-string/jumbo v2, "mark"

    #@2f
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@32
    .line 244
    :cond_1
    return-object v1

    #@33
    .line 246
    :cond_2
    :try_start_1
    const-string/jumbo v1, "mark"

    #@36
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@39
    move-result-object v1

    #@3a
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 247
    .end local v0    # "next":C
    :catchall_0
    move-exception v1

    #@3c
    .line 248
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@3e
    if-eqz v2, :cond_3

    #@40
    .line 249
    const-string/jumbo v2, "mark"

    #@43
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@46
    .line 247
    :cond_3
    throw v1
.end method

.method protected paramNameOrValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    #@5
    move-result v2

    #@6
    .line 129
    .local v2, "startIdx":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@8
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    .line 130
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@14
    move-result v1

    #@15
    .line 131
    .local v1, "next":C
    const/4 v0, 0x0

    #@16
    .line 132
    .local v0, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    #@19
    .line 142
    :goto_1
    if-nez v0, :cond_0

    #@1b
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 143
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    const/4 v4, 0x1

    #@24
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@27
    goto :goto_0

    #@28
    .line 140
    :sswitch_0
    const/4 v0, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 144
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 145
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@32
    const/4 v4, 0x3

    #@33
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@36
    goto :goto_0

    #@37
    .line 149
    .end local v0    # "isValidChar":Z
    .end local v1    # "next":C
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@39
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@3f
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    #@42
    move-result v4

    #@43
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    return-object v3

    #@48
    .line 132
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public parse()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 811
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 4
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 448
    const-string/jumbo v2, "telephone_subscriber"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 449
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const-string/jumbo v3, "charLexer"

    #@f
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@12
    .line 451
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@18
    move-result v0

    #@19
    .line 452
    .local v0, "c":C
    const/16 v2, 0x2b

    #@1b
    if-ne v0, v2, :cond_2

    #@1d
    .line 453
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v1

    #@21
    .line 467
    .local v1, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :goto_0
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 468
    const-string/jumbo v2, "telephone_subscriber"

    #@28
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@2b
    .line 465
    :cond_1
    return-object v1

    #@2c
    .line 455
    .end local v1    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :cond_2
    :try_start_1
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_3

    #@32
    .line 456
    const/16 v2, 0x23

    #@34
    if-ne v0, v2, :cond_4

    #@36
    .line 462
    :cond_3
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    #@39
    move-result-object v1

    #@3a
    .restart local v1    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    goto :goto_0

    #@3b
    .line 457
    .end local v1    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :cond_4
    const/16 v2, 0x2a

    #@3d
    if-eq v0, v2, :cond_3

    #@3f
    .line 458
    const/16 v2, 0x2d

    #@41
    if-eq v0, v2, :cond_3

    #@43
    .line 459
    const/16 v2, 0x2e

    #@45
    if-eq v0, v2, :cond_3

    #@47
    .line 460
    const/16 v2, 0x28

    #@49
    if-eq v0, v2, :cond_3

    #@4b
    .line 461
    const/16 v2, 0x29

    #@4d
    if-eq v0, v2, :cond_3

    #@4f
    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v3, "unexpected char "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@66
    move-result-object v2

    #@67
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 466
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    #@69
    .line 467
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@6b
    if-eqz v3, :cond_5

    #@6d
    .line 468
    const-string/jumbo v3, "telephone_subscriber"

    #@70
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@73
    .line 466
    :cond_5
    throw v2
.end method

.method protected password()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 783
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    #@5
    move-result v2

    #@6
    .line 785
    .local v2, "startIdx":I
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@c
    move-result v1

    #@d
    .line 786
    .local v1, "la":C
    const/4 v0, 0x0

    #@e
    .line 787
    .local v0, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    #@11
    .line 795
    :goto_1
    if-nez v0, :cond_0

    #@13
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 796
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@1f
    goto :goto_0

    #@20
    .line 793
    :sswitch_0
    const/4 v0, 0x1

    #@21
    goto :goto_1

    #@22
    .line 797
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 798
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2a
    const/4 v4, 0x3

    #@2b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 804
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@31
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    .line 787
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public peekScheme()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 680
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@3
    const/4 v3, 0x1

    #@4
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    #@7
    move-result-object v1

    #@8
    .line 681
    .local v1, "tokens":[Lgov/nist/core/Token;
    array-length v2, v1

    #@9
    if-nez v2, :cond_0

    #@b
    .line 682
    const/4 v2, 0x0

    #@c
    return-object v2

    #@d
    .line 683
    :cond_0
    aget-object v2, v1, v4

    #@f
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 684
    .local v0, "scheme":Ljava/lang/String;
    return-object v0
.end method

.method protected qheader()Lgov/nist/core/NameValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 692
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    const/16 v3, 0x3d

    #@4
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 693
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@a
    const/4 v3, 0x1

    #@b
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@e
    .line 694
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->hvalue()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 695
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Lgov/nist/core/NameValue;

    #@14
    const/4 v3, 0x0

    #@15
    invoke-direct {v2, v0, v1, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@18
    return-object v2
.end method

.method protected reserved()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@6
    move-result v0

    #@7
    .line 196
    .local v0, "next":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 197
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@13
    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 200
    :cond_0
    const-string/jumbo v1, "reserved"

    #@24
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@27
    move-result-object v1

    #@28
    throw v1
.end method

.method public sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    .locals 14
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x3a

    #@2
    .line 606
    sget-boolean v11, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@4
    if-eqz v11, :cond_0

    #@6
    .line 607
    const-string/jumbo v11, "sipURL"

    #@9
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 608
    :cond_0
    new-instance v6, Lgov/nist/javax/sip/address/SipUri;

    #@e
    invoke-direct {v6}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    #@11
    .line 610
    .local v6, "retval":Lgov/nist/javax/sip/address/SipUri;
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    #@16
    move-result-object v3

    #@17
    .line 611
    .local v3, "nextToken":Lgov/nist/core/Token;
    const/16 v8, 0x803

    #@19
    .line 612
    .local v8, "sipOrSips":I
    const-string/jumbo v7, "sip"

    #@1c
    .line 613
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    #@1f
    move-result v11

    #@20
    const/16 v12, 0x858

    #@22
    if-ne v11, v12, :cond_1

    #@24
    .line 615
    const/16 v8, 0x858

    #@26
    .line 616
    const-string/jumbo v7, "sips"

    #@29
    .line 620
    :cond_1
    :try_start_0
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2b
    invoke-virtual {v11, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2e
    .line 621
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/16 v12, 0x3a

    #@32
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@35
    .line 622
    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    #@38
    .line 623
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->markInputPosition()I

    #@3d
    move-result v9

    #@3e
    .line 624
    .local v9, "startOfUser":I
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->user()Ljava/lang/String;

    #@41
    move-result-object v10

    #@42
    .line 625
    .local v10, "userOrHost":Ljava/lang/String;
    const/4 v5, 0x0

    #@43
    .line 628
    .local v5, "passOrPort":Ljava/lang/String;
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@45
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->lookAhead()C

    #@48
    move-result v11

    #@49
    if-ne v11, v13, :cond_2

    #@4b
    .line 629
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@4d
    const/4 v12, 0x1

    #@4e
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->consume(I)V

    #@51
    .line 630
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->password()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    .line 634
    .end local v5    # "passOrPort":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@57
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->lookAhead()C

    #@5a
    move-result v11

    #@5b
    const/16 v12, 0x40

    #@5d
    if-ne v11, v12, :cond_6

    #@5f
    .line 635
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@61
    const/4 v12, 0x1

    #@62
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->consume(I)V

    #@65
    .line 636
    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    #@68
    .line 637
    if-eqz v5, :cond_3

    #@6a
    invoke-virtual {v6, v5}, Lgov/nist/javax/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V

    #@6d
    .line 643
    :cond_3
    :goto_0
    new-instance v1, Lgov/nist/core/HostNameParser;

    #@6f
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@72
    move-result-object v11

    #@73
    invoke-direct {v1, v11}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    #@76
    .line 644
    .local v1, "hnp":Lgov/nist/core/HostNameParser;
    const/4 v11, 0x0

    #@77
    invoke-virtual {v1, v11}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    #@7a
    move-result-object v2

    #@7b
    .line 645
    .local v2, "hp":Lgov/nist/core/HostPort;
    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/address/SipUri;->setHostPort(Lgov/nist/core/HostPort;)V

    #@7e
    .line 647
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@80
    const-string/jumbo v12, "charLexer"

    #@83
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@86
    .line 648
    :cond_4
    :goto_1
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@88
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@8b
    move-result v11

    #@8c
    if-eqz v11, :cond_7

    #@8e
    .line 650
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@90
    const/4 v12, 0x0

    #@91
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@94
    move-result v11

    #@95
    const/16 v12, 0x3b

    #@97
    if-ne v11, v12, :cond_7

    #@99
    if-eqz p1, :cond_7

    #@9b
    .line 652
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@9d
    const/4 v12, 0x1

    #@9e
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->consume(I)V

    #@a1
    .line 653
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->uriParam()Lgov/nist/core/NameValue;

    #@a4
    move-result-object v4

    #@a5
    .line 654
    .local v4, "parms":Lgov/nist/core/NameValue;
    if-eqz v4, :cond_4

    #@a7
    invoke-virtual {v6, v4}, Lgov/nist/javax/sip/address/SipUri;->setUriParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@aa
    goto :goto_1

    #@ab
    .line 670
    .end local v1    # "hnp":Lgov/nist/core/HostNameParser;
    .end local v2    # "hp":Lgov/nist/core/HostPort;
    .end local v4    # "parms":Lgov/nist/core/NameValue;
    .end local v9    # "startOfUser":I
    .end local v10    # "userOrHost":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@ac
    .line 671
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v11, Ljava/text/ParseException;

    #@ae
    new-instance v12, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v13, "Invalid URL: "

    #@b6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v12

    #@ba
    iget-object v13, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@bc
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@bf
    move-result-object v13

    #@c0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v12

    #@c4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v12

    #@c8
    const/4 v13, -0x1

    #@c9
    invoke-direct {v11, v12, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@cc
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cd
    .line 673
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v11

    #@ce
    .line 674
    sget-boolean v12, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@d0
    if-eqz v12, :cond_5

    #@d2
    .line 675
    const-string/jumbo v12, "sipURL"

    #@d5
    invoke-virtual {p0, v12}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@d8
    .line 673
    :cond_5
    throw v11

    #@d9
    .line 640
    .restart local v9    # "startOfUser":I
    .restart local v10    # "userOrHost":Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@db
    invoke-virtual {v11, v9}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V

    #@de
    goto :goto_0

    #@df
    .line 657
    .restart local v1    # "hnp":Lgov/nist/core/HostNameParser;
    .restart local v2    # "hp":Lgov/nist/core/HostPort;
    :cond_7
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@e1
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@e4
    move-result v11

    #@e5
    if-eqz v11, :cond_8

    #@e7
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@e9
    const/4 v12, 0x0

    #@ea
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@ed
    move-result v11

    #@ee
    const/16 v12, 0x3f

    #@f0
    if-ne v11, v12, :cond_8

    #@f2
    .line 658
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@f4
    const/4 v12, 0x1

    #@f5
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->consume(I)V

    #@f8
    .line 659
    :goto_2
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@fa
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@fd
    move-result v11

    #@fe
    if-eqz v11, :cond_8

    #@100
    .line 660
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->qheader()Lgov/nist/core/NameValue;

    #@103
    move-result-object v4

    #@104
    .line 661
    .restart local v4    # "parms":Lgov/nist/core/NameValue;
    invoke-virtual {v6, v4}, Lgov/nist/javax/sip/address/SipUri;->setQHeader(Lgov/nist/core/NameValue;)V

    #@107
    .line 662
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@109
    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@10c
    move-result v11

    #@10d
    if-eqz v11, :cond_a

    #@10f
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@111
    const/4 v12, 0x0

    #@112
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@115
    move-result v11

    #@116
    const/16 v12, 0x26

    #@118
    if-eq v11, v12, :cond_a

    #@11a
    .line 674
    .end local v4    # "parms":Lgov/nist/core/NameValue;
    :cond_8
    sget-boolean v11, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@11c
    if-eqz v11, :cond_9

    #@11e
    .line 675
    const-string/jumbo v11, "sipURL"

    #@121
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@124
    .line 668
    :cond_9
    return-object v6

    #@125
    .line 665
    .restart local v4    # "parms":Lgov/nist/core/NameValue;
    :cond_a
    :try_start_3
    iget-object v11, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@127
    const/4 v12, 0x1

    #@128
    invoke-virtual {v11, v12}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@12b
    goto :goto_2
.end method

.method public telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    .locals 4
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 591
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    const/16 v3, 0x839

    #@4
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@7
    .line 592
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@9
    const/16 v3, 0x3a

    #@b
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@e
    .line 593
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    #@11
    move-result-object v1

    #@12
    .line 594
    .local v1, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    new-instance v0, Lgov/nist/javax/sip/address/TelURLImpl;

    #@14
    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelURLImpl;-><init>()V

    #@17
    .line 595
    .local v0, "telUrl":Lgov/nist/javax/sip/address/TelURLImpl;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/TelURLImpl;->setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V

    #@1a
    .line 596
    return-object v0
.end method

.method protected unreserved()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@6
    move-result v0

    #@7
    .line 117
    .local v0, "next":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 118
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@13
    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 121
    :cond_0
    const-string/jumbo v1, "unreserved"

    #@1b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@1e
    move-result-object v1

    #@1f
    throw v1
.end method

.method public uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;
    .locals 9
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x3a

    #@2
    .line 336
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 337
    const-string/jumbo v6, "uriReference"

    #@9
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 338
    :cond_0
    const/4 v1, 0x0

    #@d
    .line 339
    .local v1, "retval":Lgov/nist/javax/sip/address/GenericURI;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@f
    const/4 v7, 0x2

    #@10
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    #@13
    move-result-object v4

    #@14
    .line 340
    .local v4, "tokens":[Lgov/nist/core/Token;
    const/4 v6, 0x0

    #@15
    aget-object v2, v4, v6

    #@17
    .line 341
    .local v2, "t1":Lgov/nist/core/Token;
    const/4 v6, 0x1

    #@18
    aget-object v3, v4, v6

    #@1a
    .line 344
    .local v3, "t2":Lgov/nist/core/Token;
    :try_start_0
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    #@1d
    move-result v6

    #@1e
    const/16 v7, 0x803

    #@20
    if-eq v6, v7, :cond_1

    #@22
    .line 345
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    #@25
    move-result v6

    #@26
    const/16 v7, 0x858

    #@28
    if-ne v6, v7, :cond_5

    #@2a
    .line 346
    :cond_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    #@2d
    move-result v6

    #@2e
    if-ne v6, v8, :cond_3

    #@30
    .line 347
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result-object v1

    #@34
    .line 364
    .local v1, "retval":Lgov/nist/javax/sip/address/GenericURI;
    :goto_0
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 365
    const-string/jumbo v6, "uriReference"

    #@3b
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@3e
    .line 367
    :cond_2
    return-object v1

    #@3f
    .line 349
    .local v1, "retval":Lgov/nist/javax/sip/address/GenericURI;
    :cond_3
    :try_start_1
    const-string/jumbo v6, "Expecting \':\'"

    #@42
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@45
    move-result-object v6

    #@46
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 363
    .end local v1    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    :catchall_0
    move-exception v6

    #@48
    .line 364
    sget-boolean v7, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@4a
    if-eqz v7, :cond_4

    #@4c
    .line 365
    const-string/jumbo v7, "uriReference"

    #@4f
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@52
    .line 363
    :cond_4
    throw v6

    #@53
    .line 350
    .restart local v1    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    #@56
    move-result v6

    #@57
    const/16 v7, 0x839

    #@59
    if-ne v6, v7, :cond_7

    #@5b
    .line 351
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    #@5e
    move-result v6

    #@5f
    if-ne v6, v8, :cond_6

    #@61
    .line 352
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    #@64
    move-result-object v1

    #@65
    .local v1, "retval":Lgov/nist/javax/sip/address/GenericURI;
    goto :goto_0

    #@66
    .line 354
    .local v1, "retval":Lgov/nist/javax/sip/address/GenericURI;
    :cond_6
    const-string/jumbo v6, "Expecting \':\'"

    #@69
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@6c
    move-result-object v6

    #@6d
    throw v6

    #@6e
    .line 356
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uricString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    move-result-object v5

    #@72
    .line 358
    .local v5, "urlString":Ljava/lang/String;
    :try_start_3
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    #@74
    .end local v1    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    invoke-direct {v1, v5}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77
    .local v1, "retval":Lgov/nist/javax/sip/address/GenericURI;
    goto :goto_0

    #@78
    .line 359
    .end local v1    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    :catch_0
    move-exception v0

    #@79
    .line 360
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_4
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@80
    move-result-object v6

    #@81
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected uric()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 254
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 255
    const-string/jumbo v3, "uric"

    #@8
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@b
    .line 258
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@11
    move-result v1

    #@12
    .line 259
    .local v1, "la":C
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 260
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@1e
    .line 261
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v3

    #@22
    .line 275
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 276
    const-string/jumbo v4, "uric"

    #@29
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@2c
    .line 261
    :cond_1
    return-object v3

    #@2d
    .line 262
    :cond_2
    :try_start_1
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_4

    #@33
    .line 263
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    const/4 v4, 0x1

    #@36
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@39
    .line 264
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result-object v3

    #@3d
    .line 275
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@3f
    if-eqz v4, :cond_3

    #@41
    .line 276
    const-string/jumbo v4, "uric"

    #@44
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@47
    .line 264
    :cond_3
    return-object v3

    #@48
    .line 265
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_6

    #@4e
    .line 266
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@50
    const/4 v4, 0x3

    #@51
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 267
    .local v2, "retval":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@57
    const/4 v4, 0x3

    #@58
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 275
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@5d
    if-eqz v3, :cond_5

    #@5f
    .line 276
    const-string/jumbo v3, "uric"

    #@62
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@65
    .line 268
    :cond_5
    return-object v2

    #@66
    .line 275
    .end local v2    # "retval":Ljava/lang/String;
    :cond_6
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@68
    if-eqz v3, :cond_7

    #@6a
    .line 276
    const-string/jumbo v3, "uric"

    #@6d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@70
    .line 270
    :cond_7
    return-object v5

    #@71
    .line 271
    .end local v1    # "la":C
    :catch_0
    move-exception v0

    #@72
    .line 275
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@74
    if-eqz v3, :cond_8

    #@76
    .line 276
    const-string/jumbo v3, "uric"

    #@79
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@7c
    .line 272
    :cond_8
    return-object v5

    #@7d
    .line 274
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@7e
    .line 275
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@80
    if-eqz v4, :cond_9

    #@82
    .line 276
    const-string/jumbo v4, "uric"

    #@85
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@88
    .line 274
    :cond_9
    throw v3
.end method

.method protected uricNoSlash()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 282
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 283
    const-string/jumbo v3, "uricNoSlash"

    #@8
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@b
    .line 286
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@11
    move-result v1

    #@12
    .line 287
    .local v1, "la":C
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 288
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v4, 0x3

    #@1b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 289
    .local v2, "retval":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@21
    const/4 v4, 0x3

    #@22
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 303
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 304
    const-string/jumbo v3, "uricNoSlash"

    #@2c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@2f
    .line 290
    :cond_1
    return-object v2

    #@30
    .line 291
    .end local v2    # "retval":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_4

    #@36
    .line 292
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@38
    const/4 v4, 0x1

    #@39
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@3c
    .line 293
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result-object v3

    #@40
    .line 303
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 304
    const-string/jumbo v4, "uricNoSlash"

    #@47
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@4a
    .line 293
    :cond_3
    return-object v3

    #@4b
    .line 294
    :cond_4
    :try_start_2
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isReservedNoSlash(C)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_6

    #@51
    .line 295
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@53
    const/4 v4, 0x1

    #@54
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@57
    .line 296
    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    move-result-object v3

    #@5b
    .line 303
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@5d
    if-eqz v4, :cond_5

    #@5f
    .line 304
    const-string/jumbo v4, "uricNoSlash"

    #@62
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@65
    .line 296
    :cond_5
    return-object v3

    #@66
    .line 303
    :cond_6
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@68
    if-eqz v3, :cond_7

    #@6a
    .line 304
    const-string/jumbo v3, "uricNoSlash"

    #@6d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@70
    .line 298
    :cond_7
    return-object v5

    #@71
    .line 299
    .end local v1    # "la":C
    :catch_0
    move-exception v0

    #@72
    .line 303
    .local v0, "ex":Ljava/text/ParseException;
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@74
    if-eqz v3, :cond_8

    #@76
    .line 304
    const-string/jumbo v3, "uricNoSlash"

    #@79
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@7c
    .line 300
    :cond_8
    return-object v5

    #@7d
    .line 302
    .end local v0    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    #@7e
    .line 303
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@80
    if-eqz v4, :cond_9

    #@82
    .line 304
    const-string/jumbo v4, "uricNoSlash"

    #@85
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@88
    .line 302
    :cond_9
    throw v3
.end method

.method protected uricString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 309
    new-instance v4, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 311
    .local v4, "retval":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uric()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 312
    .local v3, "next":Ljava/lang/String;
    if-nez v3, :cond_0

    #@c
    .line 313
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@e
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@11
    move-result v2

    #@12
    .line 316
    .local v2, "la":C
    const/16 v5, 0x5b

    #@14
    if-ne v2, v5, :cond_1

    #@16
    .line 317
    new-instance v0, Lgov/nist/core/HostNameParser;

    #@18
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {v0, v5}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    #@1f
    .line 318
    .local v0, "hnp":Lgov/nist/core/HostNameParser;
    invoke-virtual {v0, v6}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    #@22
    move-result-object v1

    #@23
    .line 319
    .local v1, "hp":Lgov/nist/core/HostPort;
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    goto :goto_0

    #@2b
    .line 324
    .end local v0    # "hnp":Lgov/nist/core/HostNameParser;
    .end local v1    # "hp":Lgov/nist/core/HostPort;
    .end local v2    # "la":C
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    goto :goto_0

    #@2f
    .line 326
    .restart local v2    # "la":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    return-object v5
.end method

.method protected urlString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 742
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 743
    .local v1, "retval":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@8
    const-string/jumbo v3, "charLexer"

    #@b
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@e
    .line 745
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@10
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 746
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1b
    move-result v0

    #@1c
    .line 748
    .local v0, "la":C
    const/16 v2, 0x20

    #@1e
    if-eq v0, v2, :cond_0

    #@20
    .line 749
    const/16 v2, 0x9

    #@22
    if-ne v0, v2, :cond_1

    #@24
    .line 757
    .end local v0    # "la":C
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 750
    .restart local v0    # "la":C
    :cond_1
    const/16 v2, 0xa

    #@2b
    if-eq v0, v2, :cond_0

    #@2d
    .line 751
    const/16 v2, 0x3e

    #@2f
    if-eq v0, v2, :cond_0

    #@31
    .line 752
    const/16 v2, 0x3c

    #@33
    if-eq v0, v2, :cond_0

    #@35
    .line 754
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@3a
    .line 755
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3d
    goto :goto_0
.end method

.method protected user()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 761
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 762
    const-string/jumbo v2, "user"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 764
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    #@f
    move-result v1

    #@10
    .line 765
    .local v1, "startIdx":I
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@12
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_4

    #@18
    .line 766
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v0

    #@1f
    .line 767
    .local v0, "la":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_1

    #@25
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUserUnreserved(C)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 768
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@2d
    const/4 v3, 0x1

    #@2e
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 775
    .end local v0    # "la":C
    .end local v1    # "startIdx":I
    :catchall_0
    move-exception v2

    #@33
    .line 776
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@35
    if-eqz v3, :cond_2

    #@37
    .line 777
    const-string/jumbo v3, "user"

    #@3a
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@3d
    .line 775
    :cond_2
    throw v2

    #@3e
    .line 769
    .restart local v0    # "la":C
    .restart local v1    # "startIdx":I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_4

    #@44
    .line 770
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    const/4 v3, 0x3

    #@47
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@4a
    goto :goto_0

    #@4b
    .line 774
    .end local v0    # "la":C
    :cond_4
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@4d
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    #@53
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    #@56
    move-result v3

    #@57
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    move-result-object v2

    #@5b
    .line 776
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    #@5d
    if-eqz v3, :cond_5

    #@5f
    .line 777
    const-string/jumbo v3, "user"

    #@62
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    #@65
    .line 774
    :cond_5
    return-object v2
.end method

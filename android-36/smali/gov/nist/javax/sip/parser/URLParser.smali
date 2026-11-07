.class public Lgov/nist/javax/sip/parser/URLParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "URLParser.java"


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 54
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 55
    iput-object p1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    .line 56
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "sip_urlLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 50
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "sip_urlLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    .line 51
    return-void
.end method

.method private greylist base_phone_number()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .local v0, "s":Ljava/lang/StringBuffer;
    sget-boolean v1, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v2, "base_phone_number"

    if-eqz v1, :cond_e

    .line 377
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 379
    :cond_e
    const/4 v1, 0x0

    .line 380
    .local v1, "lc":I
    :goto_f
    :try_start_f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 381
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 382
    .local v3, "w":C
    invoke-static {v3}, Lgov/nist/javax/sip/parser/Lexer;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_50

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_50

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_50

    const/16 v4, 0x28

    if-eq v3, v4, :cond_50

    const/16 v4, 0x29

    if-ne v3, v4, :cond_35

    goto :goto_50

    .line 390
    :cond_35
    if-lez v1, :cond_38

    .line 391
    goto :goto_5c

    .line 393
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "s":Ljava/lang/StringBuffer;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    throw v4

    .line 387
    .restart local v0    # "s":Ljava/lang/StringBuffer;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    :cond_50
    :goto_50
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 388
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 394
    .end local v3    # "w":C
    goto :goto_f

    .line 395
    :cond_5c
    :goto_5c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_68

    .line 397
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_67

    .line 398
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 395
    :cond_67
    return-object v3

    .line 397
    .end local v1    # "lc":I
    :catchall_68
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_70

    .line 398
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 399
    :cond_70
    throw v1
.end method

.method private final greylist global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 9
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 474
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "global_phone_number"

    if-eqz v0, :cond_9

    .line 475
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 477
    :cond_9
    :try_start_9
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    .line 478
    .local v0, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 479
    const/4 v3, 0x0

    .line 480
    .local v3, "nv":Lgov/nist/core/NameValueList;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 481
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "b":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 483
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 484
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    .line 485
    .local v5, "tok":C
    const/16 v6, 0x3b

    if-ne v5, v6, :cond_43

    if-eqz p1, :cond_43

    .line 486
    iget-object v6, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 487
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object v2

    move-object v3, v2

    .line 488
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_4c

    .line 491
    .end local v5    # "tok":C
    :cond_43
    nop

    .line 493
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_4b

    .line 494
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 491
    :cond_4b
    return-object v0

    .line 493
    .end local v0    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    .end local v3    # "nv":Lgov/nist/core/NameValueList;
    .end local v4    # "b":Ljava/lang/String;
    :catchall_4c
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_54

    .line 494
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 495
    :cond_54
    throw v0
.end method

.method protected static greylist isMark(C)Z
    .registers 2
    .param p0, "next"    # C

    .line 59
    sparse-switch p0, :sswitch_data_8

    .line 71
    const/4 v0, 0x0

    return v0

    .line 69
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x27 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2d -> :sswitch_5
        0x2e -> :sswitch_5
        0x5f -> :sswitch_5
        0x7e -> :sswitch_5
    .end sparse-switch
.end method

.method protected static greylist isReserved(C)Z
    .registers 2
    .param p0, "next"    # C

    .line 177
    sparse-switch p0, :sswitch_data_8

    .line 190
    const/4 v0, 0x0

    return v0

    .line 188
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method protected static greylist isReservedNoSlash(C)Z
    .registers 2
    .param p0, "next"    # C

    .line 80
    sparse-switch p0, :sswitch_data_8

    .line 91
    const/4 v0, 0x0

    return v0

    .line 89
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method protected static greylist isUnreserved(C)Z
    .registers 2
    .param p0, "next"    # C

    .line 76
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method protected static greylist isUserUnreserved(C)Z
    .registers 2
    .param p0, "la"    # C

    .line 99
    sparse-switch p0, :sswitch_data_8

    .line 111
    const/4 v0, 0x0

    return v0

    .line 109
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2f -> :sswitch_5
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist local_number()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v0, "s":Ljava/lang/StringBuffer;
    sget-boolean v1, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v2, "local_number"

    if-eqz v1, :cond_e

    .line 409
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 411
    :cond_e
    const/4 v1, 0x0

    .line 412
    .local v1, "lc":I
    :goto_f
    :try_start_f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 413
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 414
    .local v3, "la":C
    const/16 v4, 0x2a

    if-eq v3, v4, :cond_58

    const/16 v4, 0x23

    if-eq v3, v4, :cond_58

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_58

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_58

    const/16 v4, 0x28

    if-eq v3, v4, :cond_58

    const/16 v4, 0x29

    if-eq v3, v4, :cond_58

    .line 421
    invoke-static {v3}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_58

    .line 425
    :cond_3d
    if-lez v1, :cond_40

    .line 426
    goto :goto_64

    .line 428
    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexepcted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "s":Ljava/lang/StringBuffer;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    throw v4

    .line 422
    .restart local v0    # "s":Ljava/lang/StringBuffer;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    :cond_58
    :goto_58
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 423
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v1, v1, 0x1

    .line 429
    .end local v3    # "la":C
    goto :goto_f

    .line 430
    :cond_64
    :goto_64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_68
    .catchall {:try_start_f .. :try_end_68} :catchall_70

    .line 432
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_6f

    .line 433
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 430
    :cond_6f
    return-object v3

    .line 432
    .end local v1    # "lc":I
    :catchall_70
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_78

    .line 433
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 434
    :cond_78
    throw v1
.end method

.method private greylist local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 9
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 499
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "local_phone_number"

    if-eqz v0, :cond_9

    .line 500
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 501
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    .line 502
    .local v0, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "nv":Lgov/nist/core/NameValueList;
    const/4 v3, 0x0

    .line 506
    .local v3, "b":Ljava/lang/String;
    :try_start_14
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->local_number()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 507
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 509
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 510
    .local v4, "tok":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5

    packed-switch v5, :pswitch_data_54

    goto :goto_42

    .line 513
    :pswitch_32
    if-eqz p1, :cond_42

    .line 514
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 515
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object v5

    move-object v2, v5

    .line 516
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_4a

    .line 527
    .end local v4    # "tok":Lgov/nist/core/Token;
    :cond_42
    :goto_42
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_49

    .line 528
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 530
    :cond_49
    return-object v0

    .line 527
    :catchall_4a
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_52

    .line 528
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 529
    :cond_52
    throw v4

    nop

    :pswitch_data_54
    .packed-switch 0x3b
        :pswitch_32
    .end packed-switch
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 818
    const-string v0, "sips:alice@examples.com"

    const-string v1, "sip:3Zqkv5dajqaaas0tCjCxT0xH2ZEuEMsFl0xoasip%3A%2B3519116786244%40siplab.domain.com@213.0.115.163:7070"

    const-string v2, "sip:alice@example.com"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "test":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_6c

    .line 824
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 826
    .local v2, "p":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 827
    .local v3, "uri":Lgov/nist/javax/sip/address/GenericURI;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri type returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is SipUri? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->isSipURI()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 829
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 828
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 822
    .end local v2    # "p":Lgov/nist/javax/sip/parser/URLParser;
    .end local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 831
    .end local v1    # "i":I
    :cond_6c
    return-void
.end method

.method private greylist phone_context()Lgov/nist/core/NameValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 572
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 574
    .local v0, "la":C
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_30

    .line 575
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_43

    .line 577
    .end local v2    # "value":Ljava/lang/Object;
    :cond_30
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 578
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v2

    .line 579
    .local v2, "t":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "value":Ljava/lang/Object;
    nop

    .line 583
    :goto_43
    new-instance v3, Lgov/nist/core/NameValue;

    const-string v4, "phone-context"

    invoke-direct {v3, v4, v2, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v3

    .line 581
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4b
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phone-context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private greylist tel_parameters()Lgov/nist/core/NameValueList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 540
    .local v0, "nvList":Lgov/nist/core/NameValueList;
    :goto_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "pname":Ljava/lang/String;
    const-string v2, "phone-context"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    .line 544
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->phone_context()Lgov/nist/core/NameValue;

    move-result-object v2

    .local v2, "nv":Lgov/nist/core/NameValue;
    goto :goto_39

    .line 546
    .end local v2    # "nv":Lgov/nist/core/NameValue;
    :cond_18
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_32

    .line 547
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 548
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "value":Ljava/lang/String;
    new-instance v5, Lgov/nist/core/NameValue;

    invoke-direct {v5, v1, v2, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v2, v5

    .line 550
    .local v2, "nv":Lgov/nist/core/NameValue;
    goto :goto_39

    .line 551
    .end local v2    # "nv":Lgov/nist/core/NameValue;
    :cond_32
    new-instance v2, Lgov/nist/core/NameValue;

    const-string v5, ""

    invoke-direct {v2, v1, v5, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 554
    .restart local v2    # "nv":Lgov/nist/core/NameValue;
    :goto_39
    invoke-virtual {v0, v2}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 556
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4c

    .line 557
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 561
    .end local v1    # "pname":Ljava/lang/String;
    goto :goto_5

    .line 559
    .restart local v1    # "pname":Ljava/lang/String;
    :cond_4c
    return-object v0
.end method

.method private greylist uriParam()Lgov/nist/core/NameValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 153
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "uriParam"

    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 156
    :cond_9
    :try_start_9
    const-string v0, ""

    .line 157
    .local v0, "pvalue":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "pname":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 159
    .local v3, "next":C
    const/4 v4, 0x1

    .line 160
    .local v4, "isFlagParam":Z
    const/16 v5, 0x3d

    if-ne v3, v5, :cond_27

    .line 161
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 162
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 163
    const/4 v4, 0x0

    .line 165
    :cond_27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3f

    if-eqz v0, :cond_35

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_4c

    if-nez v5, :cond_3f

    .line 168
    :cond_35
    nop

    .line 171
    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3d

    .line 172
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 168
    :cond_3d
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_3f
    :try_start_3f
    new-instance v5, Lgov/nist/core/NameValue;

    invoke-direct {v5, v2, v0, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4c

    .line 171
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_4b

    .line 172
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 169
    :cond_4b
    return-object v5

    .line 171
    .end local v0    # "pvalue":Ljava/lang/String;
    .end local v2    # "pname":Ljava/lang/String;
    .end local v3    # "next":C
    .end local v4    # "isFlagParam":Z
    :catchall_4c
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_54

    .line 172
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 173
    :cond_54
    throw v0
.end method


# virtual methods
.method protected greylist escaped()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 214
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "escaped"

    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 217
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 219
    .local v2, "next":C
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 220
    .local v3, "next1":C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    .line 221
    .local v4, "next2":C
    const/16 v5, 0x25

    if-ne v2, v5, :cond_4e

    .line 222
    invoke-static {v3}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 223
    invoke-static {v4}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 224
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_53

    .line 232
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_4d

    .line 233
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 230
    :cond_4d
    return-object v5

    .line 229
    :cond_4e
    :try_start_4e
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    throw v5
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    .line 232
    .end local v0    # "retval":Ljava/lang/StringBuffer;
    .end local v2    # "next":C
    .end local v3    # "next1":C
    .end local v4    # "next2":C
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    :catchall_53
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_5b

    .line 233
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 234
    :cond_5b
    throw v0
.end method

.method protected greylist hvalue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 701
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_5
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 702
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 704
    .local v1, "la":C
    const/4 v2, 0x0

    .line 705
    .local v2, "isValidChar":Z
    sparse-switch v1, :sswitch_data_3e

    goto :goto_1a

    .line 722
    :sswitch_19
    const/4 v2, 0x1

    .line 724
    :goto_1a
    if-nez v2, :cond_2f

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2f

    .line 727
    :cond_23
    const/16 v3, 0x25

    if-ne v1, v3, :cond_39

    .line 728
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->escaped()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 725
    :cond_2f
    :goto_2f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 731
    .end local v1    # "la":C
    .end local v2    # "isValidChar":Z
    :goto_38
    goto :goto_5

    .line 732
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_3e
    .sparse-switch
        0x21 -> :sswitch_19
        0x22 -> :sswitch_19
        0x24 -> :sswitch_19
        0x28 -> :sswitch_19
        0x29 -> :sswitch_19
        0x2a -> :sswitch_19
        0x2b -> :sswitch_19
        0x2d -> :sswitch_19
        0x2e -> :sswitch_19
        0x2f -> :sswitch_19
        0x3a -> :sswitch_19
        0x3f -> :sswitch_19
        0x5b -> :sswitch_19
        0x5d -> :sswitch_19
        0x5f -> :sswitch_19
        0x7e -> :sswitch_19
    .end sparse-switch
.end method

.method protected greylist isEscaped()Z
    .registers 5

    .line 205
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_27

    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    .line 206
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    .line 207
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_29

    if-eqz v1, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    nop

    .line 205
    :goto_28
    return v0

    .line 208
    :catch_29
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method protected greylist mark()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 238
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "mark"

    if-eqz v0, :cond_9

    .line 239
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 241
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 242
    .local v0, "next":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 243
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 244
    new-instance v3, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v0, v4, v2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_32

    .line 248
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_2c

    .line 249
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 244
    :cond_2c
    return-object v3

    .line 246
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    throw v2
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_32

    .line 248
    .end local v0    # "next":C
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    :catchall_32
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_3a

    .line 249
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 250
    :cond_3a
    throw v0
.end method

.method protected greylist paramNameOrValue()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 129
    .local v0, "startIdx":I
    :goto_6
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 130
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 131
    .local v1, "next":C
    const/4 v2, 0x0

    .line 132
    .local v2, "isValidChar":Z
    sparse-switch v1, :sswitch_data_4a

    goto :goto_1b

    .line 140
    :sswitch_1a
    const/4 v2, 0x1

    .line 142
    :goto_1b
    if-nez v2, :cond_31

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_31

    .line 144
    :cond_24
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 145
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_37

    .line 143
    :cond_31
    :goto_31
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 148
    .end local v1    # "next":C
    .end local v2    # "isValidChar":Z
    :goto_37
    goto :goto_6

    .line 149
    :cond_38
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_4a
    .sparse-switch
        0x24 -> :sswitch_1a
        0x26 -> :sswitch_1a
        0x2b -> :sswitch_1a
        0x2f -> :sswitch_1a
        0x3a -> :sswitch_1a
        0x5b -> :sswitch_1a
        0x5d -> :sswitch_1a
    .end sparse-switch
.end method

.method public greylist parse()Lgov/nist/javax/sip/address/GenericURI;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 811
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public final greylist parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 6
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 447
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "telephone_subscriber"

    if-eqz v0, :cond_9

    .line 448
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 449
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v2, "charLexer"

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 451
    :try_start_10
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 452
    .local v0, "c":C
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_20

    .line 453
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v2

    .local v2, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    goto :goto_5c

    .line 454
    .end local v2    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :cond_20
    nop

    .line 455
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_58

    const/16 v2, 0x23

    if-eq v0, v2, :cond_58

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_58

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_58

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_58

    const/16 v2, 0x28

    if-eq v0, v2, :cond_58

    const/16 v2, 0x29

    if-ne v0, v2, :cond_40

    goto :goto_58

    .line 464
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .end local p1    # "inBrackets":Z
    throw v2

    .line 462
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .restart local p1    # "inBrackets":Z
    :cond_58
    :goto_58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v2
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_65

    .line 465
    .restart local v2    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :goto_5c
    nop

    .line 467
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_64

    .line 468
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 465
    :cond_64
    return-object v2

    .line 467
    .end local v0    # "c":C
    .end local v2    # "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    :catchall_65
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_6d

    .line 468
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 469
    :cond_6d
    throw v0
.end method

.method protected greylist password()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 785
    .local v0, "startIdx":I
    :goto_6
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 786
    .local v1, "la":C
    const/4 v2, 0x0

    .line 787
    .local v2, "isValidChar":Z
    sparse-switch v1, :sswitch_data_42

    goto :goto_13

    .line 793
    :sswitch_12
    const/4 v2, 0x1

    .line 795
    :goto_13
    if-nez v2, :cond_3a

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_3a

    .line 797
    :cond_1c
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 798
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_40

    .line 804
    .end local v1    # "la":C
    .end local v2    # "isValidChar":Z
    :cond_29
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 796
    .restart local v1    # "la":C
    .restart local v2    # "isValidChar":Z
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 803
    .end local v1    # "la":C
    .end local v2    # "isValidChar":Z
    :goto_40
    goto :goto_6

    nop

    :sswitch_data_42
    .sparse-switch
        0x24 -> :sswitch_12
        0x26 -> :sswitch_12
        0x2b -> :sswitch_12
        0x2c -> :sswitch_12
        0x3d -> :sswitch_12
    .end sparse-switch
.end method

.method public greylist peekScheme()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    .line 681
    .local v0, "tokens":[Lgov/nist/core/Token;
    array-length v1, v0

    if-nez v1, :cond_c

    .line 682
    const/4 v1, 0x0

    return-object v1

    .line 683
    :cond_c
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "scheme":Ljava/lang/String;
    return-object v1
.end method

.method protected greylist qheader()Lgov/nist/core/NameValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 694
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->hvalue()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Lgov/nist/core/NameValue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method protected greylist reserved()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 196
    .local v0, "next":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 197
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 200
    :cond_21
    const-string v1, "reserved"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method public greylist sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    .registers 18
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 606
    move-object/from16 v1, p0

    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v2, "sipURL"

    if-eqz v0, :cond_b

    .line 607
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 608
    :cond_b
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    move-object v3, v0

    .line 610
    .local v3, "retval":Lgov/nist/javax/sip/address/SipUri;
    iget-object v0, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 611
    .local v4, "nextToken":Lgov/nist/core/Token;
    const/16 v0, 0x803

    .line 612
    .local v0, "sipOrSips":I
    const-string v5, "sip"

    .line 613
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x858

    if-ne v6, v7, :cond_2a

    .line 615
    const/16 v0, 0x858

    .line 616
    const-string v5, "sips"

    move-object v6, v5

    move v5, v0

    goto :goto_2c

    .line 613
    :cond_2a
    move-object v6, v5

    move v5, v0

    .line 620
    .end local v0    # "sipOrSips":I
    .local v5, "sipOrSips":I
    .local v6, "scheme":Ljava/lang/String;
    :goto_2c
    :try_start_2c
    iget-object v0, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 621
    iget-object v0, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 622
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    .line 623
    iget-object v0, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->markInputPosition()I

    move-result v0

    .line 624
    .local v0, "startOfUser":I
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->user()Ljava/lang/String;

    move-result-object v8

    .line 625
    .local v8, "userOrHost":Ljava/lang/String;
    const/4 v9, 0x0

    .line 628
    .local v9, "passOrPort":Ljava/lang/String;
    iget-object v10, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->lookAhead()C

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v7, :cond_59

    .line 629
    iget-object v7, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 630
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->password()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    .line 634
    :cond_59
    iget-object v7, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->lookAhead()C

    move-result v7

    const/16 v10, 0x40

    if-ne v7, v10, :cond_71

    .line 635
    iget-object v7, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 636
    invoke-virtual {v3, v8}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 637
    if-eqz v9, :cond_76

    invoke-virtual {v3, v9}, Lgov/nist/javax/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V

    goto :goto_76

    .line 640
    :cond_71
    iget-object v7, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v0}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V

    .line 643
    :cond_76
    :goto_76
    new-instance v7, Lgov/nist/core/HostNameParser;

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v10

    invoke-direct {v7, v10}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 644
    .local v7, "hnp":Lgov/nist/core/HostNameParser;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v12

    .line 645
    .local v12, "hp":Lgov/nist/core/HostPort;
    invoke-virtual {v3, v12}, Lgov/nist/javax/sip/address/SipUri;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 647
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v14, "charLexer"

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 648
    :goto_8e
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v13

    if-eqz v13, :cond_b2

    .line 650
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    const/16 v14, 0x3b

    if-ne v13, v14, :cond_b2

    if-nez p1, :cond_a3

    .line 651
    goto :goto_b2

    .line 652
    :cond_a3
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 653
    invoke-direct {v1}, Lgov/nist/javax/sip/parser/URLParser;->uriParam()Lgov/nist/core/NameValue;

    move-result-object v13

    .line 654
    .local v13, "parms":Lgov/nist/core/NameValue;
    if-eqz v13, :cond_b1

    invoke-virtual {v3, v13}, Lgov/nist/javax/sip/address/SipUri;->setUriParameter(Lgov/nist/core/NameValue;)V

    .line 655
    .end local v13    # "parms":Lgov/nist/core/NameValue;
    :cond_b1
    goto :goto_8e

    .line 657
    :cond_b2
    :goto_b2
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v13

    if-eqz v13, :cond_f1

    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    const/16 v14, 0x3f

    if-ne v13, v14, :cond_f1

    .line 658
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 659
    :goto_c9
    iget-object v13, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v13

    if-eqz v13, :cond_f1

    .line 660
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->qheader()Lgov/nist/core/NameValue;

    move-result-object v13

    .line 661
    .restart local v13    # "parms":Lgov/nist/core/NameValue;
    invoke-virtual {v3, v13}, Lgov/nist/javax/sip/address/SipUri;->setQHeader(Lgov/nist/core/NameValue;)V

    .line 662
    iget-object v14, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v14

    if-eqz v14, :cond_eb

    iget-object v14, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v14, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v14

    const/16 v15, 0x26

    if-eq v14, v15, :cond_eb

    .line 663
    goto :goto_f1

    .line 665
    :cond_eb
    iget-object v14, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v14, v11}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_f0
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_f0} :catch_fc
    .catchall {:try_start_2c .. :try_end_f0} :catchall_fa

    .line 666
    .end local v13    # "parms":Lgov/nist/core/NameValue;
    goto :goto_c9

    .line 668
    :cond_f1
    :goto_f1
    nop

    .line 674
    sget-boolean v10, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v10, :cond_f9

    .line 675
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 668
    :cond_f9
    return-object v3

    .line 674
    .end local v0    # "startOfUser":I
    .end local v7    # "hnp":Lgov/nist/core/HostNameParser;
    .end local v8    # "userOrHost":Ljava/lang/String;
    .end local v9    # "passOrPort":Ljava/lang/String;
    .end local v12    # "hp":Lgov/nist/core/HostPort;
    :catchall_fa
    move-exception v0

    goto :goto_11d

    .line 670
    :catch_fc
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_fd
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "retval":Lgov/nist/javax/sip/address/SipUri;
    .end local v4    # "nextToken":Lgov/nist/core/Token;
    .end local v5    # "sipOrSips":I
    .end local v6    # "scheme":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .end local p1    # "inBrackets":Z
    throw v7
    :try_end_11d
    .catchall {:try_start_fd .. :try_end_11d} :catchall_fa

    .line 674
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "retval":Lgov/nist/javax/sip/address/SipUri;
    .restart local v4    # "nextToken":Lgov/nist/core/Token;
    .restart local v5    # "sipOrSips":I
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .restart local p1    # "inBrackets":Z
    :goto_11d
    sget-boolean v7, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v7, :cond_124

    .line 675
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 676
    :cond_124
    throw v0
.end method

.method public greylist telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    .registers 4
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x839

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 592
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 593
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v0

    .line 594
    .local v0, "tn":Lgov/nist/javax/sip/address/TelephoneNumber;
    new-instance v1, Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-direct {v1}, Lgov/nist/javax/sip/address/TelURLImpl;-><init>()V

    .line 595
    .local v1, "telUrl":Lgov/nist/javax/sip/address/TelURLImpl;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V

    .line 596
    return-object v1
.end method

.method protected greylist unreserved()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 117
    .local v0, "next":C
    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 118
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_18
    const-string v1, "unreserved"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method public greylist uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;
    .registers 11
    .param p1, "inBrackets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 336
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "uriReference"

    if-eqz v0, :cond_9

    .line 337
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 338
    :cond_9
    const/4 v0, 0x0

    .line 339
    .local v0, "retval":Lgov/nist/javax/sip/address/GenericURI;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v2

    .line 340
    .local v2, "tokens":[Lgov/nist/core/Token;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 341
    .local v3, "t1":Lgov/nist/core/Token;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 344
    .local v4, "t2":Lgov/nist/core/Token;
    :try_start_17
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_70

    const/16 v6, 0x803

    const-string v7, "Expecting \':\'"

    const/16 v8, 0x3a

    if-eq v5, v6, :cond_59

    .line 345
    :try_start_23
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5

    const/16 v6, 0x858

    if-ne v5, v6, :cond_2c

    goto :goto_59

    .line 350
    :cond_2c
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5

    const/16 v6, 0x839

    if-ne v5, v6, :cond_44

    .line 351
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5

    if-ne v5, v8, :cond_3f

    .line 352
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v5

    .end local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .local v5, "retval":Lgov/nist/javax/sip/address/GenericURI;
    goto :goto_63

    .line 354
    .end local v5    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    :cond_3f
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .end local v2    # "tokens":[Lgov/nist/core/Token;
    .end local v3    # "t1":Lgov/nist/core/Token;
    .end local v4    # "t2":Lgov/nist/core/Token;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .end local p1    # "inBrackets":Z
    throw v5

    .line 356
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .restart local v2    # "tokens":[Lgov/nist/core/Token;
    .restart local v3    # "t1":Lgov/nist/core/Token;
    .restart local v4    # "t2":Lgov/nist/core/Token;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .restart local p1    # "inBrackets":Z
    :cond_44
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uricString()Ljava/lang/String;

    move-result-object v5
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_70

    .line 358
    .local v5, "urlString":Ljava/lang/String;
    :try_start_48
    new-instance v6, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v6, v5}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/text/ParseException; {:try_start_48 .. :try_end_4d} :catch_4f
    .catchall {:try_start_48 .. :try_end_4d} :catchall_70

    .line 361
    .end local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .local v6, "retval":Lgov/nist/javax/sip/address/GenericURI;
    move-object v5, v6

    goto :goto_63

    .line 359
    .end local v6    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    :catch_4f
    move-exception v6

    .line 360
    .local v6, "ex":Ljava/text/ParseException;
    :try_start_50
    invoke-virtual {v6}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    .end local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .end local v2    # "tokens":[Lgov/nist/core/Token;
    .end local v3    # "t1":Lgov/nist/core/Token;
    .end local v4    # "t2":Lgov/nist/core/Token;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .end local p1    # "inBrackets":Z
    throw v7

    .line 346
    .end local v5    # "urlString":Ljava/lang/String;
    .end local v6    # "ex":Ljava/text/ParseException;
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .restart local v2    # "tokens":[Lgov/nist/core/Token;
    .restart local v3    # "t1":Lgov/nist/core/Token;
    .restart local v4    # "t2":Lgov/nist/core/Token;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .restart local p1    # "inBrackets":Z
    :cond_59
    :goto_59
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenType()I

    move-result v5

    if-ne v5, v8, :cond_6b

    .line 347
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v5
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_70

    .line 364
    .end local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .local v5, "retval":Lgov/nist/javax/sip/address/GenericURI;
    :goto_63
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v0, :cond_6a

    .line 365
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 367
    :cond_6a
    return-object v5

    .line 349
    .end local v5    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    :cond_6b
    :try_start_6b
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .end local v2    # "tokens":[Lgov/nist/core/Token;
    .end local v3    # "t1":Lgov/nist/core/Token;
    .end local v4    # "t2":Lgov/nist/core/Token;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .end local p1    # "inBrackets":Z
    throw v5
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_70

    .line 364
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/GenericURI;
    .restart local v2    # "tokens":[Lgov/nist/core/Token;
    .restart local v3    # "t1":Lgov/nist/core/Token;
    .restart local v4    # "t2":Lgov/nist/core/Token;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/URLParser;
    .restart local p1    # "inBrackets":Z
    :catchall_70
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_78

    .line 365
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 366
    :cond_78
    throw v5
.end method

.method protected greylist uric()Ljava/lang/String;
    .registers 7

    .line 254
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "uric"

    if-eqz v0, :cond_9

    .line 255
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 258
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 259
    .local v2, "la":C
    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_29

    .line 260
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 261
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_6d
    .catchall {:try_start_a .. :try_end_21} :catchall_64

    .line 275
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_28

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 261
    :cond_28
    return-object v0

    .line 262
    :cond_29
    :try_start_29
    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 263
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 264
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_6d
    .catchall {:try_start_29 .. :try_end_38} :catchall_64

    .line 275
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_3f

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 264
    :cond_3f
    return-object v0

    .line 265
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 266
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "retval":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_52} :catch_6d
    .catchall {:try_start_40 .. :try_end_52} :catchall_64

    .line 268
    nop

    .line 275
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v0, :cond_5a

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 268
    :cond_5a
    return-object v3

    .line 270
    .end local v3    # "retval":Ljava/lang/String;
    :cond_5b
    nop

    .line 275
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_63

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 270
    :cond_63
    return-object v0

    .line 275
    .end local v2    # "la":C
    :catchall_64
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_6c

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 277
    :cond_6c
    throw v0

    .line 271
    :catch_6d
    move-exception v2

    .line 272
    .local v2, "ex":Ljava/lang/Exception;
    nop

    .line 275
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_76

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 272
    :cond_76
    return-object v0
.end method

.method protected greylist uricNoSlash()Ljava/lang/String;
    .registers 7

    .line 282
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "uricNoSlash"

    if-eqz v0, :cond_9

    .line 283
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 286
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 287
    .local v2, "la":C
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 288
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "retval":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_23} :catch_6d
    .catchall {:try_start_a .. :try_end_23} :catchall_64

    .line 290
    nop

    .line 303
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v0, :cond_2b

    .line 304
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 290
    :cond_2b
    return-object v3

    .line 291
    .end local v3    # "retval":Ljava/lang/String;
    :cond_2c
    :try_start_2c
    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    .line 292
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 293
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/text/ParseException; {:try_start_2c .. :try_end_3c} :catch_6d
    .catchall {:try_start_2c .. :try_end_3c} :catchall_64

    .line 303
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_43

    .line 304
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 293
    :cond_43
    return-object v0

    .line 294
    :cond_44
    :try_start_44
    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isReservedNoSlash(C)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 295
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 296
    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Ljava/text/ParseException; {:try_start_44 .. :try_end_53} :catch_6d
    .catchall {:try_start_44 .. :try_end_53} :catchall_64

    .line 303
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_5a

    .line 304
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 296
    :cond_5a
    return-object v0

    .line 298
    :cond_5b
    nop

    .line 303
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_63

    .line 304
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 298
    :cond_63
    return-object v0

    .line 303
    .end local v2    # "la":C
    :catchall_64
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_6c

    .line 304
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 305
    :cond_6c
    throw v0

    .line 299
    :catch_6d
    move-exception v2

    .line 300
    .local v2, "ex":Ljava/text/ParseException;
    nop

    .line 303
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_76

    .line 304
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 300
    :cond_76
    return-object v0
.end method

.method protected greylist uricString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uric()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "next":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 313
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 316
    .local v2, "la":C
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_2b

    .line 317
    new-instance v4, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v4, v5}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 318
    .local v4, "hnp":Lgov/nist/core/HostNameParser;
    invoke-virtual {v4, v3}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v3

    .line 319
    .local v3, "hp":Lgov/nist/core/HostPort;
    invoke-virtual {v3}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    goto :goto_5

    .line 326
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "la":C
    .end local v3    # "hp":Lgov/nist/core/HostPort;
    .end local v4    # "hnp":Lgov/nist/core/HostNameParser;
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 324
    .restart local v1    # "next":Ljava/lang/String;
    :cond_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    .end local v1    # "next":Ljava/lang/String;
    goto :goto_5
.end method

.method protected greylist urlString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 742
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 743
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v2, "charLexer"

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 745
    :goto_c
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 746
    iget-object v1, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 748
    .local v1, "la":C
    const/16 v3, 0x20

    if-eq v1, v3, :cond_39

    const/16 v3, 0x9

    if-eq v1, v3, :cond_39

    const/16 v3, 0xa

    if-eq v1, v3, :cond_39

    const/16 v3, 0x3e

    if-eq v1, v3, :cond_39

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_30

    .line 753
    goto :goto_39

    .line 754
    :cond_30
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 756
    .end local v1    # "la":C
    goto :goto_c

    .line 757
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected greylist user()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 761
    sget-boolean v0, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    const-string v1, "user"

    if-eqz v0, :cond_9

    .line 762
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    .line 764
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 765
    .local v0, "startIdx":I
    :goto_f
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 766
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 767
    .local v2, "la":C
    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-nez v3, :cond_38

    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isUserUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_38

    .line 769
    :cond_2b
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 770
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_3e

    .line 768
    :cond_38
    :goto_38
    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 773
    .end local v2    # "la":C
    :goto_3e
    goto :goto_f

    .line 774
    :cond_3f
    iget-object v2, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/parser/URLParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_9 .. :try_end_4f} :catchall_57

    .line 776
    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_56

    .line 777
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 774
    :cond_56
    return-object v2

    .line 776
    .end local v0    # "startIdx":I
    :catchall_57
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_5f

    .line 777
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    .line 778
    :cond_5f
    throw v0
.end method

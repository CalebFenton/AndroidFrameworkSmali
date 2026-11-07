.class public Lgov/nist/javax/sip/parser/MaxForwardsParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MaxForwardsParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentLength"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 52
    const-string v0, "MaxForwardsParser.leave"

    sget-boolean v1, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v1, :cond_b

    .line 53
    const-string v1, "MaxForwardsParser.enter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_enter(Ljava/lang/String;)V

    .line 55
    :cond_b
    :try_start_b
    new-instance v1, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    .line 56
    .local v1, "contentLength":Lgov/nist/javax/sip/header/MaxForwards;
    const/16 v2, 0x81f

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->headerName(I)V

    .line 57
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 59
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 60
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MaxForwardsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2e
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_b .. :try_end_2e} :catch_43
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_2e} :catch_39
    .catchall {:try_start_b .. :try_end_2e} :catchall_37

    .line 61
    nop

    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v3, :cond_36

    .line 68
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_leave(Ljava/lang/String;)V

    .line 61
    :cond_36
    return-object v1

    .line 67
    .end local v1    # "contentLength":Lgov/nist/javax/sip/header/MaxForwards;
    .end local v2    # "number":Ljava/lang/String;
    :catchall_37
    move-exception v1

    goto :goto_4d

    .line 64
    :catch_39
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/MaxForwardsParser;
    throw v2

    .line 62
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/MaxForwardsParser;
    :catch_43
    move-exception v1

    .line 63
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/MaxForwardsParser;
    throw v2
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_37

    .line 67
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/MaxForwardsParser;
    :goto_4d
    sget-boolean v2, Lgov/nist/javax/sip/parser/MaxForwardsParser;->debug:Z

    if-eqz v2, :cond_54

    .line 68
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/MaxForwardsParser;->dbg_leave(Ljava/lang/String;)V

    .line 69
    :cond_54
    throw v1
.end method

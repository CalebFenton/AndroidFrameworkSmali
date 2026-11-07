.class public Lgov/nist/javax/sip/parser/AddressParametersParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AddressParametersParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 43
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 44
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "buffer"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected greylist parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    .registers 7
    .param p1, "addressParametersHeader"    # Lgov/nist/javax/sip/header/AddressParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 52
    const-string v0, "AddressParametersParser.parse"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_enter(Ljava/lang/String;)V

    .line 54
    :try_start_5
    new-instance v1, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 55
    .local v1, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v3

    .line 56
    .local v3, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/header/AddressParametersHeader;->setAddress(Ljavax/sip/address/Address;)V

    .line 57
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 59
    .local v2, "la":C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v2, :cond_3b

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3b

    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    .line 62
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 64
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V

    goto :goto_3e

    .line 67
    :cond_3b
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_3e
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_3e} :catch_45
    .catchall {:try_start_5 .. :try_end_3e} :catchall_43

    .line 72
    .end local v1    # "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    .end local v2    # "la":C
    .end local v3    # "addr":Lgov/nist/javax/sip/address/AddressImpl;
    :goto_3e
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    .line 73
    nop

    .line 74
    return-void

    .line 72
    :catchall_43
    move-exception v1

    goto :goto_48

    .line 69
    :catch_45
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/text/ParseException;
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/parser/AddressParametersParser;
    .end local p1    # "addressParametersHeader":Lgov/nist/javax/sip/header/AddressParametersHeader;
    :try_start_47
    throw v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_43

    .line 72
    .end local v1    # "ex":Ljava/text/ParseException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AddressParametersParser;
    .restart local p1    # "addressParametersHeader":Lgov/nist/javax/sip/header/AddressParametersHeader;
    :goto_48
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    .line 73
    throw v1
.end method

.class public Lgov/nist/javax/sip/parser/AddressParametersParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AddressParametersParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    return-void
.end method


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    .locals 6
    .param p1, "addressParametersHeader"    # Lgov/nist/javax/sip/header/AddressParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    const-string/jumbo v4, "AddressParametersParser.parse"

    #@3
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_enter(Ljava/lang/String;)V

    #@6
    .line 54
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/AddressParser;

    #@8
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@f
    .line 55
    .local v1, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v4, 0x0

    #@10
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    #@13
    move-result-object v0

    #@14
    .line 56
    .local v0, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->setAddress(Ljavax/sip/address/Address;)V

    #@17
    .line 57
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@19
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1c
    .line 58
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@22
    move-result v3

    #@23
    .line 59
    .local v3, "la":C
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@25
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 60
    if-eqz v3, :cond_0

    #@2d
    .line 61
    const/16 v4, 0xa

    #@2f
    if-eq v3, v4, :cond_0

    #@31
    .line 62
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->startsId()Z

    #@36
    move-result v4

    #@37
    .line 59
    if-eqz v4, :cond_0

    #@39
    .line 64
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 72
    :goto_0
    const-string/jumbo v4, "AddressParametersParser.parse"

    #@3f
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    #@42
    .line 51
    return-void

    #@43
    .line 67
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 69
    .end local v0    # "addr":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1    # "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    .end local v3    # "la":C
    :catch_0
    move-exception v2

    #@48
    .line 70
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 71
    .end local v2    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    #@4a
    .line 72
    const-string/jumbo v5, "AddressParametersParser.parse"

    #@4d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParametersParser;->dbg_leave(Ljava/lang/String;)V

    #@50
    .line 71
    throw v4
.end method

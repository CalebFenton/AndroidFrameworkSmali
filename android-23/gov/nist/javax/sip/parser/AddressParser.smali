.class public Lgov/nist/javax/sip/parser/AddressParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "AddressParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    .line 42
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const-string/jumbo v1, "charLexer"

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@d
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 46
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    #@5
    const-string/jumbo v1, "charLexer"

    #@8
    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    .line 45
    return-void
.end method


# virtual methods
.method public address(Z)Lgov/nist/javax/sip/address/AddressImpl;
    .locals 11
    .param p1, "inclParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x3c

    #@2
    const/16 v9, 0x3a

    #@4
    const/16 v8, 0x2f

    #@6
    const/16 v7, 0x22

    #@8
    .line 93
    sget-boolean v6, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 94
    const-string/jumbo v6, "address"

    #@f
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    #@12
    .line 95
    :cond_0
    const/4 v2, 0x0

    #@13
    .line 97
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v0, 0x0

    #@14
    .line 98
    .local v0, "k":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_1

    #@1c
    .line 99
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    invoke-virtual {v6, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@21
    move-result v1

    #@22
    .line 100
    .local v1, "la":C
    if-eq v1, v10, :cond_1

    #@24
    .line 101
    if-ne v1, v7, :cond_4

    #@26
    .line 110
    .end local v1    # "la":C
    :cond_1
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    invoke-virtual {v6, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@2b
    move-result v1

    #@2c
    .line 111
    .restart local v1    # "la":C
    if-eq v1, v10, :cond_2

    #@2e
    if-ne v1, v7, :cond_7

    #@30
    .line 112
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParser;->nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result-object v2

    #@34
    .line 124
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :goto_1
    sget-boolean v6, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@36
    if-eqz v6, :cond_3

    #@38
    .line 125
    const-string/jumbo v6, "address"

    #@3b
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    #@3e
    .line 122
    :cond_3
    return-object v2

    #@3f
    .line 102
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_4
    if-eq v1, v9, :cond_1

    #@41
    .line 103
    if-eq v1, v8, :cond_1

    #@43
    .line 105
    if-nez v1, :cond_6

    #@45
    .line 106
    :try_start_1
    const-string/jumbo v6, "unexpected EOL"

    #@48
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@4b
    move-result-object v6

    #@4c
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 123
    .end local v1    # "la":C
    :catchall_0
    move-exception v6

    #@4e
    .line 124
    .end local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :goto_2
    sget-boolean v7, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@50
    if-eqz v7, :cond_5

    #@52
    .line 125
    const-string/jumbo v7, "address"

    #@55
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    #@58
    .line 123
    :cond_5
    throw v6

    #@59
    .line 108
    .restart local v1    # "la":C
    .restart local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 113
    :cond_7
    if-eq v1, v9, :cond_8

    #@5e
    if-ne v1, v8, :cond_9

    #@60
    .line 114
    :cond_8
    :try_start_2
    new-instance v3, Lgov/nist/javax/sip/address/AddressImpl;

    #@62
    invoke-direct {v3}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 115
    .local v3, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :try_start_3
    new-instance v5, Lgov/nist/javax/sip/parser/URLParser;

    #@67
    .end local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    check-cast v6, Lgov/nist/javax/sip/parser/Lexer;

    #@6b
    invoke-direct {v5, v6}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@6e
    .line 116
    .local v5, "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v5, p1}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@71
    move-result-object v4

    #@72
    .line 117
    .local v4, "uri":Lgov/nist/javax/sip/address/GenericURI;
    const/4 v6, 0x2

    #@73
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    #@76
    .line 118
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@79
    move-object v2, v3

    #@7a
    .line 113
    .end local v3    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    goto :goto_1

    #@7b
    .line 120
    .end local v4    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v5    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_9
    :try_start_4
    const-string/jumbo v6, "Bad address spec"

    #@7e
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@81
    move-result-object v6

    #@82
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@83
    .line 123
    .end local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .restart local v3    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :catchall_1
    move-exception v6

    #@84
    move-object v2, v3

    #@85
    .end local v3    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    goto :goto_2
.end method

.method protected nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x3c

    #@2
    .line 50
    sget-boolean v5, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 51
    const-string/jumbo v5, "nameAddr"

    #@9
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 53
    :cond_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@e
    const/4 v6, 0x0

    #@f
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@12
    move-result v5

    #@13
    if-ne v5, v7, :cond_2

    #@15
    .line 54
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@17
    const/4 v6, 0x1

    #@18
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    #@1b
    .line 55
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@1d
    const-string/jumbo v6, "sip_urlLexer"

    #@20
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@23
    .line 56
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@25
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@28
    .line 57
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    #@2a
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@2c
    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    #@2e
    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@31
    .line 58
    .local v4, "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    #@32
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@35
    move-result-object v3

    #@36
    .line 59
    .local v3, "uri":Lgov/nist/javax/sip/address/GenericURI;
    new-instance v2, Lgov/nist/javax/sip/address/AddressImpl;

    #@38
    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@3b
    .line 60
    .local v2, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v5, 0x1

    #@3c
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    #@3f
    .line 61
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    #@42
    .line 62
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@47
    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@49
    const/16 v6, 0x3e

    #@4b
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 87
    sget-boolean v5, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@50
    if-eqz v5, :cond_1

    #@52
    .line 88
    const-string/jumbo v5, "nameAddr"

    #@55
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    #@58
    .line 64
    :cond_1
    return-object v2

    #@59
    .line 66
    .end local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v4    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    :cond_2
    :try_start_1
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@5b
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@5e
    .line 67
    .local v0, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v5, 0x1

    #@5f
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    #@62
    .line 68
    const/4 v1, 0x0

    #@63
    .line 69
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@65
    const/4 v6, 0x0

    #@66
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@69
    move-result v5

    #@6a
    const/16 v6, 0x22

    #@6c
    if-ne v5, v6, :cond_4

    #@6e
    .line 70
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@70
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 71
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@76
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@79
    .line 74
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    #@80
    .line 75
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@82
    const/16 v6, 0x3c

    #@84
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@87
    .line 76
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@89
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@8c
    .line 77
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    #@8e
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@90
    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    #@92
    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@95
    .line 78
    .restart local v4    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    #@96
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@99
    move-result-object v3

    #@9a
    .line 79
    .restart local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    new-instance v2, Lgov/nist/javax/sip/address/AddressImpl;

    #@9c
    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@9f
    .line 80
    .restart local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v5, 0x1

    #@a0
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    #@a3
    .line 81
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    #@a6
    .line 82
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@a8
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@ab
    .line 83
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@ad
    const/16 v6, 0x3e

    #@af
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b2
    .line 87
    sget-boolean v5, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@b4
    if-eqz v5, :cond_3

    #@b6
    .line 88
    const-string/jumbo v5, "nameAddr"

    #@b9
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    #@bc
    .line 84
    :cond_3
    return-object v0

    #@bd
    .line 73
    .end local v2    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v4    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    .local v1, "name":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    #@bf
    const/16 v6, 0x3c

    #@c1
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c4
    move-result-object v1

    #@c5
    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    #@c6
    .line 86
    .end local v0    # "addr":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@c7
    .line 87
    sget-boolean v6, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    #@c9
    if-eqz v6, :cond_5

    #@cb
    .line 88
    const-string/jumbo v6, "nameAddr"

    #@ce
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    #@d1
    .line 86
    :cond_5
    throw v5
.end method

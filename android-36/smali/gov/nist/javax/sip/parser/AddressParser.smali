.class public Lgov/nist/javax/sip/parser/AddressParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "AddressParser.java"


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 40
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 41
    iput-object p1, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    .line 42
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 46
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    return-void
.end method


# virtual methods
.method public greylist address(Z)Lgov/nist/javax/sip/address/AddressImpl;
    .registers 10
    .param p1, "inclParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 93
    sget-boolean v0, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    const-string v1, "address"

    if-eqz v0, :cond_9

    .line 94
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    .line 95
    :cond_9
    const/4 v0, 0x0

    .line 97
    .local v0, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v2, 0x0

    .line 98
    .local v2, "k":I
    :goto_b
    :try_start_b
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    const/16 v4, 0x2f

    const/16 v5, 0x3a

    const/16 v6, 0x22

    const/16 v7, 0x3c

    if-eqz v3, :cond_37

    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 100
    .local v3, "la":C
    if-eq v3, v7, :cond_37

    if-eq v3, v6, :cond_37

    if-eq v3, v5, :cond_37

    if-ne v3, v4, :cond_2a

    .line 104
    goto :goto_37

    .line 105
    :cond_2a
    if-eqz v3, :cond_30

    .line 108
    nop

    .end local v3    # "la":C
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_b

    .line 106
    .restart local v3    # "la":C
    :cond_30
    const-string v4, "unexpected EOL"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/AddressParser;
    .end local p1    # "inclParams":Z
    throw v4

    .line 110
    .end local v3    # "la":C
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AddressParser;
    .restart local p1    # "inclParams":Z
    :cond_37
    :goto_37
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 111
    .restart local v3    # "la":C
    if-eq v3, v7, :cond_69

    if-ne v3, v6, :cond_42

    goto :goto_69

    .line 113
    :cond_42
    if-eq v3, v5, :cond_4e

    if-ne v3, v4, :cond_47

    goto :goto_4e

    .line 120
    :cond_47
    const-string v4, "Bad address spec"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/AddressParser;
    .end local p1    # "inclParams":Z
    throw v4

    .line 114
    .restart local v0    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AddressParser;
    .restart local p1    # "inclParams":Z
    :cond_4e
    :goto_4e
    new-instance v4, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v4}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    move-object v0, v4

    .line 115
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 116
    .local v4, "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v5

    .line 117
    .local v5, "uri":Lgov/nist/javax/sip/address/GenericURI;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 118
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 119
    .end local v4    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v5    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    goto :goto_6e

    .line 112
    :cond_69
    :goto_69
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParser;->nameAddr()Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v4
    :try_end_6d
    .catchall {:try_start_b .. :try_end_6d} :catchall_77

    move-object v0, v4

    .line 122
    :goto_6e
    nop

    .line 124
    sget-boolean v4, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v4, :cond_76

    .line 125
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 122
    :cond_76
    return-object v0

    .line 124
    .end local v2    # "k":I
    .end local v3    # "la":C
    :catchall_77
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v3, :cond_7f

    .line 125
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 126
    :cond_7f
    throw v2
.end method

.method protected greylist nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 50
    sget-boolean v0, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    const-string v1, "nameAddr"

    if-eqz v0, :cond_9

    .line 51
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    .line 53
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v3, 0x3e

    const/16 v4, 0x3c

    const/4 v5, 0x1

    if-ne v0, v4, :cond_53

    .line 54
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 55
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v2, "sip_urlLexer"

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    new-instance v0, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v2, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v2, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    .local v0, "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 59
    .local v2, "uri":Lgov/nist/javax/sip/address/GenericURI;
    new-instance v4, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v4}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 60
    .local v4, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 61
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 62
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_b4

    .line 64
    nop

    .line 87
    sget-boolean v3, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v3, :cond_52

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 64
    :cond_52
    return-object v4

    .line 66
    .end local v0    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v2    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v4    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :cond_53
    :try_start_53
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 67
    .local v0, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 68
    const/4 v6, 0x0

    .line 69
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v7, 0x22

    if-ne v2, v7, :cond_72

    .line 70
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .end local v6    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_78

    .line 73
    .end local v2    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_72
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v2

    .line 74
    .end local v6    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :goto_78
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 75
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v6, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 78
    .local v4, "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v6

    .line 79
    .local v6, "uri":Lgov/nist/javax/sip/address/GenericURI;
    new-instance v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v7}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 80
    .local v7, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 81
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 82
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_ab
    .catchall {:try_start_53 .. :try_end_ab} :catchall_b4

    .line 84
    nop

    .line 87
    sget-boolean v3, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v3, :cond_b3

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 84
    :cond_b3
    return-object v0

    .line 87
    .end local v0    # "addr":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "uriParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v6    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v7    # "retval":Lgov/nist/javax/sip/address/AddressImpl;
    :catchall_b4
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v2, :cond_bc

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 89
    :cond_bc
    throw v0
.end method

.class public Lgov/nist/javax/sip/parser/ViaParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ViaParser.java"


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "via"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private greylist parseVia(Lgov/nist/javax/sip/header/Via;)V
    .registers 14
    .param p1, "v"    # Lgov/nist/javax/sip/header/Via;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 57
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 59
    .local v0, "protocolName":Lgov/nist/core/Token;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 65
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 67
    .local v2, "protocolVersion":Lgov/nist/core/Token;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 71
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 76
    .local v1, "transport":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    new-instance v3, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    .line 79
    .local v3, "protocol":Lgov/nist/javax/sip/header/Protocol;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/header/Via;->setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V

    .line 85
    new-instance v4, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ViaParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v4, v5}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 86
    .local v4, "hnp":Lgov/nist/core/HostNameParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v6

    .line 87
    .local v6, "hostPort":Lgov/nist/core/HostPort;
    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 90
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    :goto_85
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v9, 0x3b

    if-ne v7, v9, :cond_ca

    .line 94
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 95
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ViaParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v7

    .line 97
    .local v7, "nameValue":Lgov/nist/core/NameValue;
    invoke-virtual {v7}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "name":Ljava/lang/String;
    const-string v9, "branch"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 99
    invoke-virtual {v7}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 100
    .local v9, "branchId":Ljava/lang/String;
    if-eqz v9, :cond_b3

    goto :goto_c1

    .line 101
    :cond_b3
    new-instance v5, Ljava/text/ParseException;

    iget-object v10, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v10

    const-string v11, "null branch Id"

    invoke-direct {v5, v11, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 104
    .end local v9    # "branchId":Ljava/lang/String;
    :cond_c1
    :goto_c1
    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    .line 105
    iget-object v9, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 106
    .end local v7    # "nameValue":Lgov/nist/core/NameValue;
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_85

    .line 111
    :cond_ca
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v9, 0x28

    if-ne v7, v9, :cond_134

    .line 112
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v9, "charLexer"

    invoke-virtual {v7, v9}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 113
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 114
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v7, "comment":Ljava/lang/StringBuffer;
    :goto_e5
    iget-object v9, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    .line 117
    .local v9, "ch":C
    const/16 v10, 0x29

    if-ne v9, v10, :cond_f5

    .line 118
    iget-object v8, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 119
    goto :goto_123

    .line 120
    :cond_f5
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_11e

    .line 122
    iget-object v10, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v10

    .line 123
    .local v10, "tok":Lgov/nist/core/Token;
    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v11, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v11, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 125
    iget-object v11, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v11}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v10

    .line 126
    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v11, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v11, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 128
    .end local v10    # "tok":Lgov/nist/core/Token;
    goto :goto_133

    :cond_11e
    const/16 v10, 0xa

    if-ne v9, v10, :cond_12b

    .line 129
    nop

    .line 135
    .end local v9    # "ch":C
    :goto_123
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgov/nist/javax/sip/header/Via;->setComment(Ljava/lang/String;)V

    goto :goto_134

    .line 131
    .restart local v9    # "ch":C
    :cond_12b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    iget-object v10, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 134
    .end local v9    # "ch":C
    :goto_133
    goto :goto_e5

    .line 138
    .end local v7    # "comment":Ljava/lang/StringBuffer;
    :cond_134
    :goto_134
    return-void
.end method


# virtual methods
.method protected greylist nameValue()Lgov/nist/core/NameValue;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 145
    sget-boolean v0, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    const-string v1, "nameValue"

    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    .line 149
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 150
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 152
    .local v0, "name":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_ab

    .line 155
    const/4 v3, 0x0

    .line 157
    .local v3, "quoted":Z
    const/4 v4, 0x0

    :try_start_1d
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    .line 159
    .local v5, "la":C
    const/16 v7, 0x3d

    if-ne v5, v7, :cond_84

    .line 160
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 161
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 162
    const/4 v7, 0x0

    .line 163
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "received"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_47

    .line 166
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v2

    .end local v7    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    goto :goto_69

    .line 168
    .end local v2    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_47
    iget-object v8, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v8, 0x22

    if-ne v6, v8, :cond_59

    .line 169
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .end local v7    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_69

    .line 172
    .end local v2    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_59
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 173
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 174
    .local v2, "value":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 177
    .end local v7    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    :goto_69
    new-instance v6, Lgov/nist/core/NameValue;

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .local v6, "nv":Lgov/nist/core/NameValue;
    if-eqz v3, :cond_7b

    .line 180
    invoke-virtual {v6}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_7b
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_7b} :catch_99
    .catchall {:try_start_1d .. :try_end_7b} :catchall_ab

    .line 181
    :cond_7b
    nop

    .line 191
    sget-boolean v4, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v4, :cond_83

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 181
    :cond_83
    return-object v6

    .line 183
    .end local v2    # "str":Ljava/lang/String;
    .end local v6    # "nv":Lgov/nist/core/NameValue;
    :cond_84
    :try_start_84
    new-instance v2, Lgov/nist/core/NameValue;

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_91
    .catch Ljava/text/ParseException; {:try_start_84 .. :try_end_91} :catch_99
    .catchall {:try_start_84 .. :try_end_91} :catchall_ab

    .line 191
    sget-boolean v4, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v4, :cond_98

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 183
    :cond_98
    return-object v2

    .line 186
    .end local v3    # "quoted":Z
    .end local v5    # "la":C
    :catch_99
    move-exception v2

    .line 187
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_9a
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_ab

    .line 191
    sget-boolean v4, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v4, :cond_aa

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 187
    :cond_aa
    return-object v3

    .line 191
    .end local v0    # "name":Lgov/nist/core/Token;
    .end local v2    # "ex":Ljava/text/ParseException;
    :catchall_ab
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_b3

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 193
    :cond_b3
    throw v0
.end method

.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 198
    sget-boolean v0, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 199
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    .line 201
    :cond_9
    :try_start_9
    new-instance v0, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 203
    .local v0, "viaList":Lgov/nist/javax/sip/header/ViaList;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x810

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 204
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 205
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 206
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 209
    :goto_26
    new-instance v2, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 210
    .local v2, "v":Lgov/nist/javax/sip/header/Via;
    invoke-direct {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->parseVia(Lgov/nist/javax/sip/header/Via;)V

    .line 211
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 212
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 213
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_4c

    .line 214
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 215
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 217
    :cond_4c
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_65

    .line 218
    nop

    .line 220
    .end local v2    # "v":Lgov/nist/javax/sip/header/Via;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_66

    .line 221
    nop

    .line 223
    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_64

    .line 224
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 221
    :cond_64
    return-object v0

    .line 219
    :cond_65
    goto :goto_26

    .line 223
    .end local v0    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :catchall_66
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_6e

    .line 224
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 225
    :cond_6e
    throw v0
.end method

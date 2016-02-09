.class public Lgov/nist/javax/sip/parser/ViaParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ViaParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "via"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 43
    return-void
.end method

.method private parseVia(Lgov/nist/javax/sip/header/Via;)V
    .locals 16
    .param p1, "v"    # Lgov/nist/javax/sip/header/Via;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@4
    const/16 v14, 0xfff

    #@6
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@9
    .line 57
    move-object/from16 v0, p0

    #@b
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@10
    move-result-object v9

    #@11
    .line 59
    .local v9, "protocolName":Lgov/nist/core/Token;
    move-object/from16 v0, p0

    #@13
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@15
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@18
    .line 61
    move-object/from16 v0, p0

    #@1a
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    const/16 v14, 0x2f

    #@1e
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@21
    .line 62
    move-object/from16 v0, p0

    #@23
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@25
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@28
    .line 63
    move-object/from16 v0, p0

    #@2a
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@2c
    const/16 v14, 0xfff

    #@2e
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@31
    .line 64
    move-object/from16 v0, p0

    #@33
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@38
    .line 65
    move-object/from16 v0, p0

    #@3a
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@3c
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@3f
    move-result-object v10

    #@40
    .line 67
    .local v10, "protocolVersion":Lgov/nist/core/Token;
    move-object/from16 v0, p0

    #@42
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@47
    .line 70
    move-object/from16 v0, p0

    #@49
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    const/16 v14, 0x2f

    #@4d
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@50
    .line 71
    move-object/from16 v0, p0

    #@52
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@54
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@57
    .line 72
    move-object/from16 v0, p0

    #@59
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@5b
    const/16 v14, 0xfff

    #@5d
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@60
    .line 73
    move-object/from16 v0, p0

    #@62
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@64
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@67
    .line 75
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@6b
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@6e
    move-result-object v12

    #@6f
    .line 76
    .local v12, "transport":Lgov/nist/core/Token;
    move-object/from16 v0, p0

    #@71
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@73
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@76
    .line 78
    new-instance v8, Lgov/nist/javax/sip/header/Protocol;

    #@78
    invoke-direct {v8}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    #@7b
    .line 79
    .local v8, "protocol":Lgov/nist/javax/sip/header/Protocol;
    invoke-virtual {v9}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@7e
    move-result-object v13

    #@7f
    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    #@82
    .line 80
    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@85
    move-result-object v13

    #@86
    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    #@89
    .line 81
    invoke-virtual {v12}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@8c
    move-result-object v13

    #@8d
    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    #@90
    .line 82
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v8}, Lgov/nist/javax/sip/header/Via;->setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V

    #@95
    .line 85
    new-instance v4, Lgov/nist/core/HostNameParser;

    #@97
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/parser/ViaParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@9a
    move-result-object v13

    #@9b
    invoke-direct {v4, v13}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    #@9e
    .line 86
    .local v4, "hnp":Lgov/nist/core/HostNameParser;
    const/4 v13, 0x1

    #@9f
    invoke-virtual {v4, v13}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    #@a2
    move-result-object v5

    #@a3
    .line 87
    .local v5, "hostPort":Lgov/nist/core/HostPort;
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    #@a8
    .line 90
    move-object/from16 v0, p0

    #@aa
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@ac
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@af
    .line 93
    :goto_0
    move-object/from16 v0, p0

    #@b1
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@b3
    const/4 v14, 0x0

    #@b4
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@b7
    move-result v13

    #@b8
    const/16 v14, 0x3b

    #@ba
    if-ne v13, v14, :cond_1

    #@bc
    .line 94
    move-object/from16 v0, p0

    #@be
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@c0
    const/4 v14, 0x1

    #@c1
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    #@c4
    .line 95
    move-object/from16 v0, p0

    #@c6
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@c8
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@cb
    .line 96
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/parser/ViaParser;->nameValue()Lgov/nist/core/NameValue;

    #@ce
    move-result-object v7

    #@cf
    .line 97
    .local v7, "nameValue":Lgov/nist/core/NameValue;
    invoke-virtual {v7}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@d2
    move-result-object v6

    #@d3
    .line 98
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v13, "branch"

    #@d6
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v13

    #@da
    if-eqz v13, :cond_0

    #@dc
    .line 99
    invoke-virtual {v7}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@df
    move-result-object v1

    #@e0
    check-cast v1, Ljava/lang/String;

    #@e2
    .line 100
    .local v1, "branchId":Ljava/lang/String;
    if-nez v1, :cond_0

    #@e4
    .line 101
    new-instance v13, Ljava/text/ParseException;

    #@e6
    const-string/jumbo v14, "null branch Id"

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v15, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@ed
    invoke-virtual {v15}, Lgov/nist/core/LexerCore;->getPtr()I

    #@f0
    move-result v15

    #@f1
    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@f4
    throw v13

    #@f5
    .line 104
    .end local v1    # "branchId":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    #@f7
    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    #@fa
    .line 105
    move-object/from16 v0, p0

    #@fc
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@fe
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@101
    goto :goto_0

    #@102
    .line 111
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "nameValue":Lgov/nist/core/NameValue;
    :cond_1
    move-object/from16 v0, p0

    #@104
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@106
    const/4 v14, 0x0

    #@107
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@10a
    move-result v13

    #@10b
    const/16 v14, 0x28

    #@10d
    if-ne v13, v14, :cond_3

    #@10f
    .line 112
    move-object/from16 v0, p0

    #@111
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@113
    const-string/jumbo v14, "charLexer"

    #@116
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@119
    .line 113
    move-object/from16 v0, p0

    #@11b
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@11d
    const/4 v14, 0x1

    #@11e
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    #@121
    .line 114
    new-instance v3, Ljava/lang/StringBuffer;

    #@123
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@126
    .line 116
    .local v3, "comment":Ljava/lang/StringBuffer;
    :goto_1
    move-object/from16 v0, p0

    #@128
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@12a
    const/4 v14, 0x0

    #@12b
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@12e
    move-result v2

    #@12f
    .line 117
    .local v2, "ch":C
    const/16 v13, 0x29

    #@131
    if-ne v2, v13, :cond_4

    #@133
    .line 118
    move-object/from16 v0, p0

    #@135
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@137
    const/4 v14, 0x1

    #@138
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    #@13b
    .line 135
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13e
    move-result-object v13

    #@13f
    move-object/from16 v0, p1

    #@141
    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/header/Via;->setComment(Ljava/lang/String;)V

    #@144
    .line 54
    .end local v2    # "ch":C
    .end local v3    # "comment":Ljava/lang/StringBuffer;
    :cond_3
    return-void

    #@145
    .line 120
    .restart local v2    # "ch":C
    .restart local v3    # "comment":Ljava/lang/StringBuffer;
    :cond_4
    const/16 v13, 0x5c

    #@147
    if-ne v2, v13, :cond_5

    #@149
    .line 122
    move-object/from16 v0, p0

    #@14b
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@14d
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@150
    move-result-object v11

    #@151
    .line 123
    .local v11, "tok":Lgov/nist/core/Token;
    invoke-virtual {v11}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@154
    move-result-object v13

    #@155
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@158
    .line 124
    move-object/from16 v0, p0

    #@15a
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@15c
    const/4 v14, 0x1

    #@15d
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    #@160
    .line 125
    move-object/from16 v0, p0

    #@162
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@164
    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@167
    move-result-object v11

    #@168
    .line 126
    invoke-virtual {v11}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@16b
    move-result-object v13

    #@16c
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16f
    .line 127
    move-object/from16 v0, p0

    #@171
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@173
    const/4 v14, 0x1

    #@174
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    #@177
    goto :goto_1

    #@178
    .line 128
    .end local v11    # "tok":Lgov/nist/core/Token;
    :cond_5
    const/16 v13, 0xa

    #@17a
    if-eq v2, v13, :cond_2

    #@17c
    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17f
    .line 132
    move-object/from16 v0, p0

    #@181
    iget-object v13, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@183
    const/4 v14, 0x1

    #@184
    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    #@187
    goto :goto_1
.end method


# virtual methods
.method protected nameValue()Lgov/nist/core/NameValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@2
    if-eqz v7, :cond_0

    #@4
    .line 146
    const-string/jumbo v7, "nameValue"

    #@7
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 149
    :cond_0
    :try_start_0
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v8, 0xfff

    #@e
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 150
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@16
    move-result-object v2

    #@17
    .line 152
    .local v2, "name":Lgov/nist/core/Token;
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@19
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 155
    const/4 v4, 0x0

    #@1d
    .line 157
    .local v4, "quoted":Z
    :try_start_1
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/4 v8, 0x0

    #@20
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@23
    move-result v1

    #@24
    .line 159
    .local v1, "la":C
    const/16 v7, 0x3d

    #@26
    if-ne v1, v7, :cond_5

    #@28
    .line 160
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@2a
    const/4 v8, 0x1

    #@2b
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    #@2e
    .line 161
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@33
    .line 162
    const/4 v5, 0x0

    #@34
    .line 163
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    const-string/jumbo v8, "received"

    #@3b
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@3e
    move-result v7

    #@3f
    if-nez v7, :cond_3

    #@41
    .line 166
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@43
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 177
    .local v5, "str":Ljava/lang/String;
    :goto_0
    new-instance v3, Lgov/nist/core/NameValue;

    #@49
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-direct {v3, v7, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@54
    .line 179
    .local v3, "nv":Lgov/nist/core/NameValue;
    if-eqz v4, :cond_1

    #@56
    .line 180
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 191
    :cond_1
    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@5b
    if-eqz v7, :cond_2

    #@5d
    .line 192
    const-string/jumbo v7, "nameValue"

    #@60
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    #@63
    .line 181
    :cond_2
    return-object v3

    #@64
    .line 168
    .end local v3    # "nv":Lgov/nist/core/NameValue;
    .local v5, "str":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@66
    const/4 v8, 0x0

    #@67
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@6a
    move-result v7

    #@6b
    const/16 v8, 0x22

    #@6d
    if-ne v7, v8, :cond_4

    #@6f
    .line 169
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@71
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    .line 170
    .local v5, "str":Ljava/lang/String;
    const/4 v4, 0x1

    #@76
    goto :goto_0

    #@77
    .line 172
    .local v5, "str":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@79
    const/16 v8, 0xfff

    #@7b
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@7e
    .line 173
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@80
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@83
    move-result-object v6

    #@84
    .line 174
    .local v6, "value":Lgov/nist/core/Token;
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    .local v5, "str":Ljava/lang/String;
    goto :goto_0

    #@89
    .line 183
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "value":Lgov/nist/core/Token;
    :cond_5
    new-instance v7, Lgov/nist/core/NameValue;

    #@8b
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    .line 184
    const/4 v9, 0x0

    #@94
    .line 183
    invoke-direct {v7, v8, v9}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    .line 191
    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@99
    if-eqz v8, :cond_6

    #@9b
    .line 192
    const-string/jumbo v8, "nameValue"

    #@9e
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    #@a1
    .line 183
    :cond_6
    return-object v7

    #@a2
    .line 186
    .end local v1    # "la":C
    :catch_0
    move-exception v0

    #@a3
    .line 187
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_3
    new-instance v7, Lgov/nist/core/NameValue;

    #@a5
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    const/4 v9, 0x0

    #@aa
    invoke-direct {v7, v8, v9}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ad
    .line 191
    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@af
    if-eqz v8, :cond_7

    #@b1
    .line 192
    const-string/jumbo v8, "nameValue"

    #@b4
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    #@b7
    .line 187
    :cond_7
    return-object v7

    #@b8
    .line 190
    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v2    # "name":Lgov/nist/core/Token;
    .end local v4    # "quoted":Z
    :catchall_0
    move-exception v7

    #@b9
    .line 191
    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@bb
    if-eqz v8, :cond_8

    #@bd
    .line 192
    const-string/jumbo v8, "nameValue"

    #@c0
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    #@c3
    .line 190
    :cond_8
    throw v7
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 198
    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 199
    const-string/jumbo v2, "parse"

    #@9
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 201
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/ViaList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    #@11
    .line 203
    .local v1, "viaList":Lgov/nist/javax/sip/header/ViaList;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v3, 0x810

    #@15
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 204
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 205
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/16 v3, 0x3a

    #@21
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@24
    .line 206
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@29
    .line 209
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    #@2b
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    #@2e
    .line 210
    .local v0, "v":Lgov/nist/javax/sip/header/Via;
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ViaParser;->parseVia(Lgov/nist/javax/sip/header/Via;)V

    #@31
    .line 211
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@34
    .line 212
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@39
    .line 213
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3f
    move-result v2

    #@40
    const/16 v3, 0x2c

    #@42
    if-ne v2, v3, :cond_2

    #@44
    .line 214
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    const/4 v3, 0x1

    #@47
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@4a
    .line 215
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@4c
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4f
    .line 217
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@51
    const/4 v3, 0x0

    #@52
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@55
    move-result v2

    #@56
    if-ne v2, v4, :cond_1

    #@58
    .line 220
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    #@5a
    const/16 v3, 0xa

    #@5c
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    .line 223
    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@61
    if-eqz v2, :cond_3

    #@63
    .line 224
    const-string/jumbo v2, "parse"

    #@66
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    #@69
    .line 221
    :cond_3
    return-object v1

    #@6a
    .line 222
    .end local v0    # "v":Lgov/nist/javax/sip/header/Via;
    .end local v1    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :catchall_0
    move-exception v2

    #@6b
    .line 223
    sget-boolean v3, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    #@6d
    if-eqz v3, :cond_4

    #@6f
    .line 224
    const-string/jumbo v3, "parse"

    #@72
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    #@75
    .line 222
    :cond_4
    throw v2
.end method

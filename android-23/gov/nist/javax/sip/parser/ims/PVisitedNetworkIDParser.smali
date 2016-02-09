.class public Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PVisitedNetworkIDParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 66
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2c

    #@2
    .line 81
    new-instance v2, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    #@4
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    #@7
    .line 83
    .local v2, "visitedNetworkIDList":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 84
    const-string/jumbo v3, "VisitedNetworkIDParser.parse"

    #@e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 87
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v4, 0x84b

    #@15
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/16 v4, 0x3a

    #@21
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@24
    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@29
    .line 94
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    #@2b
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    #@2e
    .line 96
    .local v1, "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/4 v4, 0x0

    #@31
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@34
    move-result v3

    #@35
    const/16 v4, 0x22

    #@37
    if-ne v3, v4, :cond_2

    #@39
    .line 97
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    #@3c
    .line 101
    :goto_1
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@3f
    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@41
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@44
    .line 104
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    const/4 v4, 0x0

    #@47
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4a
    move-result v0

    #@4b
    .line 105
    .local v0, "la":C
    if-ne v0, v5, :cond_3

    #@4d
    .line 106
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/16 v4, 0x2c

    #@51
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@54
    .line 107
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@56
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    goto :goto_0

    #@5a
    .line 114
    .end local v0    # "la":C
    .end local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    :catchall_0
    move-exception v3

    #@5b
    .line 115
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    #@5d
    if-eqz v4, :cond_1

    #@5f
    .line 116
    const-string/jumbo v4, "VisitedNetworkIDParser.parse"

    #@62
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    #@65
    .line 114
    :cond_1
    throw v3

    #@66
    .line 99
    .restart local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_1

    #@6a
    .line 108
    .restart local v0    # "la":C
    :cond_3
    const/16 v3, 0xa

    #@6c
    if-ne v0, v3, :cond_5

    #@6e
    .line 115
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    #@70
    if-eqz v3, :cond_4

    #@72
    .line 116
    const-string/jumbo v3, "VisitedNetworkIDParser.parse"

    #@75
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    #@78
    .line 113
    :cond_4
    return-object v2

    #@79
    .line 111
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v4, "unexpected char = "

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@90
    move-result-object v3

    #@91
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 5
    .param p1, "visitedNetworkID"    # Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x22

    #@2
    .line 123
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 124
    const-string/jumbo v2, "parseQuotedString"

    #@9
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@11
    .line 130
    .local v1, "retval":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@17
    move-result v2

    #@18
    if-eq v2, v4, :cond_2

    #@1a
    .line 131
    const-string/jumbo v2, "unexpected char"

    #@1d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@20
    move-result-object v2

    #@21
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 155
    .end local v1    # "retval":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    #@23
    .line 156
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 157
    const-string/jumbo v3, "parseQuotedString.parse"

    #@2a
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    #@2d
    .line 155
    :cond_1
    throw v2

    #@2e
    .line 132
    .restart local v1    # "retval":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/4 v3, 0x1

    #@31
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@34
    .line 135
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@39
    move-result v0

    #@3a
    .line 136
    .local v0, "next":C
    if-ne v0, v4, :cond_4

    #@3c
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    #@43
    .line 151
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 156
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    #@48
    if-eqz v2, :cond_3

    #@4a
    .line 157
    const-string/jumbo v2, "parseQuotedString.parse"

    #@4d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    #@50
    .line 121
    :cond_3
    return-void

    #@51
    .line 139
    :cond_4
    if-nez v0, :cond_5

    #@53
    .line 140
    :try_start_2
    new-instance v2, Ljava/text/ParseException;

    #@55
    const-string/jumbo v3, "unexpected EOL"

    #@58
    const/4 v4, 0x1

    #@59
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@5c
    throw v2

    #@5d
    .line 141
    :cond_5
    const/16 v2, 0x5c

    #@5f
    if-ne v0, v2, :cond_6

    #@61
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@64
    .line 143
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@66
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@69
    move-result v0

    #@6a
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6d
    goto :goto_0

    #@6e
    .line 146
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    goto :goto_0
.end method

.method protected parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 3
    .param p1, "visitedNetworkID"    # Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    const/16 v2, 0xfff

    #@4
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@7
    .line 167
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@9
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@c
    move-result-object v0

    #@d
    .line 169
    .local v0, "token":Lgov/nist/core/Token;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Lgov/nist/core/Token;)V

    #@10
    .line 170
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@13
    .line 162
    return-void
.end method

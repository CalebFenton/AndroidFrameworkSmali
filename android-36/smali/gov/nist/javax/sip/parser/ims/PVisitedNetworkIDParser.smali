.class public Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PVisitedNetworkIDParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 72
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 74
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "networkID"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 81
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    .line 83
    .local v0, "visitedNetworkIDList":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    const-string v2, "VisitedNetworkIDParser.parse"

    if-eqz v1, :cond_e

    .line 84
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 87
    :cond_e
    :try_start_e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x84b

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    :goto_26
    new-instance v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    .line 96
    .local v1, "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3a

    .line 97
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    goto :goto_3d

    .line 99
    :cond_3a
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    .line 101
    :goto_3d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 105
    .local v3, "la":C
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5a

    .line 106
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_80

    .line 112
    .end local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .end local v3    # "la":C
    goto :goto_26

    .line 108
    .restart local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .restart local v3    # "la":C
    :cond_5a
    const/16 v4, 0xa

    if-ne v3, v4, :cond_68

    .line 109
    nop

    .line 113
    .end local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .end local v3    # "la":C
    nop

    .line 115
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v1, :cond_67

    .line 116
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_67
    return-object v0

    .line 111
    .restart local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .restart local v3    # "la":C
    :cond_68
    :try_start_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected char = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "visitedNetworkIDList":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
    throw v4
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_80

    .line 115
    .end local v1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .end local v3    # "la":C
    .restart local v0    # "visitedNetworkIDList":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
    :catchall_80
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_88

    .line 116
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 117
    :cond_88
    throw v1
.end method

.method protected greylist parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .registers 8
    .param p1, "visitedNetworkID"    # Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 123
    const-string v0, "parseQuotedString.parse"

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v1, :cond_b

    .line 124
    const-string v1, "parseQuotedString"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 128
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v1, "retval":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_5b

    .line 132
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 135
    :goto_21
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v2

    .line 136
    .local v2, "next":C
    if-ne v2, v3, :cond_3c

    .line 138
    nop

    .line 150
    .end local v2    # "next":C
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_62

    .line 156
    .end local v1    # "retval":Ljava/lang/StringBuffer;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v1, :cond_3b

    .line 157
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 160
    :cond_3b
    return-void

    .line 139
    .restart local v1    # "retval":Ljava/lang/StringBuffer;
    .restart local v2    # "next":C
    :cond_3c
    if-eqz v2, :cond_53

    .line 141
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_4f

    .line 142
    :try_start_42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v5

    .line 144
    .end local v2    # "next":C
    .local v5, "next":C
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 146
    .end local v5    # "next":C
    .restart local v2    # "next":C
    :cond_4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    .end local v2    # "next":C
    :goto_52
    goto :goto_21

    .line 140
    .restart local v2    # "next":C
    :cond_53
    new-instance v3, Ljava/text/ParseException;

    const-string v5, "unexpected EOL"

    invoke-direct {v3, v5, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
    .end local p1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    throw v3

    .line 131
    .end local v2    # "next":C
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
    .restart local p1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    :cond_5b
    const-string v2, "unexpected char"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
    .end local p1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    throw v2
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_62

    .line 156
    .end local v1    # "retval":Ljava/lang/StringBuffer;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
    .restart local p1    # "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    :catchall_62
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v2, :cond_6a

    .line 157
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 158
    :cond_6a
    throw v1
.end method

.method protected greylist parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .registers 4
    .param p1, "visitedNetworkID"    # Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 169
    .local v0, "token":Lgov/nist/core/Token;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Lgov/nist/core/Token;)V

    .line 170
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 172
    return-void
.end method

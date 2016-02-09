.class public Lgov/nist/javax/sip/parser/HeaderParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "HeaderParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 160
    iput-object p1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    .line 161
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const-string/jumbo v1, "command_keywordLexer"

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@d
    .line 159
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 156
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    #@5
    const-string/jumbo v1, "command_keywordLexer"

    #@8
    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    .line 155
    return-void
.end method


# virtual methods
.method protected date()Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    :try_start_0
    const-string/jumbo v7, "GMT"

    #@3
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@6
    move-result-object v7

    #@7
    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@a
    move-result-object v3

    #@b
    .line 84
    .local v3, "retval":Ljava/util/Calendar;
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 85
    .local v4, "s1":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    .line 86
    .local v0, "day":I
    if-lez v0, :cond_0

    #@17
    const/16 v7, 0x1f

    #@19
    if-le v0, v7, :cond_1

    #@1b
    .line 87
    :cond_0
    const-string/jumbo v7, "Bad day "

    #@1e
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@21
    move-result-object v7

    #@22
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 122
    .end local v0    # "day":I
    .end local v3    # "retval":Ljava/util/Calendar;
    .end local v4    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@24
    .line 123
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "bad date field"

    #@27
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@2a
    move-result-object v7

    #@2b
    throw v7

    #@2c
    .line 88
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "day":I
    .restart local v3    # "retval":Ljava/util/Calendar;
    .restart local v4    # "s1":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x5

    #@2d
    :try_start_1
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    #@30
    .line 89
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@32
    const/16 v8, 0x20

    #@34
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@37
    .line 90
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@39
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 91
    .local v2, "month":Ljava/lang/String;
    const-string/jumbo v7, "jan"

    #@44
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v7

    #@48
    if-eqz v7, :cond_3

    #@4a
    .line 92
    const/4 v7, 0x2

    #@4b
    const/4 v8, 0x0

    #@4c
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@4f
    .line 116
    :cond_2
    :goto_0
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@51
    const/16 v8, 0x20

    #@53
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@56
    .line 117
    iget-object v7, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@58
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 118
    .local v5, "s2":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5f
    move-result v6

    #@60
    .line 119
    .local v6, "yr":I
    const/4 v7, 0x1

    #@61
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    #@64
    .line 120
    return-object v3

    #@65
    .line 93
    .end local v5    # "s2":Ljava/lang/String;
    .end local v6    # "yr":I
    :cond_3
    const-string/jumbo v7, "feb"

    #@68
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_4

    #@6e
    .line 94
    const/4 v7, 0x2

    #@6f
    const/4 v8, 0x1

    #@70
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@73
    goto :goto_0

    #@74
    .line 95
    :cond_4
    const-string/jumbo v7, "mar"

    #@77
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v7

    #@7b
    if-eqz v7, :cond_5

    #@7d
    .line 96
    const/4 v7, 0x2

    #@7e
    const/4 v8, 0x2

    #@7f
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@82
    goto :goto_0

    #@83
    .line 97
    :cond_5
    const-string/jumbo v7, "apr"

    #@86
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v7

    #@8a
    if-eqz v7, :cond_6

    #@8c
    .line 98
    const/4 v7, 0x2

    #@8d
    const/4 v8, 0x3

    #@8e
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@91
    goto :goto_0

    #@92
    .line 99
    :cond_6
    const-string/jumbo v7, "may"

    #@95
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v7

    #@99
    if-eqz v7, :cond_7

    #@9b
    .line 100
    const/4 v7, 0x2

    #@9c
    const/4 v8, 0x4

    #@9d
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@a0
    goto :goto_0

    #@a1
    .line 101
    :cond_7
    const-string/jumbo v7, "jun"

    #@a4
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v7

    #@a8
    if-eqz v7, :cond_8

    #@aa
    .line 102
    const/4 v7, 0x2

    #@ab
    const/4 v8, 0x5

    #@ac
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@af
    goto :goto_0

    #@b0
    .line 103
    :cond_8
    const-string/jumbo v7, "jul"

    #@b3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v7

    #@b7
    if-eqz v7, :cond_9

    #@b9
    .line 104
    const/4 v7, 0x2

    #@ba
    const/4 v8, 0x6

    #@bb
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@be
    goto :goto_0

    #@bf
    .line 105
    :cond_9
    const-string/jumbo v7, "aug"

    #@c2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v7

    #@c6
    if-eqz v7, :cond_a

    #@c8
    .line 106
    const/4 v7, 0x2

    #@c9
    const/4 v8, 0x7

    #@ca
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@cd
    goto :goto_0

    #@ce
    .line 107
    :cond_a
    const-string/jumbo v7, "sep"

    #@d1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v7

    #@d5
    if-eqz v7, :cond_b

    #@d7
    .line 108
    const/4 v7, 0x2

    #@d8
    const/16 v8, 0x8

    #@da
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@dd
    goto/16 :goto_0

    #@df
    .line 109
    :cond_b
    const-string/jumbo v7, "oct"

    #@e2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v7

    #@e6
    if-eqz v7, :cond_c

    #@e8
    .line 110
    const/4 v7, 0x2

    #@e9
    const/16 v8, 0x9

    #@eb
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@ee
    goto/16 :goto_0

    #@f0
    .line 111
    :cond_c
    const-string/jumbo v7, "nov"

    #@f3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v7

    #@f7
    if-eqz v7, :cond_d

    #@f9
    .line 112
    const/4 v7, 0x2

    #@fa
    const/16 v8, 0xa

    #@fc
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    #@ff
    goto/16 :goto_0

    #@101
    .line 113
    :cond_d
    const-string/jumbo v7, "dec"

    #@104
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v7

    #@108
    if-eqz v7, :cond_2

    #@10a
    .line 114
    const/4 v7, 0x2

    #@10b
    const/16 v8, 0xb

    #@10d
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@110
    goto/16 :goto_0
.end method

.method protected headerName(I)V
    .locals 2
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5
    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@a
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v1, 0x3a

    #@e
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 188
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 184
    return-void
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
    .line 170
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    const/16 v4, 0x3a

    #@4
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 171
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@a
    const/4 v4, 0x1

    #@b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@e
    .line 172
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@10
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getLine()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 175
    .local v0, "body":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    #@1a
    invoke-direct {v2, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    #@1d
    .line 176
    .local v2, "retval":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    #@20
    .line 177
    return-object v2
.end method

.method protected time(Ljava/util/Calendar;)V
    .locals 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 134
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    .line 135
    .local v1, "hour":I
    const/16 v5, 0xb

    #@c
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->set(II)V

    #@f
    .line 136
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@11
    const/16 v6, 0x3a

    #@13
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@16
    .line 137
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    .line 139
    .local v2, "min":I
    const/16 v5, 0xc

    #@22
    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->set(II)V

    #@25
    .line 140
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@27
    const/16 v6, 0x3a

    #@29
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2c
    .line 141
    iget-object v5, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@35
    move-result v4

    #@36
    .line 143
    .local v4, "sec":I
    const/16 v5, 0xd

    #@38
    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 131
    return-void

    #@3c
    .line 144
    .end local v1    # "hour":I
    .end local v2    # "min":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "sec":I
    :catch_0
    move-exception v0

    #@3d
    .line 145
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "error processing time "

    #@40
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@43
    move-result-object v5

    #@44
    throw v5
.end method

.method protected wkday()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    const-string/jumbo v2, "wkday"

    #@3
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_enter(Ljava/lang/String;)V

    #@6
    .line 52
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    #@8
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 53
    .local v1, "tok":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 55
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v2, "Mon"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 56
    const/4 v2, 0x2

    #@1a
    .line 72
    const-string/jumbo v3, "wkday"

    #@1d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@20
    .line 56
    return v2

    #@21
    .line 57
    :cond_0
    :try_start_1
    const-string/jumbo v2, "Tue"

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 58
    const/4 v2, 0x3

    #@2b
    .line 72
    const-string/jumbo v3, "wkday"

    #@2e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@31
    .line 58
    return v2

    #@32
    .line 59
    :cond_1
    :try_start_2
    const-string/jumbo v2, "Wed"

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 60
    const/4 v2, 0x4

    #@3c
    .line 72
    const-string/jumbo v3, "wkday"

    #@3f
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@42
    .line 60
    return v2

    #@43
    .line 61
    :cond_2
    :try_start_3
    const-string/jumbo v2, "Thu"

    #@46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_3

    #@4c
    .line 62
    const/4 v2, 0x5

    #@4d
    .line 72
    const-string/jumbo v3, "wkday"

    #@50
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@53
    .line 62
    return v2

    #@54
    .line 63
    :cond_3
    :try_start_4
    const-string/jumbo v2, "Fri"

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_4

    #@5d
    .line 64
    const/4 v2, 0x6

    #@5e
    .line 72
    const-string/jumbo v3, "wkday"

    #@61
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@64
    .line 64
    return v2

    #@65
    .line 65
    :cond_4
    :try_start_5
    const-string/jumbo v2, "Sat"

    #@68
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_5

    #@6e
    .line 66
    const/4 v2, 0x7

    #@6f
    .line 72
    const-string/jumbo v3, "wkday"

    #@72
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@75
    .line 66
    return v2

    #@76
    .line 67
    :cond_5
    :try_start_6
    const-string/jumbo v2, "Sun"

    #@79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_6

    #@7f
    .line 68
    const/4 v2, 0x1

    #@80
    .line 72
    const-string/jumbo v3, "wkday"

    #@83
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@86
    .line 68
    return v2

    #@87
    .line 70
    :cond_6
    :try_start_7
    const-string/jumbo v2, "bad wkday"

    #@8a
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@8d
    move-result-object v2

    #@8e
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@8f
    .line 71
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "tok":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@90
    .line 72
    const-string/jumbo v3, "wkday"

    #@93
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    #@96
    .line 71
    throw v2
.end method

.class public Lgov/nist/javax/sip/parser/HeaderParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "HeaderParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 159
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 160
    iput-object p1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    .line 161
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "command_keywordLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "header"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 156
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "command_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    .line 157
    return-void
.end method


# virtual methods
.method protected greylist date()Ljava/util/Calendar;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 83
    :try_start_0
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, "retval":Ljava/util/Calendar;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "s1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "day":I
    if-lez v2, :cond_e4

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_e4

    .line 88
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget-object v4, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v4, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "month":Ljava/lang/String;
    const-string v6, "jan"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_3f

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_d1

    .line 93
    :cond_3f
    const-string v6, "feb"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 94
    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_d1

    .line 95
    :cond_4c
    const-string v6, "mar"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 96
    invoke-virtual {v0, v8, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_d1

    .line 97
    :cond_59
    const-string v6, "apr"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 98
    const/4 v3, 0x3

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_d1

    .line 99
    :cond_67
    const-string v6, "may"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 100
    const/4 v3, 0x4

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 101
    :cond_74
    const-string v6, "jun"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 102
    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 103
    :cond_80
    const-string v3, "jul"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 104
    const/4 v3, 0x6

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 105
    :cond_8d
    const-string v3, "aug"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 106
    const/4 v3, 0x7

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 107
    :cond_9a
    const-string v3, "sep"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 108
    const/16 v3, 0x8

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 109
    :cond_a8
    const-string v3, "oct"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 110
    const/16 v3, 0x9

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 111
    :cond_b6
    const-string v3, "nov"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 112
    const/16 v3, 0xa

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_d1

    .line 113
    :cond_c4
    const-string v3, "dec"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 114
    const/16 v3, 0xb

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 116
    :cond_d1
    :goto_d1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 117
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "s2":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 119
    .local v5, "yr":I
    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 120
    return-object v0

    .line 87
    .end local v3    # "s2":Ljava/lang/String;
    .end local v4    # "month":Ljava/lang/String;
    .end local v5    # "yr":I
    :cond_e4
    const-string v3, "Bad day "

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local p0    # "this":Lgov/nist/javax/sip/parser/HeaderParser;
    throw v3
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_eb} :catch_eb

    .line 122
    .end local v0    # "retval":Ljava/util/Calendar;
    .end local v1    # "s1":Ljava/lang/String;
    .end local v2    # "day":I
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/HeaderParser;
    :catch_eb
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "bad date field"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method protected greylist headerName(I)V
    .registers 4
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, p1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 188
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 189
    return-void
.end method

.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 172
    iget-object v1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "body":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v2, v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "retval":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    .line 177
    return-object v2
.end method

.method protected greylist time(Ljava/util/Calendar;)V
    .registers 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 133
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "hour":I
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v2, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 137
    iget-object v2, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 138
    .end local v0    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "min":I
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget-object v4, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 141
    iget-object v3, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 142
    .end local v2    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    .local v2, "sec":I
    const/16 v4, 0xd

    invoke-virtual {p1, v4, v2}, Ljava/util/Calendar;->set(II)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    .line 147
    .end local v0    # "min":I
    .end local v1    # "hour":I
    .end local v2    # "sec":I
    .end local v3    # "s":Ljava/lang/String;
    nop

    .line 149
    return-void

    .line 144
    :catch_3b
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "error processing time "

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method protected greylist wkday()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 50
    const-string v0, "wkday"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_enter(Ljava/lang/String;)V

    .line 52
    :try_start_5
    iget-object v1, p0, Lgov/nist/javax/sip/parser/HeaderParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "tok":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "id":Ljava/lang/String;
    const-string v3, "Mon"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_78

    if-eqz v3, :cond_1d

    .line 56
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x2

    return v0

    .line 57
    :cond_1d
    :try_start_1d
    const-string v3, "Tue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_78

    if-eqz v3, :cond_2b

    .line 58
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x3

    return v0

    .line 59
    :cond_2b
    :try_start_2b
    const-string v3, "Wed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_78

    if-eqz v3, :cond_39

    .line 60
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x4

    return v0

    .line 61
    :cond_39
    :try_start_39
    const-string v3, "Thu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_78

    if-eqz v3, :cond_47

    .line 62
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x5

    return v0

    .line 63
    :cond_47
    :try_start_47
    const-string v3, "Fri"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_78

    if-eqz v3, :cond_55

    .line 64
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x6

    return v0

    .line 65
    :cond_55
    :try_start_55
    const-string v3, "Sat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_78

    if-eqz v3, :cond_63

    .line 66
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x7

    return v0

    .line 67
    :cond_63
    :try_start_63
    const-string v3, "Sun"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_78

    if-eqz v3, :cond_71

    .line 68
    nop

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_71
    :try_start_71
    const-string v3, "bad wkday"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local p0    # "this":Lgov/nist/javax/sip/parser/HeaderParser;
    throw v3
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_78

    .line 72
    .end local v1    # "tok":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/HeaderParser;
    :catchall_78
    move-exception v1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 73
    throw v1
.end method

.class public abstract Lgov/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "ParserCore.java"


# static fields
.field public static final greylist debug:Z

.field static greylist nesting_level:I


# instance fields
.field protected greylist lexer:Lgov/nist/core/LexerCore;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 41
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    sput-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist dbg_enter(Ljava/lang/String;)V
    .registers 6
    .param p1, "rule"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v1, v2, :cond_12

    .line 103
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 105
    .end local v1    # "i":I
    :cond_12
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_3c

    .line 106
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nlexer buffer = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 109
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_3c
    sget v1, Lgov/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgov/nist/core/ParserCore;->nesting_level:I

    .line 112
    return-void
.end method

.method protected greylist dbg_leave(Ljava/lang/String;)V
    .registers 6
    .param p1, "rule"    # Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v1, v2, :cond_12

    .line 117
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 119
    .end local v1    # "i":I
    :cond_12
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_3c

    .line 120
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nlexer buffer = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 124
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :cond_3c
    sget v1, Lgov/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lgov/nist/core/ParserCore;->nesting_level:I

    .line 127
    return-void
.end method

.method protected greylist nameValue()Lgov/nist/core/NameValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 130
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method protected greylist nameValue(C)Lgov/nist/core/NameValue;
    .registers 13
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 49
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "nameValue"

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 52
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 53
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 55
    .local v0, "name":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_8f

    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, "quoted":Z
    const/4 v4, 0x0

    :try_start_1d
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_23} :catch_7e
    .catchall {:try_start_1d .. :try_end_23} :catchall_8f

    .line 63
    .local v5, "la":C
    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, p1, :cond_6f

    .line 64
    :try_start_28
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 65
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    const/4 v7, 0x0

    .line 67
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .line 68
    .local v8, "isFlag":Z
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v9, v10, :cond_46

    .line 69
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .end local v7    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_5a

    .line 72
    .end local v2    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_46
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 74
    .local v2, "value":Lgov/nist/core/Token;
    iget-object v9, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 77
    .end local v7    # "str":Ljava/lang/String;
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_59

    .line 78
    nop

    .line 79
    .end local v9    # "str":Ljava/lang/String;
    .local v6, "str":Ljava/lang/String;
    const/4 v8, 0x1

    move-object v2, v6

    goto :goto_5a

    .line 77
    .end local v6    # "str":Ljava/lang/String;
    .restart local v9    # "str":Ljava/lang/String;
    :cond_59
    move-object v2, v9

    .line 82
    .end local v9    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    :goto_5a
    new-instance v6, Lgov/nist/core/NameValue;

    iget-object v7, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {v6, v7, v2, v8}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 83
    .local v6, "nv":Lgov/nist/core/NameValue;
    if-eqz v3, :cond_66

    invoke-virtual {v6}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_66
    .catch Ljava/text/ParseException; {:try_start_28 .. :try_end_66} :catch_7e
    .catchall {:try_start_28 .. :try_end_66} :catchall_8f

    .line 84
    :cond_66
    nop

    .line 94
    sget-boolean v4, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v4, :cond_6e

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 84
    :cond_6e
    return-object v6

    .line 87
    .end local v2    # "str":Ljava/lang/String;
    .end local v6    # "nv":Lgov/nist/core/NameValue;
    .end local v8    # "isFlag":Z
    :cond_6f
    :try_start_6f
    new-instance v2, Lgov/nist/core/NameValue;

    iget-object v8, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {v2, v8, v6, v7}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_76
    .catch Ljava/text/ParseException; {:try_start_6f .. :try_end_76} :catch_7e
    .catchall {:try_start_6f .. :try_end_76} :catchall_8f

    .line 94
    sget-boolean v4, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v4, :cond_7d

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_7d
    return-object v2

    .line 89
    .end local v3    # "quoted":Z
    .end local v5    # "la":C
    :catch_7e
    move-exception v2

    .line 90
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_7f
    new-instance v3, Lgov/nist/core/NameValue;

    iget-object v5, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_8f

    .line 94
    sget-boolean v4, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v4, :cond_8e

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 90
    :cond_8e
    return-object v3

    .line 94
    .end local v0    # "name":Lgov/nist/core/Token;
    .end local v2    # "ex":Ljava/text/ParseException;
    :catchall_8f
    move-exception v0

    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_97

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_97
    throw v0
.end method

.method protected greylist peekLine(Ljava/lang/String;)V
    .registers 4
    .param p1, "rule"    # Ljava/lang/String;

    .line 136
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_24

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->peekLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 139
    :cond_24
    return-void
.end method

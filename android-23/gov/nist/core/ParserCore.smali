.class public abstract Lgov/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "ParserCore.java"


# static fields
.field public static final debug:Z

.field static nesting_level:I


# instance fields
.field protected lexer:Lgov/nist/core/LexerCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    #@2
    sput-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    #@4
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected dbg_enter(Ljava/lang/String;)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 102
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 103
    const-string/jumbo v2, ">"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 102
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 105
    :cond_0
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 106
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 108
    const-string/jumbo v4, "\nlexer buffer = \n"

    #@29
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 109
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 106
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 111
    :cond_1
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    #@40
    add-int/lit8 v2, v2, 0x1

    #@42
    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    #@44
    .line 100
    return-void
.end method

.method protected dbg_leave(Ljava/lang/String;)V
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 116
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 117
    const-string/jumbo v2, "<"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 119
    :cond_0
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 120
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 123
    const-string/jumbo v4, "\nlexer buffer = \n"

    #@29
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 124
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 120
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 126
    :cond_1
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    #@40
    add-int/lit8 v2, v2, -0x1

    #@42
    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    #@44
    .line 114
    return-void
.end method

.method protected nameValue()Lgov/nist/core/NameValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    const/16 v0, 0x3d

    #@2
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected nameValue(C)Lgov/nist/core/NameValue;
    .locals 12
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    sget-boolean v8, Lgov/nist/core/ParserCore;->debug:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    const-string/jumbo v8, "nameValue"

    #@7
    invoke-virtual {p0, v8}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 52
    :cond_0
    :try_start_0
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v9, 0xfff

    #@e
    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 53
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@16
    move-result-object v3

    #@17
    .line 55
    .local v3, "name":Lgov/nist/core/Token;
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@19
    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 59
    const/4 v5, 0x0

    #@1d
    .line 61
    .local v5, "quoted":Z
    :try_start_1
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/4 v9, 0x0

    #@20
    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@23
    move-result v2

    #@24
    .line 63
    .local v2, "la":C
    if-ne v2, p1, :cond_5

    #@26
    .line 64
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@28
    const/4 v9, 0x1

    #@29
    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->consume(I)V

    #@2c
    .line 65
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@31
    .line 66
    const/4 v6, 0x0

    #@32
    .line 67
    .local v6, "str":Ljava/lang/String;
    const/4 v1, 0x0

    #@33
    .line 68
    .local v1, "isFlag":Z
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@35
    const/4 v9, 0x0

    #@36
    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@39
    move-result v8

    #@3a
    const/16 v9, 0x22

    #@3c
    if-ne v8, v9, :cond_4

    #@3e
    .line 69
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@40
    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 70
    .local v6, "str":Ljava/lang/String;
    const/4 v5, 0x1

    #@45
    .line 82
    :cond_1
    :goto_0
    new-instance v4, Lgov/nist/core/NameValue;

    #@47
    iget-object v8, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@49
    invoke-direct {v4, v8, v6, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@4c
    .line 83
    .local v4, "nv":Lgov/nist/core/NameValue;
    if-eqz v5, :cond_2

    #@4e
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 94
    :cond_2
    sget-boolean v8, Lgov/nist/core/ParserCore;->debug:Z

    #@53
    if-eqz v8, :cond_3

    #@55
    const-string/jumbo v8, "nameValue"

    #@58
    invoke-virtual {p0, v8}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    #@5b
    .line 84
    :cond_3
    return-object v4

    #@5c
    .line 72
    .end local v4    # "nv":Lgov/nist/core/NameValue;
    .local v6, "str":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@5e
    const/16 v9, 0xfff

    #@60
    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@63
    .line 73
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@65
    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@68
    move-result-object v7

    #@69
    .line 74
    .local v7, "value":Lgov/nist/core/Token;
    iget-object v6, v7, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@6b
    .line 77
    .local v6, "str":Ljava/lang/String;
    if-nez v6, :cond_1

    #@6d
    .line 78
    const-string/jumbo v6, ""

    #@70
    .line 79
    const/4 v1, 0x1

    #@71
    goto :goto_0

    #@72
    .line 87
    .end local v1    # "isFlag":Z
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "value":Lgov/nist/core/Token;
    :cond_5
    new-instance v8, Lgov/nist/core/NameValue;

    #@74
    iget-object v9, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@76
    const-string/jumbo v10, ""

    #@79
    const/4 v11, 0x1

    #@7a
    invoke-direct {v8, v9, v10, v11}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    .line 94
    sget-boolean v9, Lgov/nist/core/ParserCore;->debug:Z

    #@7f
    if-eqz v9, :cond_6

    #@81
    const-string/jumbo v9, "nameValue"

    #@84
    invoke-virtual {p0, v9}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    #@87
    .line 87
    :cond_6
    return-object v8

    #@88
    .line 89
    .end local v2    # "la":C
    :catch_0
    move-exception v0

    #@89
    .line 90
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_3
    new-instance v8, Lgov/nist/core/NameValue;

    #@8b
    iget-object v9, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@8d
    const/4 v10, 0x0

    #@8e
    const/4 v11, 0x0

    #@8f
    invoke-direct {v8, v9, v10, v11}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    .line 94
    sget-boolean v9, Lgov/nist/core/ParserCore;->debug:Z

    #@94
    if-eqz v9, :cond_7

    #@96
    const-string/jumbo v9, "nameValue"

    #@99
    invoke-virtual {p0, v9}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    #@9c
    .line 90
    :cond_7
    return-object v8

    #@9d
    .line 93
    .end local v0    # "ex":Ljava/text/ParseException;
    .end local v3    # "name":Lgov/nist/core/Token;
    .end local v5    # "quoted":Z
    :catchall_0
    move-exception v8

    #@9e
    .line 94
    sget-boolean v9, Lgov/nist/core/ParserCore;->debug:Z

    #@a0
    if-eqz v9, :cond_8

    #@a2
    const-string/jumbo v9, "nameValue"

    #@a5
    invoke-virtual {p0, v9}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    #@a8
    .line 93
    :cond_8
    throw v8
.end method

.method protected peekLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->peekLine()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@25
    .line 135
    :cond_0
    return-void
.end method

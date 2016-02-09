.class public Lgov/nist/javax/sip/parser/PriorityParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PriorityParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    const/4 v4, 0x1

    #@1
    new-array v1, v4, [Ljava/lang/String;

    #@3
    .line 100
    const-string/jumbo v4, "Priority: 8;a\n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v1, v5

    #@9
    .line 103
    .local v1, "p":[Ljava/lang/String;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v4, v1

    #@b
    if-ge v0, v4, :cond_0

    #@d
    .line 105
    new-instance v2, Lgov/nist/javax/sip/parser/PriorityParser;

    #@f
    aget-object v4, v1, v0

    #@11
    invoke-direct {v2, v4}, Lgov/nist/javax/sip/parser/PriorityParser;-><init>(Ljava/lang/String;)V

    #@14
    .line 106
    .local v2, "parser":Lgov/nist/javax/sip/parser/PriorityParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PriorityParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lgov/nist/javax/sip/header/Priority;

    #@1a
    .line 107
    .local v3, "prio":Lgov/nist/javax/sip/header/Priority;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "encoded = "

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Priority;->encode()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 98
    .end local v2    # "parser":Lgov/nist/javax/sip/parser/PriorityParser;
    .end local v3    # "prio":Lgov/nist/javax/sip/header/Priority;
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    sget-boolean v1, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 70
    const-string/jumbo v1, "PriorityParser.parse"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 71
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    #@c
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    #@f
    .line 73
    .local v0, "priority":Lgov/nist/javax/sip/header/Priority;
    const/16 v1, 0x821

    #@11
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->headerName(I)V

    #@14
    .line 75
    const-string/jumbo v1, "Priority"

    #@17
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Priority;->setHeaderName(Ljava/lang/String;)V

    #@1a
    .line 77
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1f
    .line 85
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    #@21
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    #@28
    .line 87
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    #@2a
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2d
    .line 88
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PriorityParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    const/16 v2, 0xa

    #@31
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 92
    sget-boolean v1, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 93
    const-string/jumbo v1, "PriorityParser.parse"

    #@3b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    #@3e
    .line 90
    :cond_1
    return-object v0

    #@3f
    .line 91
    :catchall_0
    move-exception v1

    #@40
    .line 92
    sget-boolean v2, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    #@42
    if-eqz v2, :cond_2

    #@44
    .line 93
    const-string/jumbo v2, "PriorityParser.parse"

    #@47
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    #@4a
    .line 91
    :cond_2
    throw v1
.end method

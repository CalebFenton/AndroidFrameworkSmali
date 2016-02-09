.class public Lgov/nist/javax/sip/parser/extensions/ReplacesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReplacesParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 27
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
    .line 65
    const/4 v4, 0x2

    #@1
    new-array v2, v4, [Ljava/lang/String;

    #@3
    const-string/jumbo v4, "Replaces: 12345th5z8z\n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v2, v5

    #@9
    .line 66
    const-string/jumbo v4, "Replaces: 12345th5z8z;to-tag=tozght6-45;from-tag=fromzght789-337-2\n"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v2, v5

    #@f
    .line 69
    .local v2, "to":[Ljava/lang/String;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@11
    if-ge v0, v4, :cond_0

    #@13
    .line 70
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;

    #@15
    aget-object v4, v2, v0

    #@17
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;-><init>(Ljava/lang/String;)V

    #@1a
    .line 71
    .local v3, "tp":Lgov/nist/javax/sip/parser/extensions/ReplacesParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lgov/nist/javax/sip/header/extensions/Replaces;

    #@20
    .line 72
    .local v1, "t":Lgov/nist/javax/sip/header/extensions/Replaces;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "Parsing => "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    aget-object v6, v2, v0

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 73
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "encoded = "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Replaces;->encode()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    const-string/jumbo v6, "==> "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5f
    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@61
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "callId "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Replaces;->getCallId()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    const-string/jumbo v6, " from-tag="

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Replaces;->getFromTag()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    .line 75
    const-string/jumbo v6, " to-tag="

    #@87
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    .line 75
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/Replaces;->getToTag()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9a
    .line 69
    add-int/lit8 v0, v0, 0x1

    #@9c
    goto/16 :goto_0

    #@9e
    .line 63
    .end local v1    # "t":Lgov/nist/javax/sip/header/extensions/Replaces;
    .end local v3    # "tp":Lgov/nist/javax/sip/parser/extensions/ReplacesParser;
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 46
    const-string/jumbo v2, "parse"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 48
    :cond_0
    const/16 v2, 0x857

    #@c
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->headerName(I)V

    #@f
    .line 50
    new-instance v1, Lgov/nist/javax/sip/header/extensions/Replaces;

    #@11
    invoke-direct {v1}, Lgov/nist/javax/sip/header/extensions/Replaces;-><init>()V

    #@14
    .line 51
    .local v1, "replaces":Lgov/nist/javax/sip/header/extensions/Replaces;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@19
    .line 52
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 53
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->lexer:Lgov/nist/core/LexerCore;

    #@21
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@24
    .line 54
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@27
    .line 55
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 58
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->debug:Z

    #@2c
    if-eqz v2, :cond_1

    #@2e
    .line 59
    const-string/jumbo v2, "parse"

    #@31
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->dbg_leave(Ljava/lang/String;)V

    #@34
    .line 56
    :cond_1
    return-object v1

    #@35
    .line 57
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "replaces":Lgov/nist/javax/sip/header/extensions/Replaces;
    :catchall_0
    move-exception v2

    #@36
    .line 58
    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->debug:Z

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 59
    const-string/jumbo v3, "parse"

    #@3d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;->dbg_leave(Ljava/lang/String;)V

    #@40
    .line 57
    :cond_2
    throw v2
.end method

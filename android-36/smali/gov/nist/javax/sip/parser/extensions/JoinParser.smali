.class public Lgov/nist/javax/sip/parser/extensions/JoinParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "JoinParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 34
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 35
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "callID"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 62
    const-string v0, "Join: 12345th5z8z\n"

    const-string v1, "Join: 12345th5z8z;to-tag=tozght6-45;from-tag=fromzght789-337-2\n"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "to":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_91

    .line 68
    new-instance v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/extensions/JoinParser;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "tp":Lgov/nist/javax/sip/parser/extensions/JoinParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/extensions/Join;

    .line 70
    .local v3, "t":Lgov/nist/javax/sip/header/extensions/Join;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/extensions/Join;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/extensions/Join;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from-tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/extensions/Join;->getFromTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to-tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/extensions/Join;->getToTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    .end local v2    # "tp":Lgov/nist/javax/sip/parser/extensions/JoinParser;
    .end local v3    # "t":Lgov/nist/javax/sip/header/extensions/Join;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 76
    .end local v1    # "i":I
    :cond_91
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 43
    sget-boolean v0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->dbg_enter(Ljava/lang/String;)V

    .line 46
    :cond_9
    const/16 v0, 0x85c

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->headerName(I)V

    .line 48
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Join;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    .line 49
    .local v0, "join":Lgov/nist/javax/sip/header/extensions/Join;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 50
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "callId":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/extensions/JoinParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 52
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 53
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_32

    .line 54
    nop

    .line 56
    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/JoinParser;->debug:Z

    if-eqz v3, :cond_31

    .line 57
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->dbg_leave(Ljava/lang/String;)V

    .line 54
    :cond_31
    return-object v0

    .line 56
    .end local v0    # "join":Lgov/nist/javax/sip/header/extensions/Join;
    .end local v2    # "callId":Ljava/lang/String;
    :catchall_32
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;->debug:Z

    if-eqz v2, :cond_3a

    .line 57
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/JoinParser;->dbg_leave(Ljava/lang/String;)V

    .line 58
    :cond_3a
    throw v0
.end method

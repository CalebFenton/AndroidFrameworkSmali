.class public Lgov/nist/javax/sip/parser/extensions/MinSEParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "MinSEParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 25
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
    .line 69
    const/4 v4, 0x2

    #@1
    new-array v2, v4, [Ljava/lang/String;

    #@3
    const-string/jumbo v4, "Min-SE: 30\n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v2, v5

    #@9
    .line 70
    const-string/jumbo v4, "Min-SE: 45;some-param=somevalue\n"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v2, v5

    #@f
    .line 73
    .local v2, "to":[Ljava/lang/String;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@11
    if-ge v0, v4, :cond_1

    #@13
    .line 74
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    #@15
    aget-object v4, v2, v0

    #@17
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;-><init>(Ljava/lang/String;)V

    #@1a
    .line 75
    .local v3, "tp":Lgov/nist/javax/sip/parser/extensions/MinSEParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lgov/nist/javax/sip/header/extensions/MinSE;

    #@20
    .line 76
    .local v1, "t":Lgov/nist/javax/sip/header/extensions/MinSE;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "encoded = "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/MinSE;->encode()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "\ntime="

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/MinSE;->getExpires()I

    #@4e
    move-result v6

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    .line 78
    const-string/jumbo v4, "some-param"

    #@5d
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/extensions/MinSE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    if-eqz v4, :cond_0

    #@63
    .line 79
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@65
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v6, "some-param="

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    const-string/jumbo v6, "some-param"

    #@74
    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/extensions/MinSE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@83
    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@85
    goto :goto_0

    #@86
    .line 67
    .end local v1    # "t":Lgov/nist/javax/sip/header/extensions/MinSE;
    .end local v3    # "tp":Lgov/nist/javax/sip/parser/extensions/MinSEParser;
    :cond_1
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    new-instance v3, Lgov/nist/javax/sip/header/extensions/MinSE;

    #@2
    invoke-direct {v3}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    #@5
    .line 42
    .local v3, "minse":Lgov/nist/javax/sip/header/extensions/MinSE;
    sget-boolean v5, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 43
    const-string/jumbo v5, "parse"

    #@c
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 45
    :cond_0
    const/16 v5, 0x856

    #@11
    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->headerName(I)V

    #@14
    .line 47
    iget-object v5, p0, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v4

    #@1a
    .line 49
    .local v4, "nextId":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d
    move-result v0

    #@1e
    .line 50
    .local v0, "delta":I
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 56
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 57
    invoke-super {p0, v3}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 61
    sget-boolean v5, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 62
    const-string/jumbo v5, "parse"

    #@30
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    #@33
    .line 58
    :cond_1
    return-object v3

    #@34
    .line 53
    .end local v0    # "delta":I
    :catch_0
    move-exception v2

    #@35
    .line 54
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@3c
    move-result-object v5

    #@3d
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    .line 60
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local v4    # "nextId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@3f
    .line 61
    sget-boolean v6, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->debug:Z

    #@41
    if-eqz v6, :cond_2

    #@43
    .line 62
    const-string/jumbo v6, "parse"

    #@46
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->dbg_leave(Ljava/lang/String;)V

    #@49
    .line 60
    :cond_2
    throw v5

    #@4a
    .line 51
    .restart local v4    # "nextId":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@4b
    .line 52
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v5, "bad integer format"

    #@4e
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/extensions/MinSEParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@51
    move-result-object v5

    #@52
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

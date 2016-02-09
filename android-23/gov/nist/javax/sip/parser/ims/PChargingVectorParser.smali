.class public Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingVectorParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargingVector"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
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
    const/16 v5, 0xa

    #@2
    .line 68
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 69
    const-string/jumbo v3, "parse"

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 71
    :cond_0
    const/16 v3, 0x84d

    #@e
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->headerName(I)V

    #@11
    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    #@13
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 75
    .local v0, "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v3

    #@1d
    if-eq v3, v5, :cond_1

    #@1f
    .line 76
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V

    #@22
    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@27
    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result v2

    #@2e
    .line 79
    .local v2, "la":C
    if-eq v2, v5, :cond_1

    #@30
    if-nez v2, :cond_3

    #@32
    .line 90
    .end local v2    # "la":C
    :cond_1
    :try_start_2
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@35
    .line 91
    const-string/jumbo v3, "icid-value"

    #@38
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    if-nez v3, :cond_4

    #@3e
    .line 92
    new-instance v3, Ljava/text/ParseException;

    #@40
    const-string/jumbo v4, "Missing a required Parameter : icid-value"

    #@43
    const/4 v5, 0x0

    #@44
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@47
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 94
    .end local v0    # "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    :catchall_0
    move-exception v3

    #@49
    .line 95
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    #@4b
    if-eqz v4, :cond_2

    #@4d
    .line 96
    const-string/jumbo v4, "parse"

    #@50
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    #@53
    .line 94
    :cond_2
    throw v3

    #@54
    .line 81
    .restart local v0    # "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    .restart local v2    # "la":C
    :cond_3
    :try_start_3
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    #@56
    const/16 v4, 0x3b

    #@58
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5b
    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@60
    goto :goto_0

    #@61
    .line 85
    .end local v2    # "la":C
    :catch_0
    move-exception v1

    #@62
    .line 86
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@63
    .line 95
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_4
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    #@65
    if-eqz v3, :cond_5

    #@67
    .line 96
    const-string/jumbo v3, "parse"

    #@6a
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    #@6d
    .line 93
    :cond_5
    return-object v0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V
    .locals 3
    .param p1, "chargingVector"    # Lgov/nist/javax/sip/header/ims/PChargingVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 103
    const-string/jumbo v1, "parseParameter"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 105
    :cond_0
    const/16 v1, 0x3d

    #@c
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->nameValue(C)Lgov/nist/core/NameValue;

    #@f
    move-result-object v0

    #@10
    .line 106
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 108
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 109
    const-string/jumbo v1, "parseParameter"

    #@1a
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    #@1d
    .line 100
    :cond_1
    return-void

    #@1e
    .line 107
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    #@1f
    .line 108
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 109
    const-string/jumbo v2, "parseParameter"

    #@26
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    #@29
    .line 107
    :cond_2
    throw v1
.end method

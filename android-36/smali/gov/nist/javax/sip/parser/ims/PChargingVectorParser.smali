.class public Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingVectorParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "chargingVector"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 68
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    const/16 v0, 0x84d

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->headerName(I)V

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_5e

    .line 75
    .local v0, "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    :goto_13
    :try_start_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3e

    .line 76
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 79
    .local v2, "la":C
    if-eq v2, v4, :cond_3e

    if-nez v2, :cond_31

    .line 80
    goto :goto_3e

    .line 81
    :cond_31
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_3d} :catch_5b
    .catchall {:try_start_13 .. :try_end_3d} :catchall_5e

    .line 83
    .end local v2    # "la":C
    goto :goto_13

    .line 87
    :cond_3e
    :goto_3e
    nop

    .line 90
    :try_start_3f
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 91
    const-string v2, "icid-value"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_5e

    if-eqz v2, :cond_53

    .line 93
    nop

    .line 95
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v2, :cond_52

    .line 96
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_52
    return-object v0

    .line 92
    :cond_53
    :try_start_53
    new-instance v2, Ljava/text/ParseException;

    const-string v4, "Missing a required Parameter : icid-value"

    invoke-direct {v2, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
    throw v2

    .line 85
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
    :catch_5b
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/text/ParseException;
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
    throw v2
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_5e

    .line 95
    .end local v0    # "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    .end local v2    # "ex":Ljava/text/ParseException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
    :catchall_5e
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v2, :cond_66

    .line 96
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 97
    :cond_66
    throw v0
.end method

.method protected greylist parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V
    .registers 5
    .param p1, "chargingVector"    # Lgov/nist/javax/sip/header/ims/PChargingVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 102
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    const-string v1, "parseParameter"

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    .line 105
    :cond_9
    const/16 v0, 0x3d

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 106
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 108
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v0, :cond_19

    .line 109
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 114
    :cond_19
    return-void

    .line 108
    :catchall_1a
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v2, :cond_22

    .line 109
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    .line 110
    :cond_22
    throw v0
.end method

.class public Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingFunctionAddressesParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "charging"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 71
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
    .line 148
    const/4 v4, 0x3

    #@1
    new-array v3, v4, [Ljava/lang/String;

    #@3
    .line 149
    const-string/jumbo v4, "P-Charging-Function-Addresses: ccf=\"test str\"; ecf=token\n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v3, v5

    #@9
    .line 150
    const-string/jumbo v4, "P-Charging-Function-Addresses: ccf=192.1.1.1; ccf=192.1.1.2; ecf=192.1.1.3; ecf=192.1.1.4\n"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v3, v5

    #@f
    .line 151
    const-string/jumbo v4, "P-Charging-Function-Addresses: ccf=[5555::b99:c88:d77:e66]; ccf=[5555::a55:b44:c33:d22]; ecf=[5555::1ff:2ee:3dd:4cc]; ecf=[5555::6aa:7bb:8cc:9dd]\n"

    #@12
    const/4 v5, 0x2

    #@13
    aput-object v4, v3, v5

    #@15
    .line 157
    .local v3, "r":[Ljava/lang/String;
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@17
    if-ge v1, v4, :cond_0

    #@19
    .line 161
    new-instance v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    #@1b
    aget-object v4, v3, v1

    #@1d
    invoke-direct {v2, v4}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;-><init>(Ljava/lang/String;)V

    #@20
    .line 163
    .local v2, "parser":Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "original = "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    aget-object v6, v3, v1

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
    .line 165
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    #@41
    .line 166
    .local v0, "chargAddr":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@43
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "encoded = "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->encode()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5e
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_0

    #@61
    .line 147
    .end local v0    # "chargAddr":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .end local v2    # "parser":Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    :cond_0
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
    .line 89
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 90
    const-string/jumbo v3, "parse"

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 92
    :cond_0
    const/16 v3, 0x84c

    #@e
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->headerName(I)V

    #@11
    .line 93
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    #@13
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 96
    .local v0, "chargingFunctionAddresses":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v3

    #@1d
    if-eq v3, v5, :cond_1

    #@1f
    .line 98
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;)V

    #@22
    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@27
    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

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
    .line 101
    .local v2, "la":C
    if-eq v2, v5, :cond_1

    #@30
    if-nez v2, :cond_3

    #@32
    .line 112
    .end local v2    # "la":C
    :cond_1
    :try_start_2
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    .line 115
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 116
    const-string/jumbo v3, "parse"

    #@3c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    #@3f
    .line 113
    :cond_2
    return-object v0

    #@40
    .line 104
    .restart local v2    # "la":C
    :cond_3
    :try_start_3
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    #@42
    const/16 v4, 0x3b

    #@44
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@47
    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    #@49
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 107
    .end local v2    # "la":C
    :catch_0
    move-exception v1

    #@4e
    .line 108
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4f
    .line 114
    .end local v0    # "chargingFunctionAddresses":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    #@50
    .line 115
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    #@52
    if-eqz v4, :cond_4

    #@54
    .line 116
    const-string/jumbo v4, "parse"

    #@57
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    #@5a
    .line 114
    :cond_4
    throw v3
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;)V
    .locals 3
    .param p1, "chargingFunctionAddresses"    # Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 123
    const-string/jumbo v1, "parseParameter"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 126
    :cond_0
    const/16 v1, 0x3d

    #@c
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->nameValue(C)Lgov/nist/core/NameValue;

    #@f
    move-result-object v0

    #@10
    .line 129
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 132
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 133
    const-string/jumbo v1, "parseParameter"

    #@1a
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    #@1d
    .line 120
    :cond_1
    return-void

    #@1e
    .line 131
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    #@1f
    .line 132
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 133
    const-string/jumbo v2, "parseParameter"

    #@26
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    #@29
    .line 131
    :cond_2
    throw v1
.end method

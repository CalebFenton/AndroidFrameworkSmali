.class public Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingFunctionAddressesParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 80
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 82
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "charging"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 76
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

    .line 148
    const-string v0, "P-Charging-Function-Addresses: ccf=192.1.1.1; ccf=192.1.1.2; ecf=192.1.1.3; ecf=192.1.1.4\n"

    const-string v1, "P-Charging-Function-Addresses: ccf=[5555::b99:c88:d77:e66]; ccf=[5555::a55:b44:c33:d22]; ecf=[5555::1ff:2ee:3dd:4cc]; ecf=[5555::6aa:7bb:8cc:9dd]\n"

    const-string v2, "P-Charging-Function-Addresses: ccf=\"test str\"; ecf=token\n"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "r":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_54

    .line 160
    new-instance v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "parser":Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    .line 166
    .local v3, "chargAddr":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    .end local v2    # "parser":Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    .end local v3    # "chargAddr":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 170
    .end local v1    # "i":I
    :cond_54
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

    .line 89
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 90
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    .line 92
    :cond_9
    const/16 v0, 0x84c

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->headerName(I)V

    .line 93
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_4e

    .line 96
    .local v0, "chargingFunctionAddresses":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    :goto_13
    :try_start_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3e

    .line 98
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;)V

    .line 99
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 101
    .local v2, "la":C
    if-eq v2, v4, :cond_3e

    if-nez v2, :cond_31

    .line 102
    goto :goto_3e

    .line 104
    :cond_31
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_3d} :catch_4b
    .catchall {:try_start_13 .. :try_end_3d} :catchall_4e

    .line 106
    .end local v2    # "la":C
    goto :goto_13

    .line 109
    :cond_3e
    :goto_3e
    nop

    .line 112
    :try_start_3f
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4e

    .line 113
    nop

    .line 115
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v2, :cond_4a

    .line 116
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_4a
    return-object v0

    .line 107
    :catch_4b
    move-exception v2

    .line 108
    .local v2, "ex":Ljava/text/ParseException;
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    :try_start_4d
    throw v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 115
    .end local v0    # "chargingFunctionAddresses":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .end local v2    # "ex":Ljava/text/ParseException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    :catchall_4e
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v2, :cond_56

    .line 116
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 117
    :cond_56
    throw v0
.end method

.method protected greylist parseParameter(Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;)V
    .registers 5
    .param p1, "chargingFunctionAddresses"    # Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 122
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    const-string v1, "parseParameter"

    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    .line 126
    :cond_9
    const/16 v0, 0x3d

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 129
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Lgov/nist/core/NameValue;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 132
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v0, :cond_19

    .line 133
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 138
    :cond_19
    return-void

    .line 132
    :catchall_1a
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v2, :cond_22

    .line 133
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 134
    :cond_22
    throw v0
.end method

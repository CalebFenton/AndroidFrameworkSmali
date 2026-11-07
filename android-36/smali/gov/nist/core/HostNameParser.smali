.class public Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "HostNameParser.java"


# static fields
.field private static greylist Lexer:Lgov/nist/core/LexerCore;

.field private static final greylist VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field private greylist stripAddressScopeZones:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    return-void

    nop

    :array_a
    .array-data 2
        -0x3s
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor greylist <init>(Lgov/nist/core/LexerCore;)V
    .registers 3
    .param p1, "lexer"    # Lgov/nist/core/LexerCore;

    .line 75
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 76
    iput-object p1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 77
    const-string v0, "charLexer"

    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 81
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "hname"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 66
    new-instance v0, Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 68
    nop

    .line 69
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 70
    return-void
.end method

.method private greylist isIPv6Address(Ljava/lang/String;)Z
    .registers 10
    .param p1, "uriHeader"    # Ljava/lang/String;

    .line 225
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 229
    .local v0, "hostEnd":I
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 230
    .local v1, "semiColonIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_13

    if-eq v1, v2, :cond_14

    if-le v0, v1, :cond_14

    .line 232
    :cond_13
    move v0, v1

    .line 236
    :cond_14
    if-ne v0, v2, :cond_1a

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 240
    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "host":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 244
    .local v6, "firstColonIndex":I
    if-ne v6, v2, :cond_28

    .line 245
    return v3

    .line 247
    :cond_28
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 249
    .local v5, "secondColonIndex":I
    if-ne v5, v2, :cond_31

    .line 250
    return v3

    .line 252
    :cond_31
    const/4 v2, 0x1

    return v2
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 320
    const-string v5, "foo.bar.com     :      1234   "

    const-string v6, "MIK_S:1234"

    const-string v0, "foo.bar.com:1234"

    const-string v1, "proxima.chaplin.bt.co.uk"

    const-string v2, "129.6.55.181:2345"

    const-string v3, ":1234"

    const-string v4, "foo.bar.com:         1234"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 331
    .local v1, "hostNames":[Ljava/lang/String;
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_15
    array-length v0, v1

    if-ge v2, v0, :cond_67

    .line 333
    :try_start_18
    new-instance v0, Lgov/nist/core/HostNameParser;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lgov/nist/core/HostNameParser;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "hnp":Lgov/nist/core/HostNameParser;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v3

    .line 335
    .local v3, "hp":Lgov/nist/core/HostPort;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_46} :catch_47

    .line 338
    .end local v0    # "hnp":Lgov/nist/core/HostNameParser;
    .end local v3    # "hp":Lgov/nist/core/HostPort;
    goto :goto_64

    .line 336
    :catch_47
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/text/ParseException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    .end local v0    # "ex":Ljava/text/ParseException;
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 341
    .end local v2    # "i":I
    :cond_67
    return-void
.end method


# virtual methods
.method protected greylist consumeDomainLabel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 86
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    const-string v1, "domainLabel"

    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 89
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    sget-object v2, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_18

    .line 91
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v0, :cond_17

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 94
    :cond_17
    return-void

    .line 91
    :catchall_18
    move-exception v0

    sget-boolean v2, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v2, :cond_20

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_20
    throw v0
.end method

.method public greylist host()Lgov/nist/core/Host;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 172
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    const-string v1, "host"

    if-eqz v0, :cond_9

    .line 173
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 178
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_19

    .line 179
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    move-result-object v0

    .local v0, "hostname":Ljava/lang/String;
    goto :goto_77

    .line 182
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_19
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/core/HostNameParser;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 184
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 185
    .local v0, "startPtr":I
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x2

    new-array v3, v3, [C

    fill-array-data v3, :array_b8

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 189
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 191
    .local v0, "hostname":Ljava/lang/String;
    goto :goto_77

    .line 194
    .end local v0    # "hostname":Ljava/lang/String;
    :cond_5d
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 195
    .local v0, "startPtr":I
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->consumeDomainLabel()V

    .line 196
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 199
    .local v0, "hostname":Ljava/lang/String;
    :goto_77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8a

    .line 204
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2, v0}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_9 .. :try_end_82} :catchall_af

    .line 206
    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_89

    .line 207
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 204
    :cond_89
    return-object v2

    .line 200
    :cond_8a
    :try_start_8a
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 201
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Missing host name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 202
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/core/HostNameParser;
    throw v2
    :try_end_af
    .catchall {:try_start_8a .. :try_end_af} :catchall_af

    .line 206
    .end local v0    # "hostname":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/core/HostNameParser;
    :catchall_af
    move-exception v0

    sget-boolean v2, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v2, :cond_b7

    .line 207
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 208
    :cond_b7
    throw v0

    :array_b8
    .array-data 2
        -0x3s
        0x3as
    .end array-data
.end method

.method public greylist hostPort(Z)Lgov/nist/core/HostPort;
    .registers 10
    .param p1, "allowWS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 262
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    const-string v1, "hostPort"

    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 265
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v0

    .line 266
    .local v0, "host":Lgov/nist/core/Host;
    new-instance v2, Lgov/nist/core/HostPort;

    invoke-direct {v2}, Lgov/nist/core/HostPort;-><init>()V

    .line 267
    .local v2, "hp":Lgov/nist/core/HostPort;
    invoke-virtual {v2, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 269
    if-eqz p1, :cond_1c

    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 270
    :cond_1c
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 271
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 272
    .local v3, "la":C
    sparse-switch v3, :sswitch_data_ba

    goto :goto_76

    .line 275
    :sswitch_2f
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 276
    if-eqz p1, :cond_3c

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_b1

    .line 278
    :cond_3c
    :try_start_3c
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "port":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_49} :catch_4a
    .catchall {:try_start_3c .. :try_end_49} :catchall_b1

    .line 284
    .end local v4    # "port":Ljava/lang/String;
    goto :goto_a8

    .line 280
    :catch_4a
    move-exception v4

    .line 281
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_4b
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 282
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :Error parsing port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 283
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/core/HostNameParser;
    .end local p1    # "allowWS":Z
    throw v5

    .line 300
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .restart local p0    # "this":Lgov/nist/core/HostNameParser;
    .restart local p1    # "allowWS":Z
    :sswitch_70
    iget-boolean v5, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    if-eqz v5, :cond_76

    .line 301
    goto :goto_a8

    .line 298
    :sswitch_75
    goto :goto_a8

    .line 305
    :cond_76
    :goto_76
    if-eqz p1, :cond_79

    goto :goto_a8

    .line 306
    :cond_79
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Illegal character in hostname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 307
    invoke-virtual {v7, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 308
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v6

    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/core/HostNameParser;
    .end local p1    # "allowWS":Z
    throw v5
    :try_end_a8
    .catchall {:try_start_4b .. :try_end_a8} :catchall_b1

    .line 312
    .end local v3    # "la":C
    .restart local p0    # "this":Lgov/nist/core/HostNameParser;
    .restart local p1    # "allowWS":Z
    :cond_a8
    :goto_a8
    nop

    .line 314
    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_b0

    .line 315
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 312
    :cond_b0
    return-object v2

    .line 314
    .end local v0    # "host":Lgov/nist/core/Host;
    .end local v2    # "hp":Lgov/nist/core/HostPort;
    :catchall_b1
    move-exception v0

    sget-boolean v2, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v2, :cond_b9

    .line 315
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 316
    :cond_b9
    throw v0

    :sswitch_data_ba
    .sparse-switch
        0x9 -> :sswitch_75
        0xa -> :sswitch_75
        0xd -> :sswitch_75
        0x20 -> :sswitch_75
        0x25 -> :sswitch_70
        0x2c -> :sswitch_75
        0x2f -> :sswitch_75
        0x3a -> :sswitch_2f
        0x3b -> :sswitch_75
        0x3e -> :sswitch_75
        0x3f -> :sswitch_75
    .end sparse-switch
.end method

.method protected greylist ipv6Reference()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "retval":Ljava/lang/StringBuffer;
    sget-boolean v1, Lgov/nist/core/HostNameParser;->debug:Z

    const-string v2, "ipv6Reference"

    if-eqz v1, :cond_e

    .line 99
    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    .line 103
    :cond_e
    :try_start_e
    iget-boolean v1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    const/16 v3, 0x5b

    const/16 v4, 0x3a

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/16 v7, 0x5d

    const/4 v8, 0x1

    if-eqz v1, :cond_8e

    .line 104
    :goto_1c
    iget-object v1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 105
    iget-object v1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 108
    .local v1, "la":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v9

    if-nez v9, :cond_85

    if-eq v1, v5, :cond_85

    if-eq v1, v4, :cond_85

    if-ne v1, v3, :cond_37

    goto :goto_85

    .line 112
    :cond_37
    if-ne v1, v7, :cond_4d

    .line 113
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_ed

    .line 166
    sget-boolean v4, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v4, :cond_4c

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_4c
    return-object v3

    .line 116
    :cond_4d
    const/16 v3, 0x25

    if-ne v1, v3, :cond_c8

    .line 118
    :try_start_51
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 120
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "rest":Ljava/lang/String;
    if-eqz v3, :cond_c8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_84

    .line 129
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 131
    .local v4, "stripLen":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_83

    .line 136
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 137
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_7b
    .catchall {:try_start_51 .. :try_end_7b} :catchall_ed

    .line 166
    sget-boolean v6, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v6, :cond_82

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 138
    :cond_82
    return-object v5

    .line 133
    :cond_83
    goto :goto_c8

    .line 124
    .end local v4    # "stripLen":I
    :cond_84
    goto :goto_c8

    .line 110
    .end local v3    # "rest":Ljava/lang/String;
    :cond_85
    :goto_85
    :try_start_85
    iget-object v9, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    .end local v1    # "la":C
    goto :goto_1c

    .line 146
    :cond_8e
    :goto_8e
    iget-object v1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 148
    iget-object v1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 149
    .restart local v1    # "la":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v9

    if-nez v9, :cond_bf

    if-eq v1, v5, :cond_bf

    if-eq v1, v4, :cond_bf

    if-ne v1, v3, :cond_a9

    goto :goto_bf

    .line 153
    :cond_a9
    if-ne v1, v7, :cond_c8

    .line 154
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_b7
    .catchall {:try_start_85 .. :try_end_b7} :catchall_ed

    .line 166
    sget-boolean v4, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v4, :cond_be

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 156
    :cond_be
    return-object v3

    .line 151
    :cond_bf
    :goto_bf
    :try_start_bf
    iget-object v9, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    .end local v1    # "la":C
    goto :goto_8e

    .line 162
    :cond_c8
    :goto_c8
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 163
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Illegal Host name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    .line 164
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-direct {v1, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "retval":Ljava/lang/StringBuffer;
    .end local p0    # "this":Lgov/nist/core/HostNameParser;
    throw v1
    :try_end_ed
    .catchall {:try_start_bf .. :try_end_ed} :catchall_ed

    .line 166
    .restart local v0    # "retval":Ljava/lang/StringBuffer;
    .restart local p0    # "this":Lgov/nist/core/HostNameParser;
    :catchall_ed
    move-exception v1

    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_f5

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    .line 168
    :cond_f5
    throw v1
.end method

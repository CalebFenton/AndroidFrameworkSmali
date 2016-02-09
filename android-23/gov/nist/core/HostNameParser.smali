.class public Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "HostNameParser.java"


# static fields
.field private static Lexer:Lgov/nist/core/LexerCore;

.field private static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [C

    #@3
    fill-array-data v0, :array_0

    #@6
    .line 83
    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    #@8
    .line 50
    return-void

    #@9
    .line 84
    nop

    #@a
    :array_0
    .array-data 2
        -0x3s
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>(Lgov/nist/core/LexerCore;)V
    .locals 1
    .param p1, "lexer"    # Lgov/nist/core/LexerCore;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    #@6
    .line 76
    iput-object p1, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@8
    .line 77
    const-string/jumbo v0, "charLexer"

    #@b
    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@e
    .line 80
    const-string/jumbo v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    #@11
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    .line 79
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    #@17
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    #@6
    .line 66
    new-instance v0, Lgov/nist/core/LexerCore;

    #@8
    const-string/jumbo v1, "charLexer"

    #@b
    invoke-direct {v0, v1, p1}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    iput-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@10
    .line 69
    const-string/jumbo v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    #@13
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    .line 68
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    #@19
    .line 65
    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 9
    .param p1, "uriHeader"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x3a

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, -0x1

    #@4
    .line 225
    const/16 v5, 0x3f

    #@6
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v2

    #@a
    .line 229
    .local v2, "hostEnd":I
    const/16 v5, 0x3b

    #@c
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v4

    #@10
    .line 230
    .local v4, "semiColonIndex":I
    if-eq v2, v6, :cond_0

    #@12
    .line 231
    if-eq v4, v6, :cond_1

    #@14
    if-le v2, v4, :cond_1

    #@16
    .line 232
    :cond_0
    move v2, v4

    #@17
    .line 236
    :cond_1
    if-ne v2, v6, :cond_2

    #@19
    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    .line 240
    :cond_2
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 242
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v0

    #@25
    .line 244
    .local v0, "firstColonIndex":I
    if-ne v0, v6, :cond_3

    #@27
    .line 245
    return v7

    #@28
    .line 247
    :cond_3
    add-int/lit8 v5, v0, 0x1

    #@2a
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    #@2d
    move-result v3

    #@2e
    .line 249
    .local v3, "secondColonIndex":I
    if-ne v3, v6, :cond_4

    #@30
    .line 250
    return v7

    #@31
    .line 252
    :cond_4
    const/4 v5, 0x1

    #@32
    return v5
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 321
    const/4 v5, 0x7

    #@2
    new-array v2, v5, [Ljava/lang/String;

    #@4
    .line 322
    const-string/jumbo v5, "foo.bar.com:1234"

    #@7
    const/4 v6, 0x0

    #@8
    aput-object v5, v2, v6

    #@a
    .line 323
    const-string/jumbo v5, "proxima.chaplin.bt.co.uk"

    #@d
    aput-object v5, v2, v7

    #@f
    .line 324
    const-string/jumbo v5, "129.6.55.181:2345"

    #@12
    const/4 v6, 0x2

    #@13
    aput-object v5, v2, v6

    #@15
    .line 325
    const-string/jumbo v5, ":1234"

    #@18
    const/4 v6, 0x3

    #@19
    aput-object v5, v2, v6

    #@1b
    .line 326
    const-string/jumbo v5, "foo.bar.com:         1234"

    #@1e
    const/4 v6, 0x4

    #@1f
    aput-object v5, v2, v6

    #@21
    .line 327
    const-string/jumbo v5, "foo.bar.com     :      1234   "

    #@24
    const/4 v6, 0x5

    #@25
    aput-object v5, v2, v6

    #@27
    .line 328
    const-string/jumbo v5, "MIK_S:1234"

    #@2a
    const/4 v6, 0x6

    #@2b
    aput-object v5, v2, v6

    #@2d
    .line 331
    .local v2, "hostNames":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2e
    .local v4, "i":I
    :goto_0
    array-length v5, v2

    #@2f
    if-ge v4, v5, :cond_0

    #@31
    .line 333
    :try_start_0
    new-instance v1, Lgov/nist/core/HostNameParser;

    #@33
    aget-object v5, v2, v4

    #@35
    invoke-direct {v1, v5}, Lgov/nist/core/HostNameParser;-><init>(Ljava/lang/String;)V

    #@38
    .line 334
    .local v1, "hnp":Lgov/nist/core/HostNameParser;
    const/4 v5, 0x1

    #@39
    invoke-virtual {v1, v5}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    #@3c
    move-result-object v3

    #@3d
    .line 335
    .local v3, "hp":Lgov/nist/core/HostPort;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "["

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v3}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    const-string/jumbo v7, "]"

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 331
    .end local v1    # "hnp":Lgov/nist/core/HostNameParser;
    .end local v3    # "hp":Lgov/nist/core/HostPort;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@63
    goto :goto_0

    #@64
    .line 336
    :catch_0
    move-exception v0

    #@65
    .line 337
    .local v0, "ex":Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    new-instance v6, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v7, "exception text = "

    #@6f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@82
    goto :goto_1

    #@83
    .line 319
    .end local v0    # "ex":Ljava/text/ParseException;
    :cond_0
    return-void
.end method


# virtual methods
.method protected consumeDomainLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 87
    const-string/jumbo v0, "domainLabel"

    #@7
    invoke-virtual {p0, v0}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    sget-object v1, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    #@e
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 91
    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 92
    const-string/jumbo v0, "domainLabel"

    #@18
    invoke-virtual {p0, v0}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@1b
    .line 85
    :cond_1
    return-void

    #@1c
    .line 90
    :catchall_0
    move-exception v0

    #@1d
    .line 91
    sget-boolean v1, Lgov/nist/core/HostNameParser;->debug:Z

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 92
    const-string/jumbo v1, "domainLabel"

    #@24
    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@27
    .line 90
    :cond_2
    throw v0
.end method

.method public host()Lgov/nist/core/Host;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    sget-boolean v2, Lgov/nist/core/HostNameParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 173
    const-string/jumbo v2, "host"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 178
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@10
    move-result v2

    #@11
    const/16 v3, 0x5b

    #@13
    if-ne v2, v3, :cond_2

    #@15
    .line 179
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 199
    .local v0, "hostname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_4

    #@1f
    .line 200
    new-instance v2, Ljava/text/ParseException;

    #@21
    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, ": Missing host name"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 202
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@3d
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    #@40
    move-result v4

    #@41
    .line 200
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@44
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 205
    .end local v0    # "hostname":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@46
    .line 206
    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    #@48
    if-eqz v3, :cond_1

    #@4a
    .line 207
    const-string/jumbo v3, "host"

    #@4d
    invoke-virtual {p0, v3}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@50
    .line 205
    :cond_1
    throw v2

    #@51
    .line 182
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@53
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-direct {p0, v2}, Lgov/nist/core/HostNameParser;->isIPv6Address(Ljava/lang/String;)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_3

    #@5d
    .line 184
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@5f
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    #@62
    move-result v1

    #@63
    .line 185
    .local v1, "startPtr":I
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@65
    .line 186
    const/4 v3, 0x2

    #@66
    new-array v3, v3, [C

    #@68
    fill-array-data v3, :array_0

    #@6b
    .line 185
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    #@6e
    .line 188
    new-instance v2, Ljava/lang/StringBuffer;

    #@70
    const-string/jumbo v3, "["

    #@73
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@76
    .line 189
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@78
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@7e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    #@81
    move-result v4

    #@82
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    move-result-object v2

    #@8a
    .line 190
    const-string/jumbo v3, "]"

    #@8d
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    .restart local v0    # "hostname":Ljava/lang/String;
    goto :goto_0

    #@96
    .line 194
    .end local v0    # "hostname":Ljava/lang/String;
    .end local v1    # "startPtr":I
    :cond_3
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@98
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    #@9b
    move-result v1

    #@9c
    .line 195
    .restart local v1    # "startPtr":I
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->consumeDomainLabel()V

    #@9f
    .line 196
    iget-object v2, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@a1
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    iget-object v3, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@a7
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    #@aa
    move-result v3

    #@ab
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    .restart local v0    # "hostname":Ljava/lang/String;
    goto/16 :goto_0

    #@b1
    .line 204
    .end local v1    # "startPtr":I
    :cond_4
    new-instance v2, Lgov/nist/core/Host;

    #@b3
    invoke-direct {v2, v0}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    .line 206
    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    #@b8
    if-eqz v3, :cond_5

    #@ba
    .line 207
    const-string/jumbo v3, "host"

    #@bd
    invoke-virtual {p0, v3}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@c0
    .line 204
    :cond_5
    return-object v2

    #@c1
    .line 186
    nop

    #@c2
    :array_0
    .array-data 2
        -0x3s
        0x3as
    .end array-data
.end method

.method public hostPort(Z)Lgov/nist/core/HostPort;
    .locals 9
    .param p1, "allowWS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 263
    const-string/jumbo v5, "hostPort"

    #@7
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    #@d
    move-result-object v0

    #@e
    .line 266
    .local v0, "host":Lgov/nist/core/Host;
    new-instance v1, Lgov/nist/core/HostPort;

    #@10
    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    #@13
    .line 267
    .local v1, "hp":Lgov/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@16
    .line 269
    if-eqz p1, :cond_1

    #@18
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 270
    :cond_1
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_5

    #@25
    .line 271
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@27
    const/4 v6, 0x0

    #@28
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@2b
    move-result v2

    #@2c
    .line 272
    .local v2, "la":C
    sparse-switch v2, :sswitch_data_0

    #@2f
    .line 305
    :cond_2
    if-nez p1, :cond_5

    #@31
    .line 306
    new-instance v5, Ljava/text/ParseException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 307
    const-string/jumbo v7, " Illegal character in hostname:"

    #@45
    .line 306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 307
    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    const/4 v8, 0x0

    #@4c
    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4f
    move-result v7

    #@50
    .line 306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 308
    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@5a
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    #@5d
    move-result v7

    #@5e
    .line 306
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@61
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 313
    .end local v0    # "host":Lgov/nist/core/Host;
    .end local v1    # "hp":Lgov/nist/core/HostPort;
    .end local v2    # "la":C
    :catchall_0
    move-exception v5

    #@63
    .line 314
    sget-boolean v6, Lgov/nist/core/HostNameParser;->debug:Z

    #@65
    if-eqz v6, :cond_3

    #@67
    .line 315
    const-string/jumbo v6, "hostPort"

    #@6a
    invoke-virtual {p0, v6}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@6d
    .line 313
    :cond_3
    throw v5

    #@6e
    .line 275
    .restart local v0    # "host":Lgov/nist/core/Host;
    .restart local v1    # "hp":Lgov/nist/core/HostPort;
    .restart local v2    # "la":C
    :sswitch_0
    :try_start_1
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@70
    const/4 v6, 0x1

    #@71
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    #@74
    .line 276
    if-eqz p1, :cond_4

    #@76
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@78
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 278
    :cond_4
    :try_start_2
    iget-object v5, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@7d
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    .line 279
    .local v4, "port":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@84
    move-result v5

    #@85
    invoke-virtual {v1, v5}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@88
    .line 314
    .end local v2    # "la":C
    .end local v4    # "port":Ljava/lang/String;
    :cond_5
    :goto_0
    :sswitch_1
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    #@8a
    if-eqz v5, :cond_6

    #@8c
    .line 315
    const-string/jumbo v5, "hostPort"

    #@8f
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@92
    .line 312
    :cond_6
    return-object v1

    #@93
    .line 280
    .restart local v2    # "la":C
    :catch_0
    move-exception v3

    #@94
    .line 281
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v5, Ljava/text/ParseException;

    #@96
    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@9d
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    const-string/jumbo v7, " :Error parsing port "

    #@a8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v6

    #@ac
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    .line 283
    iget-object v7, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@b2
    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    #@b5
    move-result v7

    #@b6
    .line 281
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b9
    throw v5

    #@ba
    .line 300
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :sswitch_2
    iget-boolean v5, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bc
    if-eqz v5, :cond_2

    #@be
    goto :goto_0

    #@bf
    .line 272
    nop

    #@c0
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2c -> :sswitch_1
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3e -> :sswitch_1
        0x3f -> :sswitch_1
    .end sparse-switch
.end method

.method protected ipv6Reference()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x3a

    #@2
    const/16 v7, 0x2e

    #@4
    const/16 v6, 0x5d

    #@6
    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 98
    .local v2, "retval":Ljava/lang/StringBuffer;
    sget-boolean v4, Lgov/nist/core/HostNameParser;->debug:Z

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 99
    const-string/jumbo v4, "ipv6Reference"

    #@12
    invoke-virtual {p0, v4}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    #@15
    .line 103
    :cond_0
    :try_start_0
    iget-boolean v4, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    #@17
    if-eqz v4, :cond_9

    #@19
    .line 104
    :goto_0
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_6

    #@21
    .line 105
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    const/4 v5, 0x0

    #@24
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@27
    move-result v0

    #@28
    .line 108
    .local v0, "la":C
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_1

    #@2e
    if-ne v0, v7, :cond_3

    #@30
    .line 110
    :cond_1
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@32
    const/4 v5, 0x1

    #@33
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@36
    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 165
    .end local v0    # "la":C
    :catchall_0
    move-exception v4

    #@3b
    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    #@3d
    if-eqz v5, :cond_2

    #@3f
    .line 167
    const-string/jumbo v5, "ipv6Reference"

    #@42
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@45
    .line 165
    :cond_2
    throw v4

    #@46
    .line 108
    .restart local v0    # "la":C
    :cond_3
    if-eq v0, v8, :cond_1

    #@48
    .line 109
    const/16 v4, 0x5b

    #@4a
    if-eq v0, v4, :cond_1

    #@4c
    .line 112
    if-ne v0, v6, :cond_5

    #@4e
    .line 113
    :try_start_1
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@50
    const/4 v5, 0x1

    #@51
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@54
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@57
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    move-result-object v4

    #@5b
    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    #@5d
    if-eqz v5, :cond_4

    #@5f
    .line 167
    const-string/jumbo v5, "ipv6Reference"

    #@62
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@65
    .line 115
    :cond_4
    return-object v4

    #@66
    .line 116
    :cond_5
    const/16 v4, 0x25

    #@68
    if-ne v0, v4, :cond_6

    #@6a
    .line 118
    :try_start_2
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@6c
    const/4 v5, 0x1

    #@6d
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@70
    .line 120
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@72
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    .line 122
    .local v1, "rest":Ljava/lang/String;
    if-eqz v1, :cond_6

    #@78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7b
    move-result v4

    #@7c
    if-nez v4, :cond_7

    #@7e
    .line 162
    .end local v0    # "la":C
    .end local v1    # "rest":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/text/ParseException;

    #@80
    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    iget-object v6, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@87
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    const-string/jumbo v6, ": Illegal Host name "

    #@92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    .line 164
    iget-object v6, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@9c
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getPtr()I

    #@9f
    move-result v6

    #@a0
    .line 162
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@a3
    throw v4

    #@a4
    .line 129
    .restart local v0    # "la":C
    .restart local v1    # "rest":Ljava/lang/String;
    :cond_7
    const/16 v4, 0x5d

    #@a6
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@a9
    move-result v3

    #@aa
    .line 131
    .local v3, "stripLen":I
    const/4 v4, -0x1

    #@ab
    if-eq v3, v4, :cond_6

    #@ad
    .line 136
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@af
    add-int/lit8 v5, v3, 0x1

    #@b1
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@b4
    .line 137
    const-string/jumbo v4, "]"

    #@b7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ba
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bd
    move-result-object v4

    #@be
    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    #@c0
    if-eqz v5, :cond_8

    #@c2
    .line 167
    const-string/jumbo v5, "ipv6Reference"

    #@c5
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@c8
    .line 138
    :cond_8
    return-object v4

    #@c9
    .line 146
    .end local v0    # "la":C
    .end local v1    # "rest":Ljava/lang/String;
    .end local v3    # "stripLen":I
    :cond_9
    :goto_1
    :try_start_3
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@cb
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@ce
    move-result v4

    #@cf
    if-eqz v4, :cond_6

    #@d1
    .line 148
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@d3
    const/4 v5, 0x0

    #@d4
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@d7
    move-result v0

    #@d8
    .line 149
    .restart local v0    # "la":C
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    #@db
    move-result v4

    #@dc
    if-nez v4, :cond_a

    #@de
    if-ne v0, v7, :cond_b

    #@e0
    .line 151
    :cond_a
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@e2
    const/4 v5, 0x1

    #@e3
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@e6
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@e9
    goto :goto_1

    #@ea
    .line 150
    :cond_b
    if-eq v0, v8, :cond_a

    #@ec
    const/16 v4, 0x5b

    #@ee
    if-eq v0, v4, :cond_a

    #@f0
    .line 153
    if-ne v0, v6, :cond_6

    #@f2
    .line 154
    iget-object v4, p0, Lgov/nist/core/HostNameParser;->lexer:Lgov/nist/core/LexerCore;

    #@f4
    const/4 v5, 0x1

    #@f5
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@f8
    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@fb
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fe
    move-result-object v4

    #@ff
    .line 166
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    #@101
    if-eqz v5, :cond_c

    #@103
    .line 167
    const-string/jumbo v5, "ipv6Reference"

    #@106
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    #@109
    .line 156
    :cond_c
    return-object v4
.end method

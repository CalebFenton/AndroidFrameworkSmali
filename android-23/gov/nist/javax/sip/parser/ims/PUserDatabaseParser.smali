.class public Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PUserDatabaseParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "databaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method

.method private parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    .locals 4
    .param p1, "userDatabase"    # Lgov/nist/javax/sip/header/ims/PUserDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 96
    .local v0, "dbname":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const/16 v3, 0x3c

    #@9
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@c
    .line 98
    :cond_0
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@19
    move-result v1

    #@1a
    .line 101
    .local v1, "next":C
    const/16 v2, 0x3e

    #@1c
    if-eq v1, v2, :cond_0

    #@1e
    const/16 v2, 0xa

    #@20
    if-eq v1, v2, :cond_0

    #@22
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    goto :goto_0

    #@26
    .line 107
    .end local v1    # "next":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    #@2d
    .line 108
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@30
    .line 93
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
    .line 73
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 74
    const-string/jumbo v1, "PUserDatabase.parse"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v2, 0x85d    # 3.0E-42f

    #@e
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 78
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 79
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v2, 0x3a

    #@1a
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 80
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 82
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    #@24
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    #@27
    .line 83
    .local v0, "userDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 88
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 89
    const-string/jumbo v1, "PUserDatabase.parse"

    #@31
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    #@34
    .line 85
    :cond_1
    return-object v0

    #@35
    .line 87
    .end local v0    # "userDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    :catchall_0
    move-exception v1

    #@36
    .line 88
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 89
    const-string/jumbo v2, "PUserDatabase.parse"

    #@3d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    #@40
    .line 87
    :cond_2
    throw v1
.end method

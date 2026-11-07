.class public Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PUserDatabaseParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 68
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "databaseName"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private greylist parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    .registers 5
    .param p1, "userDatabase"    # Lgov/nist/javax/sip/header/ims/PUserDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "dbname":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    :goto_c
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 100
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    .line 101
    .local v1, "next":C
    const/16 v2, 0x3e

    if-eq v1, v2, :cond_25

    const/16 v2, 0xa

    if-eq v1, v2, :cond_25

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    .end local v1    # "next":C
    :cond_25
    goto :goto_c

    .line 107
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 110
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 73
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    const-string v1, "PUserDatabase.parse"

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_enter(Ljava/lang/String;)V

    .line 77
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x85d    # 3.0E-42f

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    .line 83
    .local v0, "userDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_32

    .line 85
    nop

    .line 88
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v2, :cond_31

    .line 89
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    .line 85
    :cond_31
    return-object v0

    .line 88
    .end local v0    # "userDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    :catchall_32
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v2, :cond_3a

    .line 89
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    .line 90
    :cond_3a
    throw v0
.end method

.class public Lgov/nist/javax/sip/parser/SubjectParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubjectParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "subject"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
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

    .line 65
    new-instance v0, Lgov/nist/javax/sip/header/Subject;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    .line 66
    .local v0, "subject":Lgov/nist/javax/sip/header/Subject;
    sget-boolean v1, Lgov/nist/javax/sip/parser/SubjectParser;->debug:Z

    const-string v2, "SubjectParser.parse"

    if-eqz v1, :cond_e

    .line 67
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubjectParser;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_e
    const/16 v1, 0x825

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SubjectParser;->headerName(I)V

    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/parser/SubjectParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v1, p0, Lgov/nist/javax/sip/parser/SubjectParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2d

    .line 78
    .end local v1    # "s":Ljava/lang/String;
    sget-boolean v1, Lgov/nist/javax/sip/parser/SubjectParser;->debug:Z

    if-eqz v1, :cond_2c

    .line 79
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubjectParser;->dbg_leave(Ljava/lang/String;)V

    .line 82
    :cond_2c
    return-object v0

    .line 78
    :catchall_2d
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/SubjectParser;->debug:Z

    if-eqz v3, :cond_35

    .line 79
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubjectParser;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_35
    throw v1
.end method

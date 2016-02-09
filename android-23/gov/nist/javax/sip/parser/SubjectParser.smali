.class public Lgov/nist/javax/sip/parser/SubjectParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubjectParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    new-instance v1, Lgov/nist/javax/sip/header/Subject;

    #@2
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    #@5
    .line 66
    .local v1, "subject":Lgov/nist/javax/sip/header/Subject;
    sget-boolean v2, Lgov/nist/javax/sip/parser/SubjectParser;->debug:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 67
    const-string/jumbo v2, "SubjectParser.parse"

    #@c
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubjectParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 70
    :cond_0
    const/16 v2, 0x825

    #@11
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubjectParser;->headerName(I)V

    #@14
    .line 72
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SubjectParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@19
    .line 74
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SubjectParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 75
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 78
    sget-boolean v2, Lgov/nist/javax/sip/parser/SubjectParser;->debug:Z

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 79
    const-string/jumbo v2, "SubjectParser.parse"

    #@2d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SubjectParser;->dbg_leave(Ljava/lang/String;)V

    #@30
    .line 82
    :cond_1
    return-object v1

    #@31
    .line 77
    .end local v0    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@32
    .line 78
    sget-boolean v3, Lgov/nist/javax/sip/parser/SubjectParser;->debug:Z

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 79
    const-string/jumbo v3, "SubjectParser.parse"

    #@39
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SubjectParser;->dbg_leave(Ljava/lang/String;)V

    #@3c
    .line 77
    :cond_2
    throw v2
.end method

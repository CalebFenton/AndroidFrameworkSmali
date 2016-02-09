.class public Lgov/nist/javax/sip/parser/CallIDParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "CallIDParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
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
    .line 63
    sget-boolean v2, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 64
    const-string/jumbo v2, "parse"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 66
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v3, 0x828

    #@e
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 67
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 68
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v3, 0x3a

    #@1a
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 69
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 71
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    #@24
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    #@27
    .line 73
    .local v0, "callID":Lgov/nist/javax/sip/header/CallID;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2c
    .line 74
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 75
    .local v1, "rest":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 78
    sget-boolean v2, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 79
    const-string/jumbo v2, "parse"

    #@40
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    #@43
    .line 76
    :cond_1
    return-object v0

    #@44
    .line 77
    .end local v0    # "callID":Lgov/nist/javax/sip/header/CallID;
    .end local v1    # "rest":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@45
    .line 78
    sget-boolean v3, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 79
    const-string/jumbo v3, "parse"

    #@4c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    #@4f
    .line 77
    :cond_2
    throw v2
.end method

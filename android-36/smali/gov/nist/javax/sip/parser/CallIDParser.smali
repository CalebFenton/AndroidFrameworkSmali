.class public Lgov/nist/javax/sip/parser/CallIDParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "CallIDParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 55
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "callID"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 47
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

    .line 63
    sget-boolean v0, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 64
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 66
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x828

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 67
    iget-object v0, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 68
    iget-object v0, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 73
    .local v0, "callID":Lgov/nist/javax/sip/header/CallID;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "rest":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_41

    .line 76
    nop

    .line 78
    sget-boolean v3, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    if-eqz v3, :cond_40

    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 76
    :cond_40
    return-object v0

    .line 78
    .end local v0    # "callID":Lgov/nist/javax/sip/header/CallID;
    .end local v2    # "rest":Ljava/lang/String;
    :catchall_41
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/CallIDParser;->debug:Z

    if-eqz v2, :cond_49

    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CallIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_49
    throw v0
.end method

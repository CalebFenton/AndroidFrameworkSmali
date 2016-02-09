.class public Lgov/nist/javax/sip/parser/AuthorizationParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "AuthorizationParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorization"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
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
    .line 65
    const-string/jumbo v1, "parse"

    #@3
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    #@6
    .line 67
    const/16 v1, 0x817

    #@8
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthorizationParser;->headerName(I)V

    #@b
    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    #@10
    .line 69
    .local v0, "auth":Lgov/nist/javax/sip/header/Authorization;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 72
    const-string/jumbo v1, "parse"

    #@16
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    #@19
    .line 70
    return-object v0

    #@1a
    .line 71
    .end local v0    # "auth":Lgov/nist/javax/sip/header/Authorization;
    :catchall_0
    move-exception v1

    #@1b
    .line 72
    const-string/jumbo v2, "parse"

    #@1e
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    #@21
    .line 71
    throw v1
.end method

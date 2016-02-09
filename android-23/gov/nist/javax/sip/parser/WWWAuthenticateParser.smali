.class public Lgov/nist/javax/sip/parser/WWWAuthenticateParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "WWWAuthenticateParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "wwwAuthenticate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
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
    .line 64
    sget-boolean v1, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 65
    const-string/jumbo v1, "parse"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 67
    :cond_0
    const/16 v1, 0x830

    #@c
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->headerName(I)V

    #@f
    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    #@14
    .line 69
    .local v0, "wwwAuthenticate":Lgov/nist/javax/sip/header/WWWAuthenticate;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 72
    sget-boolean v1, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 73
    const-string/jumbo v1, "parse"

    #@1e
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    #@21
    .line 70
    :cond_1
    return-object v0

    #@22
    .line 71
    .end local v0    # "wwwAuthenticate":Lgov/nist/javax/sip/header/WWWAuthenticate;
    :catchall_0
    move-exception v1

    #@23
    .line 72
    sget-boolean v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 73
    const-string/jumbo v2, "parse"

    #@2a
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    #@2d
    .line 71
    :cond_2
    throw v1
.end method

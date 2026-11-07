.class public Lgov/nist/javax/sip/parser/WWWAuthenticateParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "WWWAuthenticateParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 56
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "wwwAuthenticate"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    .line 48
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

    .line 64
    sget-boolean v0, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_9
    const/16 v0, 0x830

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->headerName(I)V

    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    .line 69
    .local v0, "wwwAuthenticate":Lgov/nist/javax/sip/header/WWWAuthenticate;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1f

    .line 70
    nop

    .line 72
    sget-boolean v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    if-eqz v2, :cond_1e

    .line 73
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    .line 70
    :cond_1e
    return-object v0

    .line 72
    .end local v0    # "wwwAuthenticate":Lgov/nist/javax/sip/header/WWWAuthenticate;
    :catchall_1f
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->debug:Z

    if-eqz v2, :cond_27

    .line 73
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;->dbg_leave(Ljava/lang/String;)V

    .line 74
    :cond_27
    throw v0
.end method

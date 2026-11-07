.class public Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "ProxyAuthenticateParser.java"


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
    .param p1, "proxyAuthenticate"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 64
    const/16 v0, 0x822

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;->headerName(I)V

    .line 65
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;-><init>()V

    .line 66
    .local v0, "proxyAuthenticate":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    .line 67
    return-object v0
.end method

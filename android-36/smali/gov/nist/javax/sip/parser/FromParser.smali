.class public Lgov/nist/javax/sip/parser/FromParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "FromParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "from"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 45
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

    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/From;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 55
    .local v0, "from":Lgov/nist/javax/sip/header/From;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x80e

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 56
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 58
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 59
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 61
    return-object v0
.end method

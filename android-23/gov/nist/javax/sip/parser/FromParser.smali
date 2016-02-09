.class public Lgov/nist/javax/sip/parser/FromParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "FromParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 43
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
    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/From;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    #@5
    .line 55
    .local v0, "from":Lgov/nist/javax/sip/header/From;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const/16 v2, 0x80e

    #@9
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@c
    .line 56
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    #@e
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@11
    .line 57
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v2, 0x3a

    #@15
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 58
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 59
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@20
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/parser/FromParser;->lexer:Lgov/nist/core/LexerCore;

    #@22
    const/16 v2, 0xa

    #@24
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@27
    .line 61
    return-object v0
.end method

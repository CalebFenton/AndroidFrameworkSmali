.class public Lgov/nist/javax/sip/parser/ToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ToParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

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
    .line 57
    const/16 v1, 0x80f

    #@2
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ToParser;->headerName(I)V

    #@5
    .line 58
    new-instance v0, Lgov/nist/javax/sip/header/To;

    #@7
    invoke-direct {v0}, Lgov/nist/javax/sip/header/To;-><init>()V

    #@a
    .line 59
    .local v0, "to":Lgov/nist/javax/sip/header/To;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@d
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ToParser;->lexer:Lgov/nist/core/LexerCore;

    #@f
    const/16 v2, 0xa

    #@11
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@14
    .line 61
    return-object v0
.end method

.class public Lgov/nist/javax/sip/parser/ContactParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ContactParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 51
    iput-object p1, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2c

    #@2
    const/16 v8, 0x2a

    #@4
    const/16 v7, 0xa

    #@6
    const/4 v6, 0x1

    #@7
    const/4 v5, 0x0

    #@8
    .line 56
    const/16 v4, 0x827

    #@a
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContactParser;->headerName(I)V

    #@d
    .line 57
    new-instance v3, Lgov/nist/javax/sip/header/ContactList;

    #@f
    invoke-direct {v3}, Lgov/nist/javax/sip/header/ContactList;-><init>()V

    #@12
    .line 59
    .local v3, "retval":Lgov/nist/javax/sip/header/ContactList;
    :goto_0
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    #@14
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    #@17
    .line 60
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@19
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v4

    #@1d
    if-ne v4, v8, :cond_2

    #@1f
    .line 61
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@21
    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@24
    move-result v2

    #@25
    .line 62
    .local v2, "next":C
    const/16 v4, 0x20

    #@27
    if-eq v2, v4, :cond_0

    #@29
    const/16 v4, 0x9

    #@2b
    if-ne v2, v4, :cond_1

    #@2d
    .line 63
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v4, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@32
    .line 64
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    #@35
    .line 71
    .end local v2    # "next":C
    :goto_1
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/ContactList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@38
    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@3d
    .line 73
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@3f
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@42
    move-result v1

    #@43
    .line 74
    .local v1, "la":C
    if-ne v1, v9, :cond_3

    #@45
    .line 75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    invoke-virtual {v4, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@4a
    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    #@4c
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4f
    goto :goto_0

    #@50
    .line 62
    .end local v1    # "la":C
    .restart local v2    # "next":C
    :cond_1
    const/16 v4, 0xd

    #@52
    if-eq v2, v4, :cond_0

    #@54
    if-eq v2, v7, :cond_0

    #@56
    .line 66
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@59
    goto :goto_1

    #@5a
    .line 69
    .end local v2    # "next":C
    :cond_2
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@5d
    goto :goto_1

    #@5e
    .line 77
    .restart local v1    # "la":C
    :cond_3
    if-eq v1, v7, :cond_4

    #@60
    if-nez v1, :cond_5

    #@62
    .line 82
    :cond_4
    return-object v3

    #@63
    .line 80
    :cond_5
    const-string/jumbo v4, "unexpected char"

    #@66
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContactParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@69
    move-result-object v4

    #@6a
    throw v4
.end method

.class public Lgov/nist/javax/sip/parser/ContactParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ContactParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 51
    iput-object p1, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    .line 52
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contact"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 56
    const/16 v0, 0x827

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ContactParser;->headerName(I)V

    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/ContactList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContactList;-><init>()V

    .line 59
    .local v0, "retval":Lgov/nist/javax/sip/header/ContactList;
    :goto_a
    new-instance v1, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 60
    .local v1, "contact":Lgov/nist/javax/sip/header/Contact;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    const/16 v5, 0x2a

    if-ne v2, v5, :cond_3f

    .line 61
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 62
    .local v2, "next":C
    const/16 v7, 0x20

    if-eq v2, v7, :cond_36

    const/16 v7, 0x9

    if-eq v2, v7, :cond_36

    const/16 v7, 0xd

    if-eq v2, v7, :cond_36

    if-ne v2, v4, :cond_32

    goto :goto_36

    .line 66
    :cond_32
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    goto :goto_3e

    .line 63
    :cond_36
    :goto_36
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    .line 68
    .end local v2    # "next":C
    :goto_3e
    goto :goto_42

    .line 69
    :cond_3f
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 71
    :goto_42
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContactList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 72
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 74
    .local v2, "la":C
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_5f

    .line 75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v2    # "la":C
    goto :goto_a

    .line 77
    .restart local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    .restart local v2    # "la":C
    :cond_5f
    if-eq v2, v4, :cond_6b

    if-nez v2, :cond_64

    .line 78
    goto :goto_6b

    .line 80
    :cond_64
    const-string v3, "unexpected char"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContactParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3

    .line 82
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v2    # "la":C
    :cond_6b
    :goto_6b
    return-object v0
.end method

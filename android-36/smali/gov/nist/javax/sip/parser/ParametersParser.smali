.class public abstract Lgov/nist/javax/sip/parser/ParametersParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ParametersParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 45
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "buffer"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected greylist parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .registers 4
    .param p1, "parametersHeader"    # Lgov/nist/javax/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 54
    :goto_5
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_28

    .line 55
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 57
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 59
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 61
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 62
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    goto :goto_5

    .line 63
    :cond_28
    return-void
.end method

.method protected greylist parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .registers 5
    .param p1, "parametersHeader"    # Lgov/nist/javax/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameters()V

    .line 71
    :goto_3
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 73
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_2a

    .line 79
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    return-void

    .line 77
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_2a
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 78
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    goto :goto_3
.end method

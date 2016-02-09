.class public abstract Lgov/nist/javax/sip/parser/ParametersParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ParametersParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .locals 3
    .param p1, "parametersHeader"    # Lgov/nist/javax/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@5
    .line 54
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@b
    move-result v1

    #@c
    const/16 v2, 0x3b

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 55
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@16
    .line 57
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1b
    .line 58
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    #@1e
    move-result-object v0

    #@1f
    .line 59
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    #@22
    .line 61
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@27
    goto :goto_0

    #@28
    .line 52
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    return-void
.end method

.method protected parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .locals 3
    .param p1, "parametersHeader"    # Lgov/nist/javax/sip/header/ParametersHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameters()V

    #@3
    .line 71
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@8
    .line 72
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    #@b
    move-result-object v0

    #@c
    .line 73
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    invoke-virtual {p1, v2, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1e
    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@24
    move-result v1

    #@25
    const/16 v2, 0x3b

    #@27
    if-eq v1, v2, :cond_0

    #@29
    .line 68
    return-void

    #@2a
    .line 77
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ParametersParser;->lexer:Lgov/nist/core/LexerCore;

    #@2c
    const/4 v2, 0x1

    #@2d
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@30
    goto :goto_0
.end method

.class public Lgov/nist/javax/sip/parser/OrganizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "OrganizationParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "organization"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    sget-boolean v2, Lgov/nist/javax/sip/parser/OrganizationParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 66
    const-string/jumbo v2, "OrganizationParser.parse"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/OrganizationParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 67
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Organization;

    #@c
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    #@f
    .line 69
    .local v0, "organization":Lgov/nist/javax/sip/header/Organization;
    const/16 v2, 0x82d

    #@11
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/OrganizationParser;->headerName(I)V

    #@14
    .line 71
    const-string/jumbo v2, "Organization"

    #@17
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Organization;->setHeaderName(Ljava/lang/String;)V

    #@1a
    .line 73
    iget-object v2, p0, Lgov/nist/javax/sip/parser/OrganizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1f
    .line 74
    iget-object v2, p0, Lgov/nist/javax/sip/parser/OrganizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@21
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 76
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 80
    sget-boolean v2, Lgov/nist/javax/sip/parser/OrganizationParser;->debug:Z

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 81
    const-string/jumbo v2, "OrganizationParser.parse"

    #@33
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/OrganizationParser;->dbg_leave(Ljava/lang/String;)V

    #@36
    .line 78
    :cond_1
    return-object v0

    #@37
    .line 79
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@38
    .line 80
    sget-boolean v3, Lgov/nist/javax/sip/parser/OrganizationParser;->debug:Z

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 81
    const-string/jumbo v3, "OrganizationParser.parse"

    #@3f
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/OrganizationParser;->dbg_leave(Ljava/lang/String;)V

    #@42
    .line 79
    :cond_2
    throw v2
.end method

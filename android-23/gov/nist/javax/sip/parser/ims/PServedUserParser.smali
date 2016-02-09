.class public Lgov/nist/javax/sip/parser/ims/PServedUserParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PServedUserParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "servedUser"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
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
    .line 54
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 55
    const-string/jumbo v2, "PServedUser.parse"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 59
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v3, 0x85f

    #@e
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 60
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 61
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v3, 0x3a

    #@1a
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 62
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 63
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    #@24
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    #@27
    .line 64
    .local v0, "servedUser":Lgov/nist/javax/sip/header/ims/PServedUser;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2c
    .line 65
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 66
    .local v1, "servedUsername":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/address/AddressFactoryImpl;

    #@34
    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressFactoryImpl;-><init>()V

    #@37
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/AddressFactoryImpl;->createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    #@3e
    .line 67
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 73
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 74
    const-string/jumbo v2, "PServedUser.parse"

    #@48
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_leave(Ljava/lang/String;)V

    #@4b
    .line 69
    :cond_1
    return-object v0

    #@4c
    .line 72
    .end local v0    # "servedUser":Lgov/nist/javax/sip/header/ims/PServedUser;
    .end local v1    # "servedUsername":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@4d
    .line 73
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    #@4f
    if-eqz v3, :cond_2

    #@51
    .line 74
    const-string/jumbo v3, "PServedUser.parse"

    #@54
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_leave(Ljava/lang/String;)V

    #@57
    .line 72
    :cond_2
    throw v2
.end method

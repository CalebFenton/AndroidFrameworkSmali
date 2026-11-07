.class public Lgov/nist/javax/sip/parser/ims/PServedUserParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PServedUserParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 45
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 46
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "servedUser"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 54
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    const-string v1, "PServedUser.parse"

    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_enter(Ljava/lang/String;)V

    .line 59
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x85f

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 60
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    .line 64
    .local v0, "servedUser":Lgov/nist/javax/sip/header/ims/PServedUser;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 65
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "servedUsername":Ljava/lang/String;
    new-instance v3, Lgov/nist/javax/sip/address/AddressFactoryImpl;

    invoke-direct {v3}, Lgov/nist/javax/sip/address/AddressFactoryImpl;-><init>()V

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/address/AddressFactoryImpl;->createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    .line 67
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_49

    .line 69
    nop

    .line 73
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    if-eqz v3, :cond_48

    .line 74
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_leave(Ljava/lang/String;)V

    .line 69
    :cond_48
    return-object v0

    .line 73
    .end local v0    # "servedUser":Lgov/nist/javax/sip/header/ims/PServedUser;
    .end local v2    # "servedUsername":Ljava/lang/String;
    :catchall_49
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->debug:Z

    if-eqz v2, :cond_51

    .line 74
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PServedUserParser;->dbg_leave(Ljava/lang/String;)V

    .line 75
    :cond_51
    throw v0
.end method

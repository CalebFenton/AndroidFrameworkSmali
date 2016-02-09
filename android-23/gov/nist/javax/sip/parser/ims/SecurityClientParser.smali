.class public Lgov/nist/javax/sip/parser/ims/SecurityClientParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityClientParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
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
    const-string/jumbo v2, "SecuriryClient parse"

    #@3
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_enter(Ljava/lang/String;)V

    #@6
    .line 68
    const/16 v2, 0x85a

    #@8
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->headerName(I)V

    #@b
    .line 69
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    #@10
    .line 71
    .local v0, "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lgov/nist/javax/sip/header/ims/SecurityClientList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 76
    .local v1, "secClientList":Lgov/nist/javax/sip/header/ims/SecurityClientList;
    const-string/jumbo v2, "SecuriryClient parse"

    #@19
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    #@1c
    .line 72
    return-object v1

    #@1d
    .line 75
    .end local v0    # "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    .end local v1    # "secClientList":Lgov/nist/javax/sip/header/ims/SecurityClientList;
    :catchall_0
    move-exception v2

    #@1e
    .line 76
    const-string/jumbo v3, "SecuriryClient parse"

    #@21
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    #@24
    .line 75
    throw v2
.end method

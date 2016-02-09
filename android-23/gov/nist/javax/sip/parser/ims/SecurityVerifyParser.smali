.class public Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityVerifyParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
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
    .line 64
    const-string/jumbo v2, "SecuriryVerify parse"

    #@3
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_enter(Ljava/lang/String;)V

    #@6
    .line 67
    const/16 v2, 0x85b

    #@8
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->headerName(I)V

    #@b
    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    #@10
    .line 70
    .local v0, "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 74
    .local v1, "secVerifyList":Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    const-string/jumbo v2, "SecuriryVerify parse"

    #@19
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    #@1c
    .line 71
    return-object v1

    #@1d
    .line 73
    .end local v0    # "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    .end local v1    # "secVerifyList":Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    :catchall_0
    move-exception v2

    #@1e
    .line 74
    const-string/jumbo v3, "SecuriryVerify parse"

    #@21
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    #@24
    .line 73
    throw v2
.end method

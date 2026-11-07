.class public Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityVerifyParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "security"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 64
    const-string v0, "SecuriryVerify parse"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    const/16 v1, 0x85b

    :try_start_7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->headerName(I)V

    .line 68
    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    .line 69
    .local v1, "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    nop

    .line 70
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    .line 71
    .local v2, "secVerifyList":Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    nop

    .line 74
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    .line 71
    return-object v2

    .line 74
    .end local v1    # "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    .end local v2    # "secVerifyList":Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    :catchall_1b
    move-exception v1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;->dbg_leave(Ljava/lang/String;)V

    .line 75
    throw v1
.end method

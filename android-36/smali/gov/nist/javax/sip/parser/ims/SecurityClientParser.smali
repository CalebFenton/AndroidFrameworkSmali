.class public Lgov/nist/javax/sip/parser/ims/SecurityClientParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityClientParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "security"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    .line 55
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

    .line 65
    const-string v0, "SecuriryClient parse"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    const/16 v1, 0x85a

    :try_start_7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->headerName(I)V

    .line 69
    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    .line 70
    .local v1, "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    nop

    .line 71
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/ims/SecurityClientList;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    .line 72
    .local v2, "secClientList":Lgov/nist/javax/sip/header/ims/SecurityClientList;
    nop

    .line 76
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    .line 72
    return-object v2

    .line 76
    .end local v1    # "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    .end local v2    # "secClientList":Lgov/nist/javax/sip/header/ims/SecurityClientList;
    :catchall_1b
    move-exception v1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;->dbg_leave(Ljava/lang/String;)V

    .line 77
    throw v1
.end method

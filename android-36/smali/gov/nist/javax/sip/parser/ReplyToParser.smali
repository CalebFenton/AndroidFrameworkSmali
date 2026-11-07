.class public Lgov/nist/javax/sip/parser/ReplyToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReplyToParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 56
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "replyTo"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 48
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

    .line 64
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    .line 65
    .local v0, "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    const-string v2, "ReplyTo.parse"

    if-eqz v1, :cond_e

    .line 66
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_e
    const/16 v1, 0x83a

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->headerName(I)V

    .line 71
    const-string v1, "Reply-To"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ReplyTo;->setHeaderName(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_24

    .line 75
    nop

    .line 77
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v1, :cond_23

    .line 78
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 75
    :cond_23
    return-object v0

    .line 77
    :catchall_24
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v3, :cond_2c

    .line 78
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 79
    :cond_2c
    throw v1
.end method

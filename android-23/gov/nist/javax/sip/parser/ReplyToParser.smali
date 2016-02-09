.class public Lgov/nist/javax/sip/parser/ReplyToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReplyToParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyTo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    #@5
    .line 65
    .local v0, "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 66
    const-string/jumbo v1, "ReplyTo.parse"

    #@c
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 69
    :cond_0
    const/16 v1, 0x83a

    #@11
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->headerName(I)V

    #@14
    .line 71
    const-string/jumbo v1, "Reply-To"

    #@17
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ReplyTo;->setHeaderName(Ljava/lang/String;)V

    #@1a
    .line 73
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 77
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 78
    const-string/jumbo v1, "ReplyTo.parse"

    #@24
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    #@27
    .line 75
    :cond_1
    return-object v0

    #@28
    .line 76
    :catchall_0
    move-exception v1

    #@29
    .line 77
    sget-boolean v2, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 78
    const-string/jumbo v2, "ReplyTo.parse"

    #@30
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    #@33
    .line 76
    :cond_2
    throw v1
.end method

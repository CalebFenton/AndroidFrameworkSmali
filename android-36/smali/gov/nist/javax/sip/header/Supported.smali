.class public Lgov/nist/javax/sip/header/Supported;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Supported.java"

# interfaces
.implements Ljavax/sip/header/SupportedHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x6a93a8fca822058eL


# instance fields
.field protected greylist optionTag:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 59
    const-string v0, "Supported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "option_tag"    # Ljava/lang/String;

    .line 68
    const-string v0, "Supported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/Supported;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public greylist getOptionTag()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setOptionTag(Ljava/lang/String;)V
    .registers 4
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 101
    if-eqz p1, :cond_5

    .line 105
    iput-object p1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 106
    return-void

    .line 102
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Supported, setOptionTag(), the optionTag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lgov/nist/javax/sip/header/Supported;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Supported.java"

# interfaces
.implements Ljavax/sip/header/SupportedHeader;


# static fields
.field private static final serialVersionUID:J = -0x6a93a8fca822058eL


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "Supported"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 60
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@9
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "option_tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "Supported"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@8
    .line 67
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v2, p0, Lgov/nist/javax/sip/header/Supported;->headerName:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, ":"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 78
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, " "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "\r\n"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 81
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, ""

    #@a
    goto :goto_0
.end method

.method public getOptionTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    if-nez p1, :cond_0

    #@2
    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 103
    const-string/jumbo v1, "JAIN-SIP Exception, Supported, setOptionTag(), the optionTag parameter is null"

    #@7
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 105
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    #@d
    .line 100
    return-void
.end method

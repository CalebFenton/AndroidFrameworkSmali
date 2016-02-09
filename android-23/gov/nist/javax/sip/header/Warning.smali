.class public Lgov/nist/javax/sip/header/Warning;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Warning.java"

# interfaces
.implements Ljavax/sip/header/WarningHeader;


# static fields
.field private static final serialVersionUID:J = -0x2fa5a26955923b9bL


# instance fields
.field protected agent:Ljava/lang/String;

.field protected code:I

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "Warning"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 68
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget v1, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    .line 78
    const-string/jumbo v1, " "

    #@16
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 79
    iget-object v1, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    #@1c
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 80
    const-string/jumbo v1, " "

    #@23
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 81
    const-string/jumbo v1, "\""

    #@2a
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 82
    iget-object v1, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    #@30
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 83
    const-string/jumbo v1, "\""

    #@37
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 76
    :goto_0
    return-object v0

    #@40
    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    iget v1, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    #@47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    const-string/jumbo v1, " "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    iget-object v1, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    goto :goto_0
.end method

.method public getAgent()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCode()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    #@2
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    if-nez p1, :cond_0

    #@2
    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "the host parameter in the Warning header is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 134
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    #@d
    .line 130
    return-void
.end method

.method public setCode(I)V
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    const/16 v0, 0x63

    #@2
    if-le p1, v0, :cond_0

    #@4
    const/16 v0, 0x3e8

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 118
    iput p1, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    #@a
    .line 116
    return-void

    #@b
    .line 120
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@d
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Code parameter in the Warning header is invalid: code="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 120
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    if-nez p1, :cond_0

    #@2
    .line 145
    new-instance v0, Ljava/text/ParseException;

    #@4
    .line 146
    const-string/jumbo v1, "The text parameter in the Warning header is null"

    #@7
    .line 147
    const/4 v2, 0x0

    #@8
    .line 145
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b
    throw v0

    #@c
    .line 149
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    #@e
    .line 143
    return-void
.end method

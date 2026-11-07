.class public Lgov/nist/javax/sip/header/Warning;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Warning.java"

# interfaces
.implements Ljavax/sip/header/WarningHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2fa5a26955923b9bL


# instance fields
.field protected greylist agent:Ljava/lang/String;

.field protected greylist code:I

.field protected greylist text:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 69
    const-string v0, "Warning"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 4

    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_38

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    .line 84
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_55
    return-object v0
.end method

.method public greylist getAgent()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getCode()I
    .registers 2

    .line 92
    iget v0, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    return v0
.end method

.method public greylist getText()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 131
    if-eqz p1, :cond_5

    .line 134
    iput-object p1, p0, Lgov/nist/javax/sip/header/Warning;->agent:Ljava/lang/String;

    .line 136
    return-void

    .line 132
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the host parameter in the Warning header is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCode(I)V
    .registers 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 117
    const/16 v0, 0x63

    if-le p1, v0, :cond_b

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_b

    .line 118
    iput p1, p0, Lgov/nist/javax/sip/header/Warning;->code:I

    .line 123
    return-void

    .line 120
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code parameter in the Warning header is invalid: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 144
    if-eqz p1, :cond_5

    .line 149
    iput-object p1, p0, Lgov/nist/javax/sip/header/Warning;->text:Ljava/lang/String;

    .line 150
    return-void

    .line 145
    :cond_5
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The text parameter in the Warning header is null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

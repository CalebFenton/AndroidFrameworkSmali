.class public Lgov/nist/javax/sip/header/extensions/References;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "References.java"

# interfaces
.implements Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x7679616b0985b236L


# instance fields
.field private greylist callId:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 18
    const-string v0, "References"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected greylist encodeBody()Ljava/lang/String;
    .registers 3

    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    return-object v0

    .line 78
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCallId()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "References"

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameterNames()Ljava/util/Iterator;
    .registers 2

    .line 55
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getRel()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, "rel"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/References;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public greylist setCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public greylist setRel(Ljava/lang/String;)V
    .registers 3
    .param p1, "rel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 43
    if-eqz p1, :cond_7

    .line 44
    const-string v0, "rel"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/References;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_7
    return-void
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

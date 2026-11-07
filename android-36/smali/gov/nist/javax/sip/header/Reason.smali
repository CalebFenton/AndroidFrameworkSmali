.class public Lgov/nist/javax/sip/header/Reason;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Reason.java"

# interfaces
.implements Ljavax/sip/header/ReasonHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x7b8f262d9617f9acL


# instance fields
.field public final greylist CAUSE:Ljava/lang/String;

.field public final greylist TEXT:Ljava/lang/String;

.field protected greylist protocol:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 125
    const-string v0, "Reason"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v0, "text"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->TEXT:Ljava/lang/String;

    .line 63
    const-string v0, "cause"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->CAUSE:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method protected greylist encodeBody()Ljava/lang/String;
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 146
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getCause()I
    .registers 2

    .line 71
    const-string v0, "cause"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Reason;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 134
    const-string v0, "Reason"

    return-object v0
.end method

.method public greylist getProtocol()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getText()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setCause(I)V
    .registers 5
    .param p1, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "cause"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public greylist setProtocol(Ljava/lang/String;)V
    .registers 2
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public greylist setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_d

    .line 107
    invoke-static {p1}, Lgov/nist/javax/sip/Utils;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

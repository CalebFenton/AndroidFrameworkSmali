.class public Lgov/nist/javax/sip/header/Reason;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Reason.java"

# interfaces
.implements Ljavax/sip/header/ReasonHeader;


# static fields
.field private static final serialVersionUID:J = -0x7b8f262d9617f9acL


# instance fields
.field public final CAUSE:Ljava/lang/String;

.field public final TEXT:Ljava/lang/String;

.field protected protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 125
    const-string/jumbo v0, "Reason"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 62
    const-string/jumbo v0, "text"

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->TEXT:Ljava/lang/String;

    #@b
    .line 63
    const-string/jumbo v0, "cause"

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->CAUSE:Ljava/lang/String;

    #@10
    .line 124
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 144
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 145
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    #@10
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 147
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 146
    :cond_1
    const-string/jumbo v1, ";"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    #@24
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    goto :goto_0
.end method

.method public getCause()I
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "cause"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Reason;->getParameterAsInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "Reason"

    #@3
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "text"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setCause(I)V
    .locals 3
    .param p1, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "cause"

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 79
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    #@2
    .line 88
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    const/16 v1, 0x22

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 107
    invoke-static {p1}, Lgov/nist/javax/sip/Utils;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    .line 109
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    #@f
    const-string/jumbo v1, "text"

    #@12
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@15
    .line 104
    return-void
.end method

.class public Lgov/nist/javax/sip/header/extensions/Replaces;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Replaces.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Lgov/nist/javax/sip/header/extensions/ReplacesHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "Replaces"

.field private static final serialVersionUID:J = 0x79a63e78c9b0a324L


# instance fields
.field public callId:Ljava/lang/String;

.field public callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "Replaces"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const-string/jumbo v0, "Replaces"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    #@8
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    #@d
    .line 50
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 61
    return-object v2

    #@6
    .line 63
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    #@8
    .line 64
    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    #@a
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, ";"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    #@22
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 67
    :cond_1
    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    #@2
    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 145
    return-object v1

    #@6
    .line 146
    :cond_0
    const-string/jumbo v0, "from-tag"

    #@9
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getToTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 113
    return-object v1

    #@6
    .line 114
    :cond_0
    const-string/jumbo v0, "to-tag"

    #@9
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public hasFromTag()Z
    .locals 1

    #@0
    .prologue
    .line 163
    const-string/jumbo v0, "from-tag"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public hasToTag()Z
    .locals 1

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "to-tag"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public removeFromTag()V
    .locals 2

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "from-tag"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@8
    .line 168
    return-void
.end method

.method public removeToTag()V
    .locals 2

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "to-tag"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@8
    .line 136
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    #@2
    .line 95
    return-void
.end method

.method public setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .locals 0
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    #@0
    .prologue
    .line 104
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    #@2
    .line 103
    return-void
.end method

.method public setFromTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    if-nez p1, :cond_0

    #@2
    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null tag "

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ""

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 156
    new-instance v0, Ljava/text/ParseException;

    #@1a
    const-string/jumbo v1, "bad tag"

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@21
    throw v0

    #@22
    .line 157
    :cond_1
    const-string/jumbo v0, "from-tag"

    #@25
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 152
    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    if-nez p1, :cond_0

    #@2
    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null tag "

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ""

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 124
    new-instance v0, Ljava/text/ParseException;

    #@1a
    const-string/jumbo v1, "bad tag"

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@21
    throw v0

    #@22
    .line 125
    :cond_1
    const-string/jumbo v0, "to-tag"

    #@25
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 120
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method

.class public Lgov/nist/javax/sip/header/extensions/Replaces;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Replaces.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Lgov/nist/javax/sip/header/extensions/ReplacesHeader;


# static fields
.field public static final greylist NAME:Ljava/lang/String; = "Replaces"

.field private static final whitelist serialVersionUID:J = 0x79a63e78c9b0a324L


# instance fields
.field public greylist callId:Ljava/lang/String;

.field public greylist callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 43
    const-string v0, "Replaces"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 51
    const-string v0, "Replaces"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/CallIdentifier;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 53
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 4

    .line 60
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    .line 64
    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_2d
    return-object v0
.end method

.method public greylist getCallId()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getCallIdentifer()Lgov/nist/javax/sip/header/CallIdentifier;
    .registers 2

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    return-object v0
.end method

.method public greylist getFromTag()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_6
    const-string v0, "from-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getToTag()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    if-nez v0, :cond_6

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_6
    const-string v0, "to-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist hasFromTag()Z
    .registers 2

    .line 163
    const-string v0, "from-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist hasToTag()Z
    .registers 2

    .line 131
    const-string v0, "to-tag"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/extensions/Replaces;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist removeFromTag()V
    .registers 3

    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "from-tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 170
    return-void
.end method

.method public greylist removeToTag()V
    .registers 3

    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "to-tag"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method public greylist setCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cid"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public greylist setCallIdentifier(Lgov/nist/javax/sip/header/CallIdentifier;)V
    .registers 2
    .param p1, "cid"    # Lgov/nist/javax/sip/header/CallIdentifier;

    .line 104
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/Replaces;->callIdentifier:Lgov/nist/javax/sip/header/CallIdentifier;

    .line 105
    return-void
.end method

.method public greylist setFromTag(Ljava/lang/String;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 153
    if-eqz p1, :cond_1d

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 157
    const-string v0, "from-tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 156
    :cond_14
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 154
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tag "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setToTag(Ljava/lang/String;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_1d

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 125
    const-string v0, "to-tag"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 124
    :cond_14
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "bad tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 122
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tag "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

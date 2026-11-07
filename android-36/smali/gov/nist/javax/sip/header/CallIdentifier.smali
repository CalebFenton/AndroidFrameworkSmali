.class public final Lgov/nist/javax/sip/header/CallIdentifier;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "CallIdentifier.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x65834be26eebb7f1L


# instance fields
.field protected greylist host:Ljava/lang/String;

.field protected greylist localId:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->setCallID(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 94
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_14
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 107
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 108
    return v0

    .line 110
    :cond_13
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/header/CallIdentifier;

    .line 111
    .local v1, "that":Lgov/nist/javax/sip/header/CallIdentifier;
    iget-object v2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    iget-object v3, v1, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_21

    .line 112
    return v0

    .line 114
    :cond_21
    iget-object v2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v3, v1, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_29

    .line 115
    return v4

    .line 116
    :cond_29
    iget-object v2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, v1, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v2, :cond_39

    :cond_31
    iget-object v2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-nez v2, :cond_3a

    .line 118
    :cond_39
    return v0

    .line 119
    :cond_3a
    iget-object v2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    iget-object v3, v1, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 120
    return v0

    .line 122
    :cond_45
    return v4
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getLocalId()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 128
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hash code called before id is set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCallID(Ljava/lang/String;)V
    .registers 5
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 161
    if-eqz p1, :cond_35

    .line 163
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 164
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    goto :goto_2c

    .line 168
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 169
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 174
    :goto_2c
    return-void

    .line 171
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CallID  must be token@token or token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    .end local v0    # "index":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public greylist setLocalId(Ljava/lang/String;)V
    .registers 2
    .param p1, "localId"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    .line 153
    return-void
.end method

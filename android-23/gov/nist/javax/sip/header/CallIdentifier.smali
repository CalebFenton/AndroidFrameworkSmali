.class public final Lgov/nist/javax/sip/header/CallIdentifier;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "CallIdentifier.java"


# static fields
.field private static final serialVersionUID:J = 0x65834be26eebb7f1L


# instance fields
.field protected host:Ljava/lang/String;

.field protected localId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 80
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/CallIdentifier;->setCallID(Ljava/lang/String;)V

    #@6
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@5
    .line 70
    iput-object p2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@7
    .line 68
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 94
    const-string/jumbo v0, "@"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 96
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 106
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallIdentifier;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 108
    return v3

    #@14
    :cond_1
    move-object v0, p1

    #@15
    .line 110
    check-cast v0, Lgov/nist/javax/sip/header/CallIdentifier;

    #@17
    .line 111
    .local v0, "that":Lgov/nist/javax/sip/header/CallIdentifier;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@19
    iget-object v2, v0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 112
    return v3

    #@22
    .line 114
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@24
    iget-object v2, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@26
    if-ne v1, v2, :cond_3

    #@28
    .line 115
    return v4

    #@29
    .line 116
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@2b
    if-nez v1, :cond_5

    #@2d
    iget-object v1, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@2f
    if-eqz v1, :cond_5

    #@31
    .line 118
    :cond_4
    return v3

    #@32
    .line 117
    :cond_5
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@34
    if-eqz v1, :cond_6

    #@36
    iget-object v1, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@38
    if-eqz v1, :cond_4

    #@3a
    .line 119
    :cond_6
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@3c
    iget-object v2, v0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_7

    #@44
    .line 120
    return v3

    #@45
    .line 122
    :cond_7
    return v4
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Hash code called before id is set"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 130
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 161
    if-nez p1, :cond_0

    #@3
    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "NULL!"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 163
    :cond_0
    const/16 v1, 0x40

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v0

    #@12
    .line 164
    .local v0, "index":I
    const/4 v1, -0x1

    #@13
    if-ne v0, v1, :cond_2

    #@15
    .line 165
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@17
    .line 166
    iput-object v2, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@19
    .line 160
    :cond_1
    return-void

    #@1a
    .line 168
    :cond_2
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@21
    .line 169
    add-int/lit8 v1, v0, 0x1

    #@23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@26
    move-result v2

    #@27
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@2d
    .line 170
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@2f
    if-eqz v1, :cond_3

    #@31
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@33
    if-nez v1, :cond_1

    #@35
    .line 171
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v2, "CallID  must be token@token or token"

    #@3a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->host:Ljava/lang/String;

    #@2
    .line 180
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallIdentifier;->localId:Ljava/lang/String;

    #@2
    .line 151
    return-void
.end method

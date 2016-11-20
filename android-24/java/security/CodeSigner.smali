.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient myhash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .locals 1
    .param p1, "signerCertPath"    # Ljava/security/cert/CertPath;
    .param p2, "timestamp"    # Ljava/security/Timestamp;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    #@6
    .line 74
    if-nez p1, :cond_0

    #@8
    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 77
    :cond_0
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@10
    .line 78
    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@12
    .line 73
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 171
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    #@6
    .line 169
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    if-eqz p1, :cond_0

    #@3
    instance-of v2, p1, Ljava/security/CodeSigner;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 131
    check-cast v0, Ljava/security/CodeSigner;

    #@a
    .line 133
    .local v0, "that":Ljava/security/CodeSigner;
    if-ne p0, v0, :cond_1

    #@c
    .line 134
    const/4 v2, 0x1

    #@d
    return v2

    #@e
    .line 129
    .end local v0    # "that":Ljava/security/CodeSigner;
    :cond_0
    return v3

    #@f
    .line 136
    .restart local v0    # "that":Ljava/security/CodeSigner;
    :cond_1
    invoke-virtual {v0}, Ljava/security/CodeSigner;->getTimestamp()Ljava/security/Timestamp;

    #@12
    move-result-object v1

    #@13
    .line 137
    .local v1, "thatTimestamp":Ljava/security/Timestamp;
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@15
    if-nez v2, :cond_2

    #@17
    .line 138
    if-eqz v1, :cond_3

    #@19
    .line 139
    return v3

    #@1a
    .line 142
    :cond_2
    if-eqz v1, :cond_4

    #@1c
    .line 143
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@1e
    invoke-virtual {v2, v1}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_4

    #@24
    .line 147
    :cond_3
    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@26
    invoke-virtual {v0}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    return v2

    #@2f
    .line 144
    :cond_4
    return v3
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 107
    iget v0, p0, Ljava/security/CodeSigner;->myhash:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 108
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 109
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@b
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    #@11
    .line 114
    :cond_0
    :goto_0
    iget v0, p0, Ljava/security/CodeSigner;->myhash:I

    #@13
    return v0

    #@14
    .line 111
    :cond_1
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@16
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    #@19
    move-result v0

    #@1a
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@1c
    invoke-virtual {v1}, Ljava/security/Timestamp;->hashCode()I

    #@1f
    move-result v1

    #@20
    add-int/2addr v0, v1

    #@21
    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    #@23
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 158
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Signer: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@19
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    .line 160
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "timestamp: "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 163
    :cond_0
    const-string/jumbo v1, ")"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    return-object v1
.end method

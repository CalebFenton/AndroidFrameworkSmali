.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient hash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .locals 2
    .param p1, "signerCertPath"    # Ljava/security/cert/CertPath;
    .param p2, "timestamp"    # Ljava/security/Timestamp;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    if-nez p1, :cond_0

    #@5
    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "signerCertPath == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 52
    :cond_0
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@10
    .line 53
    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@12
    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 70
    if-ne p1, p0, :cond_0

    #@4
    .line 71
    return v1

    #@5
    .line 73
    :cond_0
    instance-of v3, p1, Ljava/security/CodeSigner;

    #@7
    if-eqz v3, :cond_4

    #@9
    move-object v0, p1

    #@a
    .line 74
    check-cast v0, Ljava/security/CodeSigner;

    #@c
    .line 75
    .local v0, "that":Ljava/security/CodeSigner;
    iget-object v3, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@e
    iget-object v4, v0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@10
    invoke-virtual {v3, v4}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 76
    return v2

    #@17
    .line 78
    :cond_1
    iget-object v3, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@19
    if-nez v3, :cond_3

    #@1b
    iget-object v3, v0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@1d
    if-nez v3, :cond_2

    #@1f
    :goto_0
    return v1

    #@20
    :cond_2
    move v1, v2

    #@21
    goto :goto_0

    #@22
    :cond_3
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@24
    .line 79
    iget-object v2, v0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@26
    .line 78
    invoke-virtual {v1, v2}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    goto :goto_0

    #@2b
    .line 81
    .end local v0    # "that":Ljava/security/CodeSigner;
    :cond_4
    return v2
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    iget v1, p0, Ljava/security/CodeSigner;->hash:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 115
    iget-object v1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@7
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->hashCode()I

    #@a
    move-result v1

    #@b
    .line 116
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@d
    if-nez v2, :cond_1

    #@f
    .line 115
    :goto_0
    xor-int/2addr v0, v1

    #@10
    iput v0, p0, Ljava/security/CodeSigner;->hash:I

    #@12
    .line 118
    :cond_0
    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    #@14
    return v0

    #@15
    .line 116
    :cond_1
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@17
    invoke-virtual {v0}, Ljava/security/Timestamp;->hashCode()I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x100

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 134
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "CodeSigner ["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    #@10
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    .line 135
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 136
    const-string/jumbo v1, "; "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 138
    :cond_0
    const-string/jumbo v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method

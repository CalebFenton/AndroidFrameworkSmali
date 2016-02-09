.class public final Ljava/security/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c5d75ad840d029eL


# instance fields
.field private transient hash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V
    .locals 4
    .param p1, "timestamp"    # Ljava/util/Date;
    .param p2, "signerCertPath"    # Ljava/security/cert/CertPath;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    if-nez p1, :cond_0

    #@5
    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "timestamp == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 55
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "signerCertPath == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 59
    :cond_1
    new-instance v0, Ljava/util/Date;

    #@1b
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@1e
    move-result-wide v2

    #@1f
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@22
    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@24
    .line 60
    iput-object p2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@26
    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 79
    if-ne p1, p0, :cond_0

    #@3
    .line 80
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 82
    :cond_0
    instance-of v2, p1, Ljava/security/Timestamp;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 83
    check-cast v0, Ljava/security/Timestamp;

    #@c
    .line 84
    .local v0, "that":Ljava/security/Timestamp;
    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@e
    iget-object v3, v0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@10
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 85
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@18
    iget-object v2, v0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@1a
    invoke-virtual {v1, v2}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 84
    :cond_1
    return v1

    #@1f
    .line 87
    .end local v0    # "that":Ljava/security/Timestamp;
    :cond_2
    return v1
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 119
    iget v0, p0, Ljava/security/Timestamp;->hash:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 120
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@6
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@c
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    iput v0, p0, Ljava/security/Timestamp;->hash:I

    #@13
    .line 122
    :cond_0
    iget v0, p0, Ljava/security/Timestamp;->hash:I

    #@15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x100

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 135
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Timestamp ["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " certPath="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 136
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@1c
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x0

    #@21
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "]"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1
.end method

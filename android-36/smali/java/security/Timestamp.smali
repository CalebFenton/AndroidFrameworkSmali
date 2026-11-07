.class public final Ljava/security/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x4c5d75ad840d029eL


# instance fields
.field private transient greylist-max-o myhash:I

.field private greylist-max-o signerCertPath:Ljava/security/cert/CertPath;

.field private greylist-max-o timestamp:Ljava/util/Date;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V
    .registers 6
    .param p1, "timestamp"    # Ljava/util/Date;
    .param p2, "signerCertPath"    # Ljava/security/cert/CertPath;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    .line 76
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 79
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    .line 80
    iput-object p2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    .line 81
    return-void

    .line 77
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    .line 162
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    .line 163
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    instance-of v1, p1, Ljava/security/Timestamp;

    if-nez v1, :cond_8

    goto :goto_2b

    .line 128
    :cond_8
    move-object v1, p1

    check-cast v1, Ljava/security/Timestamp;

    .line 130
    .local v1, "that":Ljava/security/Timestamp;
    const/4 v2, 0x1

    if-ne p0, v1, :cond_f

    .line 131
    return v2

    .line 133
    :cond_f
    iget-object v3, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/security/Timestamp;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    .line 134
    invoke-virtual {v1}, Ljava/security/Timestamp;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    nop

    .line 133
    :goto_2a
    return v0

    .line 126
    .end local v1    # "that":Ljava/security/Timestamp;
    :cond_2b
    :goto_2b
    return v0
.end method

.method public whitelist test-api getSignerCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .line 98
    iget-object v0, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public whitelist test-api getTimestamp()Ljava/util/Date;
    .registers 4

    .line 89
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 109
    iget v0, p0, Ljava/security/Timestamp;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 110
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    .line 112
    :cond_14
    iget v0, p0, Ljava/security/Timestamp;->myhash:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 151
    :cond_4a
    const-string v2, "TSA: <empty>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :goto_4f
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

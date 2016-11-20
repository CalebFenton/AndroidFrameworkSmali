.class public final Ljava/security/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c5d75ad840d029eL


# instance fields
.field private transient myhash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V
    .locals 4
    .param p1, "timestamp"    # Ljava/util/Date;
    .param p2, "signerCertPath"    # Ljava/security/cert/CertPath;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    #@6
    .line 76
    if-eqz p1, :cond_0

    #@8
    if-nez p2, :cond_1

    #@a
    .line 77
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@f
    throw v0

    #@10
    .line 79
    :cond_1
    new-instance v0, Ljava/util/Date;

    #@12
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@15
    move-result-wide v2

    #@16
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@19
    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@1b
    .line 80
    iput-object p2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@1d
    .line 75
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 161
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    #@6
    .line 162
    new-instance v0, Ljava/util/Date;

    #@8
    iget-object v1, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@a
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v2

    #@e
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@11
    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@13
    .line 159
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
    .line 125
    if-eqz p1, :cond_0

    #@3
    instance-of v2, p1, Ljava/security/Timestamp;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 128
    nop

    #@9
    nop

    #@a
    .line 130
    .local v0, "that":Ljava/security/Timestamp;
    if-ne p0, v0, :cond_1

    #@c
    .line 131
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 126
    .end local v0    # "that":Ljava/security/Timestamp;
    :cond_0
    return v1

    #@f
    .line 133
    .restart local v0    # "that":Ljava/security/Timestamp;
    :cond_1
    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@11
    invoke-virtual {v0}, Ljava/security/Timestamp;->getTimestamp()Ljava/util/Date;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 134
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@1d
    invoke-virtual {v0}, Ljava/security/Timestamp;->getSignerCertPath()Ljava/security/cert/CertPath;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 133
    :cond_2
    return v1
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 89
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 109
    iget v0, p0, Ljava/security/Timestamp;->myhash:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 110
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@7
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@d
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->hashCode()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    #@14
    .line 112
    :cond_0
    iget v0, p0, Ljava/security/Timestamp;->myhash:I

    #@16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 145
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "("

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "timestamp: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 147
    iget-object v2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    #@26
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    .line 148
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_0

    #@30
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "TSA: "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const/4 v3, 0x0

    #@3d
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 153
    :goto_0
    const-string/jumbo v2, ")"

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    return-object v2

    #@57
    .line 151
    :cond_0
    const-string/jumbo v2, "TSA: <empty>"

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5d
    goto :goto_0
.end method

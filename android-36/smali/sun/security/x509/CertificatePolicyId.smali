.class public Lsun/security/x509/CertificatePolicyId;
.super Ljava/lang/Object;
.source "CertificatePolicyId.java"


# instance fields
.field private greylist-max-o id:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;)V
    .registers 2
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 85
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Lsun/security/x509/CertificatePolicyId;

    if-eqz v0, :cond_12

    .line 96
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    move-object v1, p1

    check-cast v1, Lsun/security/x509/CertificatePolicyId;

    .line 97
    invoke-virtual {v1}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIdentifier()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 63
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 108
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertificatePolicyId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    .line 71
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

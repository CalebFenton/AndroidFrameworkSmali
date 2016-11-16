.class public Lsun/security/x509/CertificatePolicyId;
.super Ljava/lang/Object;
.source "CertificatePolicyId.java"


# instance fields
.field private id:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 55
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 0
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@5
    .line 46
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@5
    .line 83
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 95
    instance-of v0, p1, Lsun/security/x509/CertificatePolicyId;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 96
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@6
    check-cast p1, Lsun/security/x509/CertificatePolicyId;

    #@8
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 98
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public getIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "CertificatePolicyId: ["

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 71
    iget-object v2, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    #@e
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 72
    const-string/jumbo v2, "]\n"

    #@19
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 74
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

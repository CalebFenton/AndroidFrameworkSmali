.class public Lsun/security/x509/CertificatePolicyMap;
.super Ljava/lang/Object;
.source "CertificatePolicyMap.java"


# instance fields
.field private issuerDomain:Lsun/security/x509/CertificatePolicyId;

.field private subjectDomain:Lsun/security/x509/CertificatePolicyId;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 2
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    #@5
    const/16 v1, 0x30

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 61
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Invalid encoding for CertificatePolicyMap"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 63
    :cond_0
    new-instance v0, Lsun/security/x509/CertificatePolicyId;

    #@14
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@16
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    #@1d
    iput-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    #@1f
    .line 64
    new-instance v0, Lsun/security/x509/CertificatePolicyId;

    #@21
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@23
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    #@2a
    iput-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    #@2c
    .line 59
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/CertificatePolicyId;Lsun/security/x509/CertificatePolicyId;)V
    .locals 0
    .param p1, "issuer"    # Lsun/security/x509/CertificatePolicyId;
    .param p2, "subject"    # Lsun/security/x509/CertificatePolicyId;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    #@5
    .line 51
    iput-object p2, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    #@7
    .line 49
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 102
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    #@a
    .line 103
    iget-object v1, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    #@c
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    #@f
    .line 104
    const/16 v1, 0x30

    #@11
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@14
    .line 99
    return-void
.end method

.method public getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    #@2
    return-object v0
.end method

.method public getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "CertificatePolicyMap: [\nIssuerDomain:"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 86
    iget-object v2, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    #@e
    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 87
    const-string/jumbo v2, "SubjectDomain:"

    #@19
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 87
    iget-object v2, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    #@1f
    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 88
    const-string/jumbo v2, "]\n"

    #@2a
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 90
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

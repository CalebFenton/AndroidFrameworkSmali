.class public Lcom/android/internal/org/bouncycastle/cms/SignerId;
.super Ljava/lang/Object;
.source "SignerId.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field private blacklist baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .registers 5
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "subjectKeyId"    # [B

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    .line 57
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;)V
    .registers 2
    .param p1, "baseSelector"    # Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "subjectKeyId"    # [B

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 104
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 89
    .local v0, "id":Lcom/android/internal/org/bouncycastle/cms/SignerId;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectKeyIdentifier()[B
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSubjectKeyIdentifier()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    if-eqz v0, :cond_10

    .line 96
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/SignerId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerId;->baseSelector:Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/X509CertificateHolderSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

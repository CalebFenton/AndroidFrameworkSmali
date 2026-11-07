.class Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;
.super Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModEncAlgSignerInformation"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 4
    .param p1, "baseInfo"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p2, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;->editEncAlg(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V

    .line 65
    return-void
.end method

.method private static blacklist editEncAlg(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 9
    .param p0, "info"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .param p1, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    move-object v4, p1

    .end local p1    # "signatureAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v4, "signatureAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 69
    return-object v0
.end method

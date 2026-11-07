.class public Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit;
.super Ljava/lang/Object;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;,
        Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createNonDERSignerInfo(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 2
    .param p0, "original"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V

    return-object v0
.end method

.method public static blacklist createWithSignatureAlgorithm(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 3
    .param p0, "original"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p1, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v0
.end method

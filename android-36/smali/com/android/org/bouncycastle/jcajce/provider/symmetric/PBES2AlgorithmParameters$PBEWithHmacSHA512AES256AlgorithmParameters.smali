.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES256AlgorithmParameters;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;
.source "PBES2AlgorithmParameters.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 311
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "AES256"

    const/4 v6, 0x0

    const-string v2, "HmacSHA512"

    const/16 v3, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters-IA;)V

    return-void
.end method

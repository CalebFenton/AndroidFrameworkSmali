.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithSHA1KeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "RC2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    .line 115
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x40

    const/16 v7, 0x40

    const-string v1, "PBEwithSHA1andRC2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method

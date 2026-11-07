.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd128BitKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "ARC4.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    .line 57
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x80

    const/4 v7, 0x0

    const-string v1, "PBEWithSHAAnd128BitRC4"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method

.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$PBEWithMacKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "SHA1.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    const/16 v6, 0xa0

    const/4 v7, 0x0

    .line 94
    const-string v1, "PBEwithHmacSHA"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method

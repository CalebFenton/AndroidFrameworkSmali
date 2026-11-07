.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd128BitAESBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "AES.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    const/16 v6, 0x80

    const/16 v7, 0x80

    .line 473
    const-string v1, "PBEWithSHA1And128BitAES-CBC-BC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method

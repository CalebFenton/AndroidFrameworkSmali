.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithSHAAnd128BitKeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd128BitKeyFactory"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    .line 128
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x80

    const/16 v7, 0x40

    const-string v1, "PBEwithSHAand128BitRC2-CBC"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 129
    return-void
.end method

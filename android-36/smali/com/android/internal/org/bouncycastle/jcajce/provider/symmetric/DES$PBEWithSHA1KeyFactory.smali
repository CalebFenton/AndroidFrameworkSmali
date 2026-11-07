.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$PBEWithSHA1KeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1KeyFactory"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    .line 442
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0x40

    const/16 v7, 0x40

    const-string v1, "PBEwithSHA1andDES"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 443
    return-void
.end method

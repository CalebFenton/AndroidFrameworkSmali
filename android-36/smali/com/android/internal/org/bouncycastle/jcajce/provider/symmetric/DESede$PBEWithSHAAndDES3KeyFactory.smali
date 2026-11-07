.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede$PBEWithSHAAndDES3KeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndDES3KeyFactory"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 9

    .line 270
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0xc0

    const/16 v7, 0x40

    const-string v1, "PBEwithSHAandDES3Key-CBC"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 271
    return-void
.end method

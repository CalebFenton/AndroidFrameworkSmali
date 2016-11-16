.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$PBEWithSHAAnd40BitKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd40BitKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 135
    const-string/jumbo v1, "PBEwithSHAand40BitRC2-CBC"

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    const/4 v4, 0x2

    #@7
    const/16 v6, 0x28

    #@9
    const/16 v7, 0x40

    #@b
    move-object v0, p0

    #@c
    move v5, v3

    #@d
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@10
    .line 133
    return-void
.end method

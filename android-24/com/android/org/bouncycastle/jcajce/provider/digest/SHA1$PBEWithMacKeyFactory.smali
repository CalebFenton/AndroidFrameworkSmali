.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$PBEWithMacKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMacKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    const-string/jumbo v1, "PBEwithHmacSHA"

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v4, 0x2

    #@6
    const/4 v5, 0x1

    #@7
    const/16 v6, 0xa0

    #@9
    move-object v0, p0

    #@a
    move v7, v3

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@e
    .line 89
    return-void
.end method

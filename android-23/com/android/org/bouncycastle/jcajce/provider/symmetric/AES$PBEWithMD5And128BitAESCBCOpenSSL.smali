.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And128BitAESCBCOpenSSL;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5And128BitAESCBCOpenSSL"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/16 v6, 0x80

    #@2
    .line 346
    const-string/jumbo v1, "PBEWithMD5And128BitAES-CBC-OpenSSL"

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x1

    #@7
    const/4 v4, 0x3

    #@8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move v7, v6

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@e
    .line 344
    return-void
.end method

.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And256BitAESCBCOpenSSL;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5And256BitAESCBCOpenSSL"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    .line 370
    const-string/jumbo v1, "PBEWithMD5And256BitAES-CBC-OpenSSL"

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x3

    #@6
    const/4 v5, 0x0

    #@7
    const/16 v6, 0x100

    #@9
    const/16 v7, 0x80

    #@b
    move-object v0, p0

    #@c
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@f
    .line 368
    return-void
.end method

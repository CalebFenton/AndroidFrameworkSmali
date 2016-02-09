.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA256And256BitAESBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    .line 334
    const-string/jumbo v1, "PBEWithSHA256And256BitAES-CBC-BC"

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x2

    #@6
    const/4 v5, 0x4

    #@7
    const/16 v6, 0x100

    #@9
    const/16 v7, 0x80

    #@b
    move-object v0, p0

    #@c
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@f
    .line 332
    return-void
.end method

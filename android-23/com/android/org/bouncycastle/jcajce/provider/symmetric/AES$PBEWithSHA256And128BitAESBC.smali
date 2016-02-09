.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And128BitAESBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA256And128BitAESBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/16 v6, 0x80

    #@2
    .line 310
    const-string/jumbo v1, "PBEWithSHA256And128BitAES-CBC-BC"

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x1

    #@7
    const/4 v4, 0x2

    #@8
    const/4 v5, 0x4

    #@9
    move-object v0, p0

    #@a
    move v7, v6

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@e
    .line 308
    return-void
.end method

.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd192BitAESBC;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd192BitAESBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 286
    const-string/jumbo v1, "PBEWithSHA1And192BitAES-CBC-BC"

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v4, 0x2

    #@6
    const/16 v6, 0xc0

    #@8
    const/16 v7, 0x80

    #@a
    move-object v0, p0

    #@b
    move v5, v3

    #@c
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    #@f
    .line 284
    return-void
.end method

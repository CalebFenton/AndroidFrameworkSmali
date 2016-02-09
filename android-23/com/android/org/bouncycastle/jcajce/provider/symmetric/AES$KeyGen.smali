.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 227
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;-><init>(I)V

    #@5
    .line 224
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "AES"

    #@3
    new-instance v1, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    #@5
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    #@8
    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    #@b
    .line 231
    return-void
.end method

.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Blowfish$KeyGen;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "Blowfish.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    const-string v1, "Blowfish"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method

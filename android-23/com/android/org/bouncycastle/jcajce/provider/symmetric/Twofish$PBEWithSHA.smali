.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Twofish$PBEWithSHA;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "Twofish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Twofish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;

    #@4
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@d
    .line 103
    return-void
.end method

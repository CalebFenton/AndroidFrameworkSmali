.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 1

    .line 95
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object p0

    return-object p0
.end method

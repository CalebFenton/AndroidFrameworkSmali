.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 115
    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    #@2
    new-instance v2, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    #@4
    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    #@7
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@a
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@d
    .line 118
    :try_start_0
    const-string/jumbo v1, "GCM"

    #@10
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineSetMode(Ljava/lang/String;)V

    #@13
    .line 119
    const-string/jumbo v1, "NoPadding"

    #@16
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineSetPadding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 113
    return-void

    #@1a
    .line 120
    :catch_0
    move-exception v0

    #@1b
    .line 122
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v2, "Could not set mode or padding for GCM mode"

    #@20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v1
.end method

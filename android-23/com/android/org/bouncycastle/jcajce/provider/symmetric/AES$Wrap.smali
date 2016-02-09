.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Wrap;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 185
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESWrapEngine;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lcom/android/org/bouncycastle/crypto/Wrapper;)V

    #@8
    .line 183
    return-void
.end method

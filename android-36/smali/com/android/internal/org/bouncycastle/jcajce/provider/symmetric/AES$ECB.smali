.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    .line 98
    return-void
.end method

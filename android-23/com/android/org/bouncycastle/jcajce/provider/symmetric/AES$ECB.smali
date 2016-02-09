.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    #@8
    .line 76
    return-void
.end method

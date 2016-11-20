.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Base;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;I)V

    #@9
    .line 21
    return-void
.end method

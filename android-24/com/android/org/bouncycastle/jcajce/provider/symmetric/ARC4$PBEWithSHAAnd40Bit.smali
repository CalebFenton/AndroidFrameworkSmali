.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$PBEWithSHAAnd40Bit;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd40Bit"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    const/16 v2, 0x28

    #@8
    const/4 v3, 0x1

    #@9
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/org/bouncycastle/crypto/StreamCipher;III)V

    #@c
    .line 81
    return-void
.end method

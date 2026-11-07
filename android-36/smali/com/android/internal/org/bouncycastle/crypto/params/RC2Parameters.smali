.class public Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.source "RC2Parameters.java"


# instance fields
.field private blacklist bits:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "key"    # [B

    .line 15
    array-length v0, p1

    const/16 v1, 0x80

    if-le v0, v1, :cond_8

    const/16 v0, 0x400

    goto :goto_b

    :cond_8
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    :goto_b
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 23
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist getEffectiveKeyBits()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method

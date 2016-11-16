.class public Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
.super Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.source "RC2Parameters.java"


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    #@0
    .prologue
    .line 11
    array-length v0, p1

    #@1
    const/16 v1, 0x80

    #@3
    if-le v0, v1, :cond_0

    #@5
    const/16 v0, 0x400

    #@7
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    #@a
    .line 9
    return-void

    #@b
    .line 11
    :cond_0
    array-length v0, p1

    #@c
    mul-int/lit8 v0, v0, 0x8

    #@e
    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    #@0
    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@3
    .line 19
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    #@5
    .line 16
    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 1

    #@0
    .prologue
    .line 24
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    #@2
    return v0
.end method

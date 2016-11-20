.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    .line 43
    array-length v1, p1

    #@1
    sub-int v0, v1, p2

    #@3
    .line 45
    .local v0, "added":I
    const/16 v1, -0x80

    #@5
    aput-byte v1, p1, p2

    #@7
    .line 46
    add-int/lit8 p2, p2, 0x1

    #@9
    .line 48
    :goto_0
    array-length v1, p1

    #@a
    if-ge p2, v1, :cond_0

    #@c
    .line 50
    const/4 v1, 0x0

    #@d
    aput-byte v1, p1, p2

    #@f
    .line 51
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 54
    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 32
    const-string/jumbo v0, "ISO7816-4"

    #@3
    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 20
    return-void
.end method

.method public padCount([B)I
    .locals 3
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    array-length v1, p1

    #@1
    add-int/lit8 v0, v1, -0x1

    #@3
    .line 65
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    #@5
    aget-byte v1, p1, v0

    #@7
    if-nez v1, :cond_0

    #@9
    .line 67
    add-int/lit8 v0, v0, -0x1

    #@b
    goto :goto_0

    #@c
    .line 70
    :cond_0
    aget-byte v1, p1, v0

    #@e
    const/16 v2, -0x80

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 72
    new-instance v1, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@14
    const-string/jumbo v2, "pad block corrupted"

    #@17
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 75
    :cond_1
    array-length v1, p1

    #@1c
    sub-int/2addr v1, v0

    #@1d
    return v1
.end method

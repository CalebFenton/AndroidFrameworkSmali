.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;
.super Ljava/lang/Object;
.source "ISO10126d2Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
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
    .line 51
    array-length v1, p1

    #@1
    sub-int/2addr v1, p2

    #@2
    int-to-byte v0, v1

    #@3
    .line 53
    .local v0, "code":B
    :goto_0
    array-length v1, p1

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-ge p2, v1, :cond_0

    #@8
    .line 55
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    #@a
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    #@d
    move-result v1

    #@e
    int-to-byte v1, v1

    #@f
    aput-byte v1, p1, p2

    #@11
    .line 56
    add-int/lit8 p2, p2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 59
    :cond_0
    aput-byte v0, p1, p2

    #@16
    .line 61
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "ISO10126-2"

    #@3
    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    if-eqz p1, :cond_0

    #@2
    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    #@4
    .line 21
    :goto_0
    return-void

    #@5
    .line 29
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    #@7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    #@c
    goto :goto_0
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
    .line 70
    array-length v1, p1

    #@1
    add-int/lit8 v1, v1, -0x1

    #@3
    aget-byte v1, p1, v1

    #@5
    and-int/lit16 v0, v1, 0xff

    #@7
    .line 72
    .local v0, "count":I
    array-length v1, p1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 74
    new-instance v1, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@c
    const-string/jumbo v2, "pad block corrupted"

    #@f
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 77
    :cond_0
    return v0
.end method

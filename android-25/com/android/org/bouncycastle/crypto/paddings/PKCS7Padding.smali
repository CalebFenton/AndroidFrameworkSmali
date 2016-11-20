.class public Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


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
    .line 42
    array-length v1, p1

    #@1
    sub-int/2addr v1, p2

    #@2
    int-to-byte v0, v1

    #@3
    .line 44
    .local v0, "code":B
    :goto_0
    array-length v1, p1

    #@4
    if-ge p2, v1, :cond_0

    #@6
    .line 46
    aput-byte v0, p1, p2

    #@8
    .line 47
    add-int/lit8 p2, p2, 0x1

    #@a
    goto :goto_0

    #@b
    .line 50
    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "PKCS7"

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
    .line 19
    return-void
.end method

.method public padCount([B)I
    .locals 8
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 59
    array-length v4, p1

    #@3
    add-int/lit8 v4, v4, -0x1

    #@5
    aget-byte v4, p1, v4

    #@7
    and-int/lit16 v0, v4, 0xff

    #@9
    .line 60
    .local v0, "count":I
    int-to-byte v1, v0

    #@a
    .line 63
    .local v1, "countAsbyte":B
    array-length v4, p1

    #@b
    if-le v0, v4, :cond_0

    #@d
    move v7, v5

    #@e
    :goto_0
    if-nez v0, :cond_1

    #@10
    move v4, v5

    #@11
    :goto_1
    or-int v2, v7, v4

    #@13
    .line 65
    .local v2, "failed":Z
    const/4 v3, 0x0

    #@14
    .local v3, "i":I
    :goto_2
    array-length v4, p1

    #@15
    if-ge v3, v4, :cond_4

    #@17
    .line 67
    array-length v4, p1

    #@18
    sub-int/2addr v4, v3

    #@19
    if-gt v4, v0, :cond_2

    #@1b
    move v4, v5

    #@1c
    :goto_3
    aget-byte v7, p1, v3

    #@1e
    if-eq v7, v1, :cond_3

    #@20
    move v7, v5

    #@21
    :goto_4
    and-int/2addr v4, v7

    #@22
    or-int/2addr v2, v4

    #@23
    .line 65
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_2

    #@26
    .end local v2    # "failed":Z
    .end local v3    # "i":I
    :cond_0
    move v7, v6

    #@27
    .line 63
    goto :goto_0

    #@28
    :cond_1
    move v4, v6

    #@29
    goto :goto_1

    #@2a
    .restart local v2    # "failed":Z
    .restart local v3    # "i":I
    :cond_2
    move v4, v6

    #@2b
    .line 67
    goto :goto_3

    #@2c
    :cond_3
    move v7, v6

    #@2d
    goto :goto_4

    #@2e
    .line 70
    :cond_4
    if-eqz v2, :cond_5

    #@30
    .line 72
    new-instance v4, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@32
    const-string/jumbo v5, "pad block corrupted"

    #@35
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 75
    :cond_5
    return v0
.end method

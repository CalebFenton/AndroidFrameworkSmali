.class public Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    const/16 v2, 0xff

    #@2
    const/4 v3, 0x0

    #@3
    .line 52
    array-length v4, p1

    #@4
    sub-int v1, v4, p2

    #@6
    .line 55
    .local v1, "count":I
    if-lez p2, :cond_1

    #@8
    .line 57
    add-int/lit8 v4, p2, -0x1

    #@a
    aget-byte v4, p1, v4

    #@c
    and-int/lit8 v4, v4, 0x1

    #@e
    if-nez v4, :cond_0

    #@10
    :goto_0
    int-to-byte v0, v2

    #@11
    .line 64
    .local v0, "code":B
    :goto_1
    array-length v2, p1

    #@12
    if-ge p2, v2, :cond_3

    #@14
    .line 66
    aput-byte v0, p1, p2

    #@16
    .line 67
    add-int/lit8 p2, p2, 0x1

    #@18
    goto :goto_1

    #@19
    .end local v0    # "code":B
    :cond_0
    move v2, v3

    #@1a
    .line 57
    goto :goto_0

    #@1b
    .line 61
    :cond_1
    array-length v4, p1

    #@1c
    add-int/lit8 v4, v4, -0x1

    #@1e
    aget-byte v4, p1, v4

    #@20
    and-int/lit8 v4, v4, 0x1

    #@22
    if-nez v4, :cond_2

    #@24
    :goto_2
    int-to-byte v0, v2

    #@25
    .restart local v0    # "code":B
    goto :goto_1

    #@26
    .end local v0    # "code":B
    :cond_2
    move v2, v3

    #@27
    goto :goto_2

    #@28
    .line 70
    .restart local v0    # "code":B
    :cond_3
    return v1
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 35
    const-string/jumbo v0, "TBC"

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
    .line 23
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
    .line 79
    array-length v2, p1

    #@1
    add-int/lit8 v2, v2, -0x1

    #@3
    aget-byte v0, p1, v2

    #@5
    .line 81
    .local v0, "code":B
    array-length v2, p1

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .line 82
    .local v1, "index":I
    :goto_0
    if-lez v1, :cond_0

    #@a
    add-int/lit8 v2, v1, -0x1

    #@c
    aget-byte v2, p1, v2

    #@e
    if-ne v2, v0, :cond_0

    #@10
    .line 84
    add-int/lit8 v1, v1, -0x1

    #@12
    goto :goto_0

    #@13
    .line 87
    :cond_0
    array-length v2, p1

    #@14
    sub-int/2addr v2, v1

    #@15
    return v2
.end method

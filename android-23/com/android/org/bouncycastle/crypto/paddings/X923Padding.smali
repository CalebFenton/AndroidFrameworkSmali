.class public Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;
.super Ljava/lang/Object;
.source "X923Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    #@6
    .line 11
    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    .line 45
    array-length v1, p1

    #@1
    sub-int/2addr v1, p2

    #@2
    int-to-byte v0, v1

    #@3
    .line 47
    .local v0, "code":B
    :goto_0
    array-length v1, p1

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-ge p2, v1, :cond_1

    #@8
    .line 49
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 51
    const/4 v1, 0x0

    #@d
    aput-byte v1, p1, p2

    #@f
    .line 57
    :goto_1
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    #@14
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    #@17
    move-result v1

    #@18
    int-to-byte v1, v1

    #@19
    aput-byte v1, p1, p2

    #@1b
    goto :goto_1

    #@1c
    .line 60
    :cond_1
    aput-byte v0, p1, p2

    #@1e
    .line 62
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "X9.23"

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
    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    #@2
    .line 22
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
    .line 71
    array-length v1, p1

    #@1
    add-int/lit8 v1, v1, -0x1

    #@3
    aget-byte v1, p1, v1

    #@5
    and-int/lit16 v0, v1, 0xff

    #@7
    .line 73
    .local v0, "count":I
    array-length v1, p1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 75
    new-instance v1, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@c
    const-string/jumbo v2, "pad block corrupted"

    #@f
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 78
    :cond_0
    return v0
.end method

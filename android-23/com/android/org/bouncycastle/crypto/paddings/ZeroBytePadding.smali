.class public Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

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
    sub-int v0, v1, p2

    #@3
    .line 44
    .local v0, "added":I
    :goto_0
    array-length v1, p1

    #@4
    if-ge p2, v1, :cond_0

    #@6
    .line 46
    const/4 v1, 0x0

    #@7
    aput-byte v1, p1, p2

    #@9
    .line 47
    add-int/lit8 p2, p2, 0x1

    #@b
    goto :goto_0

    #@c
    .line 50
    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "ZeroByte"

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
    .locals 2
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    array-length v0, p1

    #@1
    .line 61
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    #@3
    .line 63
    add-int/lit8 v1, v0, -0x1

    #@5
    aget-byte v1, p1, v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 71
    :cond_0
    array-length v1, p1

    #@a
    sub-int/2addr v1, v0

    #@b
    return v1

    #@c
    .line 68
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0
.end method

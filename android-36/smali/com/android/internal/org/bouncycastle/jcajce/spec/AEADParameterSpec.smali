.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
.super Ljavax/crypto/spec/IvParameterSpec;
.source "AEADParameterSpec.java"


# instance fields
.field private final blacklist associatedData:[B

.field private final blacklist macSizeInBits:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 4
    .param p1, "nonce"    # [B
    .param p2, "macSizeInBits"    # I

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI[B)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>([BI[B)V
    .registers 5
    .param p1, "nonce"    # [B
    .param p2, "macSizeInBits"    # I
    .param p3, "associatedData"    # [B

    .line 40
    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 42
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->macSizeInBits:I

    .line 43
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->associatedData:[B

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getAssociatedData()[B
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->associatedData:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMacSizeInBits()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->macSizeInBits:I

    return v0
.end method

.method public blacklist getNonce()[B
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getIV()[B

    move-result-object v0

    return-object v0
.end method

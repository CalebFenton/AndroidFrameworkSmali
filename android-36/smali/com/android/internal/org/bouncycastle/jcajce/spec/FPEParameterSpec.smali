.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;
.super Ljava/lang/Object;
.source "FPEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

.field private final blacklist tweak:[B

.field private final blacklist useInverse:Z


# direct methods
.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "radix"    # I
    .param p2, "tweak"    # [B

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;-><init>(I[BZ)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(I[BZ)V
    .registers 5
    .param p1, "radix"    # I
    .param p2, "tweak"    # [B
    .param p3, "useInverse"    # Z

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V
    .registers 5
    .param p1, "radixConverter"    # Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
    .param p2, "tweak"    # [B
    .param p3, "useInverse"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    .line 32
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->tweak:[B

    .line 33
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->useInverse:Z

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getRadix()I
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v0

    return v0
.end method

.method public blacklist getRadixConverter()Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    return-object v0
.end method

.method public blacklist getTweak()[B
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->tweak:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isUsingInverseFunction()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/FPEParameterSpec;->useInverse:Z

    return v0
.end method

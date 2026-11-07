.class public final Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;
.super Ljava/lang/Object;
.source "FPEParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private final blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private final blacklist radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

.field private final blacklist tweak:[B

.field private final blacklist useInverse:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .registers 5
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "radix"    # I
    .param p3, "tweak"    # [B

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[BZ)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[BZ)V
    .registers 6
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "radix"    # I
    .param p3, "tweak"    # [B
    .param p4, "useInverse"    # Z

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;[BZ)V
    .registers 6
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "radixConverter"    # Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
    .param p3, "tweak"    # [B
    .param p4, "useInverse"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 32
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    .line 33
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->tweak:[B

    .line 34
    iput-boolean p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->useInverse:Z

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public blacklist getRadix()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v0

    return v0
.end method

.method public blacklist getRadixConverter()Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->radixConverter:Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;

    return-object v0
.end method

.method public blacklist getTweak()[B
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->tweak:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isUsingInverseFunction()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/FPEParameters;->useInverse:Z

    return v0
.end method

.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;
.super Ljava/lang/Object;
.source "KEMExtractSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist encapsulation:[B

.field private final blacklist keyAlgorithmName:Ljava/lang/String;

.field private final blacklist keySizeInBits:I

.field private final blacklist privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor blacklist <init>(Ljava/security/PrivateKey;[BLjava/lang/String;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "encapsulation"    # [B
    .param p3, "keyAlgorithmName"    # Ljava/lang/String;

    .line 22
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;-><init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/PrivateKey;[BLjava/lang/String;I)V
    .registers 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "encapsulation"    # [B
    .param p3, "keyAlgorithmName"    # Ljava/lang/String;
    .param p4, "keySizeInBits"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    .line 28
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    .line 29
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keySizeInBits:I

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getEncapsulation()[B
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->encapsulation:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeyAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeySize()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->keySizeInBits:I

    return v0
.end method

.method public blacklist getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMExtractSpec;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

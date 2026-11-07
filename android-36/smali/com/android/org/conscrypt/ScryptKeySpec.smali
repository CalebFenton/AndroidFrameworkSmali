.class public Lcom/android/org/conscrypt/ScryptKeySpec;
.super Ljava/lang/Object;
.source "ScryptKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blacklist blockSize:I

.field private final blacklist costParameter:I

.field private final blacklist keyOutputBits:I

.field private final blacklist parallelizationParameter:I

.field private final blacklist password:[C

.field private final blacklist salt:[B


# direct methods
.method public constructor blacklist <init>([C[BIIII)V
    .registers 7
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "costParameter"    # I
    .param p4, "blockSize"    # I
    .param p5, "parallelizationParameter"    # I
    .param p6, "keyOutputBits"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->password:[C

    .line 44
    iput-object p2, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->salt:[B

    .line 45
    iput p3, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->costParameter:I

    .line 46
    iput p4, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->blockSize:I

    .line 47
    iput p5, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->parallelizationParameter:I

    .line 48
    iput p6, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->keyOutputBits:I

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist getBlockSize()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->blockSize:I

    return v0
.end method

.method public blacklist getCostParameter()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->costParameter:I

    return v0
.end method

.method public blacklist getKeyLength()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->keyOutputBits:I

    return v0
.end method

.method public blacklist getParallelizationParameter()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->parallelizationParameter:I

    return v0
.end method

.method public blacklist getPassword()[C
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->password:[C

    return-object v0
.end method

.method public blacklist getSalt()[B
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/org/conscrypt/ScryptKeySpec;->salt:[B

    return-object v0
.end method

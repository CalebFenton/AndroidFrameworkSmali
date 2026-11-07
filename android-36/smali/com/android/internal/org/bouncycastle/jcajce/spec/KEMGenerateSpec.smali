.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;
.super Ljava/lang/Object;
.source "KEMGenerateSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist keyAlgorithmName:Ljava/lang/String;

.field private final blacklist keySizeInBits:I

.field private final blacklist publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor blacklist <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "keyAlgorithmName"    # Ljava/lang/String;

    .line 19
    const/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/PublicKey;Ljava/lang/String;I)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "keyAlgorithmName"    # Ljava/lang/String;
    .param p3, "keySizeInBits"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    .line 25
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getKeyAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keyAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeySize()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->keySizeInBits:I

    return v0
.end method

.method public blacklist getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/KEMGenerateSpec;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.class public Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;
.super Ljava/lang/Object;
.source "KDFParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/DerivationParameters;


# instance fields
.field blacklist iv:[B

.field blacklist shared:[B


# direct methods
.method public constructor blacklist <init>([B[B)V
    .registers 3
    .param p1, "shared"    # [B
    .param p2, "iv"    # [B

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->shared:[B

    .line 21
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->iv:[B

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist getIV()[B
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-object v0
.end method

.method public blacklist getSharedSecret()[B
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->shared:[B

    return-object v0
.end method

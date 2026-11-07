.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
.super Ljava/lang/Object;
.source "UserKeyingMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist salt:[B

.field private final blacklist userKeyingMaterial:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "userKeyingMaterial"    # [B

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B[B)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .registers 4
    .param p1, "userKeyingMaterial"    # [B
    .param p2, "salt"    # [B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    .line 36
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->salt:[B

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist getSalt()[B
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->salt:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserKeyingMaterial()[B
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

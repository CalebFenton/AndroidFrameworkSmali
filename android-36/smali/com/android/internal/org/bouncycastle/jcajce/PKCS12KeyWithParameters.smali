.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;
.super Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
.source "PKCS12KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final blacklist iterationCount:I

.field private final blacklist salt:[B


# direct methods
.method public constructor blacklist <init>([CZ[BI)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "useWrongZeroLengthConversion"    # Z
    .param p3, "salt"    # [B
    .param p4, "iterationCount"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 48
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    .line 49
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    .line 50
    return-void
.end method

.method public constructor blacklist <init>([C[BI)V
    .registers 5
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([C)V

    .line 30
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    .line 31
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist test-api getIterationCount()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public whitelist test-api getSalt()[B
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    return-object v0
.end method

.class Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultProperties"
.end annotation


# instance fields
.field private final blacklist algorithmName:Ljava/lang/String;

.field private final blacklist bitsOfSecurity:I

.field private final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 4
    .param p1, "bitsOfSecurity"    # I
    .param p2, "algorithmName"    # Ljava/lang/String;
    .param p3, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    .line 74
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist bitsOfSecurity()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->bitsOfSecurity:I

    return v0
.end method

.method public blacklist getParams()Ljava/lang/Object;
    .registers 2

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPurpose()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

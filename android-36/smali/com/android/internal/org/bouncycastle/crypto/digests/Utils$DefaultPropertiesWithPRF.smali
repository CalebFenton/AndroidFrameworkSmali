.class Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;
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
    name = "DefaultPropertiesWithPRF"
.end annotation


# instance fields
.field private final blacklist algorithmName:Ljava/lang/String;

.field private final blacklist bitsOfSecurity:I

.field private final blacklist prfBitsOfSecurity:I

.field private final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 5
    .param p1, "bitsOfSecurity"    # I
    .param p2, "prfBitsOfSecurity"    # I
    .param p3, "algorithmName"    # Ljava/lang/String;
    .param p4, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->bitsOfSecurity:I

    .line 32
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->prfBitsOfSecurity:I

    .line 33
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->algorithmName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist bitsOfSecurity()I
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    if-ne v0, v1, :cond_9

    .line 41
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->prfBitsOfSecurity:I

    return v0

    .line 44
    :cond_9
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->bitsOfSecurity:I

    return v0
.end method

.method public blacklist getParams()Ljava/lang/Object;
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPurpose()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public blacklist getServiceName()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

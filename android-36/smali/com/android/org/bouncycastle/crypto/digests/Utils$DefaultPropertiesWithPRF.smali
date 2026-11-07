.class Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;


# instance fields
.field private final blacklist algorithmName:Ljava/lang/String;

.field private final blacklist bitsOfSecurity:I

.field private final blacklist prfBitsOfSecurity:I

.field private final blacklist purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->bitsOfSecurity:I

    .line 32
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->prfBitsOfSecurity:I

    .line 33
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->algorithmName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-void
.end method


# virtual methods
.method public blacklist getServiceName()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

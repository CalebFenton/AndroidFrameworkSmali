.class public Lcom/android/org/conscrypt/ct/DigitallySigned;
.super Ljava/lang/Object;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;,
        Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    }
.end annotation


# instance fields
.field private final blacklist hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final blacklist signature:[B

.field private final blacklist signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method public constructor blacklist <init>(II[B)V
    .registers 6
    .param p1, "hashAlgorithm"    # I
    .param p2, "signatureAlgorithm"    # I
    .param p3, "signature"    # [B

    .line 86
    nop

    .line 87
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    .line 88
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v1

    .line 86
    invoke-direct {p0, v0, v1, p3}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .registers 4
    .param p1, "hashAlgorithm"    # Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .param p2, "signatureAlgorithm"    # Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .param p3, "signature"    # [B

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 79
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 80
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    .line 81
    return-void
.end method

.method public static blacklist decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 117
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned;

    .line 118
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 119
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 120
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    .line 117
    return-object v0

    .line 121
    :catch_14
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist decode([B)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .registers 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getAlgorithm()Ljava/lang/String;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    iget-object v1, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%swith%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHashAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method

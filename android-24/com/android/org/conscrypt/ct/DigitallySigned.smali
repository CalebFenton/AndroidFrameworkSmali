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
.field private final hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final signature:[B

.field private final signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "hashAlgorithm"    # I
    .param p2, "signatureAlgorithm"    # I
    .param p3, "signature"    # [B

    #@0
    .prologue
    .line 77
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@3
    move-result-object v0

    #@4
    .line 78
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@7
    move-result-object v1

    #@8
    .line 76
    invoke-direct {p0, v0, v1, p3}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    #@b
    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .param p2, "signatureAlgorithm"    # Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .param p3, "signature"    # [B

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@5
    .line 69
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@7
    .line 70
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    #@9
    .line 67
    return-void
.end method

.method public static decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@2
    .line 108
    const/4 v2, 0x1

    #@3
    invoke-static {p0, v2}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    #@6
    move-result v2

    #@7
    .line 109
    const/4 v3, 0x1

    #@8
    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    #@b
    move-result v3

    #@c
    .line 110
    const/4 v4, 0x2

    #@d
    invoke-static {p0, v4}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    #@10
    move-result-object v4

    #@11
    .line 107
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v1

    #@15
    .line 112
    :catch_0
    move-exception v0

    #@16
    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    #@18
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public static decode([B)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "%swith%s"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getHashAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    #@2
    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    #@2
    return-object v0
.end method

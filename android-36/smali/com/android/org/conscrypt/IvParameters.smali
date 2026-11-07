.class public Lcom/android/org/conscrypt/IvParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "IvParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/IvParameters$ChaCha20;,
        Lcom/android/org/conscrypt/IvParameters$DESEDE;,
        Lcom/android/org/conscrypt/IvParameters$AES;
    }
.end annotation


# instance fields
.field private blacklist iv:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "cbbRef":J
    :try_start_2
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v2

    move-wide v0, v2

    .line 88
    iget-object v2, p0, Lcom/android/org/conscrypt/IvParameters;->iv:[B

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V

    .line 89
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_16
    .catchall {:try_start_2 .. :try_end_10} :catchall_14

    .line 94
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 89
    return-object v2

    .line 94
    :catchall_14
    move-exception v2

    goto :goto_1c

    .line 90
    :catch_16
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    :try_start_17
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 92
    nop

    .end local v0    # "cbbRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/IvParameters;
    throw v2
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_14

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/IvParameters;
    :goto_1c
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 95
    throw v2
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    if-eqz p1, :cond_35

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_35

    .line 102
    :cond_b
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    iget-object v0, p0, Lcom/android/org/conscrypt/IvParameters;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 105
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/org/conscrypt/IvParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 76
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_c

    .line 80
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/android/org/conscrypt/IvParameters;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 77
    :cond_c
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible AlgorithmParametersSpec class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 40
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_14

    .line 43
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/IvParameters;->iv:[B

    .line 44
    return-void

    .line 41
    :cond_14
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only IvParameterSpec is supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 7
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "readRef":J
    :try_start_2
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v2

    move-wide v0, v2

    .line 51
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v2

    .line 52
    .local v2, "newIv":[B
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 55
    iput-object v2, p0, Lcom/android/org/conscrypt/IvParameters;->iv:[B
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_20

    .line 57
    .end local v2    # "newIv":[B
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 58
    nop

    .line 59
    return-void

    .line 53
    .restart local v2    # "newIv":[B
    :cond_18
    :try_start_18
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error reading ASN.1 encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "readRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/IvParameters;
    .end local p1    # "bytes":[B
    throw v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 57
    .end local v2    # "newIv":[B
    .restart local v0    # "readRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/IvParameters;
    .restart local p1    # "bytes":[B
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 58
    throw v2
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    if-eqz p2, :cond_35

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_35

    .line 65
    :cond_b
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 66
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/IvParameters;->iv:[B

    goto :goto_38

    .line 68
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_35
    :goto_35
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/IvParameters;->engineInit([B)V

    .line 70
    :goto_38
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "Conscrypt IV AlgorithmParameters"

    return-object v0
.end method

.class public final Lcom/android/org/conscrypt/GCMParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "GCMParameters.java"


# static fields
.field private static final blacklist DEFAULT_TLEN:I = 0x60


# instance fields
.field private blacklist iv:[B

.field private blacklist tLen:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "tLen"    # I
    .param p2, "iv"    # [B

    .line 48
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    .line 50
    iput-object p2, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    .line 51
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const-wide/16 v0, 0x0

    .line 124
    .local v0, "cbbRef":J
    const-wide/16 v2, 0x0

    .line 126
    .local v2, "seqRef":J
    :try_start_4
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v4

    move-wide v0, v4

    .line 127
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 128
    iget-object v4, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V

    .line 129
    iget v4, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_21

    .line 130
    iget v4, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    div-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V

    .line 132
    :cond_21
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_2e
    .catchall {:try_start_4 .. :try_end_25} :catchall_2c

    .line 137
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 138
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 132
    return-object v4

    .line 137
    :catchall_2c
    move-exception v4

    goto :goto_34

    .line 133
    :catch_2e
    move-exception v4

    .line 134
    .local v4, "e":Ljava/io/IOException;
    :try_start_2f
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 135
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/GCMParameters;
    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 137
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/GCMParameters;
    :goto_34
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 138
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 139
    throw v4
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    if-eqz p1, :cond_24

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 147
    :cond_b
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

    .line 145
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/org/conscrypt/GCMParameters;->engineGetEncoded()[B

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

    .line 114
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 115
    iget v0, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    iget-object v1, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0

    .line 117
    :cond_1d
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

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
    .registers 5
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;

    move-result-object v0

    .line 71
    .local v0, "params":Lcom/android/org/conscrypt/GCMParameters;
    if-eqz v0, :cond_f

    .line 74
    iget v1, v0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    iput v1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    .line 75
    iget-object v1, v0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    iput-object v1, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    .line 76
    return-void

    .line 72
    :cond_f
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "Only GCMParameterSpec is supported"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 10
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "readRef":J
    const-wide/16 v2, 0x0

    .line 83
    .local v2, "seqRef":J
    :try_start_4
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v4

    move-wide v0, v4

    .line 84
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 85
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v4

    .line 86
    .local v4, "newIv":[B
    const/16 v5, 0x60

    .line 87
    .local v5, "newTlen":I
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-nez v6, :cond_21

    .line 88
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v6

    long-to-int v6, v6

    mul-int/lit8 v5, v6, 0x8

    .line 90
    :cond_21
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 91
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 94
    iput-object v4, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    .line 95
    iput v5, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_41

    .line 97
    .end local v4    # "newIv":[B
    .end local v5    # "newTlen":I
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 98
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 99
    nop

    .line 100
    return-void

    .line 92
    .restart local v4    # "newIv":[B
    .restart local v5    # "newTlen":I
    :cond_39
    :try_start_39
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading ASN.1 encoding"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "readRef":J
    .end local v2    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/GCMParameters;
    .end local p1    # "bytes":[B
    throw v6
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    .line 97
    .end local v4    # "newIv":[B
    .end local v5    # "newTlen":I
    .restart local v0    # "readRef":J
    .restart local v2    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/GCMParameters;
    .restart local p1    # "bytes":[B
    :catchall_41
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 98
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 99
    throw v4
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

    .line 104
    if-eqz p2, :cond_24

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 107
    :cond_b
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

    .line 105
    :cond_24
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/GCMParameters;->engineInit([B)V

    .line 109
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 152
    const-string v0, "Conscrypt GCM AlgorithmParameters"

    return-object v0
.end method

.method blacklist getIV()[B
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    return-object v0
.end method

.method blacklist getTLen()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    return v0
.end method

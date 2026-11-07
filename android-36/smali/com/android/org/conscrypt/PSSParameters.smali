.class public Lcom/android/org/conscrypt/PSSParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "PSSParameters.java"


# instance fields
.field private blacklist spec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 35
    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 37
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const-wide/16 v0, 0x0

    .line 118
    .local v0, "cbbRef":J
    const-wide/16 v2, 0x0

    .line 120
    .local v2, "seqRef":J
    :try_start_4
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v4

    move-wide v0, v4

    .line 121
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 122
    iget-object v4, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 123
    invoke-virtual {v5}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    .line 122
    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 125
    iget-object v4, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_58
    .catchall {:try_start_4 .. :try_end_25} :catchall_56

    const/16 v5, 0x14

    if-eq v4, v5, :cond_4b

    .line 126
    const-wide/16 v4, 0x0

    .line 128
    .local v4, "tagRef":J
    const/4 v6, 0x2

    :try_start_2c
    invoke-static {v2, v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    move-wide v4, v6

    .line 129
    iget-object v6, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_42

    .line 131
    :try_start_3b
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 132
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 133
    goto :goto_4b

    .line 131
    :catchall_42
    move-exception v6

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 132
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 133
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    throw v6

    .line 136
    .end local v4    # "tagRef":J
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    :cond_4b
    :goto_4b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v4
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4f} :catch_58
    .catchall {:try_start_3b .. :try_end_4f} :catchall_56

    .line 141
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 142
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 136
    return-object v4

    .line 141
    :catchall_56
    move-exception v4

    goto :goto_5e

    .line 137
    :catch_58
    move-exception v4

    .line 138
    .local v4, "e":Ljava/io/IOException;
    :try_start_59
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 139
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    throw v4
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_56

    .line 141
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    :goto_5e
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 142
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 143
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

    .line 148
    if-eqz p1, :cond_2c

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2c

    .line 151
    :cond_13
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

    .line 149
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/android/org/conscrypt/PSSParameters;->engineGetEncoded()[B

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

    .line 108
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_9

    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    return-object v0

    .line 111
    :cond_9
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
    .registers 4
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 42
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_a

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 47
    return-void

    .line 45
    :cond_a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only PSSParameterSpec is supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 19
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .local v1, "readRef":J
    const-wide/16 v3, 0x0

    .line 54
    .local v3, "seqRef":J
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v5

    move-wide v1, v5

    .line 55
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 56
    const/16 v5, 0x14

    .line 57
    .local v5, "saltLength":I
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 58
    .local v7, "hash":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 59
    .local v12, "mgfHash":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-static {v3, v4, v0}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_98

    if-eqz v0, :cond_38

    .line 60
    const-wide/16 v8, 0x0

    .line 62
    .local v8, "saltRef":J
    :try_start_23
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v10

    move-wide v8, v10

    .line 63
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v10
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_32

    long-to-int v5, v10

    .line 65
    :try_start_2d
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 66
    move v10, v5

    goto :goto_39

    .line 65
    :catchall_32
    move-exception v0

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 66
    nop

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .end local p1    # "bytes":[B
    throw v0

    .line 59
    .end local v8    # "saltRef":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .restart local p1    # "bytes":[B
    :cond_38
    move v10, v5

    .line 68
    .end local v5    # "saltLength":I
    .local v10, "saltLength":I
    :goto_39
    const/4 v0, 0x3

    invoke-static {v3, v4, v0}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_98

    const-string v5, "Error reading ASN.1 encoding"

    if-eqz v0, :cond_66

    .line 70
    const-wide/16 v8, 0x0

    .line 72
    .local v8, "trailerRef":J
    :try_start_44
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v13

    move-wide v8, v13

    .line 73
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_uint64(J)J

    move-result-wide v13
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_60

    long-to-int v0, v13

    int-to-long v13, v0

    .line 75
    .local v13, "trailerField":J
    :try_start_4f
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 76
    nop

    .line 78
    const-wide/16 v15, 0x1

    cmp-long v0, v13, v15

    if-nez v0, :cond_5a

    goto :goto_66

    .line 79
    :cond_5a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .end local p1    # "bytes":[B
    throw v0

    .line 75
    .end local v13    # "trailerField":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .restart local p1    # "bytes":[B
    :catchall_60
    move-exception v0

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 76
    nop

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .end local p1    # "bytes":[B
    throw v0

    .line 83
    .end local v8    # "trailerRef":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .restart local p1    # "bytes":[B
    :cond_66
    :goto_66
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 84
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 87
    new-instance v6, Ljava/security/spec/PSSParameterSpec;

    const-string v8, "MGF1"

    new-instance v9, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v9, v12}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    :try_end_7f
    .catchall {:try_start_4f .. :try_end_7f} :catchall_98

    move-object/from16 v8, p0

    :try_start_81
    iput-object v6, v8, Lcom/android/org/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_96

    .line 90
    .end local v7    # "hash":Ljava/lang/String;
    .end local v10    # "saltLength":I
    .end local v12    # "mgfHash":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 91
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    nop

    .line 93
    return-void

    .line 84
    .restart local v7    # "hash":Ljava/lang/String;
    .restart local v10    # "saltLength":I
    .restart local v12    # "mgfHash":Ljava/lang/String;
    :cond_8b
    move-object/from16 v8, p0

    goto :goto_90

    .line 83
    :cond_8e
    move-object/from16 v8, p0

    .line 85
    :goto_90
    :try_start_90
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .end local p1    # "bytes":[B
    throw v0
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_96

    .line 90
    .end local v7    # "hash":Ljava/lang/String;
    .end local v10    # "saltLength":I
    .end local v12    # "mgfHash":Ljava/lang/String;
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/PSSParameters;
    .restart local p1    # "bytes":[B
    :catchall_96
    move-exception v0

    goto :goto_9b

    :catchall_98
    move-exception v0

    move-object/from16 v8, p0

    :goto_9b
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 91
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    throw v0
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

    .line 97
    if-eqz p2, :cond_2c

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2c

    .line 100
    :cond_13
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

    .line 98
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/PSSParameters;->engineInit([B)V

    .line 102
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 156
    const-string v0, "Conscrypt PSS AlgorithmParameters"

    return-object v0
.end method

.class public Lcom/android/org/conscrypt/OAEPParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "OAEPParameters.java"


# static fields
.field private static final blacklist MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"

.field private static final blacklist NAME_TO_OID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OID_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PSPECIFIED_OID:Ljava/lang/String; = "1.2.840.113549.1.1.9"


# instance fields
.field private blacklist spec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "1.3.14.3.2.26"

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    const-string v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/android/org/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_45

    .line 49
    :cond_63
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 53
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 55
    return-void
.end method

.method private static blacklist getHashName(J)Ljava/lang/String;
    .registers 7
    .param p0, "hashRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const-wide/16 v0, 0x0

    .line 161
    .local v0, "hashSeqRef":J
    :try_start_2
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 162
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "hashOid":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v3

    if-nez v3, :cond_14

    .line 164
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_null(J)V

    .line 166
    :cond_14
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 167
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 170
    sget-object v3, Lcom/android/org/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_36

    .line 172
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 170
    return-object v3

    .line 168
    :cond_2e
    :try_start_2e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error reading ASN.1 encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hashSeqRef":J
    .end local p0    # "hashRef":J
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 172
    .end local v2    # "hashOid":Ljava/lang/String;
    .restart local v0    # "hashSeqRef":J
    .restart local p0    # "hashRef":J
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 173
    throw v2
.end method

.method static blacklist readHash(J)Ljava/lang/String;
    .registers 6
    .param p0, "seqRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 122
    const-wide/16 v0, 0x0

    .line 124
    .local v0, "hashRef":J
    :try_start_9
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 125
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 127
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 125
    return-object v2

    .line 127
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 128
    throw v2

    .line 130
    .end local v0    # "hashRef":J
    :cond_1b
    const-string v0, "SHA-1"

    return-object v0
.end method

.method static blacklist readMgfHash(J)Ljava/lang/String;
    .registers 10
    .param p0, "seqRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 136
    const-wide/16 v0, 0x0

    .line 137
    .local v0, "mgfRef":J
    const-wide/16 v2, 0x0

    .line 139
    .local v2, "mgfSeqRef":J
    :try_start_b
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v4

    move-wide v0, v4

    .line 140
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 141
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "mgfOid":Ljava/lang/String;
    const-string v5, "1.2.840.113549.1.1.8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_41

    const-string v6, "Error reading ASN.1 encoding"

    if-eqz v5, :cond_3b

    .line 145
    :try_start_23
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "mgfHash":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v7
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_41

    if-eqz v7, :cond_35

    .line 149
    nop

    .line 151
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 152
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 149
    return-object v5

    .line 147
    :cond_35
    :try_start_35
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgfRef":J
    .end local v2    # "mgfSeqRef":J
    .end local p0    # "seqRef":J
    throw v7

    .line 143
    .end local v5    # "mgfHash":Ljava/lang/String;
    .restart local v0    # "mgfRef":J
    .restart local v2    # "mgfSeqRef":J
    .restart local p0    # "seqRef":J
    :cond_3b
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mgfRef":J
    .end local v2    # "mgfSeqRef":J
    .end local p0    # "seqRef":J
    throw v5
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_41

    .line 151
    .end local v4    # "mgfOid":Ljava/lang/String;
    .restart local v0    # "mgfRef":J
    .restart local v2    # "mgfSeqRef":J
    .restart local p0    # "seqRef":J
    :catchall_41
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 152
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 153
    throw v4

    .line 155
    .end local v0    # "mgfRef":J
    .end local v2    # "mgfSeqRef":J
    :cond_49
    const-string v0, "SHA-1"

    return-object v0
.end method

.method private static blacklist writeAlgorithmIdentifier(JLjava/lang/String;)J
    .registers 7
    .param p0, "container"    # J
    .param p2, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    const-wide/16 v0, 0x0

    .line 278
    .local v0, "seqRef":J
    :try_start_2
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 279
    invoke-static {v0, v1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_oid(JLjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_c

    .line 283
    nop

    .line 284
    return-wide v0

    .line 280
    :catch_c
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 282
    throw v2
.end method

.method static blacklist writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V
    .registers 12
    .param p0, "seqRef"    # J
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/MGF1ParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const-string v0, "SHA-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 233
    const-wide/16 v1, 0x0

    .line 234
    .local v1, "hashRef":J
    const-wide/16 v3, 0x0

    .line 236
    .local v3, "hashParamsRef":J
    const/4 v5, 0x0

    :try_start_d
    invoke-static {p0, p1, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v5

    move-wide v1, v5

    .line 237
    sget-object v5, Lcom/android/org/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 238
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 237
    invoke-static {v1, v2, v5}, Lcom/android/org/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v5

    move-wide v3, v5

    .line 239
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2c

    .line 241
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 242
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 243
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 244
    goto :goto_37

    .line 241
    :catchall_2c
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 242
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 243
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 244
    throw v0

    .line 246
    .end local v1    # "hashRef":J
    .end local v3    # "hashParamsRef":J
    :cond_37
    :goto_37
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 247
    const-wide/16 v0, 0x0

    .line 248
    .local v0, "mgfRef":J
    const-wide/16 v2, 0x0

    .line 249
    .local v2, "mgfParamsRef":J
    const-wide/16 v4, 0x0

    .line 251
    .local v4, "hashParamsRef":J
    const/4 v6, 0x1

    :try_start_48
    invoke-static {p0, p1, v6}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    move-wide v0, v6

    .line 252
    const-string v6, "1.2.840.113549.1.1.8"

    invoke-static {v0, v1, v6}, Lcom/android/org/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v6

    move-wide v2, v6

    .line 253
    sget-object v6, Lcom/android/org/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 254
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 253
    invoke-static {v2, v3, v6}, Lcom/android/org/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v6

    move-wide v4, v6

    .line 255
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_68
    .catchall {:try_start_48 .. :try_end_68} :catchall_75

    .line 257
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 258
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 259
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 260
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 261
    goto :goto_83

    .line 257
    :catchall_75
    move-exception v6

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 258
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 259
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 260
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 261
    throw v6

    .line 263
    .end local v0    # "mgfRef":J
    .end local v2    # "mgfParamsRef":J
    .end local v4    # "hashParamsRef":J
    :cond_83
    :goto_83
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "cbbRef":J
    const-wide/16 v2, 0x0

    .line 192
    .local v2, "seqRef":J
    :try_start_4
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v4

    move-wide v0, v4

    .line 193
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 194
    iget-object v4, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 195
    invoke-virtual {v5}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    .line 194
    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 196
    iget-object v4, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/PSource$PSpecified;

    .line 198
    .local v4, "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v5

    array-length v5, v5
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2c} :catch_69
    .catchall {:try_start_4 .. :try_end_2c} :catchall_67

    if-eqz v5, :cond_5c

    .line 199
    const-wide/16 v5, 0x0

    .line 200
    .local v5, "pSourceRef":J
    const-wide/16 v7, 0x0

    .line 202
    .local v7, "pSourceParamsRef":J
    const/4 v9, 0x2

    :try_start_33
    invoke-static {v2, v3, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v9

    move-wide v5, v9

    .line 203
    const-string v9, "1.2.840.113549.1.1.9"

    invoke-static {v5, v6, v9}, Lcom/android/org/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v9

    move-wide v7, v9

    .line 204
    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_50

    .line 206
    :try_start_46
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 207
    invoke-static {v7, v8}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 208
    invoke-static {v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 209
    goto :goto_5c

    .line 206
    :catchall_50
    move-exception v9

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 207
    invoke-static {v7, v8}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 208
    invoke-static {v5, v6}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 209
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    throw v9

    .line 211
    .end local v5    # "pSourceRef":J
    .end local v7    # "pSourceParamsRef":J
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    :cond_5c
    :goto_5c
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v5
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_60} :catch_69
    .catchall {:try_start_46 .. :try_end_60} :catchall_67

    .line 216
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 217
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 211
    return-object v5

    .line 216
    .end local v4    # "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    :catchall_67
    move-exception v4

    goto :goto_6f

    .line 212
    :catch_69
    move-exception v4

    .line 213
    .local v4, "e":Ljava/io/IOException;
    :try_start_6a
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 214
    nop

    .end local v0    # "cbbRef":J
    .end local v2    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    throw v4
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_67

    .line 216
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "cbbRef":J
    .restart local v2    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    :goto_6f
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 217
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 218
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

    .line 223
    if-eqz p1, :cond_24

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 226
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

    .line 224
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OAEPParameters;->engineGetEncoded()[B

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

    .line 180
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_9

    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0

    .line 183
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

    .line 60
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_a

    .line 61
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 65
    return-void

    .line 63
    :cond_a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only OAEPParameterSpec is supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 17
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const-wide/16 v1, 0x0

    .line 70
    .local v1, "readRef":J
    const-wide/16 v3, 0x0

    .line 72
    .local v3, "seqRef":J
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v5

    move-wide v1, v5

    .line 73
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 74
    sget-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    move-object v5, v0

    .line 75
    .local v5, "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 76
    .local v6, "hash":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 77
    .local v7, "mgfHash":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-static {v3, v4, v0}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_92

    const-string v8, "Error reading ASN.1 encoding"

    if-eqz v0, :cond_6a

    .line 78
    const-wide/16 v9, 0x0

    .line 79
    .local v9, "pSourceRef":J
    const-wide/16 v11, 0x0

    .line 81
    .local v11, "pSourceSeqRef":J
    :try_start_28
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v13

    move-wide v9, v13

    .line 82
    invoke-static {v9, v10}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v13

    move-wide v11, v13

    .line 83
    invoke-static {v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "pSourceOid":Ljava/lang/String;
    const-string v13, "1.2.840.113549.1.1.9"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 87
    new-instance v13, Ljavax/crypto/spec/PSource$PSpecified;

    .line 88
    invoke-static {v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    move-object v5, v13

    .line 89
    invoke-static {v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v13
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_61

    if-eqz v13, :cond_55

    .line 93
    .end local v0    # "pSourceOid":Ljava/lang/String;
    :try_start_4e
    invoke-static {v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 94
    invoke-static {v9, v10}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_92

    .line 95
    goto :goto_6a

    .line 90
    .restart local v0    # "pSourceOid":Ljava/lang/String;
    :cond_55
    :try_start_55
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    .end local v9    # "pSourceRef":J
    .end local v11    # "pSourceSeqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .end local p1    # "bytes":[B
    throw v13

    .line 85
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "mgfHash":Ljava/lang/String;
    .restart local v9    # "pSourceRef":J
    .restart local v11    # "pSourceSeqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .restart local p1    # "bytes":[B
    :cond_5b
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    .end local v9    # "pSourceRef":J
    .end local v11    # "pSourceSeqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .end local p1    # "bytes":[B
    throw v13
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_61

    .line 93
    .end local v0    # "pSourceOid":Ljava/lang/String;
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "mgfHash":Ljava/lang/String;
    .restart local v9    # "pSourceRef":J
    .restart local v11    # "pSourceSeqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .restart local p1    # "bytes":[B
    :catchall_61
    move-exception v0

    :try_start_62
    invoke-static {v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 94
    invoke-static {v9, v10}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 95
    nop

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .end local p1    # "bytes":[B
    throw v0

    .line 98
    .end local v9    # "pSourceRef":J
    .end local v11    # "pSourceSeqRef":J
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .restart local p1    # "bytes":[B
    :cond_6a
    :goto_6a
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 99
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 102
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v8, "MGF1"

    new-instance v9, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v9, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v8, v9, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_84
    .catchall {:try_start_62 .. :try_end_84} :catchall_92

    .line 105
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 106
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 107
    nop

    .line 108
    return-void

    .line 100
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "hash":Ljava/lang/String;
    .restart local v7    # "mgfHash":Ljava/lang/String;
    :cond_8c
    :try_start_8c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "readRef":J
    .end local v3    # "seqRef":J
    .end local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .end local p1    # "bytes":[B
    throw v0
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_92

    .line 105
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "hash":Ljava/lang/String;
    .end local v7    # "mgfHash":Ljava/lang/String;
    .restart local v1    # "readRef":J
    .restart local v3    # "seqRef":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/OAEPParameters;
    .restart local p1    # "bytes":[B
    :catchall_92
    move-exception v0

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 106
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 107
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

    .line 112
    if-eqz p2, :cond_24

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 115
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

    .line 113
    :cond_24
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OAEPParameters;->engineInit([B)V

    .line 117
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 289
    const-string v0, "Conscrypt OAEP AlgorithmParameters"

    return-object v0
.end method

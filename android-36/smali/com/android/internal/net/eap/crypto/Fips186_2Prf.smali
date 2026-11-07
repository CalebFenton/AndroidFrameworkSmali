.class public Lcom/android/internal/net/eap/crypto/Fips186_2Prf;
.super Ljava/lang/Object;
.source "Fips186_2Prf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;
    }
.end annotation


# static fields
.field private static final blacklist SEED_LEN_BYTES:I = 0x14

.field private static final blacklist SHA_OUTPUT_LEN_BYTES:I = 0x28


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getRandom([BI)[B
    .registers 16
    .param p1, "seed"    # [B
    .param p2, "outputLenBytes"    # I

    .line 46
    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_68

    .line 50
    invoke-static {p1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedByteArrayToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 51
    .local v0, "xkey":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "2"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 53
    .local v2, "exp_b":Ljava/math/BigInteger;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 59
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v4, p2, 0x28

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x28

    .line 60
    .local v4, "numIterations":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_21
    if-ge v5, v4, :cond_63

    .line 61
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    const/4 v7, 0x2

    if-ge v6, v7, :cond_60

    .line 67
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 71
    .local v7, "xval":Ljava/math/BigInteger;
    new-array v8, v1, [B

    .line 72
    .local v8, "w_i":[B
    new-instance v9, Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;-><init>(Lcom/android/internal/net/eap/crypto/Fips186_2Prf-IA;)V

    .line 73
    .local v9, "digest":Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;
    nop

    .line 74
    invoke-static {v7, v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->bigIntegerToUnsignedByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v10

    .line 73
    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v1}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;->update([BII)V

    .line 75
    invoke-virtual {v9, v8, v11}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;->doFinal([BI)I

    .line 79
    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-static {v8}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedByteArrayToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    array-length v12, v8

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v8, v11, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 61
    .end local v7    # "xval":Ljava/math/BigInteger;
    .end local v8    # "w_i":[B
    .end local v9    # "digest":Lcom/android/internal/net/eap/crypto/Fips186_2Prf$Sha1_186_2_FunctionG;
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 60
    .end local v6    # "i":I
    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 88
    .end local v5    # "j":I
    :cond_63
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 47
    .end local v0    # "xkey":Ljava/math/BigInteger;
    .end local v2    # "exp_b":Ljava/math/BigInteger;
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "numIterations":I
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid seed length. Must be 160b (20B)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

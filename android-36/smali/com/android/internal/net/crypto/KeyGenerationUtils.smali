.class public Lcom/android/internal/net/crypto/KeyGenerationUtils;
.super Ljava/lang/Object;
.source "KeyGenerationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist prfPlus(Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;[B[BI)[B
    .registers 12
    .param p0, "byteSigner"    # Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B
    .param p3, "keyMaterialLen"    # I

    .line 43
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    .local v0, "keyMatBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 46
    .local v2, "previousMac":[B
    const/4 v3, 0x1

    .line 47
    .local v3, "padLen":I
    const/4 v4, 0x1

    .line 49
    .local v4, "padValue":B
    :goto_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_3b

    .line 50
    array-length v5, v2

    array-length v6, p2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 51
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 52
    .local v5, "dataToSignBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p0, p1, v6}, Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;->signBytes([B[B)[B

    move-result-object v2

    .line 56
    array-length v6, v2

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 56
    invoke-virtual {v0, v2, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 59
    add-int/lit8 v6, v4, 0x1

    int-to-byte v4, v6

    .line 60
    .end local v5    # "dataToSignBuffer":Ljava/nio/ByteBuffer;
    goto :goto_9

    .line 62
    :cond_3b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
.super Ljava/lang/Object;
.source "Asn1Decoder.java"


# instance fields
.field private final blacklist mEnd:I

.field private blacklist mPosition:I

.field private final blacklist mSrc:[B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "hex"    # Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "src"    # [B

    .line 41
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_15

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    .line 61
    iput p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    .line 62
    add-int v0, p2, p3

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    .line 63
    return-void

    .line 52
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: bytes=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getPosition()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    return v0
.end method

.method public blacklist hasNextNode()Z
    .registers 3

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_f6

    .line 89
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    .line 92
    .local v0, "offset":I
    move v1, v0

    .line 93
    .local v1, "tagStart":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "offset":I
    .local v3, "offset":I
    aget-byte v0, v2, v0

    .line 94
    .local v0, "b":B
    and-int/lit8 v2, v0, 0x1f

    const/16 v4, 0x1f

    if-ne v2, v4, :cond_25

    .line 96
    :goto_15
    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v3, v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    move v3, v4

    if-eqz v2, :cond_25

    goto :goto_15

    .line 100
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_25
    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const/4 v4, 0x0

    if-ge v3, v2, :cond_dd

    .line 106
    :try_start_2a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    sub-int v5, v3, v1

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v2
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_32} :catch_c3

    .line 110
    .local v2, "tag":I
    nop

    .line 114
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .local v5, "offset":I
    aget-byte v0, v4, v3

    .line 115
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_3f

    .line 117
    move v3, v0

    .local v3, "dataLen":I
    goto :goto_52

    .line 120
    .end local v3    # "dataLen":I
    :cond_3f
    and-int/lit8 v3, v0, 0x7f

    .line 121
    .local v3, "lenLen":I
    add-int v4, v5, v3

    iget v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const-string v7, "Cannot parse length at position: "

    if-gt v4, v6, :cond_ac

    .line 127
    :try_start_49
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v4
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_4f} :catch_94

    .line 132
    .local v4, "dataLen":I
    nop

    .line 133
    add-int/2addr v5, v3

    move v3, v4

    .line 135
    .end local v4    # "dataLen":I
    .local v3, "dataLen":I
    :goto_52
    add-int v4, v5, v3

    iget v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-gt v4, v6, :cond_64

    .line 147
    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-direct {v4, v2, v6, v5, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    .line 148
    .local v4, "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    add-int v6, v5, v3

    iput v6, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    .line 149
    return-object v4

    .line 137
    .end local v4    # "root":Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :cond_64
    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete data at position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expected bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", actual bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 128
    .local v3, "lenLen":I
    :catch_94
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7, v4}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 123
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_ac
    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 107
    .end local v2    # "tag":I
    .end local v5    # "offset":I
    .local v3, "offset":I
    :catch_c3
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse tag at position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 102
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_dd
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid length at position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 86
    .end local v0    # "b":B
    .end local v1    # "tagStart":I
    .end local v3    # "offset":I
    :cond_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No bytes to parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

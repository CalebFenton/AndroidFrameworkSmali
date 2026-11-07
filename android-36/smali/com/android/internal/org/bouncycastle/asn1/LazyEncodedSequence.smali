.class Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.source "LazyEncodedSequence.java"


# instance fields
.field private blacklist encoded:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 4
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 21
    if-eqz p1, :cond_8

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    .line 27
    return-void

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'encoded\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized blacklist force()V
    .registers 6

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_38

    .line 144
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([BZ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3a

    .line 147
    .local v0, "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 148
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_3a

    .line 156
    .end local v1    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_38

    .line 153
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catch_1e
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    :try_start_1f
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed ASN.1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_3a

    .line 158
    .end local v0    # "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    .line 141
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 2

    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 162
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    .line 97
    .local v0, "encoded":[B
    if-eqz v0, :cond_c

    .line 99
    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 100
    return-void

    .line 103
    :cond_c
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 104
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 4
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    .line 86
    .local v0, "encoded":[B
    if-eqz v0, :cond_c

    .line 88
    array-length v1, v0

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v1

    return v1

    .line 91
    :cond_c
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v1

    return v1
.end method

.method public blacklist getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "index"    # I

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 33
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    .line 39
    .local v0, "encoded":[B
    if-eqz v0, :cond_c

    .line 41
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    return-object v1

    .line 44
    :cond_c
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 51
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 58
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 65
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method blacklist toASN1BitString()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toASN1BitString()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .registers 2

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    move-result-object v0

    return-object v0
.end method

.method blacklist toASN1OctetString()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toASN1OctetString()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0
.end method

.method blacklist toASN1Set()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toASN1Set()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 72
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 79
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 130
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 127
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method declared-synchronized blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    monitor-enter p0

    .line 135
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 137
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 134
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

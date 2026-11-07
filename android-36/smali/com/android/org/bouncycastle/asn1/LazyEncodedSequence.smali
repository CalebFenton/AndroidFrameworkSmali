.class Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "LazyEncodedSequence.java"


# instance fields
.field private blacklist encoded:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    if-eqz p1, :cond_8

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void

    .line 23
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'encoded\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized blacklist force()V
    .registers 5

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_38

    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([BZ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    .line 147
    :try_start_d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    .line 150
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1d} :catch_20
    .catchall {:try_start_d .. :try_end_1d} :catchall_1e

    goto :goto_38

    :catchall_1e
    move-exception v0

    goto :goto_3a

    :catch_20
    move-exception v0

    .line 155
    :try_start_21
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed ASN.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_1e

    .line 158
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_1e

    throw v0
.end method

.method private declared-synchronized blacklist getContents()[B
    .registers 2

    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 p0, 0x30

    .line 99
    invoke-virtual {p1, p2, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void

    .line 103
    :cond_c
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 3

    .line 85
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    if-eqz v0, :cond_c

    .line 88
    array-length p0, v0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0

    .line 91
    :cond_c
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p0

    return p0
.end method

.method public blacklist getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 33
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    if-eqz v0, :cond_c

    .line 41
    new-instance p0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    return-object p0

    .line 44
    :cond_c
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 51
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 58
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public blacklist size()I
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 65
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p0

    return p0
.end method

.method blacklist toASN1BitString()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1BitString()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0
.end method

.method blacklist toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;
    .registers 1

    .line 113
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;

    move-result-object p0

    return-object p0
.end method

.method blacklist toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0
.end method

.method blacklist toASN1Set()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 1

    .line 123
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toASN1Set()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 72
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method declared-synchronized blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    monitor-enter p0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 130
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method declared-synchronized blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    monitor-enter p0

    .line 135
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->force()V

    .line 137
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

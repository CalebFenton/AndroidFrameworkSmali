.class Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "LazyEncodedSequence.java"


# instance fields
.field private encoded:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    #@3
    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@5
    .line 16
    return-void
.end method

.method private parse()V
    .locals 3

    #@0
    .prologue
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    #@7
    .line 25
    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 27
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->seq:Ljava/util/Vector;

    #@f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@16
    goto :goto_0

    #@17
    .line 30
    :cond_0
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@1a
    .line 21
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@6
    const/16 v1, 0x30

    #@8
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@b
    .line 98
    :goto_0
    return-void

    #@c
    .line 106
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    #@13
    goto :goto_0
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@6
    array-length v0, v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@f
    array-length v1, v1

    #@10
    add-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public declared-synchronized getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    #@8
    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v0

    #@c
    monitor-exit p0

    #@d
    return-object v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized getObjects()Ljava/util/Enumeration;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 47
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    .line 50
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    return-object v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    #@8
    .line 60
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    monitor-exit p0

    #@d
    return v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    #@7
    .line 70
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    #@7
    .line 80
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

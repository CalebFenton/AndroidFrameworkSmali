.class public Lcom/android/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    return-object v0
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->toBytes([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    #@7
    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    .line 54
    return-void
.end method

.method static fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .locals 5
    .param p0, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3
    move-result v4

    #@4
    new-array v3, v4, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@6
    .line 158
    .local v3, "v":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 159
    .local v0, "e":Ljava/util/Enumeration;
    const/4 v1, 0x0

    #@b
    .line 161
    .local v1, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 163
    add-int/lit8 v2, v1, 0x1

    #@13
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@19
    aput-object v4, v3, v1

    #@1b
    move v1, v2

    #@1c
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@1d
    .line 166
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@1f
    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@22
    return-object v4
.end method

.method private generateOcts()Ljava/util/Vector;
    .locals 7

    #@0
    .prologue
    .line 94
    new-instance v3, Ljava/util/Vector;

    #@2
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@5
    .line 95
    .local v3, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    #@8
    array-length v4, v4

    #@9
    if-ge v1, v4, :cond_1

    #@b
    .line 99
    add-int/lit16 v4, v1, 0x3e8

    #@d
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    #@f
    array-length v5, v5

    #@10
    if-le v4, v5, :cond_0

    #@12
    .line 101
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    #@14
    array-length v0, v4

    #@15
    .line 108
    .local v0, "end":I
    :goto_1
    sub-int v4, v0, v1

    #@17
    new-array v2, v4, [B

    #@19
    .line 110
    .local v2, "nStr":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    #@1b
    array-length v5, v2

    #@1c
    const/4 v6, 0x0

    #@1d
    invoke-static {v4, v1, v2, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 112
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@22
    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@25
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@28
    .line 95
    add-int/lit16 v1, v1, 0x3e8

    #@2a
    goto :goto_0

    #@2b
    .line 105
    .end local v0    # "end":I
    .end local v2    # "nStr":[B
    :cond_0
    add-int/lit16 v0, v1, 0x3e8

    #@2d
    .restart local v0    # "end":I
    goto :goto_1

    #@2e
    .line 115
    .end local v0    # "end":I
    :cond_1
    return-object v3
.end method

.method private static toBytes([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B
    .locals 8
    .param p0, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 23
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v5, p0

    #@7
    if-eq v3, v5, :cond_0

    #@9
    .line 27
    :try_start_0
    aget-object v4, p0, v3

    #@b
    check-cast v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@d
    .line 29
    .local v4, "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 23
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 36
    .end local v4    # "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :catch_0
    move-exception v1

    #@18
    .line 37
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v7, "exception converting octets "

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v5

    #@36
    .line 32
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@37
    .line 33
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    aget-object v7, p0, v3

    #@40
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getClass()Ljava/lang/Class;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    const-string/jumbo v7, " found in input should only contain DEROctetString"

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v5

    #@5b
    .line 41
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5e
    move-result-object v5

    #@5f
    return-object v5
.end method


# virtual methods
.method public encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 139
    const/16 v1, 0x24

    #@3
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@6
    .line 141
    const/16 v1, 0x80

    #@8
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@b
    .line 146
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    #@e
    move-result-object v0

    #@f
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1e
    goto :goto_0

    #@1f
    .line 151
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@22
    .line 152
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@25
    .line 137
    return-void
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    const/4 v1, 0x0

    #@1
    .line 127
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    #@4
    move-result-object v0

    #@5
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@18
    move-result v2

    #@19
    add-int/2addr v1, v2

    #@1a
    goto :goto_0

    #@1b
    .line 132
    :cond_0
    add-int/lit8 v2, v1, 0x2

    #@1d
    add-int/lit8 v2, v2, 0x2

    #@1f
    return v2
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->generateOcts()Ljava/util/Vector;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 76
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;-><init>(Lcom/android/org/bouncycastle/asn1/BEROctetString;)V

    #@12
    return-object v0
.end method

.method public getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    #@2
    return-object v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    return v0
.end method

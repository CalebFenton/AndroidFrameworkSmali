.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final blacklist _in:Ljava/io/InputStream;

.field private final blacklist _limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;I[[B)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 36
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 37
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    return-void
.end method

.method private blacklist set00Check(Z)V
    .registers 3

    .line 270
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_b

    .line 272
    check-cast p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method blacklist implParseObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 9

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v4, :cond_24

    const/4 v4, 0x4

    if-eq v1, v4, :cond_24

    const/16 v4, 0x10

    if-eq v1, v4, :cond_24

    const/16 v4, 0x11

    if-eq v1, v4, :cond_24

    const/16 v4, 0x8

    if-ne v1, v4, :cond_22

    goto :goto_24

    :cond_22
    move v4, v0

    goto :goto_25

    :cond_24
    :goto_24
    move v4, v5

    :goto_25
    invoke-static {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v2

    if-gez v2, :cond_58

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_50

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 78
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-direct {v2, v0, v3, p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 p0, p1, 0xc0

    if-eqz p0, :cond_4b

    .line 83
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 86
    :cond_4b
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedIL(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    .line 74
    :cond_50
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_58
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v3, v4, v2, v6}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 v2, p1, 0xe0

    if-nez v2, :cond_6a

    .line 94
    invoke-virtual {p0, v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    .line 97
    :cond_6a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result v4

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-direct {v2, v3, v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 p0, p1, 0xc0

    if-eqz p0, :cond_84

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_7e

    move v0, v5

    .line 104
    :cond_7e
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DLTaggedObjectParser;

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/DLTaggedObjectParser;-><init>(IIZLcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 107
    :cond_84
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedDL(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method blacklist loadTaggedDL(IIZ)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    if-nez p3, :cond_f

    .line 115
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    .line 116
    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 119
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    .line 120
    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method blacklist loadTaggedIL(II)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    .line 126
    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedIL(IILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method blacklist parseImplicitConstructedDL(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_45

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_39

    const/16 v0, 0x10

    if-eq p1, v0, :cond_33

    const/16 v0, 0x11

    if-ne p1, v0, :cond_18

    .line 142
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DLSetParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 147
    :cond_18
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown DL object encountered: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_33
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 137
    :cond_39
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 140
    :cond_3f
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 135
    :cond_45
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERBitStringParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/BERBitStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1
.end method

.method blacklist parseImplicitConstructedIL(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_45

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_39

    const/16 v0, 0x10

    if-eq p1, v0, :cond_33

    const/16 v0, 0x11

    if-ne p1, v0, :cond_18

    .line 165
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 167
    :cond_18
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown BER object encountered: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 163
    :cond_33
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 161
    :cond_39
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 158
    :cond_3f
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    .line 156
    :cond_45
    new-instance p1, Lcom/android/org/bouncycastle/asn1/BERBitStringParser;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/BERBitStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1
.end method

.method blacklist parseImplicitPrimitive(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_40

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_32

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x11

    if-eq p1, v0, :cond_22

    .line 195
    :try_start_12
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 199
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string p2, "corrupted stream detected"

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 188
    :cond_22
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string p1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_2a
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string p1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_32
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string p1, "externals must use constructed encoding (see X.690 8.18)"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_3a
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p0

    .line 182
    :cond_40
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DLBitStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p0
.end method

.method public blacklist readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method blacklist readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_f

    .line 247
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p0

    .line 250
    :cond_f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 253
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 255
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_26

    .line 257
    check-cast v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2d

    .line 261
    :cond_26
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    :goto_2d
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_14

    return-object v1
.end method

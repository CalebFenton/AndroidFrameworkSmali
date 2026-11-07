.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Sequence.java"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field blacklist elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 140
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 148
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 154
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 151
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2

    .line 162
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_c

    .line 168
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 165
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 176
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 177
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 182
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 179
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 3

    .line 186
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_9

    .line 187
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3

    .line 129
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 4

    if-eqz p0, :cond_63

    .line 82
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 87
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 90
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_44

    .line 92
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0

    .line 95
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 99
    :try_start_1d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 7

    .line 301
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 306
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 309
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 310
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v2, v0, :cond_13

    return v1

    :cond_13
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_32

    .line 317
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 318
    iget-object v4, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    if-eq v3, v4, :cond_2f

    .line 320
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist getConstructedBitStrings()[Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 5

    .line 392
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 393
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 396
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method blacklist getConstructedOctetStrings()[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 5

    .line 404
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 405
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 408
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public blacklist getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 202
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    mul-int/lit16 v1, v1, 0x101

    .line 293
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_5

    :cond_19
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 386
    new-instance v0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;
    .registers 3

    .line 225
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 227
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)V

    return-object v1
.end method

.method public blacklist size()I
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length p0, p0

    return p0
.end method

.method abstract blacklist toASN1BitString()Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.end method

.method abstract blacklist toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;
.end method

.method abstract blacklist toASN1OctetString()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.end method

.method abstract blacklist toASN1Set()Lcom/android/org/bouncycastle/asn1/ASN1Set;
.end method

.method public blacklist toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method blacklist toArrayInternal()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 335
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 344
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 363
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 366
    const-string p0, "[]"

    return-object p0

    .line 369
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 373
    :goto_14
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_29

    const/16 p0, 0x5d

    .line 380
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 378
    :cond_29
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method

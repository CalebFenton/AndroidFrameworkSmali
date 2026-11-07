.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Sequence.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;",
        "Lcom/android/internal/org/bouncycastle/util/Iterable<",
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 140
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 141
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 148
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 149
    if-eqz p1, :cond_e

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 155
    return-void

    .line 151
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 4
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 162
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 163
    if-eqz p1, :cond_c

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 169
    return-void

    .line 165
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elementVector\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 176
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 177
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 182
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 183
    return-void

    .line 179
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elements\' cannot be null, or contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 4
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "clone"    # Z

    .line 186
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 187
    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 188
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 129
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 82
    if-eqz p0, :cond_6b

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_7

    goto :goto_6b

    .line 87
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 90
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1a

    .line 92
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v1

    .line 94
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 95
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 99
    :try_start_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 101
    :catch_2b
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct sequence from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_6b
    :goto_6b
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 9
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 301
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 303
    return v1

    .line 306
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 309
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    .line 310
    .local v2, "count":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v3, v2, :cond_14

    .line 312
    return v1

    .line 315
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_33

    .line 317
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 318
    .local v4, "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 320
    .local v5, "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v4, v5, :cond_30

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 322
    return v1

    .line 315
    .end local v4    # "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 326
    .end local v3    # "i":I
    :cond_33
    const/4 v1, 0x1

    return v1
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getConstructedBitStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 5

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 393
    .local v0, "count":I
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 394
    .local v1, "bitStrings":[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 396
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 398
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method blacklist getConstructedOctetStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 5

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 405
    .local v0, "count":I
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 406
    .local v1, "octetStrings":[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 408
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 410
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public blacklist getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "index"    # I

    .line 271
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 202
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$2;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$2;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 288
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 290
    .local v1, "hc":I
    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 292
    mul-int/lit16 v1, v1, 0x101

    .line 293
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_5

    .line 296
    :cond_19
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SequenceParser;
    .registers 3

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 227
    .local v0, "count":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$3;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)V

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method abstract blacklist toASN1BitString()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.end method

.method abstract blacklist toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
.end method

.method abstract blacklist toASN1OctetString()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
.end method

.method abstract blacklist toASN1Set()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.end method

.method public blacklist toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 335
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 344
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 364
    .local v0, "count":I
    if-nez v0, :cond_9

    .line 366
    const-string v1, "[]"

    return-object v1

    .line 369
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    const/4 v2, 0x0

    .line 373
    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 374
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2a

    .line 376
    nop

    .line 380
    .end local v2    # "i":I
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 378
    .restart local v2    # "i":I
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method

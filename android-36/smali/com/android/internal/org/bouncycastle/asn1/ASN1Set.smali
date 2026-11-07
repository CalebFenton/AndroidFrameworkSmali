.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"

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
.field protected final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field protected blacklist sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 176
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 178
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "element"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 186
    if-eqz p1, :cond_12

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 192
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 193
    return-void

    .line 188
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 6
    .param p1, "elementVector"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .line 201
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 202
    if-eqz p1, :cond_29

    .line 208
    const/4 v0, 0x2

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lt v1, v0, :cond_16

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 211
    .local v1, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1a

    .line 215
    .end local v1    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 218
    .restart local v1    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_1a
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 219
    if-nez p2, :cond_24

    array-length v2, v1

    if-ge v2, v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_26

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_26
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 220
    return-void

    .line 204
    .end local v1    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elementVector\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 245
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 247
    if-nez p1, :cond_e

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    move-object v0, p2

    :goto_f
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 248
    return-void
.end method

.method protected constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 6
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    .line 228
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 234
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 235
    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x2

    if-eqz p2, :cond_16

    array-length v2, v0

    if-lt v2, v1, :cond_16

    .line 237
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 240
    :cond_16
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 241
    if-nez p2, :cond_20

    array-length v2, v0

    if-ge v2, v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move-object v1, p1

    :goto_21
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 242
    return-void

    .line 231
    .end local v0    # "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elements\' cannot be null, or contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "sortedElements"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 251
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 253
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 254
    return-void
.end method

.method private static blacklist getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 4
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 452
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 454
    :catch_b
    move-exception v0

    .line 456
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot encode object added to SET"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 167
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 120
    if-eqz p0, :cond_6b

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_7

    goto :goto_6b

    .line 125
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 127
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 128
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1a

    .line 130
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v1

    .line 132
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 133
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 137
    :try_start_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 139
    :catch_2b
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct set from byte[]: "

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

    .line 145
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

    .line 122
    :cond_6b
    :goto_6b
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method private static blacklist lessThanOrEqual([B[B)Z
    .registers 10
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 479
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xdf

    .line 480
    .local v1, "a0":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xdf

    .line 481
    .local v2, "b0":I
    const/4 v3, 0x1

    if-eq v1, v2, :cond_10

    .line 483
    if-ge v1, v2, :cond_f

    move v0, v3

    :cond_f
    return v0

    .line 486
    :cond_10
    array-length v4, p0

    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v3

    .line 487
    .local v4, "last":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_18
    if-ge v5, v4, :cond_2f

    .line 489
    aget-byte v6, p0, v5

    aget-byte v7, p1, v5

    if-eq v6, v7, :cond_2c

    .line 491
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    if-ge v6, v7, :cond_2b

    move v0, v3

    :cond_2b
    return v0

    .line 487
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 494
    .end local v5    # "i":I
    :cond_2f
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-gt v5, v6, :cond_3a

    move v0, v3

    :cond_3a
    return v0
.end method

.method private static blacklist sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 13
    .param p0, "t"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 499
    array-length v0, p0

    .line 500
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 502
    return-void

    .line 505
    :cond_5
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .local v1, "eh":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 506
    .local v2, "ei":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v3

    .local v3, "bh":[B
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    .line 508
    .local v4, "bi":[B
    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 510
    move-object v5, v2

    .local v5, "et":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move-object v2, v1

    move-object v1, v5

    .line 511
    move-object v6, v4

    .local v6, "bt":[B
    move-object v4, v3

    move-object v3, v6

    .line 514
    .end local v5    # "et":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v6    # "bt":[B
    :cond_1f
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_20
    if-ge v5, v0, :cond_61

    .line 516
    aget-object v6, p0, v5

    .line 517
    .local v6, "e2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v7

    .line 519
    .local v7, "b2":[B
    invoke-static {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 521
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 522
    move-object v1, v2

    move-object v3, v4

    .line 523
    move-object v2, v6

    move-object v4, v7

    .line 524
    goto :goto_5e

    .line 527
    :cond_37
    invoke-static {v3, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 529
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 530
    move-object v1, v6

    move-object v3, v7

    .line 531
    goto :goto_5e

    .line 534
    :cond_44
    add-int/lit8 v8, v5, -0x1

    .line 535
    .local v8, "j":I
    :goto_46
    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_5c

    .line 537
    add-int/lit8 v9, v8, -0x1

    aget-object v9, p0, v9

    .line 538
    .local v9, "e1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v10

    .line 540
    .local v10, "b1":[B
    invoke-static {v10, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 542
    goto :goto_5c

    .line 545
    :cond_59
    aput-object v9, p0, v8

    .line 546
    .end local v9    # "e1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v10    # "b1":[B
    goto :goto_46

    .line 548
    :cond_5c
    :goto_5c
    aput-object v6, p0, v8

    .line 514
    .end local v6    # "e2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v7    # "b2":[B
    .end local v8    # "j":I
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 551
    .end local v5    # "i":I
    :cond_61
    add-int/lit8 v5, v0, -0x2

    aput-object v1, p0, v5

    .line 552
    add-int/lit8 v5, v0, -0x1

    aput-object v2, p0, v5

    .line 553
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 11
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 385
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 387
    return v1

    .line 390
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 392
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    .line 393
    .local v2, "count":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v3, v2, :cond_14

    .line 395
    return v1

    .line 398
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    .line 399
    .local v3, "dis":Lcom/android/internal/org/bouncycastle/asn1/DERSet;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    .line 401
    .local v4, "dat":Lcom/android/internal/org/bouncycastle/asn1/DERSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v2, :cond_3f

    .line 403
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 404
    .local v6, "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v7, v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v7, v7, v5

    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 406
    .local v7, "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v6, v7, :cond_3c

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 408
    return v1

    .line 401
    .end local v6    # "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v7    # "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 412
    .end local v5    # "i":I
    :cond_3f
    const/4 v1, 0x1

    return v1
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "index"    # I

    .line 286
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 258
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$2;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$2;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 348
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 351
    .local v1, "hc":I
    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    .line 353
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 356
    :cond_17
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

    .line 445
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;
    .registers 3

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 308
    .local v0, "count":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$3;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;I)V

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method public blacklist toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_13

    .line 367
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 368
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 371
    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 380
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 423
    .local v0, "count":I
    if-nez v0, :cond_9

    .line 425
    const-string v1, "[]"

    return-object v1

    .line 428
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    const/4 v2, 0x0

    .line 432
    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 433
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2a

    .line 435
    nop

    .line 439
    .end local v2    # "i":I
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 437
    .restart local v2    # "i":I
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method

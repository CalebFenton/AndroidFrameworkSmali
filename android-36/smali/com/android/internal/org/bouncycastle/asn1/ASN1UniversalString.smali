.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1UniversalString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

.field private static final blacklist table:[C


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->table:[C

    return-void

    nop

    :array_16
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 81
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 82
    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    .line 83
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
    .registers 3
    .param p0, "contents"    # [B

    .line 144
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;-><init>([BZ)V

    return-object v0
.end method

.method private static blacklist encodeHexByte(Ljava/lang/StringBuffer;I)V
    .registers 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "i"    # I

    .line 149
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->table:[C

    ushr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->table:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    return-void
.end method

.method private static blacklist encodeHexDL(Ljava/lang/StringBuffer;I)V
    .registers 6
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "dl"    # I

    .line 155
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 157
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    .line 158
    return-void

    .line 161
    :cond_8
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 162
    .local v0, "stack":[B
    const/4 v1, 0x5

    .line 166
    .local v1, "pos":I
    :cond_c
    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 167
    ushr-int/lit8 p1, p1, 0x8

    .line 169
    if-nez p1, :cond_c

    .line 171
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 172
    .local v2, "count":I
    add-int/lit8 v1, v1, -0x1

    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 176
    :goto_1e
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-byte v1, v0, v1

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    .line 178
    array-length v1, v0

    if-lt v3, v1, :cond_29

    .line 179
    return-void

    .line 178
    :cond_29
    move v1, v3

    goto :goto_1e
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 37
    if-eqz p0, :cond_69

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v0, :cond_7

    goto :goto_69

    .line 41
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 44
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v1, :cond_1a

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    return-object v1

    .line 49
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_48

    .line 53
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    return-object v0

    .line 55
    :catch_2a
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 39
    :cond_69
    :goto_69
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    return-object v0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 127
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    if-nez v0, :cond_6

    .line 129
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    .line 134
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method final blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 123
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public final blacklist getOctets()[B
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    array-length v0, v0

    .line 88
    .local v0, "dl":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string v2, "#1C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexDL(Ljava/lang/StringBuffer;I)V

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_26

    .line 94
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    aget-byte v3, v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->encodeHexByte(Ljava/lang/StringBuffer;I)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 97
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

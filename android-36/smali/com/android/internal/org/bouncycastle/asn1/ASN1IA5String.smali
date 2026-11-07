.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1IA5String.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 82
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 83
    if-eqz p1, :cond_1d

    .line 87
    if-eqz p2, :cond_16

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->isIA5String(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 89
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'string\' contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_16
    :goto_16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    .line 93
    return-void

    .line 85
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 96
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 97
    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    .line 98
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
    .registers 3
    .param p0, "contents"    # [B

    .line 170
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 37
    if-eqz p0, :cond_69

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

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
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_1a

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    return-object v1

    .line 49
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_48

    .line 53
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
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

    const-string v3, "encoding error in getInstance: "

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

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public static blacklist isIA5String(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_15

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 159
    .local v2, "ch":C
    const/16 v3, 0x7f

    if-le v2, v3, :cond_12

    .line 161
    const/4 v1, 0x0

    return v1

    .line 156
    .end local v2    # "ch":C
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 165
    .end local v0    # "i":I
    :cond_15
    return v1
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 132
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    .line 139
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

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

    .line 127
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 128
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public final blacklist getOctets()[B
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

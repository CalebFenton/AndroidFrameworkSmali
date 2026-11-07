.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1IA5String;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1IA5String.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_16

    .line 87
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->isIA5String(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_16

    .line 89
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'string\' contains illegal characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_16
    :goto_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    return-void

    .line 85
    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_9

    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;
    .registers 3

    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;
    .registers 3

    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;
    .registers 4

    if-eqz p0, :cond_63

    .line 37
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 41
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_19

    .line 46
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    return-object v0

    .line 49
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 53
    :try_start_1d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 39
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    return-object p0
.end method

.method public static blacklist isIA5String(Ljava/lang/String;)Z
    .registers 5

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_15

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_15
    return v1
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 132
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    .line 139
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method final blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x16

    .line 127
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method final blacklist encodedLength(Z)I
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 107
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

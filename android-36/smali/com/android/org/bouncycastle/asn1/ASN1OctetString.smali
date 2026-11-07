.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1OctetString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# static fields
.field static final blacklist EMPTY_OCTETS:[B

.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field blacklist string:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    const/4 v0, 0x0

    .line 168
    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 179
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_8

    .line 184
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-void

    .line 182
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 262
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 129
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 4

    if-eqz p0, :cond_63

    .line 140
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 145
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 147
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 148
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_44

    .line 150
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0

    .line 153
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 157
    :try_start_1d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct OCTET STRING from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
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

    .line 142
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 230
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 237
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 242
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOctetStream()Ljava/io/InputStream;
    .registers 2

    .line 194
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public blacklist getOctets()[B
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object p0
.end method

.method public blacklist getOctetsLength()I
    .registers 1

    .line 219
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 224
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public blacklist parser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 247
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 252
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final blacklist FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field public static final blacklist TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist value:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method private constructor blacklist <init>(B)V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 116
    iput-byte p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:B

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 3

    .line 168
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    .line 173
    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    if-eqz p0, :cond_12

    .line 178
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    return-object v0

    .line 176
    :cond_12
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    .line 177
    :cond_15
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    .line 170
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 3

    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 4

    if-eqz p0, :cond_51

    .line 47
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_7

    goto :goto_51

    .line 52
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_32

    .line 54
    check-cast p0, [B

    .line 57
    :try_start_d
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_32
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

    .line 49
    :cond_51
    :goto_51
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public static blacklist getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 1

    if-eqz p0, :cond_5

    .line 75
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 4

    .line 141
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 146
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 148
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 136
    iget-byte p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:B

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZIB)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    const/4 p0, 0x1

    .line 131
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    return p0
.end method

.method public blacklist isTrue()Z
    .registers 1

    .line 121
    iget-byte p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 163
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "TRUE"

    return-object p0

    :cond_9
    const-string p0, "FALSE"

    return-object p0
.end method

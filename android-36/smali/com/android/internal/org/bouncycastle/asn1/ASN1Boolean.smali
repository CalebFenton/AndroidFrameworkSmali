.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final blacklist FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

.field private static final blacklist FALSE_VALUE:B = 0x0t

.field public static final blacklist TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

.field private static final blacklist TRUE_VALUE:B = -0x1t

.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist value:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method private constructor blacklist <init>(B)V
    .registers 2
    .param p1, "value"    # B

    .line 115
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 116
    iput-byte p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    .line 117
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 3
    .param p0, "contents"    # [B

    .line 168
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 173
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 174
    .local v0, "b":B
    packed-switch v0, :pswitch_data_1e

    .line 178
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    return-object v1

    .line 176
    :pswitch_10
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v1

    .line 177
    :pswitch_13
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v1

    .line 170
    .end local v0    # "b":B
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "value"    # I

    .line 85
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 111
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .line 47
    if-eqz p0, :cond_56

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_7

    goto :goto_56

    .line 52
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_35

    .line 54
    move-object v0, p0

    check-cast v0, [B

    .line 57
    .local v0, "enc":[B
    :try_start_e
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_17

    return-object v1

    .line 59
    :catch_17
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct boolean from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v0    # "enc":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_35
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

    .line 49
    :cond_56
    :goto_56
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public static blacklist getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "value"    # Z

    .line 75
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0
.end method

.method public static blacklist getInstance([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "octets"    # [B

    .line 95
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_a

    :cond_8
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_a
    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 141
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 143
    return v1

    .line 146
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    .line 148
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v3

    if-ne v2, v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZIB)V

    .line 137
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 131
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public blacklist isTrue()Z
    .registers 2

    .line 121
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_b
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "TRUE"

    goto :goto_b

    :cond_9
    const-string v0, "FALSE"

    :goto_b
    return-object v0
.end method

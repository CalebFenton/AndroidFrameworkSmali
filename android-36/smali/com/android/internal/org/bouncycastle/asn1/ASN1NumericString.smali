.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1NumericString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 93
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 94
    if-eqz p2, :cond_15

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_15

    .line 96
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_15
    :goto_15
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    .line 100
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z

    .line 103
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 104
    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    .line 105
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
    .registers 3
    .param p0, "contents"    # [B

    .line 213
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERNumericString;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 79
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 41
    if-eqz p0, :cond_69

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    if-eqz v0, :cond_7

    goto :goto_69

    .line 45
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 48
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    if-eqz v1, :cond_1a

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    return-object v1

    .line 53
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_48

    .line 57
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    return-object v0

    .line 59
    :catch_2a
    move-exception v0

    .line 61
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

    .line 65
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

    .line 43
    :cond_69
    :goto_69
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    return-object v0
.end method

.method public static blacklist isNumericString(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_23

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 166
    .local v2, "ch":C
    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_12

    .line 168
    return v4

    .line 171
    :cond_12
    const/16 v3, 0x30

    if-gt v3, v2, :cond_1a

    const/16 v3, 0x39

    if-le v2, v3, :cond_1f

    :cond_1a
    const/16 v3, 0x20

    if-ne v2, v3, :cond_22

    .line 173
    nop

    .line 162
    .end local v2    # "ch":C
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 176
    .restart local v2    # "ch":C
    :cond_22
    return v4

    .line 179
    .end local v0    # "i":I
    .end local v2    # "ch":C
    :cond_23
    return v1
.end method

.method static blacklist isNumericString([B)Z
    .registers 3
    .param p0, "contents"    # [B

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    .line 186
    aget-byte v1, p0, v0

    sparse-switch v1, :sswitch_data_12

    .line 201
    const/4 v1, 0x0

    return v1

    .line 199
    :sswitch_b
    nop

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_b
        0x30 -> :sswitch_b
        0x31 -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x34 -> :sswitch_b
        0x35 -> :sswitch_b
        0x36 -> :sswitch_b
        0x37 -> :sswitch_b
        0x38 -> :sswitch_b
        0x39 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 144
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    if-nez v0, :cond_6

    .line 146
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    .line 151
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

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

    .line 134
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 135
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public final blacklist getOctets()[B
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

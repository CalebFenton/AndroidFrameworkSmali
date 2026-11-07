.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1PrintableString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 110
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_14

    .line 111
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_14

    .line 113
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string contains illegal characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 120
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_9

    .line 121
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;
    .registers 3

    .line 229
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist isPrintableString(Ljava/lang/String;)Z
    .registers 6

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_47

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_12

    return v4

    :cond_12
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1b

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1b

    goto :goto_44

    :cond_1b
    const/16 v3, 0x41

    if-gt v3, v2, :cond_24

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_24

    goto :goto_44

    :cond_24
    const/16 v3, 0x30

    if-gt v3, v2, :cond_2d

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2d

    goto :goto_44

    :cond_2d
    const/16 v3, 0x20

    if-eq v2, v3, :cond_44

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_44

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_44

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_44

    packed-switch v2, :pswitch_data_48

    packed-switch v2, :pswitch_data_52

    return v4

    :cond_44
    :goto_44
    :pswitch_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_47
    return v1

    :pswitch_data_48
    .packed-switch 0x27
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x2b
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 151
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 156
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;

    .line 158
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method final blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x13

    .line 146
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

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

    .line 141
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

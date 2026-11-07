.class public abstract Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source "X509NameEntryConverter.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.end method

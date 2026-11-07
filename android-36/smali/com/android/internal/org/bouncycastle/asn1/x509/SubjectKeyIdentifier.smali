.class public Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private blacklist keyidentifier:[B


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .param p1, "keyid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "keyid"    # [B

    .line 52
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 54
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 47
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 27
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_8

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    return-object v0

    .line 37
    :cond_8
    if-eqz p0, :cond_14

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 42
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getKeyIdentifier()[B
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

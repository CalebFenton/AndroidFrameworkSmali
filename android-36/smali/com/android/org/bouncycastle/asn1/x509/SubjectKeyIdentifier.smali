.class public Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private blacklist keyidentifier:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-void
.end method


# virtual methods
.method public blacklist getKeyIdentifier()[B
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

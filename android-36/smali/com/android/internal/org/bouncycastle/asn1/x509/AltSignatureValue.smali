.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AltSignatureValue.java"


# instance fields
.field private final blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 2
    .param p1, "signature"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "signature"    # [B

    .line 78
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 80
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;

    if-eqz v0, :cond_8

    .line 52
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;

    return-object v0

    .line 54
    :cond_8
    if-eqz p0, :cond_14

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    return-object v0

    .line 59
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

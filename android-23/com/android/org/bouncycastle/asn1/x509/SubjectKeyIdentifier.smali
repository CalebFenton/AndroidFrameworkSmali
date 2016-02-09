.class public Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "keyid"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    #@9
    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "keyid"    # [B

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    #@5
    .line 48
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@13
    return-object v0

    #@14
    .line 39
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@7
    return-object v0
.end method

.class final Lorg/apache/harmony/security/x509/PolicyInformation$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PolicyInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PolicyInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 88
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyInformation$1;->setOptional(I)V

    #@7
    .line 86
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 92
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 93
    .local v0, "values":[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/PolicyInformation;

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, [I

    #@b
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v2, v1}, Lorg/apache/harmony/security/x509/PolicyInformation;-><init>(Ljava/lang/String;)V

    #@12
    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 97
    check-cast v0, Lorg/apache/harmony/security/x509/PolicyInformation;

    #@3
    .line 98
    .local v0, "pi":Lorg/apache/harmony/security/x509/PolicyInformation;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PolicyInformation;->-get0(Lorg/apache/harmony/security/x509/PolicyInformation;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, p2, v2

    #@e
    .line 96
    return-void
.end method

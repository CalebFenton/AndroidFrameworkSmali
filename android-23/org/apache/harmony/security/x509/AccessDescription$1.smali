.class final Lorg/apache/harmony/security/x509/AccessDescription$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AccessDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AccessDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 80
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 83
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 84
    .local v0, "values":[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/AccessDescription;

    #@6
    .line 85
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, [I

    #@b
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 86
    const/4 v1, 0x1

    #@10
    aget-object v1, v0, v1

    #@12
    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    #@14
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@17
    move-result-object v4

    #@18
    .line 84
    const/4 v5, 0x0

    #@19
    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/harmony/security/x509/AccessDescription;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[BLorg/apache/harmony/security/x509/AccessDescription;)V

    #@1c
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
    .line 90
    check-cast v0, Lorg/apache/harmony/security/x509/AccessDescription;

    #@3
    .line 91
    .local v0, "ad":Lorg/apache/harmony/security/x509/AccessDescription;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AccessDescription;->-get1(Lorg/apache/harmony/security/x509/AccessDescription;)Ljava/lang/String;

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
    .line 92
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AccessDescription;->-get0(Lorg/apache/harmony/security/x509/AccessDescription;)Lorg/apache/harmony/security/x509/GeneralName;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 89
    return-void
.end method

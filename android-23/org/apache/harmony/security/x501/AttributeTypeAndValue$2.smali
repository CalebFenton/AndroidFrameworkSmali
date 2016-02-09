.class final Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
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
    .line 408
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 409
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 413
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, [I

    #@b
    const/4 v2, 0x1

    #@c
    aget-object v2, v0, v2

    #@e
    check-cast v2, Lorg/apache/harmony/security/x501/AttributeValue;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v3, v1, v2, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)V

    #@14
    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 417
    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@3
    .line 418
    .local v0, "atav":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->-get0(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, p2, v2

    #@e
    .line 419
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->-get1(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 416
    return-void
.end method

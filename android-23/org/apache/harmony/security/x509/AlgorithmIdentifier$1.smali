.class final Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AlgorithmIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
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
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 153
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;->setOptional(I)V

    #@7
    .line 151
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 157
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 158
    .local v0, "values":[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@6
    .line 159
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, [I

    #@b
    .line 158
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 159
    const/4 v1, 0x1

    #@10
    aget-object v1, v0, v1

    #@12
    check-cast v1, [B

    #@14
    .line 158
    invoke-direct {v2, v3, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    #@17
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
    .line 164
    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@3
    .line 166
    .local v0, "aID":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

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
    .line 167
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 162
    return-void
.end method

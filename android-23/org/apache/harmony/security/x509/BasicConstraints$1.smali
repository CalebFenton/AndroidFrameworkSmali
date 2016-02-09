.class final Lorg/apache/harmony/security/x509/BasicConstraints$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "BasicConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/BasicConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 93
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints$1;->setDefault(Ljava/lang/Object;I)V

    #@9
    .line 94
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/BasicConstraints$1;->setOptional(I)V

    #@d
    .line 91
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    move-object v0, p1

    #@3
    .line 102
    check-cast v0, [Ljava/lang/Object;

    #@5
    .line 103
    .local v0, "array":[Ljava/lang/Object;
    aget-object v1, v0, v2

    #@7
    aput-object v1, p2, v2

    #@9
    .line 104
    aget-object v1, v0, v3

    #@b
    check-cast v1, Ljava/math/BigInteger;

    #@d
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    #@10
    move-result-object v1

    #@11
    aput-object v1, p2, v3

    #@13
    .line 101
    return-void
.end method

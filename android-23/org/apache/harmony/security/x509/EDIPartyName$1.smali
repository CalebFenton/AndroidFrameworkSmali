.class final Lorg/apache/harmony/security/x509/EDIPartyName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EDIPartyName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/EDIPartyName;
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
    .line 81
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 87
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/EDIPartyName$1;->setOptional(I)V

    #@7
    .line 85
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 91
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    .line 92
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/EDIPartyName;

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v1, v0, v1

    #@9
    check-cast v1, Ljava/lang/String;

    #@b
    const/4 v2, 0x1

    #@c
    aget-object v2, v0, v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    .line 93
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@13
    move-result-object v4

    #@14
    .line 92
    const/4 v5, 0x0

    #@15
    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/harmony/security/x509/EDIPartyName;-><init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/harmony/security/x509/EDIPartyName;)V

    #@18
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
    .line 97
    check-cast v0, Lorg/apache/harmony/security/x509/EDIPartyName;

    #@3
    .line 98
    .local v0, "epn":Lorg/apache/harmony/security/x509/EDIPartyName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/EDIPartyName;->-get0(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 99
    invoke-static {v0}, Lorg/apache/harmony/security/x509/EDIPartyName;->-get1(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, p2, v2

    #@11
    .line 96
    return-void
.end method

.class final Lorg/apache/harmony/security/x509/GeneralSubtree$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "GeneralSubtree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralSubtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 3
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@5
    .line 104
    new-array v0, v2, [B

    #@7
    aput-byte v1, v0, v1

    #@9
    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setDefault(Ljava/lang/Object;I)V

    #@c
    .line 105
    const/4 v0, 0x2

    #@d
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setOptional(I)V

    #@10
    .line 102
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 109
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@3
    check-cast v1, [Ljava/lang/Object;

    #@5
    .line 110
    .local v1, "values":[Ljava/lang/Object;
    const/4 v0, -0x1

    #@6
    .line 111
    .local v0, "maximum":I
    aget-object v2, v1, v3

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 112
    aget-object v2, v1, v3

    #@c
    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    .line 114
    :cond_0
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralSubtree;

    #@12
    const/4 v2, 0x0

    #@13
    aget-object v2, v1, v2

    #@15
    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    #@17
    .line 115
    const/4 v4, 0x1

    #@18
    aget-object v4, v1, v4

    #@1a
    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    #@1d
    move-result v4

    #@1e
    .line 114
    invoke-direct {v3, v2, v4, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;-><init>(Lorg/apache/harmony/security/x509/GeneralName;II)V

    #@21
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
    .line 120
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    #@3
    .line 121
    .local v0, "gs":Lorg/apache/harmony/security/x509/GeneralSubtree;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->-get0(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralName;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, p2, v2

    #@a
    .line 122
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->-get2(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, p2, v2

    #@15
    .line 123
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->-get1(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    #@18
    move-result v1

    #@19
    const/4 v2, -0x1

    #@1a
    if-le v1, v2, :cond_0

    #@1c
    .line 124
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->-get1(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    #@1f
    move-result v1

    #@20
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x2

    #@25
    aput-object v1, p2, v2

    #@27
    .line 119
    :cond_0
    return-void
.end method

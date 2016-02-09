.class final Lorg/apache/harmony/security/x509/Extensions$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 390
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 392
    new-instance v1, Lorg/apache/harmony/security/x509/Extensions;

    #@2
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    invoke-direct {v1, v0}, Lorg/apache/harmony/security/x509/Extensions;-><init>(Ljava/util/List;)V

    #@9
    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 396
    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    #@3
    .line 397
    .local v0, "extensions":Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->-get0(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    new-instance v1, Ljava/util/ArrayList;

    #@b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@e
    :goto_0
    return-object v1

    #@f
    :cond_0
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->-get0(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

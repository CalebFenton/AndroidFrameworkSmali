.class final Lorg/apache/harmony/security/x501/Name$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/Name;
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
    .line 238
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 241
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    #@2
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name;)V

    #@a
    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 245
    check-cast p1, Lorg/apache/harmony/security/x501/Name;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x501/Name;->-get0(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

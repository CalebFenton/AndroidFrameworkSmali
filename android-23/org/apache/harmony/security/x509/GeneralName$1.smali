.class final Lorg/apache/harmony/security/x509/GeneralName$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
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
    .line 675
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 678
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

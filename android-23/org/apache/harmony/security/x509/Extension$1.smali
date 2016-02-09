.class final Lorg/apache/harmony/security/x509/Extension$1;
.super Lorg/apache/harmony/security/asn1/ASN1OctetString;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 370
    return-object v0
.end method

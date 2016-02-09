.class final Lorg/apache/harmony/security/x509/CertificateIssuer$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificateIssuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CertificateIssuer;
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
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 77
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@2
    check-cast v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@9
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    #@f
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    aput-object p1, p2, v0

    #@3
    .line 81
    return-void
.end method

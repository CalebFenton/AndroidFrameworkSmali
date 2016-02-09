.class public final Lorg/apache/harmony/security/x509/CertificateIssuer;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificateIssuer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/CertificateIssuer$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private issuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 75
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer$1;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    sget-object v2, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@d
    sput-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@f
    .line 40
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoding"    # [B

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "Certificate Issuer: "

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 60
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 69
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const/16 v2, 0xa

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 58
    return-void

    #@20
    .line 63
    :catch_0
    move-exception v0

    #@21
    .line 65
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Unparseable (incorrect!) extension value:\n"

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 66
    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;)V

    #@2a
    goto :goto_0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 53
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getEncoded()[B

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    #@10
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@12
    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@14
    return-object v0
.end method

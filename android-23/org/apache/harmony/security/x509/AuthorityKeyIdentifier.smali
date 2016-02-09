.class public final Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "AuthorityKeyIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

.field private final authorityCertSerialNumber:Ljava/math/BigInteger;

.field private final keyIdentifier:[B


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Lorg/apache/harmony/security/x509/GeneralNames;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 126
    new-instance v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;

    #@5
    .line 127
    const/4 v1, 0x3

    #@6
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@8
    .line 128
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@a
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@11
    aput-object v2, v1, v4

    #@13
    .line 129
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@15
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@17
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1a
    aput-object v2, v1, v5

    #@1c
    .line 130
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@1e
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@25
    aput-object v2, v1, v6

    #@27
    .line 126
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@2a
    sput-object v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2c
    .line 54
    return-void
.end method

.method public constructor <init>([BLorg/apache/harmony/security/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "keyIdentifier"    # [B
    .param p2, "authorityCertIssuer"    # Lorg/apache/harmony/security/x509/GeneralNames;
    .param p3, "authorityCertSerialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    #@5
    .line 63
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@7
    .line 64
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    #@9
    .line 61
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    .locals 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    sget-object v1, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    #@8
    .line 69
    .local v0, "aki":Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->encoding:[B

    #@a
    .line 70
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "AuthorityKeyIdentifier [\n"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "  keyIdentifier:\n"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "    "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "  authorityCertIssuer: [\n"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "    "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@5c
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    const-string/jumbo v1, "  ]\n"

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 119
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    #@68
    if-eqz v0, :cond_2

    #@6a
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    const-string/jumbo v1, "  authorityCertSerialNumber: "

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    #@76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    const/16 v1, 0xa

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7f
    .line 123
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    const-string/jumbo v1, "]\n"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 108
    return-void
.end method

.method public getAuthorityCertIssuer()Lorg/apache/harmony/security/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 103
    sget-object v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->encoding:[B

    #@c
    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->encoding:[B

    #@e
    return-object v0
.end method

.method public getKeyIdentifier()[B
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    #@2
    return-object v0
.end method

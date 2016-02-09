.class public final Lorg/apache/harmony/security/x509/KeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "KeyUsage.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static final USAGES:[Ljava/lang/String;


# instance fields
.field private final keyUsage:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    .line 49
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 50
    const-string/jumbo v1, "digitalSignature"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 51
    const-string/jumbo v1, "nonRepudiation"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 52
    const-string/jumbo v1, "keyEncipherment"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 53
    const-string/jumbo v1, "dataEncipherment"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 54
    const-string/jumbo v1, "keyAgreement"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 55
    const-string/jumbo v1, "keyCertSign"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 56
    const-string/jumbo v1, "cRLSign"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 57
    const-string/jumbo v1, "encipherOnly"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 58
    const-string/jumbo v1, "decipherOnly"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 49
    sput-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->USAGES:[Ljava/lang/String;

    #@3d
    .line 96
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;

    #@3f
    invoke-direct {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    #@42
    sput-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@44
    .line 46
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 69
    sget-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Z

    #@b
    iput-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    #@d
    .line 67
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "KeyUsage [\n"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 85
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    #@d
    array-length v1, v1

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 86
    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    #@12
    aget-boolean v1, v1, v0

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "  "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    sget-object v2, Lorg/apache/harmony/security/x509/KeyUsage;->USAGES:[Ljava/lang/String;

    #@23
    aget-object v2, v2, v0

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const/16 v2, 0xa

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 90
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "]\n"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 83
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 78
    sget-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->encoding:[B

    #@e
    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->encoding:[B

    #@10
    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    #@2
    return-object v0
.end method

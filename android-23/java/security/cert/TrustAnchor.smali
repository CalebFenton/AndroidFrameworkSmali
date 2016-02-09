.class public Ljava/security/cert/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field private final caName:Ljava/lang/String;

.field private final caPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private final caPublicKey:Ljava/security/PublicKey;

.field private final nameConstraints:[B

.field private final trustedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;[B)V
    .locals 4
    .param p1, "caName"    # Ljava/lang/String;
    .param p2, "caPublicKey"    # Ljava/security/PublicKey;
    .param p3, "nameConstraints"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 104
    if-nez p1, :cond_0

    #@7
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "caName == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 107
    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@12
    .line 108
    if-nez p2, :cond_1

    #@14
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v1, "caPublicKey == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 111
    :cond_1
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    #@1f
    .line 113
    if-eqz p3, :cond_2

    #@21
    .line 114
    array-length v0, p3

    #@22
    new-array v0, v0, [B

    #@24
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@26
    .line 116
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@28
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@2a
    array-length v1, v1

    #@2b
    .line 115
    invoke-static {p3, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 117
    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    #@31
    .line 122
    :goto_0
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@33
    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v1, "caName.isEmpty()"

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 119
    :cond_2
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@44
    goto :goto_0

    #@45
    .line 128
    :cond_3
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    #@47
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@49
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@4c
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@4e
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 4
    .param p1, "trustedCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "nameConstraints"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 65
    if-nez p1, :cond_0

    #@7
    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "trustedCert == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 68
    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@12
    .line 70
    if-eqz p2, :cond_1

    #@14
    .line 71
    array-length v0, p2

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@19
    .line 73
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@1b
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@1d
    array-length v1, v1

    #@1e
    .line 72
    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 74
    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    #@24
    .line 78
    :goto_0
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@26
    .line 79
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@28
    .line 80
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    #@2a
    .line 64
    return-void

    #@2b
    .line 76
    :cond_1
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@2d
    goto :goto_0
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V
    .locals 4
    .param p1, "caPrincipal"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "caPublicKey"    # Ljava/security/PublicKey;
    .param p3, "nameConstraints"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 151
    if-nez p1, :cond_0

    #@7
    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "caPrincipal == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 154
    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@12
    .line 155
    if-nez p2, :cond_1

    #@14
    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v1, "caPublicKey == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 158
    :cond_1
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    #@1f
    .line 160
    if-eqz p3, :cond_2

    #@21
    .line 161
    array-length v0, p3

    #@22
    new-array v0, v0, [B

    #@24
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@26
    .line 163
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@28
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@2a
    array-length v1, v1

    #@2b
    .line 162
    invoke-static {p3, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 164
    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    #@31
    .line 169
    :goto_0
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@33
    .line 170
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@39
    .line 150
    return-void

    #@3a
    .line 166
    :cond_2
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@3c
    goto :goto_0
.end method

.method private processNameConstraints()V
    .locals 3

    #@0
    .prologue
    .line 273
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2
    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@4
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 270
    return-void

    #@8
    .line 274
    :catch_0
    move-exception v0

    #@9
    .line 275
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
.end method


# virtual methods
.method public final getCA()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public final getCAName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getCAPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public final getNameConstraints()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 179
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 180
    return-object v2

    #@7
    .line 182
    :cond_0
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 183
    .local v0, "ret":[B
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@e
    .line 184
    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@10
    array-length v2, v2

    #@11
    .line 183
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 185
    return-object v0
.end method

.method public final getTrustedCert()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "TrustAnchor: [\n"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 239
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 240
    const-string/jumbo v1, "Trusted CA certificate: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 241
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 242
    const-string/jumbo v1, "\n"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 244
    :cond_0
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 245
    const-string/jumbo v1, "Trusted CA Name: "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 246
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 247
    const-string/jumbo v1, "\n"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 249
    :cond_1
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 250
    const-string/jumbo v1, "Trusted CA Public Key: "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 251
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    .line 252
    const-string/jumbo v1, "\n"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 255
    :cond_2
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 256
    const-string/jumbo v1, "Name Constraints:\n"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 257
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    #@53
    const-string/jumbo v2, "    "

    #@56
    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 259
    :cond_3
    const-string/jumbo v1, "\n]"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    return-object v1
.end method

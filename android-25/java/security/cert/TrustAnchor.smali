.class public Ljava/security/cert/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field private final caName:Ljava/lang/String;

.field private final caPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private nc:Lsun/security/x509/NameConstraintsExtension;

.field private ncBytes:[B

.field private final pubKey:Ljava/security/PublicKey;

.field private final trustedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;[B)V
    .locals 2
    .param p1, "caName"    # Ljava/lang/String;
    .param p2, "pubKey"    # Ljava/security/PublicKey;
    .param p3, "nameConstraints"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 208
    if-nez p2, :cond_0

    #@6
    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "the pubKey parameter must be non-null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 211
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "the caName parameter must be non-null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 214
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "the caName parameter must be a non-empty String"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 218
    :cond_2
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    #@2b
    invoke-direct {v0, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@2e
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@30
    .line 219
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    #@32
    .line 220
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@34
    .line 221
    iput-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@36
    .line 222
    invoke-direct {p0, p3}, Ljava/security/cert/TrustAnchor;->setNameConstraints([B)V

    #@39
    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 2
    .param p1, "trustedCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "nameConstraints"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 126
    if-nez p1, :cond_0

    #@6
    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "the trustedCert parameter must be non-null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 129
    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@11
    .line 130
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    #@13
    .line 131
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@15
    .line 132
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@17
    .line 133
    invoke-direct {p0, p2}, Ljava/security/cert/TrustAnchor;->setNameConstraints([B)V

    #@1a
    .line 124
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V
    .locals 1
    .param p1, "caPrincipal"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "pubKey"    # Ljava/security/PublicKey;
    .param p3, "nameConstraints"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 165
    if-eqz p1, :cond_0

    #@6
    if-nez p2, :cond_1

    #@8
    .line 166
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 168
    :cond_1
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@10
    .line 169
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@12
    .line 170
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@18
    .line 171
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    #@1a
    .line 172
    invoke-direct {p0, p3}, Ljava/security/cert/TrustAnchor;->setNameConstraints([B)V

    #@1d
    .line 164
    return-void
.end method

.method private setNameConstraints([B)V
    .locals 4
    .param p1, "bytes"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 274
    if-nez p1, :cond_0

    #@3
    .line 275
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    #@5
    .line 276
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@7
    .line 273
    :goto_0
    return-void

    #@8
    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [B

    #@e
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    #@10
    .line 281
    :try_start_0
    new-instance v2, Lsun/security/x509/NameConstraintsExtension;

    #@12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@14
    invoke-direct {v2, v3, p1}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@17
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 282
    :catch_0
    move-exception v1

    #@1b
    .line 284
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    .line 285
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@27
    .line 286
    throw v0
.end method


# virtual methods
.method public final getCA()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public final getCAName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getCAPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public final getNameConstraints()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    goto :goto_0
.end method

.method public final getTrustedCert()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 322
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 323
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "  Trusted CA Public Key: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    #@1d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "\n"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "  Trusted CA Issuer Name: "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 326
    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    #@41
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 326
    const-string/jumbo v2, "\n"

    #@4c
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    .line 330
    :goto_0
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@59
    if-eqz v1, :cond_0

    #@5b
    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "  Name Constraints: "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@69
    invoke-virtual {v2}, Lsun/security/x509/NameConstraintsExtension;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    const-string/jumbo v2, "\n"

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7f
    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    return-object v1

    #@84
    .line 328
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v2, "  Trusted CA cert: "

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    #@92
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    const-string/jumbo v2, "\n"

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a8
    goto :goto_0
.end method

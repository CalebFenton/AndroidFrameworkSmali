.class public Ljava/security/cert/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field private final greylist-max-o caName:Ljava/lang/String;

.field private final greylist-max-o caPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private greylist-max-o nc:Lsun/security/x509/NameConstraintsExtension;

.field private greylist-max-o ncBytes:[B

.field private final greylist-max-o pubKey:Ljava/security/PublicKey;

.field private final greylist-max-o trustedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/security/PublicKey;[B)V
    .registers 6
    .param p1, "caName"    # Ljava/lang/String;
    .param p2, "pubKey"    # Ljava/security/PublicKey;
    .param p3, "nameConstraints"    # [B

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    if-eqz p2, :cond_2f

    .line 210
    if-eqz p1, :cond_27

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 217
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 218
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    .line 219
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    .line 221
    invoke-direct {p0, p3}, Ljava/security/cert/TrustAnchor;->setNameConstraints([B)V

    .line 222
    return-void

    .line 214
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the caName parameter must be a non-empty String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the caName parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the pubKey parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 5
    .param p1, "trustedCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "nameConstraints"    # [B

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-eqz p1, :cond_12

    .line 128
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    .line 130
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 132
    invoke-direct {p0, p2}, Ljava/security/cert/TrustAnchor;->setNameConstraints([B)V

    .line 133
    return-void

    .line 126
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the trustedCert parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V
    .registers 5
    .param p1, "caPrincipal"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "pubKey"    # Ljava/security/PublicKey;
    .param p3, "nameConstraints"    # [B

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    .line 168
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 169
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    .line 171
    invoke-direct {p0, p3}, Ljava/security/cert/TrustAnchor;->setNameConstraints([B)V

    .line 172
    return-void

    .line 165
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o setNameConstraints([B)V
    .registers 5
    .param p1, "bytes"    # [B

    .line 273
    if-nez p1, :cond_8

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    .line 275
    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;

    goto :goto_1a

    .line 277
    :cond_8
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    .line 280
    :try_start_10
    new-instance v0, Lsun/security/x509/NameConstraintsExtension;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 286
    nop

    .line 288
    :goto_1a
    return-void

    .line 281
    :catch_1b
    move-exception v0

    .line 282
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 283
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 285
    throw v1
.end method


# virtual methods
.method public final whitelist test-api getCA()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 243
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public final whitelist test-api getCAName()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getCAPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 266
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final whitelist test-api getNameConstraints()[B
    .registers 2

    .line 311
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->ncBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method public final whitelist test-api getTrustedCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 231
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    const-string v2, "\n"

    if-eqz v1, :cond_51

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Trusted CA Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/TrustAnchor;->pubKey:Ljava/security/PublicKey;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Trusted CA Issuer Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 325
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 327
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Trusted CA cert: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_71
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v1, :cond_95

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Name Constraints: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/TrustAnchor;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v3}, Lsun/security/x509/NameConstraintsExtension;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

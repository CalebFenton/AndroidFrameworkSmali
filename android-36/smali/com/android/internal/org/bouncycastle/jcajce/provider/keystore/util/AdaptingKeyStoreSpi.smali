.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AdaptingKeyStoreSpi.java"


# static fields
.field public static final blacklist COMPAT_OVERRIDE:Ljava/lang/String; = "keystore.type.compat"


# instance fields
.field private final blacklist jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

.field private blacklist keyStoreSpi:Ljava/security/KeyStoreSpi;

.field private final blacklist primaryStore:Ljava/security/KeyStoreSpi;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Ljava/security/KeyStoreSpi;)V
    .registers 4
    .param p1, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "primaryStore"    # Ljava/security/KeyStoreSpi;

    .line 38
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    .line 40
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    .line 41
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 144
    if-nez p1, :cond_d

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_4b

    .line 152
    :cond_d
    const-string v0, "keystore.type.compat"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    if-nez v0, :cond_1c

    goto :goto_21

    .line 173
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    goto :goto_46

    .line 154
    :cond_21
    :goto_21
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 156
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 159
    :cond_2d
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineProbe(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->jksStore:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    goto :goto_43

    .line 166
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->primaryStore:Ljava/security/KeyStoreSpi;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    .line 169
    :goto_43
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 176
    :goto_46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 178
    :goto_4b
    return-void
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "parameter"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 184
    return-void
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    if-eqz v0, :cond_f

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineProbe(Ljava/io/InputStream;)Z

    move-result v0

    return v0

    .line 51
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 91
    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 79
    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 85
    return-void
.end method

.method public whitelist test-api engineSize()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 133
    return-void
.end method

.method public whitelist test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "parameter"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/AdaptingKeyStoreSpi;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 139
    return-void
.end method

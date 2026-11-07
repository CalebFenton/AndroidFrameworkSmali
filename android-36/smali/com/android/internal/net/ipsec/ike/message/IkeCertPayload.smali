.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeCertPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload$CertificateEncoding;
    }
.end annotation


# static fields
.field public static final blacklist CERTIFICATE_ENCODING_CRL:I = 0x7

.field public static final blacklist CERTIFICATE_ENCODING_X509_CERT_HASH_URL:I = 0xc

.field public static final blacklist CERTIFICATE_ENCODING_X509_CERT_SIGNATURE:I = 0x4

.field private static final blacklist CERT_AUTH_TYPE_RSA:Ljava/lang/String; = "RSA"

.field protected static final blacklist CERT_ENCODING_LEN:I = 0x1

.field private static final blacklist CERT_PATH_ALGO_PKIX:Ljava/lang/String; = "PKIX"

.field private static final blacklist KEY_STORE_TYPE_PKCS12:Ljava/lang/String; = "PKCS12"


# instance fields
.field public final blacklist certEncodingType:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "encodingType"    # I

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;-><init>(ZI)V

    .line 77
    return-void
.end method

.method protected constructor blacklist <init>(ZI)V
    .registers 4
    .param p1, "critical"    # Z
    .param p2, "encodingType"    # I

    .line 80
    const/16 v0, 0x25

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 81
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;->certEncodingType:I

    .line 82
    return-void
.end method

.method protected static blacklist getIkeCertPayload(Z[B)Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;
    .registers 7
    .param p0, "critical"    # Z
    .param p1, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 89
    .local v1, "certEncodingType":I
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    .line 90
    .local v2, "certData":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 91
    sparse-switch v1, :sswitch_data_36

    .line 102
    new-instance v3, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v4, "Unrecognized certificate encoding type."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :sswitch_1f
    new-instance v3, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v4, "CERTIFICATE_ENCODING_X509_CERT_HASH_URL decoding is unsupported"

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :sswitch_27
    new-instance v3, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v4, "CERTIFICATE_ENCODING_CRL decoding is unsupported."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :sswitch_2f
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;-><init>(Z[B)V

    return-object v3

    nop

    :sswitch_data_36
    .sparse-switch
        0x4 -> :sswitch_2f
        0x7 -> :sswitch_27
        0xc -> :sswitch_1f
    .end sparse-switch
.end method

.method public static blacklist validateCertificates(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .registers 12
    .param p0, "endCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509CRL;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 135
    .local p1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "crlList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509CRL;>;"
    .local p3, "trustAnchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, "keyStore":Ljava/security/KeyStore;
    if-eqz p3, :cond_49

    :try_start_3
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 139
    const-string v1, "PKCS12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    move-object v0, v1

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 141
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 142
    .local v2, "t":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 143
    .local v3, "trustedCert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "alias":Ljava/lang/String;
    invoke-virtual {v0, v4, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 147
    .end local v2    # "t":Ljava/security/cert/TrustAnchor;
    .end local v3    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_18

    .line 151
    :cond_49
    const-string v1, "PKIX"

    .line 153
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getTrustManagerProvider()Ljava/security/Provider;

    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 154
    .local v1, "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_5d
    if-ge v5, v4, :cond_6c

    aget-object v6, v3, v5

    .line 158
    .local v6, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_69

    .line 159
    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/X509TrustManager;

    move-object v2, v7

    .line 157
    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 162
    :cond_6c
    if-eqz v2, :cond_82

    .line 169
    nop

    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    const-string v4, "RSA"

    .line 169
    invoke-interface {v2, v3, v4}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 177
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    nop

    .line 178
    return-void

    .line 163
    .restart local v0    # "keyStore":Ljava/security/KeyStore;
    .restart local v1    # "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v2    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_82
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X509TrustManager is not supported by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getTrustManagerProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local p0    # "endCert":Ljava/security/cert/X509Certificate;
    .end local p1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "crlList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509CRL;>;"
    .end local p3    # "trustAnchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    throw v3
    :try_end_a3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_a3} :catch_b1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a3} :catch_aa
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_a3} :catch_aa
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_a3} :catch_a3

    .line 175
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "tmFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    .restart local p0    # "endCert":Ljava/security/cert/X509Certificate;
    .restart local p1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "crlList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509CRL;>;"
    .restart local p3    # "trustAnchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catch_a3
    move-exception v0

    .line 176
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_aa
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Algorithm is not supported by the provider"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

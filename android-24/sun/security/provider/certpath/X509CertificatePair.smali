.class public Lsun/security/provider/certpath/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# static fields
.field private static final TAG_FORWARD:B = 0x0t

.field private static final TAG_REVERSE:B = 0x1t

.field private static final cache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/provider/certpath/X509CertificatePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoded:[B

.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 83
    const/16 v0, 0x2ee

    #@2
    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    #@5
    move-result-object v0

    #@6
    .line 82
    sput-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    #@8
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "forward"    # Ljava/security/cert/X509Certificate;
    .param p2, "reverse"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    if-nez p1, :cond_0

    #@5
    if-nez p2, :cond_0

    #@7
    .line 103
    new-instance v0, Ljava/security/cert/CertificateException;

    #@9
    const-string/jumbo v1, "at least one of certificate pair must be non-null"

    #@c
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 107
    :cond_0
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@12
    .line 108
    iput-object p2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@14
    .line 110
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    #@17
    .line 101
    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@5
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@8
    invoke-direct {p0, v1}, Lsun/security/provider/certpath/X509CertificatePair;->parse(Lsun/security/util/DerValue;)V

    #@b
    .line 121
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 125
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    #@10
    .line 118
    return-void

    #@11
    .line 122
    :catch_0
    move-exception v0

    #@12
    .line 123
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    #@14
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1
.end method

.method private checkPair()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@2
    if-eqz v7, :cond_0

    #@4
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@6
    if-nez v7, :cond_1

    #@8
    .line 298
    :cond_0
    return-void

    #@9
    .line 304
    :cond_1
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@b
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@e
    move-result-object v3

    #@f
    .line 305
    .local v3, "fwSubject":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@11
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@14
    move-result-object v2

    #@15
    .line 306
    .local v2, "fwIssuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@17
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1a
    move-result-object v6

    #@1b
    .line 307
    .local v6, "rvSubject":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@1d
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@20
    move-result-object v5

    #@21
    .line 308
    .local v5, "rvIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v2, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_6

    #@27
    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_6

    #@2d
    .line 315
    :try_start_0
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@2f
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@32
    move-result-object v4

    #@33
    .line 316
    .local v4, "pk":Ljava/security/PublicKey;
    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    #@35
    if-eqz v7, :cond_2

    #@37
    .line 317
    move-object v0, v4

    #@38
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    #@3a
    move-object v7, v0

    #@3b
    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@3e
    move-result-object v7

    #@3f
    if-eqz v7, :cond_3

    #@41
    .line 318
    :cond_2
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@43
    invoke-virtual {v7, v4}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    #@46
    .line 320
    :cond_3
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@48
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@4b
    move-result-object v4

    #@4c
    .line 321
    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    #@4e
    if-eqz v7, :cond_4

    #@50
    .line 322
    move-object v0, v4

    #@51
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    #@53
    move-object v7, v0

    #@54
    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@57
    move-result-object v7

    #@58
    if-eqz v7, :cond_5

    #@5a
    .line 323
    :cond_4
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@5c
    invoke-virtual {v7, v4}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 294
    :cond_5
    return-void

    #@60
    .line 309
    .end local v4    # "pk":Ljava/security/PublicKey;
    :cond_6
    new-instance v7, Ljava/security/cert/CertificateException;

    #@62
    const-string/jumbo v8, "subject and issuer names in forward and reverse certificates do not match"

    #@65
    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@68
    throw v7

    #@69
    .line 325
    :catch_0
    move-exception v1

    #@6a
    .line 326
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Ljava/security/cert/CertificateException;

    #@6c
    new-instance v8, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v9, "invalid signature: "

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    .line 327
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    .line 326
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@87
    throw v7
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/security/provider/certpath/X509CertificatePair;

    #@2
    monitor-enter v1

    #@3
    .line 132
    :try_start_0
    sget-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    #@5
    invoke-virtual {v0}, Lsun/security/util/Cache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 131
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, -0x80

    #@2
    const/4 v4, 0x1

    #@3
    .line 272
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@5
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8
    .line 274
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 275
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@e
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@11
    .line 276
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerValue;

    #@13
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@15
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@1c
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    #@1f
    .line 278
    const/4 v2, 0x0

    #@20
    .line 277
    invoke-static {v5, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@23
    move-result v2

    #@24
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@27
    .line 281
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 282
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2d
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@30
    .line 283
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerValue;

    #@32
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@34
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@3b
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    #@3e
    .line 284
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@41
    move-result v2

    #@42
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@45
    .line 288
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    const/16 v2, 0x30

    #@47
    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@4a
    .line 270
    return-void
.end method

.method public static declared-synchronized generateCertificatePair([B)Lsun/security/provider/certpath/X509CertificatePair;
    .locals 4
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const-class v3, Lsun/security/provider/certpath/X509CertificatePair;

    #@2
    monitor-enter v3

    #@3
    .line 141
    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    #@5
    invoke-direct {v0, p0}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    #@8
    .line 142
    .local v0, "key":Ljava/lang/Object;
    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    #@a
    invoke-virtual {v2, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lsun/security/provider/certpath/X509CertificatePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 143
    .local v1, "pair":Lsun/security/provider/certpath/X509CertificatePair;
    if-eqz v1, :cond_0

    #@12
    monitor-exit v3

    #@13
    .line 144
    return-object v1

    #@14
    .line 146
    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/provider/certpath/X509CertificatePair;

    #@16
    .end local v1    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    invoke-direct {v1, p0}, Lsun/security/provider/certpath/X509CertificatePair;-><init>([B)V

    #@19
    .line 147
    .restart local v1    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    #@1b
    .end local v0    # "key":Ljava/lang/Object;
    iget-object v2, v1, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    #@1d
    invoke-direct {v0, v2}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    #@20
    .line 148
    .restart local v0    # "key":Ljava/lang/Object;
    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    #@22
    invoke-virtual {v2, v0, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v3

    #@26
    .line 149
    return-object v1

    #@27
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v3, 0x30

    #@4
    if-eq v2, v3, :cond_1

    #@6
    .line 227
    new-instance v2, Ljava/io/IOException;

    #@8
    .line 228
    const-string/jumbo v3, "Sequence tag missing for X509CertificatePair"

    #@b
    .line 227
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 241
    .local v0, "opt":Lsun/security/util/DerValue;
    .local v1, "tag":S
    :cond_0
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@11
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@14
    move-result-object v0

    #@15
    .line 243
    new-instance v2, Lsun/security/x509/X509CertImpl;

    #@17
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@1e
    .line 242
    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@24
    .line 231
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tag":S
    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@26
    if-eqz v2, :cond_3

    #@28
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2a
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 232
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@32
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@35
    move-result-object v0

    #@36
    .line 233
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    #@38
    and-int/lit8 v2, v2, 0x1f

    #@3a
    int-to-byte v2, v2

    #@3b
    int-to-short v1, v2

    #@3c
    .line 234
    .restart local v1    # "tag":S
    packed-switch v1, :pswitch_data_0

    #@3f
    .line 258
    new-instance v2, Ljava/io/IOException;

    #@41
    const-string/jumbo v3, "Invalid encoding of X509CertificatePair"

    #@44
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 236
    :pswitch_0
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_1

    #@54
    .line 237
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@56
    if-eqz v2, :cond_0

    #@58
    .line 238
    new-instance v2, Ljava/io/IOException;

    #@5a
    const-string/jumbo v3, "Duplicate forward certificate in X509CertificatePair"

    #@5d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 247
    :pswitch_1
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_1

    #@67
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_1

    #@6d
    .line 248
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@6f
    if-eqz v2, :cond_2

    #@71
    .line 249
    new-instance v2, Ljava/io/IOException;

    #@73
    const-string/jumbo v3, "Duplicate reverse certificate in X509CertificatePair"

    #@76
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@79
    throw v2

    #@7a
    .line 252
    :cond_2
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@7c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@7f
    move-result-object v0

    #@80
    .line 254
    new-instance v2, Lsun/security/x509/X509CertImpl;

    #@82
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    #@85
    move-result-object v3

    #@86
    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@89
    .line 253
    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@8c
    move-result-object v2

    #@8d
    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@8f
    goto :goto_0

    #@90
    .line 262
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tag":S
    :cond_3
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@92
    if-nez v2, :cond_4

    #@94
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@96
    if-nez v2, :cond_4

    #@98
    .line 263
    new-instance v2, Ljava/security/cert/CertificateException;

    #@9a
    const-string/jumbo v3, "at least one of certificate pair must be non-null"

    #@9d
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v2

    #@a1
    .line 224
    :cond_4
    return-void

    #@a2
    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    :try_start_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    #@2
    if-nez v2, :cond_0

    #@4
    .line 195
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 196
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v1}, Lsun/security/provider/certpath/X509CertificatePair;->emit(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 197
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 202
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    #@14
    return-object v2

    #@15
    .line 199
    :catch_0
    move-exception v0

    #@16
    .line 200
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    #@18
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public setForward(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    #@3
    .line 157
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@5
    .line 155
    return-void
.end method

.method public setReverse(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    #@3
    .line 165
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@5
    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "X.509 Certificate Pair: [\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 214
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 215
    const-string/jumbo v1, "  Forward: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "\n"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 216
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 217
    const-string/jumbo v1, "  Reverse: "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "\n"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 218
    :cond_1
    const-string/jumbo v1, "]"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    return-object v1
.end method

.class public Lsun/security/provider/certpath/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# static fields
.field private static final blacklist TAG_FORWARD:B = 0x0t

.field private static final blacklist TAG_REVERSE:B = 0x1t

.field private static final blacklist cache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Ljava/lang/Object;",
            "Lsun/security/provider/certpath/X509CertificatePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist encoded:[B

.field private blacklist forward:Ljava/security/cert/X509Certificate;

.field private blacklist reverse:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    nop

    .line 83
    const/16 v0, 0x2ee

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    .line 82
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .registers 5
    .param p1, "forward"    # Ljava/security/cert/X509Certificate;
    .param p2, "reverse"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 103
    :cond_8
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "at least one of certificate pair must be non-null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_10
    :goto_10
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 108
    iput-object p2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 110
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 111
    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 5
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    :try_start_3
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/X509CertificatePair;->parse(Lsun/security/util/DerValue;)V

    .line 121
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_12

    .line 124
    nop

    .line 125
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 126
    return-void

    .line 122
    :catch_12
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkPair()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_a

    goto/16 :goto_86

    .line 304
    :cond_a
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 305
    .local v0, "fwSubject":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 306
    .local v1, "fwIssuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 307
    .local v2, "rvSubject":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 308
    .local v3, "rvIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v3, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 315
    :try_start_2e
    iget-object v4, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 316
    .local v4, "pk":Ljava/security/PublicKey;
    instance-of v5, v4, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_41

    move-object v5, v4

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    .line 317
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 318
    :cond_41
    iget-object v5, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 320
    :cond_46
    iget-object v5, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 321
    .end local v4    # "pk":Ljava/security/PublicKey;
    .local v5, "pk":Ljava/security/PublicKey;
    instance-of v4, v5, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v4, :cond_59

    move-object v4, v5

    check-cast v4, Ljava/security/interfaces/DSAPublicKey;

    .line 322
    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 323
    :cond_59
    iget-object v4, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_5e
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_5e} :catch_60

    .line 328
    .end local v5    # "pk":Ljava/security/PublicKey;
    :cond_5e
    nop

    .line 329
    return-void

    .line 325
    :catch_60
    move-exception v4

    .line 326
    .local v4, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/security/cert/CertificateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 327
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :cond_7e
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "subject and issuer names in forward and reverse certificates do not match"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    .end local v0    # "fwSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "fwIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "rvSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "rvIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_86
    :goto_86
    return-void
.end method

.method public static declared-synchronized greylist clearCache()V
    .registers 2

    const-class v0, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v1}, Lsun/security/util/Cache;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 133
    monitor-exit v0

    return-void

    .line 131
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist emit(Lsun/security/util/DerOutputStream;)V
    .registers 8
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 272
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 274
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    const/16 v2, -0x80

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    .line 275
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 276
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerValue;

    iget-object v5, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 277
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v0, v4, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 281
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_27
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_45

    .line 282
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 283
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerValue;

    iget-object v5, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 284
    invoke-static {v2, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 288
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_45
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 289
    return-void
.end method

.method public static declared-synchronized blacklist generateCertificatePair([B)Lsun/security/provider/certpath/X509CertificatePair;
    .registers 6
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v0

    .line 141
    :try_start_3
    new-instance v1, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v1, p0}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 142
    .local v1, "key":Ljava/lang/Object;
    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v2, v1}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/X509CertificatePair;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 143
    .local v2, "pair":Lsun/security/provider/certpath/X509CertificatePair;
    if-eqz v2, :cond_14

    .line 144
    monitor-exit v0

    return-object v2

    .line 146
    :cond_14
    :try_start_14
    new-instance v3, Lsun/security/provider/certpath/X509CertificatePair;

    invoke-direct {v3, p0}, Lsun/security/provider/certpath/X509CertificatePair;-><init>([B)V

    .line 147
    .end local v2    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    .local v3, "pair":Lsun/security/provider/certpath/X509CertificatePair;
    new-instance v2, Lsun/security/util/Cache$EqualByteArray;

    iget-object v4, v3, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    invoke-direct {v2, v4}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 148
    .end local v1    # "key":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    sget-object v1, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v1, v2, v3}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_27

    .line 149
    monitor-exit v0

    return-object v3

    .line 140
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    .end local p0    # "encoded":[B
    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method private blacklist parse(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 226
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_98

    .line 231
    :goto_6
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v0, :cond_86

    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_86

    .line 232
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 233
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    int-to-short v1, v1

    .line 234
    .local v1, "tag":S
    packed-switch v1, :pswitch_data_a0

    .line 258
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid encoding of X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :pswitch_29
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 248
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4f

    .line 252
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 253
    new-instance v2, Lsun/security/x509/X509CertImpl;

    .line 254
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    goto :goto_85

    .line 249
    :cond_4f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Duplicate reverse certificate in X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :pswitch_57
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 237
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_7d

    .line 241
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 242
    new-instance v2, Lsun/security/x509/X509CertImpl;

    .line 243
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    goto :goto_85

    .line 238
    :cond_7d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Duplicate forward certificate in X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tag":S
    :cond_85
    :goto_85
    goto :goto_6

    .line 262
    :cond_86
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_97

    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_8f

    goto :goto_97

    .line 263
    :cond_8f
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "at least one of certificate pair must be non-null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_97
    :goto_97
    return-void

    .line 227
    :cond_98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sequence tag missing for X509CertificatePair"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_57
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public blacklist getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    if-nez v0, :cond_12

    .line 195
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 196
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/X509CertificatePair;->emit(Lsun/security/util/DerOutputStream;)V

    .line 197
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_16

    .line 201
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_12
    nop

    .line 202
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    return-object v0

    .line 199
    :catch_16
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getForward()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 174
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public blacklist getReverse()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 183
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public blacklist setForward(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 157
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 158
    return-void
.end method

.method public blacklist setReverse(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 165
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 166
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "X.509 Certificate Pair: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    const-string v2, "\n"

    if-eqz v1, :cond_1f

    .line 215
    const-string v1, "  Forward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1f
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_32

    .line 217
    const-string v1, "  Reverse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_32
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

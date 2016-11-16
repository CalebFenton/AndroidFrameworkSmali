.class public Lsun/security/provider/X509Factory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509Factory.java"


# static fields
.field public static final BEGIN_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final ENC_MAX_LENGTH:I = 0x400000

.field public static final END_CERT:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final certCache:Lsun/security/util/Cache;

.field private static final crlCache:Lsun/security/util/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x2ee

    #@2
    .line 67
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    #@8
    .line 68
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    #@e
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    #@3
    return-void
.end method

.method private static declared-synchronized addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .locals 4
    .param p0, "cache"    # Lsun/security/util/Cache;
    .param p1, "encoding"    # [B
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const-class v2, Lsun/security/provider/X509Factory;

    #@2
    monitor-enter v2

    #@3
    .line 213
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    const/high16 v3, 0x400000

    #@6
    if-le v1, v3, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 214
    return-void

    #@a
    .line 216
    :cond_0
    :try_start_1
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    #@c
    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    #@f
    .line 217
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 212
    return-void

    #@14
    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private static checkHeaderFooter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "footer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    const/16 v3, 0x10

    #@6
    if-lt v2, v3, :cond_0

    #@8
    const-string/jumbo v2, "-----BEGIN "

    #@b
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 585
    const-string/jumbo v2, "-----"

    #@14
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 588
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    const/16 v3, 0xe

    #@20
    if-lt v2, v3, :cond_1

    #@22
    const-string/jumbo v2, "-----END "

    #@25
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 589
    const-string/jumbo v2, "-----"

    #@2e
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    add-int/lit8 v2, v2, -0x5

    #@3a
    const/16 v3, 0xb

    #@3c
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 593
    .local v1, "headerType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@43
    move-result v2

    #@44
    add-int/lit8 v2, v2, -0x5

    #@46
    const/16 v3, 0x9

    #@48
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 594
    .local v0, "footerType":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_2

    #@52
    .line 595
    new-instance v2, Ljava/io/IOException;

    #@54
    new-instance v3, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v4, "Header and footer do not match: "

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    .line 596
    const-string/jumbo v4, " "

    #@67
    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@76
    throw v2

    #@77
    .line 586
    .end local v0    # "footerType":Ljava/lang/String;
    .end local v1    # "headerType":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@79
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v4, "Illegal header: "

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@90
    throw v2

    #@91
    .line 590
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@93
    new-instance v3, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v4, "Illegal footer: "

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v2

    #@ab
    .line 583
    .restart local v0    # "footerType":Ljava/lang/String;
    .restart local v1    # "headerType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static declared-synchronized getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .locals 4
    .param p0, "cache"    # Lsun/security/util/Cache;
    .param p1, "encoding"    # [B

    #@0
    .prologue
    const-class v3, Lsun/security/provider/X509Factory;

    #@2
    monitor-enter v3

    #@3
    .line 203
    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    #@8
    .line 204
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v1

    #@c
    .local v1, "value":Ljava/lang/Object;
    monitor-exit v3

    #@d
    .line 205
    return-object v1

    #@e
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@f
    monitor-exit v3

    #@10
    throw v2
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 6
    .param p0, "c"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v5, Lsun/security/provider/X509Factory;

    #@3
    monitor-enter v5

    #@4
    .line 174
    if-nez p0, :cond_0

    #@6
    monitor-exit v5

    #@7
    .line 175
    return-object v4

    #@8
    .line 177
    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CRLImpl;

    #@a
    .line 179
    .local v2, "isImpl":Z
    if-eqz v2, :cond_1

    #@c
    .line 180
    move-object v0, p0

    #@d
    check-cast v0, Lsun/security/x509/X509CRLImpl;

    #@f
    move-object v4, v0

    #@10
    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    #@13
    move-result-object v1

    #@14
    .line 184
    .local v1, "encoding":[B
    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    #@16
    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 185
    .local v3, "newC":Lsun/security/x509/X509CRLImpl;
    if-eqz v3, :cond_2

    #@1e
    monitor-exit v5

    #@1f
    .line 186
    return-object v3

    #@20
    .line 182
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@23
    move-result-object v1

    #@24
    .restart local v1    # "encoding":[B
    goto :goto_0

    #@25
    .line 188
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_2
    if-eqz v2, :cond_3

    #@27
    .line 189
    move-object v0, p0

    #@28
    check-cast v0, Lsun/security/x509/X509CRLImpl;

    #@2a
    move-object v3, v0

    #@2b
    .line 194
    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    #@2d
    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v5

    #@31
    .line 195
    return-object v3

    #@32
    .line 191
    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CRLImpl;

    #@34
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-direct {v3, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    #@37
    .line 192
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result-object v1

    #@3b
    goto :goto_1

    #@3c
    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :catchall_0
    move-exception v4

    #@3d
    monitor-exit v5

    #@3e
    throw v4
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 6
    .param p0, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v5, Lsun/security/provider/X509Factory;

    #@3
    monitor-enter v5

    #@4
    .line 144
    if-nez p0, :cond_0

    #@6
    monitor-exit v5

    #@7
    .line 145
    return-object v4

    #@8
    .line 147
    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CertImpl;

    #@a
    .line 149
    .local v2, "isImpl":Z
    if-eqz v2, :cond_1

    #@c
    .line 150
    move-object v0, p0

    #@d
    check-cast v0, Lsun/security/x509/X509CertImpl;

    #@f
    move-object v4, v0

    #@10
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    #@13
    move-result-object v1

    #@14
    .line 154
    .local v1, "encoding":[B
    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    #@16
    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 155
    .local v3, "newC":Lsun/security/x509/X509CertImpl;
    if-eqz v3, :cond_2

    #@1e
    monitor-exit v5

    #@1f
    .line 156
    return-object v3

    #@20
    .line 152
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@23
    move-result-object v1

    #@24
    .restart local v1    # "encoding":[B
    goto :goto_0

    #@25
    .line 158
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_2
    if-eqz v2, :cond_3

    #@27
    .line 159
    move-object v0, p0

    #@28
    check-cast v0, Lsun/security/x509/X509CertImpl;

    #@2a
    move-object v3, v0

    #@2b
    .line 164
    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    #@2d
    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v5

    #@31
    .line 165
    return-object v3

    #@32
    .line 161
    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CertImpl;

    #@34
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-direct {v3, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@37
    .line 162
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result-object v1

    #@3b
    goto :goto_1

    #@3c
    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :catchall_0
    move-exception v4

    #@3d
    monitor-exit v5

    #@3e
    throw v4
.end method

.method private parseX509orPKCS7CRL(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 445
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 446
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/X509CRLImpl;>;"
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@9
    move-result-object v2

    #@a
    .line 447
    .local v2, "data":[B
    if-nez v2, :cond_0

    #@c
    .line 448
    new-instance v5, Ljava/util/ArrayList;

    #@e
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    return-object v5

    #@12
    .line 451
    :cond_0
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS7;

    #@14
    invoke-direct {v4, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    #@17
    .line 452
    .local v4, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCRLs()[Ljava/security/cert/X509CRL;

    #@1a
    move-result-object v1

    #@1b
    .line 454
    .local v1, "crls":[Ljava/security/cert/X509CRL;
    if-eqz v1, :cond_1

    #@1d
    .line 455
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@20
    move-result-object v5

    #@21
    return-object v5

    #@22
    .line 458
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    #@24
    const/4 v6, 0x0

    #@25
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    return-object v5

    #@29
    .line 461
    .end local v1    # "crls":[Ljava/security/cert/X509CRL;
    .end local v4    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .local v3, "e":Lsun/security/pkcs/ParsingException;
    :goto_0
    if-eqz v2, :cond_2

    #@2b
    .line 462
    new-instance v5, Lsun/security/x509/X509CRLImpl;

    #@2d
    invoke-direct {v5, v2}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    #@30
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@33
    .line 463
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@36
    move-result-object v2

    #@37
    goto :goto_0

    #@38
    .line 466
    :cond_2
    return-object v0

    #@39
    .line 460
    .end local v3    # "e":Lsun/security/pkcs/ParsingException;
    :catch_0
    move-exception v3

    #@3a
    .restart local v3    # "e":Lsun/security/pkcs/ParsingException;
    goto :goto_0
.end method

.method private parseX509orPKCS7Cert(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 412
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 413
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/X509CertImpl;>;"
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@9
    move-result-object v2

    #@a
    .line 414
    .local v2, "data":[B
    if-nez v2, :cond_0

    #@c
    .line 415
    new-instance v5, Ljava/util/ArrayList;

    #@e
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    return-object v5

    #@12
    .line 418
    :cond_0
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS7;

    #@14
    invoke-direct {v4, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    #@17
    .line 419
    .local v4, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    #@1a
    move-result-object v0

    #@1b
    .line 421
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    #@1d
    .line 422
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@20
    move-result-object v5

    #@21
    return-object v5

    #@22
    .line 425
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    #@24
    const/4 v6, 0x0

    #@25
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    return-object v5

    #@29
    .line 428
    .end local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v4    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .local v3, "e":Lsun/security/pkcs/ParsingException;
    :goto_0
    if-eqz v2, :cond_2

    #@2b
    .line 429
    new-instance v5, Lsun/security/x509/X509CertImpl;

    #@2d
    invoke-direct {v5, v2}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@30
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@33
    .line 430
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@36
    move-result-object v2

    #@37
    goto :goto_0

    #@38
    .line 433
    :cond_2
    return-object v1

    #@39
    .line 427
    .end local v3    # "e":Lsun/security/pkcs/ParsingException;
    :catch_0
    move-exception v3

    #@3a
    .restart local v3    # "e":Lsun/security/pkcs/ParsingException;
    goto :goto_0
.end method

.method private static readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bout"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x80

    #@2
    const/4 v9, -0x1

    #@3
    .line 613
    if-ne p2, v9, :cond_2

    #@5
    .line 614
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@8
    move-result p2

    #@9
    .line 615
    if-ne p2, v9, :cond_0

    #@b
    .line 616
    new-instance v7, Ljava/io/IOException;

    #@d
    const-string/jumbo v8, "BER/DER tag info absent"

    #@10
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 618
    :cond_0
    and-int/lit8 v7, p2, 0x1f

    #@16
    const/16 v8, 0x1f

    #@18
    if-ne v7, v8, :cond_1

    #@1a
    .line 619
    new-instance v7, Ljava/io/IOException;

    #@1c
    const-string/jumbo v8, "Multi octets tag not supported"

    #@1f
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v7

    #@23
    .line 621
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@26
    .line 624
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@29
    move-result v4

    #@2a
    .line 625
    .local v4, "n":I
    if-ne v4, v9, :cond_3

    #@2c
    .line 626
    new-instance v7, Ljava/io/IOException;

    #@2e
    const-string/jumbo v8, "BER/DER length info ansent"

    #@31
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v7

    #@35
    .line 628
    :cond_3
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@38
    .line 632
    if-ne v4, v10, :cond_6

    #@3a
    .line 633
    and-int/lit8 v7, p2, 0x20

    #@3c
    const/16 v8, 0x20

    #@3e
    if-eq v7, v8, :cond_4

    #@40
    .line 634
    new-instance v7, Ljava/io/IOException;

    #@42
    .line 635
    const-string/jumbo v8, "Non constructed encoding must have definite length"

    #@45
    .line 634
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v7

    #@49
    .line 638
    :cond_4
    invoke-static {p0, p1, v9}, Lsun/security/provider/X509Factory;->readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    #@4c
    move-result v6

    #@4d
    .line 639
    .local v6, "subTag":I
    if-nez v6, :cond_4

    #@4f
    .line 696
    .end local v6    # "subTag":I
    :cond_5
    return p2

    #@50
    .line 644
    :cond_6
    if-ge v4, v10, :cond_7

    #@52
    .line 645
    move v1, v4

    #@53
    .line 692
    .local v1, "length":I
    :goto_0
    invoke-static {p0, p1, v1}, Lsun/security/provider/X509Factory;->readFully(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    #@56
    move-result v7

    #@57
    if-eq v7, v1, :cond_5

    #@59
    .line 693
    new-instance v7, Ljava/io/IOException;

    #@5b
    const-string/jumbo v8, "Incomplete BER/DER data"

    #@5e
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@61
    throw v7

    #@62
    .line 646
    .end local v1    # "length":I
    :cond_7
    const/16 v7, 0x81

    #@64
    if-ne v4, v7, :cond_9

    #@66
    .line 647
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@69
    move-result v1

    #@6a
    .line 648
    .restart local v1    # "length":I
    if-ne v1, v9, :cond_8

    #@6c
    .line 649
    new-instance v7, Ljava/io/IOException;

    #@6e
    const-string/jumbo v8, "Incomplete BER/DER length info"

    #@71
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@74
    throw v7

    #@75
    .line 651
    :cond_8
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@78
    goto :goto_0

    #@79
    .line 652
    .end local v1    # "length":I
    :cond_9
    const/16 v7, 0x82

    #@7b
    if-ne v4, v7, :cond_b

    #@7d
    .line 653
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@80
    move-result v0

    #@81
    .line 654
    .local v0, "highByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@84
    move-result v2

    #@85
    .line 655
    .local v2, "lowByte":I
    if-ne v2, v9, :cond_a

    #@87
    .line 656
    new-instance v7, Ljava/io/IOException;

    #@89
    const-string/jumbo v8, "Incomplete BER/DER length info"

    #@8c
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v7

    #@90
    .line 658
    :cond_a
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@93
    .line 659
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@96
    .line 660
    shl-int/lit8 v7, v0, 0x8

    #@98
    or-int v1, v7, v2

    #@9a
    .restart local v1    # "length":I
    goto :goto_0

    #@9b
    .line 661
    .end local v0    # "highByte":I
    .end local v1    # "length":I
    .end local v2    # "lowByte":I
    :cond_b
    const/16 v7, 0x83

    #@9d
    if-ne v4, v7, :cond_d

    #@9f
    .line 662
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@a2
    move-result v0

    #@a3
    .line 663
    .restart local v0    # "highByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@a6
    move-result v3

    #@a7
    .line 664
    .local v3, "midByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@aa
    move-result v2

    #@ab
    .line 665
    .restart local v2    # "lowByte":I
    if-ne v2, v9, :cond_c

    #@ad
    .line 666
    new-instance v7, Ljava/io/IOException;

    #@af
    const-string/jumbo v8, "Incomplete BER/DER length info"

    #@b2
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v7

    #@b6
    .line 668
    :cond_c
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@b9
    .line 669
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@bc
    .line 670
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@bf
    .line 671
    shl-int/lit8 v7, v0, 0x10

    #@c1
    shl-int/lit8 v8, v3, 0x8

    #@c3
    or-int/2addr v7, v8

    #@c4
    or-int v1, v7, v2

    #@c6
    .restart local v1    # "length":I
    goto :goto_0

    #@c7
    .line 672
    .end local v0    # "highByte":I
    .end local v1    # "length":I
    .end local v2    # "lowByte":I
    .end local v3    # "midByte":I
    :cond_d
    const/16 v7, 0x84

    #@c9
    if-ne v4, v7, :cond_10

    #@cb
    .line 673
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@ce
    move-result v0

    #@cf
    .line 674
    .restart local v0    # "highByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@d2
    move-result v5

    #@d3
    .line 675
    .local v5, "nextByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@d6
    move-result v3

    #@d7
    .line 676
    .restart local v3    # "midByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@da
    move-result v2

    #@db
    .line 677
    .restart local v2    # "lowByte":I
    if-ne v2, v9, :cond_e

    #@dd
    .line 678
    new-instance v7, Ljava/io/IOException;

    #@df
    const-string/jumbo v8, "Incomplete BER/DER length info"

    #@e2
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v7

    #@e6
    .line 680
    :cond_e
    const/16 v7, 0x7f

    #@e8
    if-le v0, v7, :cond_f

    #@ea
    .line 681
    new-instance v7, Ljava/io/IOException;

    #@ec
    const-string/jumbo v8, "Invalid BER/DER data (a little huge?)"

    #@ef
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v7

    #@f3
    .line 683
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f6
    .line 684
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f9
    .line 685
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@fc
    .line 686
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@ff
    .line 687
    shl-int/lit8 v7, v0, 0x18

    #@101
    shl-int/lit8 v8, v5, 0x10

    #@103
    or-int/2addr v7, v8

    #@104
    .line 688
    shl-int/lit8 v8, v3, 0x8

    #@106
    .line 687
    or-int/2addr v7, v8

    #@107
    or-int v1, v7, v2

    #@109
    .restart local v1    # "length":I
    goto/16 :goto_0

    #@10b
    .line 690
    .end local v0    # "highByte":I
    .end local v1    # "length":I
    .end local v2    # "lowByte":I
    .end local v3    # "midByte":I
    .end local v5    # "nextByte":I
    :cond_10
    new-instance v7, Ljava/io/IOException;

    #@10d
    const-string/jumbo v8, "Invalid BER/DER data (too huge?)"

    #@110
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@113
    throw v7
.end method

.method private static readFully(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "bout"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x800

    #@2
    const/4 v5, 0x0

    #@3
    .line 115
    const/4 v2, 0x0

    #@4
    .line 116
    .local v2, "read":I
    new-array v0, v4, [B

    #@6
    .line 117
    .local v0, "buffer":[B
    :goto_0
    if-lez p2, :cond_0

    #@8
    .line 118
    if-ge p2, v4, :cond_1

    #@a
    move v3, p2

    #@b
    :goto_1
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    #@e
    move-result v1

    #@f
    .line 119
    .local v1, "n":I
    if-gtz v1, :cond_2

    #@11
    .line 126
    .end local v1    # "n":I
    :cond_0
    return v2

    #@12
    :cond_1
    move v3, v4

    #@13
    .line 118
    goto :goto_1

    #@14
    .line 122
    .restart local v1    # "n":I
    :cond_2
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@17
    .line 123
    add-int/2addr v2, v1

    #@18
    .line 124
    sub-int/2addr p2, v1

    #@19
    goto :goto_0
.end method

.method private static readOneBlock(Ljava/io/InputStream;)[B
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 484
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3
    move-result v1

    #@4
    .line 485
    .local v1, "c":I
    const/4 v12, -0x1

    #@5
    if-ne v1, v12, :cond_0

    #@7
    .line 486
    const/4 v12, 0x0

    #@8
    return-object v12

    #@9
    .line 488
    :cond_0
    const/16 v12, 0x30

    #@b
    if-ne v1, v12, :cond_1

    #@d
    .line 489
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@f
    const/16 v12, 0x800

    #@11
    invoke-direct {v0, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@14
    .line 490
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@17
    .line 491
    invoke-static {p0, v0, v1}, Lsun/security/provider/X509Factory;->readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    #@1a
    .line 492
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1d
    move-result-object v12

    #@1e
    return-object v12

    #@1f
    .line 495
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/16 v12, 0x800

    #@21
    new-array v2, v12, [C

    #@23
    .line 496
    .local v2, "data":[C
    const/4 v10, 0x0

    #@24
    .line 499
    .local v10, "pos":I
    const/16 v12, 0x2d

    #@26
    if-ne v1, v12, :cond_3

    #@28
    const/4 v7, 0x1

    #@29
    .line 500
    .local v7, "hyphen":I
    :goto_0
    const/16 v12, 0x2d

    #@2b
    if-ne v1, v12, :cond_4

    #@2d
    const/4 v8, -0x1

    #@2e
    .line 502
    .local v8, "last":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@31
    move-result v9

    #@32
    .line 503
    .local v9, "next":I
    const/4 v12, -0x1

    #@33
    if-ne v9, v12, :cond_5

    #@35
    .line 506
    const/4 v12, 0x0

    #@36
    return-object v12

    #@37
    .line 499
    .end local v7    # "hyphen":I
    .end local v8    # "last":I
    .end local v9    # "next":I
    :cond_3
    const/4 v7, 0x0

    #@38
    .restart local v7    # "hyphen":I
    goto :goto_0

    #@39
    .line 500
    :cond_4
    move v8, v1

    #@3a
    .restart local v8    # "last":I
    goto :goto_1

    #@3b
    .line 508
    .restart local v9    # "next":I
    :cond_5
    const/16 v12, 0x2d

    #@3d
    if-ne v9, v12, :cond_7

    #@3f
    .line 509
    add-int/lit8 v7, v7, 0x1

    #@41
    .line 514
    :goto_2
    const/4 v12, 0x5

    #@42
    if-ne v7, v12, :cond_2

    #@44
    const/4 v12, -0x1

    #@45
    if-eq v8, v12, :cond_6

    #@47
    const/16 v12, 0xd

    #@49
    if-ne v8, v12, :cond_8

    #@4b
    .line 521
    :cond_6
    :goto_3
    new-instance v6, Ljava/lang/StringBuffer;

    #@4d
    const-string/jumbo v12, "-----"

    #@50
    invoke-direct {v6, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@53
    .line 523
    .local v6, "header":Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@56
    move-result v9

    #@57
    .line 524
    const/4 v12, -0x1

    #@58
    if-ne v9, v12, :cond_9

    #@5a
    .line 525
    new-instance v12, Ljava/io/IOException;

    #@5c
    const-string/jumbo v13, "Incomplete data"

    #@5f
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@62
    throw v12

    #@63
    .line 511
    .end local v6    # "header":Ljava/lang/StringBuffer;
    :cond_7
    const/4 v7, 0x0

    #@64
    .line 512
    move v8, v9

    #@65
    goto :goto_2

    #@66
    .line 514
    :cond_8
    const/16 v12, 0xa

    #@68
    if-ne v8, v12, :cond_2

    #@6a
    goto :goto_3

    #@6b
    .line 527
    .restart local v6    # "header":Ljava/lang/StringBuffer;
    :cond_9
    const/16 v12, 0xa

    #@6d
    if-ne v9, v12, :cond_a

    #@6f
    .line 528
    const/16 v4, 0xa

    #@71
    .line 549
    .local v4, "end":I
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@74
    move-result v9

    #@75
    .line 550
    const/4 v12, -0x1

    #@76
    if-ne v9, v12, :cond_e

    #@78
    .line 551
    new-instance v12, Ljava/io/IOException;

    #@7a
    const-string/jumbo v13, "Incomplete data"

    #@7d
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@80
    throw v12

    #@81
    .line 531
    .end local v4    # "end":I
    :cond_a
    const/16 v12, 0xd

    #@83
    if-ne v9, v12, :cond_d

    #@85
    .line 532
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@88
    move-result v9

    #@89
    .line 533
    const/4 v12, -0x1

    #@8a
    if-ne v9, v12, :cond_b

    #@8c
    .line 534
    new-instance v12, Ljava/io/IOException;

    #@8e
    const-string/jumbo v13, "Incomplete data"

    #@91
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@94
    throw v12

    #@95
    .line 536
    :cond_b
    const/16 v12, 0xa

    #@97
    if-ne v9, v12, :cond_c

    #@99
    .line 537
    const/16 v4, 0xa

    #@9b
    .restart local v4    # "end":I
    goto :goto_5

    #@9c
    .line 539
    .end local v4    # "end":I
    :cond_c
    const/16 v4, 0xd

    #@9e
    .line 496
    .restart local v4    # "end":I
    const/4 v12, 0x0

    #@9f
    .line 540
    const/4 v10, 0x1

    #@a0
    int-to-char v13, v9

    #@a1
    aput-char v13, v2, v12

    #@a3
    goto :goto_5

    #@a4
    .line 544
    .end local v4    # "end":I
    :cond_d
    int-to-char v12, v9

    #@a5
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a8
    goto :goto_4

    #@a9
    .line 553
    .restart local v4    # "end":I
    :cond_e
    const/16 v12, 0x2d

    #@ab
    if-eq v9, v12, :cond_10

    #@ad
    .line 554
    add-int/lit8 v11, v10, 0x1

    #@af
    .end local v10    # "pos":I
    .local v11, "pos":I
    int-to-char v12, v9

    #@b0
    aput-char v12, v2, v10

    #@b2
    .line 555
    array-length v12, v2

    #@b3
    if-lt v11, v12, :cond_f

    #@b5
    .line 556
    array-length v12, v2

    #@b6
    add-int/lit16 v12, v12, 0x400

    #@b8
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([CI)[C

    #@bb
    move-result-object v2

    #@bc
    :cond_f
    move v10, v11

    #@bd
    .end local v11    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_5

    #@be
    .line 564
    :cond_10
    new-instance v5, Ljava/lang/StringBuffer;

    #@c0
    const-string/jumbo v12, "-"

    #@c3
    invoke-direct {v5, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@c6
    .line 566
    .local v5, "footer":Ljava/lang/StringBuffer;
    :cond_11
    :goto_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@c9
    move-result v9

    #@ca
    .line 569
    const/4 v12, -0x1

    #@cb
    if-eq v9, v12, :cond_12

    #@cd
    if-ne v9, v4, :cond_13

    #@cf
    .line 575
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@d2
    move-result-object v12

    #@d3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@d6
    move-result-object v13

    #@d7
    invoke-static {v12, v13}, Lsun/security/provider/X509Factory;->checkHeaderFooter(Ljava/lang/String;Ljava/lang/String;)V

    #@da
    .line 577
    new-instance v3, Lsun/misc/BASE64Decoder;

    #@dc
    invoke-direct {v3}, Lsun/misc/BASE64Decoder;-><init>()V

    #@df
    .line 578
    .local v3, "decoder":Lsun/misc/BASE64Decoder;
    new-instance v12, Ljava/lang/String;

    #@e1
    const/4 v13, 0x0

    #@e2
    invoke-direct {v12, v2, v13, v10}, Ljava/lang/String;-><init>([CII)V

    #@e5
    invoke-virtual {v3, v12}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    #@e8
    move-result-object v12

    #@e9
    return-object v12

    #@ea
    .line 569
    .end local v3    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_13
    const/16 v12, 0xa

    #@ec
    if-eq v9, v12, :cond_12

    #@ee
    .line 572
    const/16 v12, 0xd

    #@f0
    if-eq v9, v12, :cond_11

    #@f2
    int-to-char v12, v9

    #@f3
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f6
    goto :goto_6
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    if-nez p1, :cond_0

    #@2
    .line 358
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    #@4
    invoke-virtual {v3}, Lsun/security/util/Cache;->clear()V

    #@7
    .line 359
    new-instance v3, Ljava/security/cert/CRLException;

    #@9
    const-string/jumbo v4, "Missing input stream"

    #@c
    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 362
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@13
    move-result-object v1

    #@14
    .line 363
    .local v1, "encoding":[B
    if-eqz v1, :cond_2

    #@16
    .line 364
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    #@18
    invoke-static {v3, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lsun/security/x509/X509CRLImpl;

    #@1e
    .line 365
    .local v0, "crl":Lsun/security/x509/X509CRLImpl;
    if-eqz v0, :cond_1

    #@20
    .line 366
    return-object v0

    #@21
    .line 368
    :cond_1
    new-instance v0, Lsun/security/x509/X509CRLImpl;

    #@23
    .end local v0    # "crl":Lsun/security/x509/X509CRLImpl;
    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    #@26
    .line 369
    .restart local v0    # "crl":Lsun/security/x509/X509CRLImpl;
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    #@28
    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4, v0}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    #@2f
    .line 370
    return-object v0

    #@30
    .line 372
    .end local v0    # "crl":Lsun/security/x509/X509CRLImpl;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    #@32
    const-string/jumbo v4, "Empty input"

    #@35
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 374
    .end local v1    # "encoding":[B
    :catch_0
    move-exception v2

    #@3a
    .line 375
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    #@3c
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@43
    throw v3
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    if-nez p1, :cond_0

    #@2
    .line 394
    new-instance v1, Ljava/security/cert/CRLException;

    #@4
    const-string/jumbo v2, "Missing input stream"

    #@7
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 397
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->parseX509orPKCS7CRL(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 398
    :catch_0
    move-exception v0

    #@11
    .line 399
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    if-nez p1, :cond_0

    #@2
    .line 235
    new-instance v2, Ljava/security/cert/CertificateException;

    #@4
    const-string/jumbo v3, "Missing input stream"

    #@7
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 238
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@e
    move-result-object v0

    #@f
    .line 239
    .local v0, "encoding":[B
    if-eqz v0, :cond_1

    #@11
    .line 240
    new-instance v2, Lsun/security/provider/certpath/X509CertPath;

    #@13
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@15
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@18
    invoke-direct {v2, v3}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;)V

    #@1b
    return-object v2

    #@1c
    .line 242
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@1e
    const-string/jumbo v3, "Empty input"

    #@21
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 244
    .end local v0    # "encoding":[B
    :catch_0
    move-exception v1

    #@26
    .line 245
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@28
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    if-nez p1, :cond_0

    #@2
    .line 266
    new-instance v2, Ljava/security/cert/CertificateException;

    #@4
    const-string/jumbo v3, "Missing input stream"

    #@7
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 269
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@e
    move-result-object v0

    #@f
    .line 270
    .local v0, "data":[B
    if-eqz v0, :cond_1

    #@11
    .line 271
    new-instance v2, Lsun/security/provider/certpath/X509CertPath;

    #@13
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@15
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@18
    invoke-direct {v2, v3, p2}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1b
    return-object v2

    #@1c
    .line 273
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@1e
    const-string/jumbo v3, "Empty input"

    #@21
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 275
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    #@26
    .line 276
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@28
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    #@2
    invoke-direct {v0, p1}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/util/List;)V

    #@5
    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    .line 86
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    #@4
    invoke-virtual {v3}, Lsun/security/util/Cache;->clear()V

    #@7
    .line 87
    invoke-static {}, Lsun/security/provider/certpath/X509CertificatePair;->clearCache()V

    #@a
    .line 88
    new-instance v3, Ljava/security/cert/CertificateException;

    #@c
    const-string/jumbo v4, "Missing input stream"

    #@f
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 91
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    #@16
    move-result-object v1

    #@17
    .line 92
    .local v1, "encoding":[B
    if-eqz v1, :cond_2

    #@19
    .line 93
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    #@1b
    invoke-static {v3, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lsun/security/x509/X509CertImpl;

    #@21
    .line 94
    .local v0, "cert":Lsun/security/x509/X509CertImpl;
    if-eqz v0, :cond_1

    #@23
    .line 95
    return-object v0

    #@24
    .line 97
    :cond_1
    new-instance v0, Lsun/security/x509/X509CertImpl;

    #@26
    .end local v0    # "cert":Lsun/security/x509/X509CertImpl;
    invoke-direct {v0, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@29
    .line 98
    .restart local v0    # "cert":Lsun/security/x509/X509CertImpl;
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    #@2b
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4, v0}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    #@32
    .line 99
    return-object v0

    #@33
    .line 101
    .end local v0    # "cert":Lsun/security/x509/X509CertImpl;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    #@35
    const-string/jumbo v4, "Empty input"

    #@38
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 103
    .end local v1    # "encoding":[B
    :catch_0
    move-exception v2

    #@3d
    .line 104
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    #@3f
    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Could not parse certificate: "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 104
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@5a
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Ljava/security/cert/CertificateException;

    #@60
    throw v3
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    if-nez p1, :cond_0

    #@2
    .line 332
    new-instance v1, Ljava/security/cert/CertificateException;

    #@4
    const-string/jumbo v2, "Missing input stream"

    #@7
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 335
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->parseX509orPKCS7Cert(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 336
    :catch_0
    move-exception v0

    #@11
    .line 337
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    #@13
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

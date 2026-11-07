.class public Lsun/security/provider/X509Factory;
.super Ljava/lang/Object;
.source "X509Factory.java"


# static fields
.field private static final blacklist ENC_MAX_LENGTH:I = 0x400000

.field private static final greylist certCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Ljava/lang/Object;",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist crlCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Ljava/lang/Object;",
            "Lsun/security/x509/X509CRLImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    nop

    .line 64
    const/16 v0, 0x2ee

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v1

    sput-object v1, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    .line 65
    nop

    .line 66
    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    .line 65
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized greylist addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .registers 6
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/security/util/Cache<",
            "Ljava/lang/Object;",
            "TV;>;[BTV;)V"
        }
    .end annotation

    .local p0, "cache":Lsun/security/util/Cache;, "Lsun/security/util/Cache<Ljava/lang/Object;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    .line 227
    :try_start_3
    array-length v1, p1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_14

    const/high16 v2, 0x400000

    if-le v1, v2, :cond_a

    .line 228
    monitor-exit v0

    return-void

    .line 230
    :cond_a
    :try_start_a
    new-instance v1, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v1, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 231
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    .line 232
    monitor-exit v0

    return-void

    .line 226
    .end local v1    # "key":Ljava/lang/Object;
    .end local p0    # "cache":Lsun/security/util/Cache;, "Lsun/security/util/Cache<Ljava/lang/Object;TV;>;"
    .end local p1    # "encoding":[B
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private static declared-synchronized greylist getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .registers 5
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/security/util/Cache<",
            "TK;TV;>;[B)TV;"
        }
    .end annotation

    .local p0, "cache":Lsun/security/util/Cache;, "Lsun/security/util/Cache<TK;TV;>;"
    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    .line 218
    :try_start_3
    new-instance v1, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v1, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 219
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object v2

    .line 217
    .end local v1    # "key":Ljava/lang/Object;
    .end local p0    # "cache":Lsun/security/util/Cache;, "Lsun/security/util/Cache<TK;TV;>;"
    .end local p1    # "encoding":[B
    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static declared-synchronized greylist intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .registers 6
    .param p0, "c"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    .line 189
    if-nez p0, :cond_8

    .line 190
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_8
    :try_start_8
    instance-of v1, p0, Lsun/security/x509/X509CRLImpl;

    .line 194
    .local v1, "isImpl":Z
    if-eqz v1, :cond_14

    .line 195
    move-object v2, p0

    check-cast v2, Lsun/security/x509/X509CRLImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v2

    .local v2, "encoding":[B
    goto :goto_18

    .line 197
    .end local v2    # "encoding":[B
    :cond_14
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v2

    .line 199
    .restart local v2    # "encoding":[B
    :goto_18
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v3, v2}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CRLImpl;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_3b

    .line 200
    .local v3, "newC":Lsun/security/x509/X509CRLImpl;
    if-eqz v3, :cond_24

    .line 201
    monitor-exit v0

    return-object v3

    .line 203
    :cond_24
    if-eqz v1, :cond_2a

    .line 204
    :try_start_26
    move-object v4, p0

    check-cast v4, Lsun/security/x509/X509CRLImpl;

    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    .local v4, "newC":Lsun/security/x509/X509CRLImpl;
    goto :goto_34

    .line 206
    .end local v4    # "newC":Lsun/security/x509/X509CRLImpl;
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_2a
    new-instance v4, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v4, v2}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 207
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    .restart local v4    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v3

    move-object v2, v3

    .line 209
    :goto_34
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v3, v2, v4}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3b

    .line 210
    monitor-exit v0

    return-object v4

    .line 188
    .end local v1    # "isImpl":Z
    .end local v2    # "encoding":[B
    .end local v4    # "newC":Lsun/security/x509/X509CRLImpl;
    .end local p0    # "c":Ljava/security/cert/X509CRL;
    :catchall_3b
    move-exception p0

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public static declared-synchronized greylist intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .registers 6
    .param p0, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-class v0, Lsun/security/provider/X509Factory;

    monitor-enter v0

    .line 153
    if-nez p0, :cond_8

    .line 154
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_8
    :try_start_8
    instance-of v1, p0, Lsun/security/x509/X509CertImpl;

    .line 158
    .local v1, "isImpl":Z
    if-eqz v1, :cond_14

    .line 159
    move-object v2, p0

    check-cast v2, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v2

    .local v2, "encoding":[B
    goto :goto_18

    .line 161
    .end local v2    # "encoding":[B
    :cond_14
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 163
    .restart local v2    # "encoding":[B
    :goto_18
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v3, v2}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CertImpl;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_3b

    .line 164
    .local v3, "newC":Lsun/security/x509/X509CertImpl;
    if-eqz v3, :cond_24

    .line 165
    monitor-exit v0

    return-object v3

    .line 167
    :cond_24
    if-eqz v1, :cond_2a

    .line 168
    :try_start_26
    move-object v4, p0

    check-cast v4, Lsun/security/x509/X509CertImpl;

    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    .local v4, "newC":Lsun/security/x509/X509CertImpl;
    goto :goto_34

    .line 170
    .end local v4    # "newC":Lsun/security/x509/X509CertImpl;
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_2a
    new-instance v4, Lsun/security/x509/X509CertImpl;

    invoke-direct {v4, v2}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 171
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    .restart local v4    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v3

    move-object v2, v3

    .line 173
    :goto_34
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v3, v2, v4}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3b

    .line 174
    monitor-exit v0

    return-object v4

    .line 152
    .end local v1    # "isImpl":Z
    .end local v2    # "encoding":[B
    .end local v4    # "newC":Lsun/security/x509/X509CertImpl;
    .end local p0    # "c":Ljava/security/cert/X509Certificate;
    :catchall_3b
    move-exception p0

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

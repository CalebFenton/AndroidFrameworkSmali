.class abstract Landroid/security/net/config/DirectoryCertificateSource;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    }
.end annotation


# static fields
.field private static final blacklist DIGITS:[C

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "DirectoryCertificateSrc"


# instance fields
.field private final greylist-max-o mCertFactory:Ljava/security/cert/CertificateFactory;

.field private greylist-max-o mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDir:Ljava/io/File;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid/security/net/config/DirectoryCertificateSource;->DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor greylist-max-o <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "caDir"    # Ljava/io/File;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    .line 55
    :try_start_c
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_14} :catch_16

    .line 58
    nop

    .line 59
    return-void

    .line 56
    :catch_16
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p1, "subj"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "selector"    # Landroid/security/net/config/DirectoryCertificateSource$CertSelector;

    .line 168
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "hash":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ltz v1, :cond_4f

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 172
    goto :goto_4f

    .line 174
    :cond_2c
    invoke-virtual {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 175
    goto :goto_4c

    .line 177
    :cond_33
    invoke-direct {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 178
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_3a

    .line 179
    goto :goto_4c

    .line 181
    :cond_3a
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 182
    goto :goto_4c

    .line 184
    :cond_45
    invoke-interface {p2, v3}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 185
    return-object v3

    .line 169
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 188
    .end local v1    # "index":I
    :cond_4f
    :goto_4f
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;
    .registers 9
    .param p1, "subj"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "selector"    # Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Landroid/security/net/config/DirectoryCertificateSource$CertSelector;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "hash":Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_6
    if-ltz v2, :cond_5a

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 145
    goto :goto_5a

    .line 147
    :cond_2d
    invoke-virtual {p0, v3}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 148
    goto :goto_57

    .line 150
    :cond_34
    invoke-direct {p0, v3}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 151
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_3b

    .line 152
    goto :goto_57

    .line 154
    :cond_3b
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 155
    goto :goto_57

    .line 157
    :cond_46
    invoke-interface {p2, v4}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 158
    if-nez v1, :cond_54

    .line 159
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 161
    :cond_54
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 164
    .end local v2    # "index":I
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5e

    move-object v2, v1

    goto :goto_62

    :cond_5e
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    :goto_62
    return-object v2
.end method

.method private greylist-max-o getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .line 192
    invoke-static {p1}, Landroid/security/net/config/DirectoryCertificateSource;->hashName(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 193
    .local v0, "hash":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->intToHexString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist hashName(Ljavax/security/auth/x500/X500Principal;)I
    .registers 5
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 215
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 216
    .local v0, "digest":[B
    const/4 v1, 0x0

    .line 217
    .local v1, "offset":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aget-byte v3, v0, v2
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2b} :catch_31

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    return v1

    .line 219
    .end local v0    # "digest":[B
    .end local v2    # "offset":I
    :catch_31
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static blacklist intToHexString(II)Ljava/lang/String;
    .registers 7
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    .line 200
    const/16 v0, 0x8

    .line 201
    .local v0, "bufLen":I
    new-array v1, v0, [C

    .line 202
    .local v1, "buf":[C
    move v2, v0

    .line 205
    .local v2, "cursor":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Landroid/security/net/config/DirectoryCertificateSource;->DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 206
    ushr-int/lit8 v3, p0, 0x4

    move p0, v3

    if-nez v3, :cond_5

    sub-int v3, v0, v2

    if-lt v3, p1, :cond_5

    .line 208
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method private greylist-max-o readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "file"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 228
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1b} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_21
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1f

    .line 233
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 228
    return-object v1

    .line 233
    :catchall_1f
    move-exception v1

    goto :goto_40

    .line 229
    :catch_21
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    :try_start_22
    const-string v2, "DirectoryCertificateSrc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read certificate from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_1f

    .line 231
    nop

    .line 233
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    const/4 v2, 0x0

    return-object v2

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_40
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    throw v1
.end method


# virtual methods
.method public greylist-max-o findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$3;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$3;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 100
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$2;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$2;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 90
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$1;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$1;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCertificates()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v1, :cond_b

    .line 68
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 71
    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 72
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 73
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_37

    aget-object v5, v2, v4

    .line 74
    .local v5, "caFile":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 75
    goto :goto_34

    .line 77
    :cond_2b
    invoke-direct {p0, v5}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 78
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_34

    .line 79
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v5    # "caFile":Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 83
    :cond_37
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    .line 84
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    monitor-exit v0

    return-object v2

    .line 85
    .end local v1    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected abstract greylist-max-o isCertMarkedAsRemoved(Ljava/lang/String;)Z
.end method

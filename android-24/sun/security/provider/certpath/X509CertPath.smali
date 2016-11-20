.class public Lsun/security/provider/certpath/X509CertPath;
.super Ljava/security/cert/CertPath;
.source "X509CertPath.java"


# static fields
.field private static final COUNT_ENCODING:Ljava/lang/String; = "count"

.field private static final PKCS7_ENCODING:Ljava/lang/String; = "PKCS7"

.field private static final PKIPATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final encodingList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x453f54f74c4520b4L


# instance fields
.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 87
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "PkiPath"

    #@9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    .line 88
    const-string/jumbo v1, "PKCS7"

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@15
    move-result-object v1

    #@16
    sput-object v1, Lsun/security/provider/certpath/X509CertPath;->encodingList:Ljava/util/Collection;

    #@18
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "PkiPath"

    #@3
    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@6
    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    const-string/jumbo v0, "X.509"

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    #@6
    .line 156
    const-string/jumbo v0, "PkiPath"

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 158
    invoke-static {p1}, Lsun/security/provider/certpath/X509CertPath;->parsePKIPATH(Ljava/io/InputStream;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@15
    .line 153
    :goto_0
    return-void

    #@16
    .line 156
    :cond_0
    const-string/jumbo v0, "PKCS7"

    #@19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 161
    invoke-static {p1}, Lsun/security/provider/certpath/X509CertPath;->parsePKCS7(Ljava/io/InputStream;)Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@25
    goto :goto_0

    #@26
    .line 164
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    #@28
    const-string/jumbo v1, "unsupported encoding"

    #@2b
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    const-string/jumbo v2, "X.509"

    #@3
    invoke-direct {p0, v2}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    #@6
    .line 114
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "obj$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 115
    .local v0, "obj":Ljava/lang/Object;
    instance-of v2, v0, Ljava/security/cert/X509Certificate;

    #@16
    if-nez v2, :cond_0

    #@18
    .line 116
    new-instance v2, Ljava/security/cert/CertificateException;

    #@1a
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "List is not all X509Certificates: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 116
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 127
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3f
    .line 126
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@42
    move-result-object v2

    #@43
    iput-object v2, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@45
    .line 104
    return-void
.end method

.method private encodePKCS7()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 324
    new-instance v2, Lsun/security/pkcs/PKCS7;

    #@3
    new-array v4, v7, [Lsun/security/x509/AlgorithmId;

    #@5
    .line 325
    new-instance v5, Lsun/security/pkcs/ContentInfo;

    #@7
    sget-object v3, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@9
    const/4 v6, 0x0

    #@a
    invoke-direct {v5, v3, v6}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@d
    .line 326
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@f
    iget-object v6, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@11
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@14
    move-result v6

    #@15
    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    #@17
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, [Ljava/security/cert/X509Certificate;

    #@1d
    .line 327
    new-array v6, v7, [Lsun/security/pkcs/SignerInfo;

    #@1f
    .line 324
    invoke-direct {v2, v4, v5, v3, v6}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V

    #@22
    .line 328
    .local v2, "p7":Lsun/security/pkcs/PKCS7;
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@24
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@27
    .line 330
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 334
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 331
    :catch_0
    move-exception v1

    #@30
    .line 332
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    #@32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
.end method

.method private encodePKIPATH()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    iget-object v6, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@2
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@4
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@7
    move-result v7

    #@8
    invoke-interface {v6, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@b
    move-result-object v5

    #@c
    .line 291
    .local v5, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@e
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@11
    .line 294
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 295
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@1d
    .line 297
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@1f
    invoke-interface {v6, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@22
    move-result v6

    #@23
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@25
    invoke-interface {v7, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@28
    move-result v7

    #@29
    if-eq v6, v7, :cond_0

    #@2b
    .line 298
    new-instance v6, Ljava/security/cert/CertificateEncodingException;

    #@2d
    .line 299
    const-string/jumbo v7, "Duplicate Certificate"

    #@30
    .line 298
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@33
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 311
    .end local v0    # "bytes":Lsun/security/util/DerOutputStream;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v4

    #@35
    .line 312
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateEncodingException;

    #@37
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "IOException encoding PkiPath data: "

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-direct {v6, v7, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    throw v6

    #@4f
    .line 302
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "bytes":Lsun/security/util/DerOutputStream;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@52
    move-result-object v3

    #@53
    .line 303
    .local v3, "encoded":[B
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    #@56
    goto :goto_0

    #@57
    .line 307
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "encoded":[B
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@59
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5c
    .line 308
    .local v2, "derout":Lsun/security/util/DerOutputStream;
    const/16 v6, 0x30

    #@5e
    invoke-virtual {v2, v6, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@61
    .line 309
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@64
    move-result-object v6

    #@65
    return-object v6
.end method

.method public static getEncodingsStatic()Ljava/util/Iterator;
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
    .line 367
    sget-object v0, Lsun/security/provider/certpath/X509CertPath;->encodingList:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static parsePKCS7(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
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
    .line 221
    if-nez p0, :cond_0

    #@2
    .line 222
    new-instance v5, Ljava/security/cert/CertificateException;

    #@4
    const-string/jumbo v6, "input stream is null"

    #@7
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_1

    #@11
    .line 229
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@13
    invoke-static {p0}, Lsun/security/provider/certpath/X509CertPath;->readAllBytes(Ljava/io/InputStream;)[B

    #@16
    move-result-object v5

    #@17
    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@1a
    .end local p0    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object p0, v3

    #@1b
    .line 231
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v4, Lsun/security/pkcs/PKCS7;

    #@1d
    invoke-direct {v4, p0}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    #@20
    .line 233
    .local v4, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    #@23
    move-result-object v0

    #@24
    .line 235
    .local v0, "certArray":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    #@26
    .line 236
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v1

    #@2a
    .line 249
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v5

    #@2e
    return-object v5

    #@2f
    .line 239
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    #@31
    const/4 v5, 0x0

    #@32
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .restart local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_0

    #@36
    .line 241
    .end local v0    # "certArray":[Ljava/security/cert/X509Certificate;
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "pkcs7":Lsun/security/pkcs/PKCS7;
    :catch_0
    move-exception v2

    #@37
    .line 242
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateException;

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "IOException parsing PKCS7 data: "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@50
    throw v5
.end method

.method private static parsePKIPATH(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
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
    .line 178
    const/4 v1, 0x0

    #@1
    .line 179
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    #@2
    .line 181
    .local v0, "certFac":Ljava/security/cert/CertificateFactory;
    if-nez p0, :cond_0

    #@4
    .line 182
    new-instance v7, Ljava/security/cert/CertificateException;

    #@6
    const-string/jumbo v8, "input stream is null"

    #@9
    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v7

    #@d
    .line 186
    :cond_0
    :try_start_0
    new-instance v3, Lsun/security/util/DerInputStream;

    #@f
    invoke-static {p0}, Lsun/security/provider/certpath/X509CertPath;->readAllBytes(Ljava/io/InputStream;)[B

    #@12
    move-result-object v7

    #@13
    invoke-direct {v3, v7}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@16
    .line 187
    .local v3, "dis":Lsun/security/util/DerInputStream;
    const/4 v7, 0x3

    #@17
    invoke-virtual {v3, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@1a
    move-result-object v6

    #@1b
    .line 188
    .local v6, "seq":[Lsun/security/util/DerValue;
    array-length v7, v6

    #@1c
    if-nez v7, :cond_1

    #@1e
    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@21
    move-result-object v7

    #@22
    return-object v7

    #@23
    .line 192
    :cond_1
    const-string/jumbo v7, "X.509"

    #@26
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@29
    move-result-object v0

    #@2a
    .line 193
    .local v0, "certFac":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    array-length v7, v6

    #@2d
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 196
    .local v2, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_1
    array-length v7, v6

    #@31
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    add-int/lit8 v4, v7, -0x1

    #@33
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    #@35
    .line 198
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@37
    aget-object v8, v6, v4

    #@39
    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    #@3c
    move-result-object v8

    #@3d
    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@40
    .line 197
    invoke-virtual {v0, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@43
    move-result-object v7

    #@44
    check-cast v7, Ljava/security/cert/X509Certificate;

    #@46
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    .line 196
    add-int/lit8 v4, v4, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 201
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4f
    move-result-object v7

    #@50
    return-object v7

    #@51
    .line 203
    .end local v0    # "certFac":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "dis":Lsun/security/util/DerInputStream;
    .end local v4    # "i":I
    .end local v6    # "seq":[Lsun/security/util/DerValue;
    .restart local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v5

    #@52
    .line 204
    .end local v1    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "ioe":Ljava/io/IOException;
    :goto_1
    new-instance v7, Ljava/security/cert/CertificateException;

    #@54
    new-instance v8, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v9, "IOException parsing PkiPath data: "

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    invoke-direct {v7, v8, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6b
    throw v7

    #@6c
    .line 203
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v0    # "certFac":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v3    # "dis":Lsun/security/util/DerInputStream;
    .restart local v6    # "seq":[Lsun/security/util/DerValue;
    :catch_1
    move-exception v5

    #@6d
    .restart local v5    # "ioe":Ljava/io/IOException;
    move-object v1, v2

    #@6e
    .end local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_1
.end method

.method private static readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    const/16 v3, 0x2000

    #@2
    new-array v1, v3, [B

    #@4
    .line 260
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@6
    const/16 v3, 0x800

    #@8
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@b
    .line 262
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@e
    move-result v2

    #@f
    .local v2, "n":I
    const/4 v3, -0x1

    #@10
    if-eq v2, v3, :cond_0

    #@12
    .line 263
    const/4 v3, 0x0

    #@13
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@16
    goto :goto_0

    #@17
    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKIPATH()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    const-string/jumbo v0, "PkiPath"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 351
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKIPATH()[B

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 349
    :cond_0
    const-string/jumbo v0, "PKCS7"

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 353
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKCS7()[B

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 355
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    #@1e
    const-string/jumbo v1, "unsupported encoding"

    #@21
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public getEncodings()Ljava/util/Iterator;
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
    .line 383
    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

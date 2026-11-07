.class public Lsun/security/provider/certpath/X509CertPath;
.super Ljava/security/cert/CertPath;
.source "X509CertPath.java"


# static fields
.field private static final blacklist COUNT_ENCODING:Ljava/lang/String; = "count"

.field private static final blacklist PKCS7_ENCODING:Ljava/lang/String; = "PKCS7"

.field private static final blacklist PKIPATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final blacklist encodingList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x453f54f74c4520b4L


# instance fields
.field private greylist certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lsun/security/provider/certpath/X509CertPath;->encodingList:Ljava/util/Collection;

    .line 90
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 139
    const-string v0, "PkiPath"

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 154
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    :cond_c
    goto :goto_21

    :sswitch_d
    const-string v0, "PkiPath"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_22

    :sswitch_17
    const-string v0, "PKCS7"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_22

    :goto_21
    const/4 v0, -0x1

    :goto_22
    packed-switch v0, :pswitch_data_46

    .line 164
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "unsupported encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_2d
    invoke-static {p1}, Lsun/security/provider/certpath/X509CertPath;->parsePKCS7(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    .line 162
    goto :goto_3b

    .line 158
    :pswitch_34
    invoke-static {p1}, Lsun/security/provider/certpath/X509CertPath;->parsePKIPATH(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    .line 159
    nop

    .line 166
    :goto_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        0x48a75ec -> :sswitch_17
        0x44768af3 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method public constructor greylist <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 105
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_18

    .line 120
    .end local v1    # "obj":Ljava/lang/Object;
    goto :goto_9

    .line 116
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_18
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List is not all X509Certificates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    .line 128
    return-void
.end method

.method private blacklist encodePKCS7()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 324
    new-instance v0, Lsun/security/pkcs/PKCS7;

    const/4 v1, 0x0

    new-array v2, v1, [Lsun/security/x509/AlgorithmId;

    new-instance v3, Lsun/security/pkcs/ContentInfo;

    sget-object v4, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    iget-object v4, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    iget-object v5, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    .line 326
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    new-array v1, v1, [Lsun/security/pkcs/SignerInfo;

    invoke-direct {v0, v2, v3, v4, v1}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V

    .line 328
    .local v0, "p7":Lsun/security/pkcs/PKCS7;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 330
    .local v1, "derout":Lsun/security/util/DerOutputStream;
    :try_start_27
    invoke-virtual {v0, v1}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_30

    .line 333
    nop

    .line 334
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 331
    :catch_30
    move-exception v2

    .line 332
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist encodePKIPATH()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    iget-object v1, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 291
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/X509Certificate;>;"
    :try_start_c
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 294
    .local v1, "bytes":Lsun/security/util/DerOutputStream;
    :goto_11
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 295
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 297
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 302
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 303
    .local v3, "encoded":[B
    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 304
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "encoded":[B
    goto :goto_11

    .line 298
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_33
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    const-string v4, "Duplicate Certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/X509Certificate;>;"
    .end local p0    # "this":Lsun/security/provider/certpath/X509CertPath;
    throw v3

    .line 307
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/X509Certificate;>;"
    .restart local p0    # "this":Lsun/security/provider/certpath/X509CertPath;
    :cond_3b
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 308
    .local v2, "derout":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v2, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 309
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_49} :catch_4a

    return-object v3

    .line 311
    .end local v1    # "bytes":Lsun/security/util/DerOutputStream;
    .end local v2    # "derout":Lsun/security/util/DerOutputStream;
    :catch_4a
    move-exception v1

    .line 312
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException encoding PkiPath data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static greylist getEncodingsStatic()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    sget-object v0, Lsun/security/provider/certpath/X509CertPath;->encodingList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parsePKCS7(Ljava/io/InputStream;)Ljava/util/List;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 221
    if-eqz p0, :cond_48

    .line 226
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 229
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lsun/security/provider/certpath/X509CertPath;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p0, v0

    .line 231
    :cond_12
    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p0}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v0, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 235
    .local v1, "certArray":[Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_22

    .line 236
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .local v2, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_28

    .line 239
    .end local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_2e

    .line 244
    .end local v0    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .end local v1    # "certArray":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_28
    nop

    .line 249
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 241
    .end local v2    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_2e
    move-exception v0

    .line 242
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException parsing PKCS7 data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_48
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "input stream is null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parsePKIPATH(Ljava/io/InputStream;)Ljava/util/List;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "certFac":Ljava/security/cert/CertificateFactory;
    if-eqz p0, :cond_63

    .line 186
    :try_start_4
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-static {p0}, Lsun/security/provider/certpath/X509CertPath;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 187
    .local v2, "dis":Lsun/security/util/DerInputStream;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 188
    .local v3, "seq":[Lsun/security/util/DerValue;
    array-length v4, v3

    if-nez v4, :cond_1a

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 192
    :cond_1a
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    move-object v1, v4

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 196
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_2b
    if-ltz v4, :cond_44

    .line 197
    new-instance v5, Ljava/io/ByteArrayInputStream;

    aget-object v6, v3, v4

    .line 198
    invoke-virtual {v6}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 197
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 201
    .end local v4    # "i":I
    :cond_44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_48} :catch_49

    return-object v4

    .line 203
    .end local v2    # "dis":Lsun/security/util/DerInputStream;
    .end local v3    # "seq":[Lsun/security/util/DerValue;
    :catch_49
    move-exception v2

    .line 204
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException parsing PkiPath data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 182
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_63
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "input stream is null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist readAllBytes(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 260
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 262
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_b
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "n":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_18

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 265
    :cond_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertPath;->certs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKIPATH()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded(Ljava/lang/String;)[B
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "PkiPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_12
    const-string v0, "PKCS7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_3c

    .line 355
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "unsupported encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_28
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKCS7()[B

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_2d
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertPath;->encodePKIPATH()[B

    move-result-object v0

    return-object v0

    :sswitch_data_32
    .sparse-switch
        0x48a75ec -> :sswitch_12
        0x44768af3 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method public whitelist test-api getEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

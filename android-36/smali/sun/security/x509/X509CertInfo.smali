.class public Lsun/security/x509/X509CertInfo;
.super Ljava/lang/Object;
.source "X509CertInfo.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ALGORITHM_ID:Ljava/lang/String; = "algorithmID"

.field private static final blacklist ATTR_ALGORITHM:I = 0x3

.field private static final blacklist ATTR_EXTENSIONS:I = 0xa

.field private static final blacklist ATTR_ISSUER:I = 0x4

.field private static final blacklist ATTR_ISSUER_ID:I = 0x8

.field private static final blacklist ATTR_KEY:I = 0x7

.field private static final blacklist ATTR_SERIAL:I = 0x2

.field private static final blacklist ATTR_SUBJECT:I = 0x6

.field private static final blacklist ATTR_SUBJECT_ID:I = 0x9

.field private static final blacklist ATTR_VALIDITY:I = 0x5

.field private static final blacklist ATTR_VERSION:I = 0x1

.field public static final blacklist DN_NAME:Ljava/lang/String; = "dname"

.field public static final blacklist EXTENSIONS:Ljava/lang/String; = "extensions"

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info"

.field public static final blacklist ISSUER:Ljava/lang/String; = "issuer"

.field public static final blacklist ISSUER_ID:Ljava/lang/String; = "issuerID"

.field public static final blacklist KEY:Ljava/lang/String; = "key"

.field public static final blacklist NAME:Ljava/lang/String; = "info"

.field public static final blacklist SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final blacklist SUBJECT:Ljava/lang/String; = "subject"

.field public static final blacklist SUBJECT_ID:Ljava/lang/String; = "subjectID"

.field public static final blacklist VALIDITY:Ljava/lang/String; = "validity"

.field public static final blacklist VERSION:Ljava/lang/String; = "version"

.field private static final blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist algId:Lsun/security/x509/CertificateAlgorithmId;

.field protected blacklist extensions:Lsun/security/x509/CertificateExtensions;

.field protected blacklist interval:Lsun/security/x509/CertificateValidity;

.field protected blacklist issuer:Lsun/security/x509/X500Name;

.field protected blacklist issuerUniqueId:Lsun/security/x509/UniqueIdentity;

.field protected blacklist pubKey:Lsun/security/x509/CertificateX509Key;

.field private blacklist rawCertInfo:[B

.field protected blacklist serialNum:Lsun/security/x509/CertificateSerialNumber;

.field protected blacklist subject:Lsun/security/x509/X500Name;

.field protected blacklist subjectUniqueId:Lsun/security/x509/UniqueIdentity;

.field protected blacklist version:Lsun/security/x509/CertificateVersion;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    .line 117
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "serialNumber"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "algorithmID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "issuer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "validity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subject"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "issuerID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subjectID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extensions"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lsun/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 86
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 87
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 88
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 89
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 90
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 93
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 94
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 112
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lsun/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 86
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 87
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 88
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 89
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 90
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 93
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 94
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 112
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 167
    :try_start_1f
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_24

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_24
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor greylist <init>([B)V
    .registers 4
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lsun/security/x509/CertificateVersion;

    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 86
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 87
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 88
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 89
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 90
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 93
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 94
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 112
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 149
    :try_start_1f
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 151
    .local v0, "in":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_29

    .line 154
    .end local v0    # "in":Lsun/security/util/DerValue;
    nop

    .line 155
    return-void

    .line 152
    :catch_29
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist attributeMap(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 805
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 806
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_c

    .line 807
    const/4 v1, 0x0

    return v1

    .line 809
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist emit(Lsun/security/util/DerOutputStream;)V
    .registers 7
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 759
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateVersion;->encode(Ljava/io/OutputStream;)V

    .line 763
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSerialNumber;->encode(Ljava/io/OutputStream;)V

    .line 764
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateAlgorithmId;->encode(Ljava/io/OutputStream;)V

    .line 766
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 767
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    goto :goto_2e

    .line 768
    :cond_26
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Null issuer DN not allowed in v1 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 772
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateValidity;->encode(Ljava/io/OutputStream;)V

    .line 775
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v1, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 776
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    goto :goto_51

    .line 777
    :cond_49
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Null subject DN not allowed in v1 certificate"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_51
    :goto_51
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 780
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateX509Key;->encode(Ljava/io/OutputStream;)V

    .line 783
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    const/16 v3, -0x80

    if-eqz v1, :cond_6b

    .line 784
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v1, v0, v4}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    .line 787
    :cond_6b
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_79

    .line 788
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    .line 793
    :cond_79
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v1, :cond_82

    .line 794
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;)V

    .line 798
    :cond_82
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 799
    return-void
.end method

.method private blacklist getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    const-string v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 611
    if-eqz p2, :cond_d

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    :goto_f
    return-object v0

    .line 612
    :cond_10
    const-string v0, "x500principal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 613
    if-eqz p2, :cond_21

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_27

    .line 614
    :cond_21
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 613
    :goto_27
    return-object v0

    .line 616
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parse(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_f2

    .line 631
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 633
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 636
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 637
    .local v1, "tmp":Lsun/security/util/DerValue;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 638
    new-instance v3, Lsun/security/x509/CertificateVersion;

    invoke-direct {v3, v1}, Lsun/security/x509/CertificateVersion;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 639
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 643
    :cond_24
    new-instance v3, Lsun/security/x509/CertificateSerialNumber;

    invoke-direct {v3, v1}, Lsun/security/x509/CertificateSerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 646
    new-instance v3, Lsun/security/x509/CertificateAlgorithmId;

    invoke-direct {v3, v0}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 649
    new-instance v3, Lsun/security/x509/X500Name;

    invoke-direct {v3, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 650
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v3}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ea

    .line 656
    new-instance v3, Lsun/security/x509/CertificateValidity;

    invoke-direct {v3, v0}, Lsun/security/x509/CertificateValidity;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 659
    new-instance v3, Lsun/security/x509/X500Name;

    invoke-direct {v3, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 660
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v3

    if-nez v3, :cond_68

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 661
    invoke-virtual {v3}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_68

    .line 662
    :cond_60
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Empty subject DN not allowed in v1 certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_68
    :goto_68
    new-instance v3, Lsun/security/x509/CertificateX509Key;

    invoke-direct {v3, v0}, Lsun/security/x509/CertificateX509Key;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 670
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_e9

    .line 671
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-eqz v2, :cond_e1

    .line 680
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 681
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 682
    new-instance v2, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 683
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_96

    .line 684
    return-void

    .line 685
    :cond_96
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 689
    :cond_9a
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 690
    new-instance v3, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v3, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 691
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_af

    .line 692
    return-void

    .line 693
    :cond_af
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 697
    :cond_b3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v2

    if-nez v2, :cond_d9

    .line 701
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_d1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 702
    new-instance v2, Lsun/security/x509/CertificateExtensions;

    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v2, v3}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 706
    :cond_d1
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V

    .line 708
    return-void

    .line 698
    :cond_d9
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Extensions not allowed in v2 certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_e1
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "no more data allowed for version 1 certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 676
    :cond_e9
    return-void

    .line 651
    :cond_ea
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Empty issuer DN not allowed in X509Certificates"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    .end local v0    # "in":Lsun/security/util/DerInputStream;
    .end local v1    # "tmp":Lsun/security/util/DerValue;
    :cond_f2
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "signed fields invalid"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setAlgorithmId(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 845
    instance-of v0, p1, Lsun/security/x509/CertificateAlgorithmId;

    if-eqz v0, :cond_a

    .line 849
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateAlgorithmId;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    .line 850
    return-void

    .line 846
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "AlgorithmId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setExtensions(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 952
    instance-of v0, p1, Lsun/security/x509/CertificateExtensions;

    if-eqz v0, :cond_13

    .line 956
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateExtensions;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 957
    return-void

    .line 953
    :cond_13
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Extensions class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_1b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setIssuer(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 859
    instance-of v0, p1, Lsun/security/x509/X500Name;

    if-eqz v0, :cond_a

    .line 863
    move-object v0, p1

    check-cast v0, Lsun/security/x509/X500Name;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 864
    return-void

    .line 860
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Issuer class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setIssuerUniqueId(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 918
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    if-eqz v0, :cond_13

    .line 922
    move-object v0, p1

    check-cast v0, Lsun/security/x509/UniqueIdentity;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 923
    return-void

    .line 919
    :cond_13
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "IssuerUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setKey(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 901
    instance-of v0, p1, Lsun/security/x509/CertificateX509Key;

    if-eqz v0, :cond_a

    .line 905
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateX509Key;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    .line 906
    return-void

    .line 902
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Key class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSerialNumber(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 832
    instance-of v0, p1, Lsun/security/x509/CertificateSerialNumber;

    if-eqz v0, :cond_a

    .line 835
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateSerialNumber;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    .line 836
    return-void

    .line 833
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "SerialNumber class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSubject(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 887
    instance-of v0, p1, Lsun/security/x509/X500Name;

    if-eqz v0, :cond_a

    .line 891
    move-object v0, p1

    check-cast v0, Lsun/security/x509/X500Name;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 892
    return-void

    .line 888
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Subject class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSubjectUniqueId(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 935
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    if-eqz v0, :cond_13

    .line 939
    move-object v0, p1

    check-cast v0, Lsun/security/x509/UniqueIdentity;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 940
    return-void

    .line 936
    :cond_13
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "SubjectUniqueId class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_1b
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setValidity(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 873
    instance-of v0, p1, Lsun/security/x509/CertificateValidity;

    if-eqz v0, :cond_a

    .line 877
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateValidity;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    .line 878
    return-void

    .line 874
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "CertificateValidity class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setVersion(Ljava/lang/Object;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 819
    instance-of v0, p1, Lsun/security/x509/CertificateVersion;

    if-eqz v0, :cond_a

    .line 822
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateVersion;

    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    .line 823
    return-void

    .line 820
    :cond_a
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Version class type invalid."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V
    .registers 9
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .param p2, "extensions"    # Lsun/security/x509/CertificateExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 719
    if-eqz p2, :cond_43

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v1, 0x0

    .line 726
    .local v1, "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v2, 0x0

    .line 728
    .local v2, "names":Lsun/security/x509/GeneralNames;
    :try_start_b
    const-string v3, "SubjectAlternativeName"

    .line 729
    invoke-virtual {p2, v3}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v3

    check-cast v3, Lsun/security/x509/SubjectAlternativeNameExtension;

    move-object v0, v3

    .line 730
    const-string v3, "subject_name"

    invoke-virtual {v0, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1a} :catch_3a

    .line 736
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    .local v3, "names":Lsun/security/x509/GeneralNames;
    nop

    .line 739
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 743
    invoke-virtual {v0}, Lsun/security/x509/SubjectAlternativeNameExtension;->isCritical()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_4b

    .line 744
    :cond_2a
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v4, "X.509 Certificate is incomplete: SubjectAlternativeName extension MUST be marked critical when subject field is empty"

    invoke-direct {v2, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    :cond_32
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v4, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is empty"

    invoke-direct {v2, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    .restart local v2    # "names":Lsun/security/x509/GeneralNames;
    :catch_3a
    move-exception v3

    .line 733
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    const-string v5, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is absent"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    .end local v0    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v1    # "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_43
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "X.509 Certificate is incomplete: subject field is empty, and certificate has no extensions"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "attr":I
    if-eqz v1, :cond_6d

    .line 463
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 464
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "suffix":Ljava/lang/String;
    packed-switch v1, :pswitch_data_86

    goto :goto_6c

    .line 515
    :pswitch_1a
    if-nez v3, :cond_1f

    .line 516
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    goto :goto_6c

    .line 518
    :cond_1f
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v2, :cond_6c

    .line 519
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificateExtensions;->delete(Ljava/lang/String;)V

    goto :goto_6c

    .line 512
    :pswitch_29
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 513
    goto :goto_6c

    .line 509
    :pswitch_2c
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    .line 510
    goto :goto_6c

    .line 502
    :pswitch_2f
    if-nez v3, :cond_34

    .line 503
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    goto :goto_6c

    .line 505
    :cond_34
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificateX509Key;->delete(Ljava/lang/String;)V

    .line 507
    goto :goto_6c

    .line 499
    :pswitch_3a
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    .line 500
    goto :goto_6c

    .line 492
    :pswitch_3d
    if-nez v3, :cond_42

    .line 493
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    goto :goto_6c

    .line 495
    :cond_42
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificateValidity;->delete(Ljava/lang/String;)V

    .line 497
    goto :goto_6c

    .line 489
    :pswitch_48
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    .line 490
    goto :goto_6c

    .line 482
    :pswitch_4b
    if-nez v3, :cond_50

    .line 483
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    goto :goto_6c

    .line 485
    :cond_50
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificateAlgorithmId;->delete(Ljava/lang/String;)V

    .line 487
    goto :goto_6c

    .line 475
    :pswitch_56
    if-nez v3, :cond_5b

    .line 476
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    goto :goto_6c

    .line 478
    :cond_5b
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificateSerialNumber;->delete(Ljava/lang/String;)V

    .line 480
    goto :goto_6c

    .line 468
    :pswitch_61
    if-nez v3, :cond_66

    .line 469
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    goto :goto_6c

    .line 471
    :cond_66
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v2, v3}, Lsun/security/x509/CertificateVersion;->delete(Ljava/lang/String;)V

    .line 473
    nop

    .line 523
    :cond_6c
    :goto_6c
    return-void

    .line 459
    .end local v3    # "suffix":Ljava/lang/String;
    :cond_6d
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute name not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_61
        :pswitch_56
        :pswitch_4b
        :pswitch_48
        :pswitch_3d
        :pswitch_3a
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_1a
    .end packed-switch
.end method

.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v0, :cond_12

    .line 183
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 184
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    .line 185
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 187
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_12
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 188
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 246
    instance-of v0, p1, Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_c

    .line 247
    move-object v0, p1

    check-cast v0, Lsun/security/x509/X509CertInfo;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertInfo;->equals(Lsun/security/x509/X509CertInfo;)Z

    move-result v0

    return v0

    .line 249
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(Lsun/security/x509/X509CertInfo;)Z
    .registers 7
    .param p1, "other"    # Lsun/security/x509/X509CertInfo;

    .line 261
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 262
    return v0

    .line 263
    :cond_4
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    iget-object v1, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v1, :cond_e

    goto :goto_2c

    .line 265
    :cond_e
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v1, v1

    iget-object v3, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v3

    if-eq v1, v3, :cond_17

    .line 266
    return v2

    .line 268
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2b

    .line 269
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v3, v3, v1

    iget-object v4, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_28

    .line 270
    return v2

    .line 268
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 273
    .end local v1    # "i":I
    :cond_2b
    return v0

    .line 264
    :cond_2c
    :goto_2c
    return v2
.end method

.method public greylist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, "attr":I
    if-eqz v1, :cond_81

    .line 542
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "suffix":Ljava/lang/String;
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_9a

    .line 602
    return-object v3

    .line 546
    :pswitch_18
    if-nez v2, :cond_1d

    .line 547
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    return-object v3

    .line 549
    :cond_1d
    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v4, :cond_22

    .line 550
    return-object v3

    .line 552
    :cond_22
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v3

    return-object v3

    .line 600
    :pswitch_29
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    return-object v3

    .line 598
    :pswitch_2c
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    return-object v3

    .line 568
    :pswitch_2f
    if-nez v2, :cond_34

    .line 569
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    return-object v3

    .line 571
    :cond_34
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3

    .line 556
    :pswitch_3b
    if-nez v2, :cond_40

    .line 557
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    return-object v3

    .line 559
    :cond_40
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 580
    :pswitch_46
    if-nez v2, :cond_4b

    .line 581
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    return-object v3

    .line 583
    :cond_4b
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    return-object v3

    .line 562
    :pswitch_52
    if-nez v2, :cond_57

    .line 563
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    return-object v3

    .line 565
    :cond_57
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 574
    :pswitch_5d
    if-nez v2, :cond_62

    .line 575
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    return-object v3

    .line 577
    :cond_62
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    return-object v3

    .line 592
    :pswitch_69
    if-nez v2, :cond_6e

    .line 593
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    return-object v3

    .line 595
    :cond_6e
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Lsun/security/x509/SerialNumber;

    move-result-object v3

    return-object v3

    .line 586
    :pswitch_75
    if-nez v2, :cond_7a

    .line 587
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    return-object v3

    .line 589
    :cond_7a
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 539
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_81
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute name not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_52
        :pswitch_46
        :pswitch_3b
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_18
    .end packed-switch
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 196
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 197
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 198
    const-string v1, "algorithmID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 199
    const-string v1, "issuer"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 200
    const-string v1, "validity"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 201
    const-string v1, "subject"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 202
    const-string v1, "key"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 203
    const-string v1, "issuerID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 204
    const-string v1, "subjectID"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 205
    const-string v1, "extensions"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEncodedInfo()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 224
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v0, :cond_12

    .line 225
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 226
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    .line 227
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 229
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_12
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    .line 232
    :catch_1b
    move-exception v0

    .line 233
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_26
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 214
    const-string v0, "info"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "retval":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 284
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v1    # "i":I
    :cond_10
    return v0
.end method

.method public greylist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, "attr":I
    if-eqz v1, :cond_80

    .line 374
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    .line 375
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v1, :pswitch_data_9a

    goto/16 :goto_7f

    .line 435
    :pswitch_1b
    if-nez v2, :cond_22

    .line 436
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setExtensions(Ljava/lang/Object;)V

    goto/16 :goto_7f

    .line 438
    :cond_22
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-nez v3, :cond_2d

    .line 439
    new-instance v3, Lsun/security/x509/CertificateExtensions;

    invoke-direct {v3}, Lsun/security/x509/CertificateExtensions;-><init>()V

    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    .line 440
    :cond_2d
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7f

    .line 431
    :pswitch_33
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubjectUniqueId(Ljava/lang/Object;)V

    .line 432
    goto :goto_7f

    .line 427
    :pswitch_37
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuerUniqueId(Ljava/lang/Object;)V

    .line 428
    goto :goto_7f

    .line 419
    :pswitch_3b
    if-nez v2, :cond_41

    .line 420
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setKey(Ljava/lang/Object;)V

    goto :goto_7f

    .line 422
    :cond_41
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateX509Key;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    goto :goto_7f

    .line 415
    :pswitch_47
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubject(Ljava/lang/Object;)V

    .line 416
    goto :goto_7f

    .line 407
    :pswitch_4b
    if-nez v2, :cond_51

    .line 408
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setValidity(Ljava/lang/Object;)V

    goto :goto_7f

    .line 410
    :cond_51
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateValidity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    goto :goto_7f

    .line 403
    :pswitch_57
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuer(Ljava/lang/Object;)V

    .line 404
    goto :goto_7f

    .line 395
    :pswitch_5b
    if-nez v2, :cond_61

    .line 396
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setAlgorithmId(Ljava/lang/Object;)V

    goto :goto_7f

    .line 398
    :cond_61
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateAlgorithmId;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    goto :goto_7f

    .line 387
    :pswitch_67
    if-nez v2, :cond_6d

    .line 388
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSerialNumber(Ljava/lang/Object;)V

    goto :goto_7f

    .line 390
    :cond_6d
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSerialNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    goto :goto_7f

    .line 379
    :pswitch_73
    if-nez v2, :cond_79

    .line 380
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setVersion(Ljava/lang/Object;)V

    goto :goto_7f

    .line 382
    :cond_79
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateVersion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    nop

    .line 444
    :goto_7f
    return-void

    .line 370
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_80
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute name not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_73
        :pswitch_67
        :pswitch_5b
        :pswitch_57
        :pswitch_4b
        :pswitch_47
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_1b
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 294
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    if-eqz v0, :cond_252

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    if-eqz v0, :cond_252

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    if-eqz v0, :cond_252

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    if-eqz v0, :cond_252

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    if-eqz v0, :cond_252

    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    if-eqz v0, :cond_252

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    invoke-virtual {v3}, Lsun/security/x509/CertificateVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Subject: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v4}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Signature Algorithm: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v4}, Lsun/security/x509/CertificateAlgorithmId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Key:  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    invoke-virtual {v4}, Lsun/security/x509/CertificateX509Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    invoke-virtual {v4}, Lsun/security/x509/CertificateValidity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Issuer: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v4}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    invoke-virtual {v2}, Lsun/security/x509/CertificateSerialNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_124

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Issuer Id:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v2}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_124
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    if-eqz v1, :cond_148

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Subject Id:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v2}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_148
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    if-eqz v1, :cond_248

    .line 317
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    .line 318
    .local v1, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Lsun/security/x509/Extension;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/x509/Extension;

    .line 319
    .local v2, "exts":[Lsun/security/x509/Extension;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nCertificate Extensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_173
    array-length v5, v2

    const-string v6, "]: "

    const-string v7, "\n["

    if-ge v4, v5, :cond_1ee

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    aget-object v5, v2, v4

    .line 324
    .local v5, "ext":Lsun/security/x509/Extension;
    :try_start_196
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1dd

    .line 325
    invoke-virtual {v5}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v6

    .line 327
    .local v6, "extValue":[B
    if-eqz v6, :cond_1dc

    .line 328
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 329
    .local v7, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v7, v6}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 330
    invoke-virtual {v7}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    .line 331
    .end local v6    # "extValue":[B
    .local v8, "extValue":[B
    new-instance v6, Lsun/misc/HexDumpEncoder;

    invoke-direct {v6}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 332
    .local v6, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 334
    invoke-virtual {v6, v8}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 332
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .end local v6    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v7    # "out":Lsun/security/util/DerOutputStream;
    .end local v8    # "extValue":[B
    :cond_1dc
    goto :goto_1e4

    .line 337
    :cond_1dd
    invoke-virtual {v5}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1e4} :catch_1e5

    .line 340
    :goto_1e4
    goto :goto_1eb

    .line 338
    :catch_1e5
    move-exception v6

    .line 339
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, ", Error parsing this extension"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .end local v5    # "ext":Lsun/security/x509/Extension;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1eb
    add-int/lit8 v4, v4, 0x1

    goto :goto_173

    .line 342
    .end local v4    # "i":I
    :cond_1ee
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    invoke-virtual {v3}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v3

    .line 343
    .local v3, "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_248

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nUnparseable certificate extensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/4 v4, 0x1

    .line 346
    .restart local v4    # "i":I
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_248

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/Extension;

    .line 347
    .local v8, "ext":Lsun/security/x509/Extension;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "i":I
    .local v10, "i":I
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .end local v8    # "ext":Lsun/security/x509/Extension;
    move v4, v10

    goto :goto_21d

    .line 352
    .end local v1    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v2    # "exts":[Lsun/security/x509/Extension;
    .end local v3    # "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    .end local v10    # "i":I
    :cond_248
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "X.509 cert is incomplete"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

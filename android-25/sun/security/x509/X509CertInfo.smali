.class public Lsun/security/x509/X509CertInfo;
.super Ljava/lang/Object;
.source "X509CertInfo.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALGORITHM_ID:Ljava/lang/String; = "algorithmID"

.field private static final ATTR_ALGORITHM:I = 0x3

.field private static final ATTR_EXTENSIONS:I = 0xa

.field private static final ATTR_ISSUER:I = 0x4

.field private static final ATTR_ISSUER_ID:I = 0x8

.field private static final ATTR_KEY:I = 0x7

.field private static final ATTR_SERIAL:I = 0x2

.field private static final ATTR_SUBJECT:I = 0x6

.field private static final ATTR_SUBJECT_ID:I = 0x9

.field private static final ATTR_VALIDITY:I = 0x5

.field private static final ATTR_VERSION:I = 0x1

.field public static final DN_NAME:Ljava/lang/String; = "dname"

.field public static final EXTENSIONS:Ljava/lang/String; = "extensions"

.field public static final IDENT:Ljava/lang/String; = "x509.info"

.field public static final ISSUER:Ljava/lang/String; = "issuer"

.field public static final ISSUER_ID:Ljava/lang/String; = "issuerID"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NAME:Ljava/lang/String; = "info"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SUBJECT_ID:Ljava/lang/String; = "subjectID"

.field public static final VALIDITY:Ljava/lang/String; = "validity"

.field public static final VERSION:Ljava/lang/String; = "version"

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected algId:Lsun/security/x509/CertificateAlgorithmId;

.field protected extensions:Lsun/security/x509/CertificateExtensions;

.field protected interval:Lsun/security/x509/CertificateValidity;

.field protected issuer:Lsun/security/x509/X500Name;

.field protected issuerUniqueId:Lsun/security/x509/UniqueIdentity;

.field protected pubKey:Lsun/security/x509/CertificateX509Key;

.field private rawCertInfo:[B

.field protected serialNum:Lsun/security/x509/CertificateSerialNumber;

.field protected subject:Lsun/security/x509/X500Name;

.field protected subjectUniqueId:Lsun/security/x509/UniqueIdentity;

.field protected version:Lsun/security/x509/CertificateVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@7
    .line 117
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@9
    const-string/jumbo v1, "version"

    #@c
    const/4 v2, 0x1

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 118
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@16
    const-string/jumbo v1, "serialNumber"

    #@19
    const/4 v2, 0x2

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 119
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@23
    const-string/jumbo v1, "algorithmID"

    #@26
    const/4 v2, 0x3

    #@27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 120
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@30
    const-string/jumbo v1, "issuer"

    #@33
    const/4 v2, 0x4

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 121
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@3d
    const-string/jumbo v1, "validity"

    #@40
    const/4 v2, 0x5

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 122
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@4a
    const-string/jumbo v1, "subject"

    #@4d
    const/4 v2, 0x6

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 123
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@57
    const-string/jumbo v1, "key"

    #@5a
    const/4 v2, 0x7

    #@5b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v2

    #@5f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 124
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@64
    const-string/jumbo v1, "issuerID"

    #@67
    const/16 v2, 0x8

    #@69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v2

    #@6d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 125
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@72
    const-string/jumbo v1, "subjectID"

    #@75
    const/16 v2, 0x9

    #@77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v2

    #@7b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 126
    sget-object v0, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@80
    const-string/jumbo v1, "extensions"

    #@83
    const/16 v2, 0xa

    #@85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v2

    #@89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    new-instance v0, Lsun/security/x509/CertificateVersion;

    #@6
    invoke-direct {v0}, Lsun/security/x509/CertificateVersion;-><init>()V

    #@9
    iput-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@b
    .line 85
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@d
    .line 86
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@f
    .line 87
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@11
    .line 88
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@13
    .line 89
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@15
    .line 90
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@17
    .line 93
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@19
    .line 94
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@1b
    .line 97
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@1d
    .line 112
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@1f
    .line 133
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    new-instance v1, Lsun/security/x509/CertificateVersion;

    #@6
    invoke-direct {v1}, Lsun/security/x509/CertificateVersion;-><init>()V

    #@9
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@b
    .line 85
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@d
    .line 86
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@f
    .line 87
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@11
    .line 88
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@13
    .line 89
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@15
    .line 90
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@17
    .line 93
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@19
    .line 94
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@1b
    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@1d
    .line 112
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@1f
    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 165
    return-void

    #@23
    .line 168
    :catch_0
    move-exception v0

    #@24
    .line 169
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    #@26
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    #@29
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    new-instance v2, Lsun/security/x509/CertificateVersion;

    #@6
    invoke-direct {v2}, Lsun/security/x509/CertificateVersion;-><init>()V

    #@9
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@b
    .line 85
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@d
    .line 86
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@f
    .line 87
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@11
    .line 88
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@13
    .line 89
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@15
    .line 90
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@17
    .line 93
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@19
    .line 94
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@1b
    .line 97
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@1d
    .line 112
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@1f
    .line 149
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@21
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@24
    .line 151
    .local v1, "in":Lsun/security/util/DerValue;
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertInfo;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 147
    return-void

    #@28
    .line 152
    .end local v1    # "in":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    #@29
    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@2b
    invoke-direct {v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v2
.end method

.method private attributeMap(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 805
    sget-object v1, Lsun/security/x509/X509CertInfo;->map:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 806
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@a
    .line 807
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 809
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v1

    #@10
    return v1
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, -0x80

    #@2
    const/4 v3, 0x0

    #@3
    .line 756
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@5
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8
    .line 759
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@a
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateVersion;->encode(Ljava/io/OutputStream;)V

    #@d
    .line 763
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@f
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateSerialNumber;->encode(Ljava/io/OutputStream;)V

    #@12
    .line 764
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@14
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateAlgorithmId;->encode(Ljava/io/OutputStream;)V

    #@17
    .line 766
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@19
    invoke-virtual {v1, v3}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 767
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@21
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_0

    #@27
    .line 768
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    #@29
    .line 769
    const-string/jumbo v2, "Null issuer DN not allowed in v1 certificate"

    #@2c
    .line 768
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 771
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@32
    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    #@35
    .line 772
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@37
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateValidity;->encode(Ljava/io/OutputStream;)V

    #@3a
    .line 775
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@3c
    invoke-virtual {v1, v3}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@3f
    move-result v1

    #@40
    if-nez v1, :cond_1

    #@42
    .line 776
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@44
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    if-nez v1, :cond_1

    #@4a
    .line 777
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    #@4c
    .line 778
    const-string/jumbo v2, "Null subject DN not allowed in v1 certificate"

    #@4f
    .line 777
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@52
    throw v1

    #@53
    .line 779
    :cond_1
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@55
    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    #@58
    .line 780
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@5a
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateX509Key;->encode(Ljava/io/OutputStream;)V

    #@5d
    .line 783
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@5f
    if-eqz v1, :cond_2

    #@61
    .line 784
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@63
    .line 785
    const/4 v2, 0x1

    #@64
    .line 784
    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@67
    move-result v2

    #@68
    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    #@6b
    .line 787
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@6d
    if-eqz v1, :cond_3

    #@6f
    .line 788
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@71
    .line 789
    const/4 v2, 0x2

    #@72
    .line 788
    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@75
    move-result v2

    #@76
    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    #@79
    .line 793
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@7b
    if-eqz v1, :cond_4

    #@7d
    .line 794
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@7f
    invoke-virtual {v1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;)V

    #@82
    .line 798
    :cond_4
    const/16 v1, 0x30

    #@84
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@87
    .line 755
    return-void
.end method

.method private getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 610
    const-string/jumbo v0, "dname"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 611
    if-eqz p2, :cond_0

    #@b
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@d
    :goto_0
    return-object v0

    #@e
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@10
    goto :goto_0

    #@11
    .line 612
    :cond_1
    const-string/jumbo v0, "x500principal"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 613
    if-eqz p2, :cond_2

    #@1c
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@1e
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@21
    move-result-object v0

    #@22
    :goto_1
    return-object v0

    #@23
    .line 614
    :cond_2
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@25
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@28
    move-result-object v0

    #@29
    goto :goto_1

    #@2a
    .line 616
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@2c
    const-string/jumbo v1, "Attribute name not recognized."

    #@2f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 628
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@4
    const/16 v3, 0x30

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 629
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@a
    const-string/jumbo v3, "signed fields invalid"

    #@d
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 631
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@17
    .line 633
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@19
    .line 636
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1c
    move-result-object v1

    #@1d
    .line 637
    .local v1, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 638
    new-instance v2, Lsun/security/x509/CertificateVersion;

    #@25
    invoke-direct {v2, v1}, Lsun/security/x509/CertificateVersion;-><init>(Lsun/security/util/DerValue;)V

    #@28
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@2a
    .line 639
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2d
    move-result-object v1

    #@2e
    .line 643
    :cond_1
    new-instance v2, Lsun/security/x509/CertificateSerialNumber;

    #@30
    invoke-direct {v2, v1}, Lsun/security/x509/CertificateSerialNumber;-><init>(Lsun/security/util/DerValue;)V

    #@33
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@35
    .line 646
    new-instance v2, Lsun/security/x509/CertificateAlgorithmId;

    #@37
    invoke-direct {v2, v0}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/util/DerInputStream;)V

    #@3a
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@3c
    .line 649
    new-instance v2, Lsun/security/x509/X500Name;

    #@3e
    invoke-direct {v2, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@41
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@43
    .line 650
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@45
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_2

    #@4b
    .line 651
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@4d
    .line 652
    const-string/jumbo v3, "Empty issuer DN not allowed in X509Certificates"

    #@50
    .line 651
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 656
    :cond_2
    new-instance v2, Lsun/security/x509/CertificateValidity;

    #@56
    invoke-direct {v2, v0}, Lsun/security/x509/CertificateValidity;-><init>(Lsun/security/util/DerInputStream;)V

    #@59
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@5b
    .line 659
    new-instance v2, Lsun/security/x509/X500Name;

    #@5d
    invoke-direct {v2, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@60
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@62
    .line 660
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@64
    invoke-virtual {v2, v4}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@67
    move-result v2

    #@68
    if-nez v2, :cond_3

    #@6a
    .line 661
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@6c
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->isEmpty()Z

    #@6f
    move-result v2

    #@70
    .line 660
    if-eqz v2, :cond_3

    #@72
    .line 662
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@74
    .line 663
    const-string/jumbo v3, "Empty subject DN not allowed in v1 certificate"

    #@77
    .line 662
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v2

    #@7b
    .line 667
    :cond_3
    new-instance v2, Lsun/security/x509/CertificateX509Key;

    #@7d
    invoke-direct {v2, v0}, Lsun/security/x509/CertificateX509Key;-><init>(Lsun/security/util/DerInputStream;)V

    #@80
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@82
    .line 670
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@85
    move-result v2

    #@86
    if-eqz v2, :cond_4

    #@88
    .line 671
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@8a
    invoke-virtual {v2, v4}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@8d
    move-result v2

    #@8e
    if-nez v2, :cond_5

    #@90
    .line 672
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@92
    .line 673
    const-string/jumbo v3, "no more data allowed for version 1 certificate"

    #@95
    .line 672
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@98
    throw v2

    #@99
    .line 676
    :cond_4
    return-void

    #@9a
    .line 680
    :cond_5
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@9d
    move-result-object v1

    #@9e
    .line 681
    const/4 v2, 0x1

    #@9f
    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@a2
    move-result v2

    #@a3
    if-eqz v2, :cond_7

    #@a5
    .line 682
    new-instance v2, Lsun/security/x509/UniqueIdentity;

    #@a7
    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    #@aa
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@ac
    .line 683
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@af
    move-result v2

    #@b0
    if-nez v2, :cond_6

    #@b2
    .line 684
    return-void

    #@b3
    .line 685
    :cond_6
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@b6
    move-result-object v1

    #@b7
    .line 689
    :cond_7
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_9

    #@bd
    .line 690
    new-instance v2, Lsun/security/x509/UniqueIdentity;

    #@bf
    invoke-direct {v2, v1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    #@c2
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@c4
    .line 691
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@c7
    move-result v2

    #@c8
    if-nez v2, :cond_8

    #@ca
    .line 692
    return-void

    #@cb
    .line 693
    :cond_8
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@ce
    move-result-object v1

    #@cf
    .line 697
    :cond_9
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@d1
    invoke-virtual {v2, v5}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@d4
    move-result v2

    #@d5
    if-eqz v2, :cond_a

    #@d7
    .line 698
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    #@d9
    .line 699
    const-string/jumbo v3, "Extensions not allowed in v2 certificate"

    #@dc
    .line 698
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@df
    throw v2

    #@e0
    .line 701
    :cond_a
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@e3
    move-result v2

    #@e4
    if-eqz v2, :cond_b

    #@e6
    const/4 v2, 0x3

    #@e7
    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@ea
    move-result v2

    #@eb
    if-eqz v2, :cond_b

    #@ed
    .line 702
    new-instance v2, Lsun/security/x509/CertificateExtensions;

    #@ef
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@f1
    invoke-direct {v2, v3}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    #@f4
    iput-object v2, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@f6
    .line 706
    :cond_b
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@f8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@fa
    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V

    #@fd
    .line 624
    return-void
.end method

.method private setAlgorithmId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 845
    instance-of v0, p1, Lsun/security/x509/CertificateAlgorithmId;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 846
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    .line 847
    const-string/jumbo v1, "AlgorithmId class type invalid."

    #@9
    .line 846
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 849
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateAlgorithmId;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@11
    .line 844
    return-void
.end method

.method private setExtensions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@6
    move-result v0

    #@7
    if-gez v0, :cond_0

    #@9
    .line 950
    new-instance v0, Ljava/security/cert/CertificateException;

    #@b
    const-string/jumbo v1, "Invalid version"

    #@e
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 952
    :cond_0
    instance-of v0, p1, Lsun/security/x509/CertificateExtensions;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 953
    new-instance v0, Ljava/security/cert/CertificateException;

    #@18
    .line 954
    const-string/jumbo v1, "Extensions class type invalid."

    #@1b
    .line 953
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 956
    :cond_1
    check-cast p1, Lsun/security/x509/CertificateExtensions;

    #@21
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@23
    .line 948
    return-void
.end method

.method private setIssuer(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 859
    instance-of v0, p1, Lsun/security/x509/X500Name;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 860
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    .line 861
    const-string/jumbo v1, "Issuer class type invalid."

    #@9
    .line 860
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 863
    :cond_0
    check-cast p1, Lsun/security/x509/X500Name;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@11
    .line 858
    return-void
.end method

.method private setIssuerUniqueId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@6
    move-result v0

    #@7
    if-gez v0, :cond_0

    #@9
    .line 916
    new-instance v0, Ljava/security/cert/CertificateException;

    #@b
    const-string/jumbo v1, "Invalid version"

    #@e
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 918
    :cond_0
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 919
    new-instance v0, Ljava/security/cert/CertificateException;

    #@18
    .line 920
    const-string/jumbo v1, "IssuerUniqueId class type invalid."

    #@1b
    .line 919
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 922
    :cond_1
    check-cast p1, Lsun/security/x509/UniqueIdentity;

    #@21
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@23
    .line 914
    return-void
.end method

.method private setKey(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 901
    instance-of v0, p1, Lsun/security/x509/CertificateX509Key;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 902
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    .line 903
    const-string/jumbo v1, "Key class type invalid."

    #@9
    .line 902
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 905
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateX509Key;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@11
    .line 900
    return-void
.end method

.method private setSerialNumber(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 832
    instance-of v0, p1, Lsun/security/x509/CertificateSerialNumber;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 833
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    const-string/jumbo v1, "SerialNumber class type invalid."

    #@9
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 835
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateSerialNumber;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@11
    .line 831
    return-void
.end method

.method private setSubject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 887
    instance-of v0, p1, Lsun/security/x509/X500Name;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 888
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    .line 889
    const-string/jumbo v1, "Subject class type invalid."

    #@9
    .line 888
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 891
    :cond_0
    check-cast p1, Lsun/security/x509/X500Name;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@11
    .line 886
    return-void
.end method

.method private setSubjectUniqueId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 932
    iget-object v0, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateVersion;->compare(I)I

    #@6
    move-result v0

    #@7
    if-gez v0, :cond_0

    #@9
    .line 933
    new-instance v0, Ljava/security/cert/CertificateException;

    #@b
    const-string/jumbo v1, "Invalid version"

    #@e
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 935
    :cond_0
    instance-of v0, p1, Lsun/security/x509/UniqueIdentity;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 936
    new-instance v0, Ljava/security/cert/CertificateException;

    #@18
    .line 937
    const-string/jumbo v1, "SubjectUniqueId class type invalid."

    #@1b
    .line 936
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 939
    :cond_1
    check-cast p1, Lsun/security/x509/UniqueIdentity;

    #@21
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@23
    .line 931
    return-void
.end method

.method private setValidity(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 873
    instance-of v0, p1, Lsun/security/x509/CertificateValidity;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 874
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    .line 875
    const-string/jumbo v1, "CertificateValidity class type invalid."

    #@9
    .line 874
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 877
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateValidity;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@11
    .line 872
    return-void
.end method

.method private setVersion(Ljava/lang/Object;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 819
    instance-of v0, p1, Lsun/security/x509/CertificateVersion;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 820
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6
    const-string/jumbo v1, "Version class type invalid."

    #@9
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 822
    :cond_0
    check-cast p1, Lsun/security/x509/CertificateVersion;

    #@f
    .end local p1    # "val":Ljava/lang/Object;
    iput-object p1, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@11
    .line 818
    return-void
.end method

.method private verifyCert(Lsun/security/x509/X500Name;Lsun/security/x509/CertificateExtensions;)V
    .locals 7
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .param p2, "extensions"    # Lsun/security/x509/CertificateExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->isEmpty()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_3

    #@6
    .line 719
    if-nez p2, :cond_0

    #@8
    .line 720
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@a
    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and certificate has no extensions"

    #@d
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@10
    throw v5

    #@11
    .line 724
    :cond_0
    const/4 v4, 0x0

    #@12
    .line 725
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v2, 0x0

    #@13
    .line 726
    .local v2, "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    const/4 v3, 0x0

    #@14
    .line 729
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :try_start_0
    const-string/jumbo v5, "SubjectAlternativeName"

    #@17
    invoke-virtual {p2, v5}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    .line 728
    move-object v0, v5

    #@1c
    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    #@1e
    move-object v4, v0

    #@1f
    .line 731
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    const-string/jumbo v5, "subject_name"

    #@22
    .line 730
    invoke-virtual {v4, v5}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v3

    #@26
    .line 739
    .local v3, "names":Lsun/security/x509/GeneralNames;
    if-eqz v3, :cond_1

    #@28
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    .line 740
    :cond_1
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@30
    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is empty"

    #@33
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@36
    throw v5

    #@37
    .line 732
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v1

    #@38
    .line 733
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@3a
    const-string/jumbo v6, "X.509 Certificate is incomplete: subject field is empty, and SubjectAlternativeName extension is absent"

    #@3d
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5

    #@41
    .line 743
    .end local v1    # "e":Ljava/io/IOException;
    .local v3, "names":Lsun/security/x509/GeneralNames;
    .restart local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :cond_2
    invoke-virtual {v4}, Lsun/security/x509/SubjectAlternativeNameExtension;->isCritical()Z

    #@44
    move-result v5

    #@45
    if-nez v5, :cond_3

    #@47
    .line 744
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    #@49
    const-string/jumbo v6, "X.509 Certificate is incomplete: SubjectAlternativeName extension MUST be marked critical when subject field is empty"

    #@4c
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v5

    #@50
    .line 715
    .end local v2    # "extValue":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :cond_3
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 455
    new-instance v1, Lsun/security/x509/X509AttributeName;

    #@3
    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@6
    .line 457
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 458
    .local v0, "attr":I
    if-nez v0, :cond_0

    #@10
    .line 459
    new-instance v3, Ljava/security/cert/CertificateException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Attribute name not recognized: "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 463
    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@2c
    .line 464
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 466
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    #@33
    .line 454
    :cond_1
    :goto_0
    return-void

    #@34
    .line 468
    :pswitch_0
    if-nez v2, :cond_2

    #@36
    .line 469
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@38
    goto :goto_0

    #@39
    .line 471
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@3b
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->delete(Ljava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .line 475
    :pswitch_1
    if-nez v2, :cond_3

    #@41
    .line 476
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@43
    goto :goto_0

    #@44
    .line 478
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@46
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->delete(Ljava/lang/String;)V

    #@49
    goto :goto_0

    #@4a
    .line 482
    :pswitch_2
    if-nez v2, :cond_4

    #@4c
    .line 483
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@4e
    goto :goto_0

    #@4f
    .line 485
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@51
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->delete(Ljava/lang/String;)V

    #@54
    goto :goto_0

    #@55
    .line 489
    :pswitch_3
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@57
    goto :goto_0

    #@58
    .line 492
    :pswitch_4
    if-nez v2, :cond_5

    #@5a
    .line 493
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@5c
    goto :goto_0

    #@5d
    .line 495
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@5f
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->delete(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 499
    :pswitch_5
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@65
    goto :goto_0

    #@66
    .line 502
    :pswitch_6
    if-nez v2, :cond_6

    #@68
    .line 503
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@6a
    goto :goto_0

    #@6b
    .line 505
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@6d
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->delete(Ljava/lang/String;)V

    #@70
    goto :goto_0

    #@71
    .line 509
    :pswitch_7
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@73
    goto :goto_0

    #@74
    .line 512
    :pswitch_8
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@76
    goto :goto_0

    #@77
    .line 515
    :pswitch_9
    if-nez v2, :cond_7

    #@79
    .line 516
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@7b
    goto :goto_0

    #@7c
    .line 518
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@7e
    if-eqz v3, :cond_1

    #@80
    .line 519
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@82
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->delete(Ljava/lang/String;)V

    #@85
    goto :goto_0

    #@86
    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@2
    if-nez v1, :cond_0

    #@4
    .line 183
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 184
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 185
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@12
    .line 187
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@14
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, [B

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 181
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 246
    instance-of v0, p1, Lsun/security/x509/X509CertInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 247
    check-cast p1, Lsun/security/x509/X509CertInfo;

    #@6
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509CertInfo;->equals(Lsun/security/x509/X509CertInfo;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 249
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public equals(Lsun/security/x509/X509CertInfo;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/X509CertInfo;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 261
    if-ne p0, p1, :cond_0

    #@4
    .line 262
    return v4

    #@5
    .line 263
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@7
    if-eqz v1, :cond_1

    #@9
    iget-object v1, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@b
    if-nez v1, :cond_2

    #@d
    .line 264
    :cond_1
    return v3

    #@e
    .line 265
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@10
    array-length v1, v1

    #@11
    iget-object v2, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@13
    array-length v2, v2

    #@14
    if-eq v1, v2, :cond_3

    #@16
    .line 266
    return v3

    #@17
    .line 268
    :cond_3
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@1a
    array-length v1, v1

    #@1b
    if-ge v0, v1, :cond_5

    #@1d
    .line 269
    iget-object v1, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@1f
    aget-byte v1, v1, v0

    #@21
    iget-object v2, p1, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@23
    aget-byte v2, v2, v0

    #@25
    if-eq v1, v2, :cond_4

    #@27
    .line 270
    return v3

    #@28
    .line 268
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 273
    :cond_5
    return v4
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 535
    new-instance v1, Lsun/security/x509/X509AttributeName;

    #@4
    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@7
    .line 537
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    .line 538
    .local v0, "attr":I
    if-nez v0, :cond_0

    #@11
    .line 539
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    #@13
    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Attribute name not recognized: "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 539
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 542
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 544
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    #@32
    .line 602
    return-object v4

    #@33
    .line 546
    :pswitch_0
    if-nez v2, :cond_1

    #@35
    .line 547
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@37
    return-object v3

    #@38
    .line 549
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@3a
    if-nez v3, :cond_2

    #@3c
    .line 550
    return-object v4

    #@3d
    .line 552
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@3f
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    return-object v3

    #@44
    .line 556
    :pswitch_1
    if-nez v2, :cond_3

    #@46
    .line 557
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@48
    return-object v3

    #@49
    .line 559
    :cond_3
    invoke-direct {p0, v2, v5}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    return-object v3

    #@4e
    .line 562
    :pswitch_2
    if-nez v2, :cond_4

    #@50
    .line 563
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@52
    return-object v3

    #@53
    .line 565
    :cond_4
    const/4 v3, 0x1

    #@54
    invoke-direct {p0, v2, v3}, Lsun/security/x509/X509CertInfo;->getX500Name(Ljava/lang/String;Z)Ljava/lang/Object;

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 568
    :pswitch_3
    if-nez v2, :cond_5

    #@5b
    .line 569
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@5d
    return-object v3

    #@5e
    .line 571
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@60
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateX509Key;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    return-object v3

    #@65
    .line 574
    :pswitch_4
    if-nez v2, :cond_6

    #@67
    .line 575
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@69
    return-object v3

    #@6a
    .line 577
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@6c
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateAlgorithmId;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6f
    move-result-object v3

    #@70
    return-object v3

    #@71
    .line 580
    :pswitch_5
    if-nez v2, :cond_7

    #@73
    .line 581
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@75
    return-object v3

    #@76
    .line 583
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@78
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@7b
    move-result-object v3

    #@7c
    return-object v3

    #@7d
    .line 586
    :pswitch_6
    if-nez v2, :cond_8

    #@7f
    .line 587
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@81
    return-object v3

    #@82
    .line 589
    :cond_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@84
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateVersion;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@87
    move-result-object v3

    #@88
    return-object v3

    #@89
    .line 592
    :pswitch_7
    if-nez v2, :cond_9

    #@8b
    .line 593
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@8d
    return-object v3

    #@8e
    .line 595
    :cond_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@90
    invoke-virtual {v3, v2}, Lsun/security/x509/CertificateSerialNumber;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@93
    move-result-object v3

    #@94
    return-object v3

    #@95
    .line 598
    :pswitch_8
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@97
    return-object v3

    #@98
    .line 600
    :pswitch_9
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@9a
    return-object v3

    #@9b
    .line 544
    nop

    #@9c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 196
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "version"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 197
    const-string/jumbo v1, "serialNumber"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 198
    const-string/jumbo v1, "algorithmID"

    #@14
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@17
    .line 199
    const-string/jumbo v1, "issuer"

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 200
    const-string/jumbo v1, "validity"

    #@20
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@23
    .line 201
    const-string/jumbo v1, "subject"

    #@26
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@29
    .line 202
    const-string/jumbo v1, "key"

    #@2c
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@2f
    .line 203
    const-string/jumbo v1, "issuerID"

    #@32
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@35
    .line 204
    const-string/jumbo v1, "subjectID"

    #@38
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@3b
    .line 205
    const-string/jumbo v1, "extensions"

    #@3e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@41
    .line 207
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@44
    move-result-object v1

    #@45
    return-object v1
.end method

.method public getEncodedInfo()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@2
    if-nez v3, :cond_0

    #@4
    .line 225
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 226
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v2}, Lsun/security/x509/X509CertInfo;->emit(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 227
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@f
    move-result-object v3

    #@10
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@12
    .line 229
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@14
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-object v3

    #@1b
    .line 232
    :catch_0
    move-exception v1

    #@1c
    .line 233
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    #@1e
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 230
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    #@27
    .line 231
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    #@29
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    const-string/jumbo v0, "info"

    #@3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 281
    const/4 v1, 0x0

    #@1
    .line 283
    .local v1, "retval":I
    const/4 v0, 0x1

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 284
    iget-object v2, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    mul-int/2addr v2, v0

    #@c
    add-int/2addr v1, v2

    #@d
    .line 283
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 286
    :cond_0
    return v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 366
    new-instance v1, Lsun/security/x509/X509AttributeName;

    #@3
    invoke-direct {v1, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@6
    .line 368
    .local v1, "attrName":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-direct {p0, v3}, Lsun/security/x509/X509CertInfo;->attributeMap(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 369
    .local v0, "attr":I
    if-nez v0, :cond_0

    #@10
    .line 370
    new-instance v3, Ljava/security/cert/CertificateException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Attribute name not recognized: "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 374
    :cond_0
    iput-object v4, p0, Lsun/security/x509/X509CertInfo;->rawCertInfo:[B

    #@2c
    .line 375
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 377
    .local v2, "suffix":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    #@33
    .line 365
    :goto_0
    return-void

    #@34
    .line 379
    :pswitch_0
    if-nez v2, :cond_1

    #@36
    .line 380
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setVersion(Ljava/lang/Object;)V

    #@39
    goto :goto_0

    #@3a
    .line 382
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@3c
    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateVersion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    goto :goto_0

    #@40
    .line 387
    :pswitch_1
    if-nez v2, :cond_2

    #@42
    .line 388
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSerialNumber(Ljava/lang/Object;)V

    #@45
    goto :goto_0

    #@46
    .line 390
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@48
    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateSerialNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@4b
    goto :goto_0

    #@4c
    .line 395
    :pswitch_2
    if-nez v2, :cond_3

    #@4e
    .line 396
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setAlgorithmId(Ljava/lang/Object;)V

    #@51
    goto :goto_0

    #@52
    .line 398
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@54
    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateAlgorithmId;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@57
    goto :goto_0

    #@58
    .line 403
    :pswitch_3
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuer(Ljava/lang/Object;)V

    #@5b
    goto :goto_0

    #@5c
    .line 407
    :pswitch_4
    if-nez v2, :cond_4

    #@5e
    .line 408
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setValidity(Ljava/lang/Object;)V

    #@61
    goto :goto_0

    #@62
    .line 410
    :cond_4
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@64
    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateValidity;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@67
    goto :goto_0

    #@68
    .line 415
    :pswitch_5
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubject(Ljava/lang/Object;)V

    #@6b
    goto :goto_0

    #@6c
    .line 419
    :pswitch_6
    if-nez v2, :cond_5

    #@6e
    .line 420
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setKey(Ljava/lang/Object;)V

    #@71
    goto :goto_0

    #@72
    .line 422
    :cond_5
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@74
    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateX509Key;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@77
    goto :goto_0

    #@78
    .line 427
    :pswitch_7
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setIssuerUniqueId(Ljava/lang/Object;)V

    #@7b
    goto :goto_0

    #@7c
    .line 431
    :pswitch_8
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setSubjectUniqueId(Ljava/lang/Object;)V

    #@7f
    goto :goto_0

    #@80
    .line 435
    :pswitch_9
    if-nez v2, :cond_6

    #@82
    .line 436
    invoke-direct {p0, p2}, Lsun/security/x509/X509CertInfo;->setExtensions(Ljava/lang/Object;)V

    #@85
    goto :goto_0

    #@86
    .line 438
    :cond_6
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@88
    if-nez v3, :cond_7

    #@8a
    .line 439
    new-instance v3, Lsun/security/x509/CertificateExtensions;

    #@8c
    invoke-direct {v3}, Lsun/security/x509/CertificateExtensions;-><init>()V

    #@8f
    iput-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@91
    .line 440
    :cond_7
    iget-object v3, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@93
    invoke-virtual {v3, v2, p2}, Lsun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@96
    goto :goto_0

    #@97
    .line 377
    nop

    #@98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    .line 294
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@2
    if-eqz v12, :cond_0

    #@4
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@6
    if-nez v12, :cond_1

    #@8
    .line 296
    :cond_0
    new-instance v12, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v13, "X.509 cert is incomplete"

    #@d
    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v12

    #@11
    .line 294
    :cond_1
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@13
    if-eqz v12, :cond_0

    #@15
    .line 295
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@17
    if-eqz v12, :cond_0

    #@19
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@1b
    if-eqz v12, :cond_0

    #@1d
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@1f
    if-eqz v12, :cond_0

    #@21
    .line 298
    new-instance v11, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    .line 300
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "[\n"

    #@29
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 301
    const-string/jumbo v12, "  "

    #@2f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v12

    #@33
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->version:Lsun/security/x509/CertificateVersion;

    #@35
    invoke-virtual {v13}, Lsun/security/x509/CertificateVersion;->toString()Ljava/lang/String;

    #@38
    move-result-object v13

    #@39
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v12

    #@3d
    const-string/jumbo v13, "\n"

    #@40
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 302
    const-string/jumbo v12, "  Subject: "

    #@46
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v12

    #@4a
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->subject:Lsun/security/x509/X500Name;

    #@4c
    invoke-virtual {v13}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@4f
    move-result-object v13

    #@50
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v12

    #@54
    const-string/jumbo v13, "\n"

    #@57
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 303
    const-string/jumbo v12, "  Signature Algorithm: "

    #@5d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v12

    #@61
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->algId:Lsun/security/x509/CertificateAlgorithmId;

    #@63
    invoke-virtual {v13}, Lsun/security/x509/CertificateAlgorithmId;->toString()Ljava/lang/String;

    #@66
    move-result-object v13

    #@67
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v12

    #@6b
    const-string/jumbo v13, "\n"

    #@6e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 304
    const-string/jumbo v12, "  Key:  "

    #@74
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v12

    #@78
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->pubKey:Lsun/security/x509/CertificateX509Key;

    #@7a
    invoke-virtual {v13}, Lsun/security/x509/CertificateX509Key;->toString()Ljava/lang/String;

    #@7d
    move-result-object v13

    #@7e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v12

    #@82
    const-string/jumbo v13, "\n"

    #@85
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 305
    const-string/jumbo v12, "  "

    #@8b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v12

    #@8f
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->interval:Lsun/security/x509/CertificateValidity;

    #@91
    invoke-virtual {v13}, Lsun/security/x509/CertificateValidity;->toString()Ljava/lang/String;

    #@94
    move-result-object v13

    #@95
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v12

    #@99
    const-string/jumbo v13, "\n"

    #@9c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 306
    const-string/jumbo v12, "  Issuer: "

    #@a2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v12

    #@a6
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->issuer:Lsun/security/x509/X500Name;

    #@a8
    invoke-virtual {v13}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@ab
    move-result-object v13

    #@ac
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v12

    #@b0
    const-string/jumbo v13, "\n"

    #@b3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 307
    const-string/jumbo v12, "  "

    #@b9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v12

    #@bd
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->serialNum:Lsun/security/x509/CertificateSerialNumber;

    #@bf
    invoke-virtual {v13}, Lsun/security/x509/CertificateSerialNumber;->toString()Ljava/lang/String;

    #@c2
    move-result-object v13

    #@c3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v12

    #@c7
    const-string/jumbo v13, "\n"

    #@ca
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    .line 310
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@cf
    if-eqz v12, :cond_2

    #@d1
    .line 311
    const-string/jumbo v12, "  Issuer Id:\n"

    #@d4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v12

    #@d8
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->issuerUniqueId:Lsun/security/x509/UniqueIdentity;

    #@da
    invoke-virtual {v13}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    #@dd
    move-result-object v13

    #@de
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v12

    #@e2
    const-string/jumbo v13, "\n"

    #@e5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    .line 313
    :cond_2
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@ea
    if-eqz v12, :cond_3

    #@ec
    .line 314
    const-string/jumbo v12, "  Subject Id:\n"

    #@ef
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v12

    #@f3
    iget-object v13, p0, Lsun/security/x509/X509CertInfo;->subjectUniqueId:Lsun/security/x509/UniqueIdentity;

    #@f5
    invoke-virtual {v13}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    #@f8
    move-result-object v13

    #@f9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v12

    #@fd
    const-string/jumbo v13, "\n"

    #@100
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    .line 316
    :cond_3
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@105
    if-eqz v12, :cond_7

    #@107
    .line 317
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@109
    invoke-virtual {v12}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    #@10c
    move-result-object v0

    #@10d
    .line 318
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    const/4 v12, 0x0

    #@10e
    new-array v12, v12, [Lsun/security/x509/Extension;

    #@110
    invoke-interface {v0, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@113
    move-result-object v6

    #@114
    check-cast v6, [Lsun/security/x509/Extension;

    #@116
    .line 319
    .local v6, "exts":[Lsun/security/x509/Extension;
    const-string/jumbo v12, "\nCertificate Extensions: "

    #@119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v12

    #@11d
    array-length v13, v6

    #@11e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    .line 320
    const/4 v7, 0x0

    #@122
    .local v7, "i":I
    :goto_0
    array-length v12, v6

    #@123
    if-ge v7, v12, :cond_6

    #@125
    .line 321
    const-string/jumbo v12, "\n["

    #@128
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v12

    #@12c
    add-int/lit8 v13, v7, 0x1

    #@12e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@131
    move-result-object v12

    #@132
    const-string/jumbo v13, "]: "

    #@135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    .line 322
    aget-object v3, v6, v7

    #@13a
    .line 324
    .local v3, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@13d
    move-result-object v12

    #@13e
    invoke-static {v12}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@141
    move-result-object v12

    #@142
    if-nez v12, :cond_5

    #@144
    .line 325
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@147
    move-result-object v12

    #@148
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    .line 326
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@14e
    move-result-object v5

    #@14f
    .line 327
    .local v5, "extValue":[B
    if-eqz v5, :cond_4

    #@151
    .line 328
    new-instance v10, Lsun/security/util/DerOutputStream;

    #@153
    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    #@156
    .line 329
    .local v10, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v10, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@159
    .line 330
    invoke-virtual {v10}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@15c
    move-result-object v5

    #@15d
    .line 331
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@15f
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@162
    .line 332
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v12, "Extension unknown: DER encoded OCTET string =\n"

    #@165
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v12

    #@169
    .line 334
    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@16c
    move-result-object v13

    #@16d
    .line 332
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v12

    #@171
    .line 334
    const-string/jumbo v13, "\n"

    #@174
    .line 332
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    .line 320
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v5    # "extValue":[B
    .end local v10    # "out":Lsun/security/util/DerOutputStream;
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@179
    goto :goto_0

    #@17a
    .line 337
    :cond_5
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@17d
    move-result-object v12

    #@17e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@181
    goto :goto_1

    #@182
    .line 338
    :catch_0
    move-exception v1

    #@183
    .line 339
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v12, ", Error parsing this extension"

    #@186
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    goto :goto_1

    #@18a
    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    :cond_6
    iget-object v12, p0, Lsun/security/x509/X509CertInfo;->extensions:Lsun/security/x509/CertificateExtensions;

    #@18c
    invoke-virtual {v12}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@18f
    move-result-object v9

    #@190
    .line 343
    .local v9, "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    #@193
    move-result v12

    #@194
    if-nez v12, :cond_7

    #@196
    .line 344
    const-string/jumbo v12, "\nUnparseable certificate extensions: "

    #@199
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v12

    #@19d
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@1a0
    move-result v13

    #@1a1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a4
    .line 345
    const/4 v7, 0x1

    #@1a5
    .line 346
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1a8
    move-result-object v12

    #@1a9
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ac
    move-result-object v4

    #@1ad
    .local v4, "ext$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1b0
    move-result v12

    #@1b1
    if-eqz v12, :cond_7

    #@1b3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b6
    move-result-object v3

    #@1b7
    check-cast v3, Lsun/security/x509/Extension;

    #@1b9
    .line 347
    .restart local v3    # "ext":Lsun/security/x509/Extension;
    const-string/jumbo v12, "\n["

    #@1bc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v12

    #@1c0
    add-int/lit8 v8, v7, 0x1

    #@1c2
    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v12

    #@1c6
    const-string/jumbo v13, "]: "

    #@1c9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    .line 348
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cf
    move v7, v8

    #@1d0
    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_2

    #@1d1
    .line 352
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "ext":Lsun/security/x509/Extension;
    .end local v4    # "ext$iterator":Ljava/util/Iterator;
    .end local v6    # "exts":[Lsun/security/x509/Extension;
    .end local v7    # "i":I
    .end local v9    # "invalid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsun/security/x509/Extension;>;"
    :cond_7
    const-string/jumbo v12, "\n]"

    #@1d4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    .line 353
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v12

    #@1db
    return-object v12
.end method

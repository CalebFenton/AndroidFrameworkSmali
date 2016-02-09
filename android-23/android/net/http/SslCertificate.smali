.class public Landroid/net/http/SslCertificate;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/SslCertificate$DName;
    }
.end annotation


# static fields
.field private static ISO_8601_DATE_FORMAT:Ljava/lang/String; = null

.field private static final ISSUED_BY:Ljava/lang/String; = "issued-by"

.field private static final ISSUED_TO:Ljava/lang/String; = "issued-to"

.field private static final VALID_NOT_AFTER:Ljava/lang/String; = "valid-not-after"

.field private static final VALID_NOT_BEFORE:Ljava/lang/String; = "valid-not-before"

.field private static final X509_CERTIFICATE:Ljava/lang/String; = "x509-certificate"


# instance fields
.field private final mIssuedBy:Landroid/net/http/SslCertificate$DName;

.field private final mIssuedTo:Landroid/net/http/SslCertificate$DName;

.field private final mValidNotAfter:Ljava/util/Date;

.field private final mValidNotBefore:Ljava/util/Date;

.field private final mX509Certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ssZ"

    #@3
    sput-object v0, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    #@5
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "issuedTo"    # Ljava/lang/String;
    .param p2, "issuedBy"    # Ljava/lang/String;
    .param p3, "validNotBefore"    # Ljava/lang/String;
    .param p4, "validNotAfter"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-static {p3}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    #@3
    move-result-object v3

    #@4
    invoke-static {p4}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    #@7
    move-result-object v4

    #@8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    #@f
    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6
    .param p1, "issuedTo"    # Ljava/lang/String;
    .param p2, "issuedBy"    # Ljava/lang/String;
    .param p3, "validNotBefore"    # Ljava/util/Date;
    .param p4, "validNotAfter"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 170
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    #@9
    .line 169
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "issuedTo"    # Ljava/lang/String;
    .param p2, "issuedBy"    # Ljava/lang/String;
    .param p3, "validNotBefore"    # Ljava/util/Date;
    .param p4, "validNotAfter"    # Ljava/util/Date;
    .param p5, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 189
    new-instance v0, Landroid/net/http/SslCertificate$DName;

    #@5
    invoke-direct {v0, p0, p1}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    #@a
    .line 190
    new-instance v0, Landroid/net/http/SslCertificate$DName;

    #@c
    invoke-direct {v0, p0, p2}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    #@11
    .line 191
    invoke-static {p3}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    #@17
    .line 192
    invoke-static {p4}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    #@1d
    .line 193
    iput-object p5, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    #@1f
    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 179
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 180
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@13
    move-result-object v3

    #@14
    .line 181
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@17
    move-result-object v4

    #@18
    move-object v0, p0

    #@19
    move-object v5, p1

    #@1a
    .line 178
    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    #@1d
    .line 177
    return-void
.end method

.method private static cloneDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 329
    if-nez p0, :cond_0

    #@3
    .line 330
    return-object v0

    #@4
    .line 332
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Date;

    #@a
    return-object v0
.end method

.method private static final fingerprint([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 282
    if-nez p0, :cond_0

    #@2
    .line 283
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 285
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 286
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@d
    if-ge v1, v3, :cond_2

    #@f
    .line 287
    aget-byte v0, p0, v1

    #@11
    .line 288
    .local v0, "b":B
    const/4 v3, 0x1

    #@12
    invoke-static {v2, v0, v3}, Ljava/lang/IntegralToString;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    #@15
    .line 289
    add-int/lit8 v3, v1, 0x1

    #@17
    array-length v4, p0

    #@18
    if-eq v3, v4, :cond_1

    #@1a
    .line 290
    const/16 v3, 0x3a

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 286
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 293
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    return-object v3
.end method

.method private formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "certificateDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 504
    if-nez p2, :cond_0

    #@2
    .line 505
    const-string/jumbo v0, ""

    #@5
    return-object v0

    #@6
    .line 507
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 319
    if-nez p0, :cond_0

    #@2
    .line 320
    const-string/jumbo v0, ""

    #@5
    return-object v0

    #@6
    .line 322
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@8
    sget-object v1, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    #@a
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method private static getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    if-nez p0, :cond_0

    #@2
    .line 267
    const-string/jumbo v5, ""

    #@5
    return-object v5

    #@6
    .line 270
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@9
    move-result-object v0

    #@a
    .line 271
    .local v0, "bytes":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@d
    move-result-object v4

    #@e
    .line 272
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    #@11
    move-result-object v1

    #@12
    .line 273
    .local v1, "digest":[B
    invoke-static {v1}, Landroid/net/http/SslCertificate;->fingerprint([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v5

    #@16
    return-object v5

    #@17
    .line 276
    .end local v0    # "bytes":[B
    .end local v1    # "digest":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    #@18
    .line 277
    .local v2, "ignored":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v5, ""

    #@1b
    return-object v5

    #@1c
    .line 274
    .end local v2    # "ignored":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    #@1d
    .line 275
    .local v3, "ignored":Ljava/security/cert/CertificateEncodingException;
    const-string/jumbo v5, ""

    #@20
    return-object v5
.end method

.method private static getSerialNumber(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 252
    if-nez p0, :cond_0

    #@2
    .line 253
    const-string/jumbo v1, ""

    #@5
    return-object v1

    #@6
    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    .line 256
    .local v0, "serialNumber":Ljava/math/BigInteger;
    if-nez v0, :cond_1

    #@c
    .line 257
    const-string/jumbo v1, ""

    #@f
    return-object v1

    #@10
    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Landroid/net/http/SslCertificate;->fingerprint([B)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@2
    sget-object v2, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    #@4
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 310
    :catch_0
    move-exception v0

    #@d
    .line 311
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    #@e
    return-object v1
.end method

.method public static restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    if-nez p0, :cond_0

    #@3
    .line 121
    return-object v1

    #@4
    .line 124
    :cond_0
    const-string/jumbo v1, "x509-certificate"

    #@7
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@a
    move-result-object v7

    #@b
    .line 125
    .local v7, "bytes":[B
    if-nez v7, :cond_1

    #@d
    .line 126
    const/4 v6, 0x0

    #@e
    .line 136
    :goto_0
    new-instance v1, Landroid/net/http/SslCertificate;

    #@10
    const-string/jumbo v2, "issued-to"

    #@13
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 137
    const-string/jumbo v3, "issued-by"

    #@1a
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 138
    const-string/jumbo v4, "valid-not-before"

    #@21
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v4}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    #@28
    move-result-object v4

    #@29
    .line 139
    const-string/jumbo v5, "valid-not-after"

    #@2c
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v5}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    #@33
    move-result-object v5

    #@34
    .line 136
    invoke-direct/range {v1 .. v6}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    #@37
    return-object v1

    #@38
    .line 129
    :cond_1
    :try_start_0
    const-string/jumbo v1, "X.509"

    #@3b
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@3e
    move-result-object v9

    #@3f
    .line 130
    .local v9, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@41
    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@44
    invoke-virtual {v9, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@47
    move-result-object v8

    #@48
    .line 131
    .local v8, "cert":Ljava/security/cert/Certificate;
    move-object v0, v8

    #@49
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@4b
    move-object v6, v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .local v6, "x509Certificate":Ljava/security/cert/X509Certificate;
    goto :goto_0

    #@4d
    .line 132
    .end local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .end local v8    # "cert":Ljava/security/cert/Certificate;
    .end local v9    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v10

    #@4e
    .line 133
    .local v10, "e":Ljava/security/cert/CertificateException;
    const/4 v6, 0x0

    #@4f
    .local v6, "x509Certificate":Ljava/security/cert/X509Certificate;
    goto :goto_0
.end method

.method public static saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;
    .locals 5
    .param p0, "certificate"    # Landroid/net/http/SslCertificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 96
    if-nez p0, :cond_0

    #@3
    .line 97
    return-object v3

    #@4
    .line 99
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "issued-to"

    #@c
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 101
    const-string/jumbo v3, "issued-by"

    #@1a
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 102
    const-string/jumbo v3, "valid-not-before"

    #@28
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 103
    const-string/jumbo v3, "valid-not-after"

    #@32
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 104
    iget-object v2, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    #@3b
    .line 105
    .local v2, "x509Certificate":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    #@3d
    .line 107
    :try_start_0
    const-string/jumbo v3, "x509-certificate"

    #@40
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 111
    :cond_1
    :goto_0
    return-object v0

    #@48
    .line 108
    :catch_0
    move-exception v1

    #@49
    .local v1, "ignored":Ljava/security/cert/CertificateEncodingException;
    goto :goto_0
.end method


# virtual methods
.method public getIssuedBy()Landroid/net/http/SslCertificate$DName;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    #@2
    return-object v0
.end method

.method public getIssuedTo()Landroid/net/http/SslCertificate$DName;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    #@2
    return-object v0
.end method

.method public getValidNotAfter()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidNotAfterDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidNotBefore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidNotBeforeDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    #@2
    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public inflateCertificateView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 449
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@4
    move-result-object v2

    #@5
    .line 452
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v6, 0x10900e0

    #@8
    .line 451
    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 455
    .local v0, "certificateView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    #@f
    move-result-object v5

    #@10
    .line 456
    .local v5, "issuedTo":Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_0

    #@12
    .line 457
    const v6, 0x10203cd

    #@15
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v6

    #@19
    check-cast v6, Landroid/widget/TextView;

    #@1b
    .line 458
    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    .line 457
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 459
    const v6, 0x10203cf

    #@25
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v6

    #@29
    check-cast v6, Landroid/widget/TextView;

    #@2b
    .line 460
    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    .line 459
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@32
    .line 461
    const v6, 0x10203d1

    #@35
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Landroid/widget/TextView;

    #@3b
    .line 462
    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    .line 461
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@42
    .line 465
    :cond_0
    const v6, 0x10203d3

    #@45
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object v6

    #@49
    check-cast v6, Landroid/widget/TextView;

    #@4b
    .line 466
    iget-object v7, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    #@4d
    invoke-static {v7}, Landroid/net/http/SslCertificate;->getSerialNumber(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 465
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@54
    .line 469
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    #@57
    move-result-object v3

    #@58
    .line 470
    .local v3, "issuedBy":Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_1

    #@5a
    .line 471
    const v6, 0x10203d5

    #@5d
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@60
    move-result-object v6

    #@61
    check-cast v6, Landroid/widget/TextView;

    #@63
    .line 472
    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    .line 471
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@6a
    .line 473
    const v6, 0x10203d7

    #@6d
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Landroid/widget/TextView;

    #@73
    .line 474
    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    .line 473
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7a
    .line 475
    const v6, 0x10203d9

    #@7d
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@80
    move-result-object v6

    #@81
    check-cast v6, Landroid/widget/TextView;

    #@83
    .line 476
    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    .line 475
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8a
    .line 480
    :cond_1
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    #@8d
    move-result-object v6

    #@8e
    invoke-direct {p0, p1, v6}, Landroid/net/http/SslCertificate;->formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    .line 481
    .local v4, "issuedOn":Ljava/lang/String;
    const v6, 0x10203dc

    #@95
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@98
    move-result-object v6

    #@99
    check-cast v6, Landroid/widget/TextView;

    #@9b
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9e
    .line 485
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    #@a1
    move-result-object v6

    #@a2
    invoke-direct {p0, p1, v6}, Landroid/net/http/SslCertificate;->formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    .line 486
    .local v1, "expiresOn":Ljava/lang/String;
    const v6, 0x10203de

    #@a9
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@ac
    move-result-object v6

    #@ad
    check-cast v6, Landroid/widget/TextView;

    #@af
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b2
    .line 490
    const v6, 0x10203e1

    #@b5
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@b8
    move-result-object v6

    #@b9
    check-cast v6, Landroid/widget/TextView;

    #@bb
    .line 491
    iget-object v7, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    #@bd
    const-string/jumbo v8, "SHA256"

    #@c0
    invoke-static {v7, v8}, Landroid/net/http/SslCertificate;->getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    .line 490
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@c7
    .line 492
    const v6, 0x10203e3

    #@ca
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@cd
    move-result-object v6

    #@ce
    check-cast v6, Landroid/widget/TextView;

    #@d0
    .line 493
    iget-object v7, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    #@d2
    const-string/jumbo v8, "SHA1"

    #@d5
    invoke-static {v7, v8}, Landroid/net/http/SslCertificate;->getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    #@d8
    move-result-object v7

    #@d9
    .line 492
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@dc
    .line 495
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Issued to: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    #@e
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ";\n"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 301
    const-string/jumbo v1, "Issued by: "

    #@20
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 301
    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    #@26
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 301
    const-string/jumbo v1, ";\n"

    #@31
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    return-object v0
.end method

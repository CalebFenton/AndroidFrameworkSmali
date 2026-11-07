.class Lsun/security/provider/certpath/AdaptableX509CertSelector;
.super Ljava/security/cert/X509CertSelector;
.source "AdaptableX509CertSelector.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist endDate:Ljava/util/Date;

.field private blacklist serial:Ljava/math/BigInteger;

.field private blacklist ski:[B

.field private blacklist startDate:Ljava/util/Date;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method private blacklist matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .line 211
    iget-object v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 212
    return v1

    .line 215
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    const-string v2, "2.5.29.14"

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 216
    .local v2, "extVal":[B
    if-nez v2, :cond_30

    .line 217
    sget-object v3, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_2f

    .line 218
    sget-object v3, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdaptableX509CertSelector.match: no subject key ID extension. Subject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 220
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 222
    :cond_2f
    return v1

    .line 224
    :cond_30
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 225
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v4

    .line 226
    .local v4, "certSubjectKeyID":[B
    if-eqz v4, :cond_46

    iget-object v5, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 227
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_46

    .line 242
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "certSubjectKeyID":[B
    :cond_44
    nop

    .line 243
    return v1

    .line 228
    .restart local v2    # "extVal":[B
    .restart local v3    # "in":Lsun/security/util/DerInputStream;
    .restart local v4    # "certSubjectKeyID":[B
    :cond_46
    :goto_46
    sget-object v1, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_76

    .line 229
    sget-object v1, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdaptableX509CertSelector.match: subject key IDs don\'t match. Expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 231
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Cert\'s: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v1, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_76} :catch_77

    .line 234
    :cond_76
    return v0

    .line 236
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    .end local v4    # "certSubjectKeyID":[B
    :catch_77
    move-exception v1

    .line 237
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_83

    .line 238
    sget-object v2, Lsun/security/provider/certpath/AdaptableX509CertSelector;->debug:Lsun/security/util/Debug;

    const-string v3, "AdaptableX509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 241
    :cond_83
    return v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 248
    nop

    .line 249
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 250
    .local v0, "copy":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v1, :cond_15

    .line 251
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    .line 254
    :cond_15
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_23

    .line 255
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    .line 258
    :cond_23
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    if-eqz v1, :cond_31

    .line 259
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 261
    :cond_31
    return-object v0
.end method

.method public whitelist test-api match(Ljava/security/cert/Certificate;)Z
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 159
    .local v0, "xcert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 160
    return v2

    .line 172
    :cond_b
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v1

    .line 173
    .local v1, "version":I
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    if-eqz v3, :cond_23

    const/4 v3, 0x2

    if-le v1, v3, :cond_23

    .line 174
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 175
    return v2

    .line 180
    :cond_23
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3e

    .line 181
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v3, :cond_32

    .line 183
    :try_start_2a
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2f
    .catch Ljava/security/cert/CertificateException; {:try_start_2a .. :try_end_2f} :catch_30

    .line 186
    goto :goto_32

    .line 184
    :catch_30
    move-exception v3

    .line 185
    .local v3, "ce":Ljava/security/cert/CertificateException;
    return v2

    .line 188
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    :cond_32
    :goto_32
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v3, :cond_3e

    .line 190
    :try_start_36
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_3b} :catch_3c

    .line 193
    goto :goto_3e

    .line 191
    :catch_3c
    move-exception v3

    .line 192
    .restart local v3    # "ce":Ljava/security/cert/CertificateException;
    return v2

    .line 198
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    :cond_3e
    :goto_3e
    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 199
    return v2

    .line 202
    :cond_45
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist test-api setSerialNumber(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "serial"    # Ljava/math/BigInteger;

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method blacklist setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    .registers 4
    .param p1, "ext"    # Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 129
    iput-object v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    .line 131
    if-eqz p1, :cond_1d

    .line 132
    invoke-virtual {p1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->ski:[B

    .line 133
    const-string v0, "serial_number"

    invoke-virtual {p1, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SerialNumber;

    .line 135
    .local v0, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_1d

    .line 136
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->serial:Ljava/math/BigInteger;

    .line 140
    .end local v0    # "asn":Lsun/security/x509/SerialNumber;
    :cond_1d
    return-void
.end method

.method public whitelist test-api setSubjectKeyIdentifier([B)V
    .registers 3
    .param p1, "subjectKeyID"    # [B

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method blacklist setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V
    .registers 3
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .line 86
    iput-object p1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    .line 87
    iput-object p2, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    .line 88
    return-void
.end method

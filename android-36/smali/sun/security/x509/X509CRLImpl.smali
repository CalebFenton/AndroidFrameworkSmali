.class public Lsun/security/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    }
.end annotation


# static fields
.field private static final blacklist YR_2050:J = 0x24bd0146400L

.field private static final blacklist isExplicit:Z = true


# instance fields
.field private blacklist extensions:Lsun/security/x509/CRLExtensions;

.field private blacklist infoSigAlgId:Lsun/security/x509/AlgorithmId;

.field private blacklist issuer:Lsun/security/x509/X500Name;

.field private blacklist issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private blacklist nextUpdate:Ljava/util/Date;

.field private blacklist readOnly:Z

.field private blacklist revokedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist revokedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sigAlgId:Lsun/security/x509/AlgorithmId;

.field private blacklist signature:[B

.field private blacklist signedCRL:[B

.field private blacklist tbsCertList:[B

.field private blacklist thisUpdate:Ljava/util/Date;

.field private blacklist verifiedProvider:Ljava/lang/String;

.field private blacklist verifiedPublicKey:Ljava/security/PublicKey;

.field private blacklist version:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 132
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "inStrm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 177
    :try_start_27
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_31

    .line 181
    nop

    .line 182
    return-void

    .line 178
    :catch_31
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 180
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 161
    :try_start_27
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :catch_2c
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 164
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;)V
    .registers 6
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;

    .line 191
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 192
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 193
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 194
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 195
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V
    .registers 11
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 211
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 212
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 213
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 214
    if-eqz p4, :cond_6b

    .line 215
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 216
    .local v0, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v1, v0

    .line 217
    .local v1, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    array-length v3, p4

    if-ge v2, v3, :cond_6b

    .line 218
    aget-object v3, p4, v2

    check-cast v3, Lsun/security/x509/X509CRLEntryImpl;

    .line 220
    .local v3, "badCert":Lsun/security/x509/X509CRLEntryImpl;
    :try_start_3c
    invoke-direct {p0, v3, v1}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_64

    move-object v1, v4

    .line 223
    nop

    .line 224
    invoke-virtual {v3, v0, v1}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    .line 225
    new-instance v4, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 226
    invoke-virtual {v3}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 227
    .local v4, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v3}, Lsun/security/x509/X509CRLEntryImpl;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 230
    const/4 v5, 0x1

    iput v5, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 217
    .end local v3    # "badCert":Lsun/security/x509/X509CRLEntryImpl;
    .end local v4    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 221
    .restart local v3    # "badCert":Lsun/security/x509/X509CRLEntryImpl;
    :catch_64
    move-exception v4

    .line 222
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CRLException;

    invoke-direct {v5, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 234
    .end local v0    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "i":I
    .end local v3    # "badCert":Lsun/security/x509/X509CRLEntryImpl;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_6b
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;Lsun/security/x509/CRLExtensions;)V
    .registers 7
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .param p5, "crlExts"    # Lsun/security/x509/CRLExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V

    .line 252
    if-eqz p5, :cond_a

    .line 253
    iput-object p5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 256
    :cond_a
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 6
    .param p1, "crlData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 146
    :try_start_27
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_31

    .line 150
    nop

    .line 151
    return-void

    .line 147
    :catch_31
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 149
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .registers 7
    .param p1, "entry"    # Lsun/security/x509/X509CRLEntryImpl;
    .param p2, "prevCertIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    nop

    .line 1251
    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;

    move-result-object v0

    .line 1252
    .local v0, "ciExt":Lsun/security/x509/CertificateIssuerExtension;
    if-eqz v0, :cond_1d

    .line 1253
    const-string v1, "issuer"

    invoke-virtual {v0, v1}, Lsun/security/x509/CertificateIssuerExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v1

    .line 1254
    .local v1, "names":Lsun/security/x509/GeneralNames;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    .line 1255
    .local v2, "issuerDN":Lsun/security/x509/X500Name;
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    return-object v3

    .line 1257
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    .end local v2    # "issuerDN":Lsun/security/x509/X500Name;
    :cond_1d
    return-object p2
.end method

.method public static blacklist getEncodedInternal(Ljava/security/cert/X509CRL;)[B
    .registers 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 1218
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_c

    .line 1219
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    return-object v0

    .line 1221
    :cond_c
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .registers 9
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .line 1190
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0

    .line 1191
    .local v0, "encoded":[B
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1192
    .local v1, "derIn":Lsun/security/util/DerInputStream;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1193
    .local v2, "tbsCert":Lsun/security/util/DerValue;
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1197
    .local v3, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v4

    int-to-byte v4, v4

    .line 1198
    .local v4, "nextByte":B
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    .line 1199
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    .line 1202
    :cond_1e
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1203
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    .line 1204
    .end local v5    # "tmp":Lsun/security/util/DerValue;
    .local v6, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v6}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    .line 1205
    .local v5, "principalBytes":[B
    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v7, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v7

    .line 1206
    .end local v0    # "encoded":[B
    .end local v1    # "derIn":Lsun/security/util/DerInputStream;
    .end local v2    # "tbsCert":Lsun/security/util/DerValue;
    .end local v3    # "tbsIn":Lsun/security/util/DerInputStream;
    .end local v4    # "nextByte":B
    .end local v5    # "principalBytes":[B
    .end local v6    # "tmp":Lsun/security/util/DerValue;
    :catch_30
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not parse issuer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist parse(Lsun/security/util/DerValue;)V
    .registers 16
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    iget-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    if-nez v0, :cond_1bd

    .line 1067
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v0

    if-eqz v0, :cond_1b5

    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1b5

    .line 1070
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 1071
    const/4 v0, 0x3

    new-array v0, v0, [Lsun/security/util/DerValue;

    .line 1073
    .local v0, "seq":[Lsun/security/util/DerValue;
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1074
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 1075
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 1077
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_196

    .line 1081
    aget-object v2, v0, v3

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-ne v2, v1, :cond_18e

    .line 1084
    aget-object v2, v0, v4

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 1085
    aget-object v2, v0, v5

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 1087
    aget-object v2, v0, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_186

    .line 1090
    aget-object v2, v0, v5

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_17e

    .line 1094
    aget-object v2, v0, v3

    invoke-virtual {v2}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 1097
    aget-object v2, v0, v3

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1102
    .local v2, "derStrm":Lsun/security/util/DerInputStream;
    iput v3, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 1103
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v6

    int-to-byte v6, v6

    .line 1104
    .local v6, "nextByte":B
    if-ne v6, v5, :cond_8e

    .line 1105
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v5

    iput v5, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 1106
    iget v5, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-ne v5, v4, :cond_86

    goto :goto_8e

    .line 1107
    :cond_86
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v3, "Invalid version"

    invoke-direct {v1, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1109
    :cond_8e
    :goto_8e
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1112
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v7

    .line 1115
    .local v7, "tmpId":Lsun/security/x509/AlgorithmId;
    iget-object v8, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v7, v8}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v8

    if-eqz v8, :cond_176

    .line 1117
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    .line 1120
    new-instance v8, Lsun/security/x509/X500Name;

    invoke-direct {v8, v2}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 1121
    iget-object v8, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v8}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16e

    .line 1128
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v8

    int-to-byte v6, v8

    .line 1129
    const/16 v8, 0x18

    const/16 v9, 0x17

    if-ne v6, v9, :cond_c1

    .line 1130
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    goto :goto_c9

    .line 1131
    :cond_c1
    if-ne v6, v8, :cond_14f

    .line 1132
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 1138
    :goto_c9
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v10

    if-nez v10, :cond_d0

    .line 1139
    return-void

    .line 1142
    :cond_d0
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v10

    int-to-byte v6, v10

    .line 1143
    if-ne v6, v9, :cond_de

    .line 1144
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    goto :goto_e6

    .line 1145
    :cond_de
    if-ne v6, v8, :cond_e6

    .line 1146
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 1149
    :cond_e6
    :goto_e6
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-nez v8, :cond_ed

    .line 1150
    return-void

    .line 1153
    :cond_ed
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v8

    int-to-byte v6, v8

    .line 1154
    if-ne v6, v1, :cond_12c

    and-int/lit16 v1, v6, 0xc0

    const/16 v8, 0x80

    if-eq v1, v8, :cond_12c

    .line 1156
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 1158
    .local v1, "badCerts":[Lsun/security/util/DerValue;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 1159
    .local v8, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v9, v8

    .line 1160
    .local v9, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_105
    array-length v11, v1

    if-ge v10, v11, :cond_12c

    .line 1161
    new-instance v11, Lsun/security/x509/X509CRLEntryImpl;

    aget-object v12, v1, v10

    invoke-direct {v11, v12}, Lsun/security/x509/X509CRLEntryImpl;-><init>(Lsun/security/util/DerValue;)V

    .line 1162
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-direct {p0, v11, v9}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    .line 1163
    invoke-virtual {v11, v8, v9}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    .line 1164
    new-instance v12, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1165
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v12, v9, v13}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 1166
    .local v12, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v13, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v12    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    add-int/lit8 v10, v10, 0x1

    goto :goto_105

    .line 1171
    .end local v1    # "badCerts":[Lsun/security/util/DerValue;
    .end local v8    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v9    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v10    # "i":I
    :cond_12c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-nez v1, :cond_133

    .line 1172
    return-void

    .line 1175
    :cond_133
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 1176
    .end local v5    # "tmp":Lsun/security/util/DerValue;
    .local v1, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-eqz v5, :cond_14c

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 1177
    new-instance v3, Lsun/security/x509/CRLExtensions;

    iget-object v5, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v3, v5}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 1179
    :cond_14c
    iput-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 1180
    return-void

    .line 1134
    .end local v1    # "tmp":Lsun/security/util/DerValue;
    .restart local v5    # "tmp":Lsun/security/util/DerValue;
    :cond_14f
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid encoding for thisUpdate (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1122
    :cond_16e
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v3, "Empty issuer DN not allowed in X509CRLs"

    invoke-direct {v1, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1116
    :cond_176
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v3, "Signature algorithm mismatch"

    invoke-direct {v1, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1091
    .end local v2    # "derStrm":Lsun/security/util/DerInputStream;
    .end local v5    # "tmp":Lsun/security/util/DerValue;
    .end local v6    # "nextByte":B
    .end local v7    # "tmpId":Lsun/security/x509/AlgorithmId;
    :cond_17e
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "Signature field overrun"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1088
    :cond_186
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "AlgorithmId field overrun"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    :cond_18e
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "signed CRL fields invalid"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1078
    :cond_196
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed overrun, bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1079
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    .end local v0    # "seq":[Lsun/security/util/DerValue;
    :cond_1b5
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Invalid DER-encoded CRL data"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_1bd
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "cannot over-write existing CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .registers 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 1232
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_8

    .line 1233
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    return-object v0

    .line 1235
    :cond_8
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist derEncode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-eqz v0, :cond_10

    .line 1265
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1266
    return-void

    .line 1264
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null CRL to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encodeInfo(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 287
    :try_start_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 288
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 289
    .local v1, "rCerts":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 291
    .local v2, "seq":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-eqz v3, :cond_18

    .line 292
    iget v3, p0, Lsun/security/x509/X509CRLImpl;->version:I

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 293
    :cond_18
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 294
    iget v3, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-nez v3, :cond_32

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v3}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto :goto_32

    .line 295
    :cond_2a
    new-instance v3, Ljava/security/cert/CRLException;

    const-string v4, "Null Issuer DN not allowed in v1 CRL"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/X509CRLImpl;
    .end local p1    # "out":Ljava/io/OutputStream;
    throw v3

    .line 296
    .restart local p0    # "this":Lsun/security/x509/X509CRLImpl;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_32
    :goto_32
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v3, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 298
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide v5, 0x24bd0146400L

    cmp-long v3, v3, v5

    if-gez v3, :cond_4c

    .line 299
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    goto :goto_51

    .line 301
    :cond_4c
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 303
    :goto_51
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v3, :cond_6a

    .line 304
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_65

    .line 305
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    goto :goto_6a

    .line 307
    :cond_65
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 310
    :cond_6a
    :goto_6a
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v4, 0x30

    if-nez v3, :cond_90

    .line 311
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRLEntry;

    .line 312
    .local v5, "entry":Ljava/security/cert/X509CRLEntry;
    move-object v6, v5

    check-cast v6, Lsun/security/x509/X509CRLEntryImpl;

    invoke-virtual {v6, v1}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    .line 313
    .end local v5    # "entry":Ljava/security/cert/X509CRLEntry;
    goto :goto_7a

    .line 314
    :cond_8d
    invoke-virtual {v0, v4, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 317
    :cond_90
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v3, :cond_9a

    .line 318
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 320
    :cond_9a
    invoke-virtual {v2, v4, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 322
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 323
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a8} :catch_aa

    .line 326
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    .end local v1    # "rCerts":Lsun/security/util/DerOutputStream;
    .end local v2    # "seq":Lsun/security/util/DerOutputStream;
    nop

    .line 327
    return-void

    .line 324
    :catch_aa
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 843
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_f

    .line 844
    const-string v1, "key_id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/KeyIdentifier;

    .line 846
    .local v1, "keyId":Lsun/security/x509/KeyIdentifier;
    return-object v1

    .line 848
    .end local v1    # "keyId":Lsun/security/x509/KeyIdentifier;
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 861
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    return-object v1
.end method

.method public blacklist getBaseCRLNumber()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;

    move-result-object v0

    .line 912
    .local v0, "dciExt":Lsun/security/x509/DeltaCRLIndicatorExtension;
    if-eqz v0, :cond_d

    .line 913
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lsun/security/x509/DeltaCRLIndicatorExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 914
    .local v1, "num":Ljava/math/BigInteger;
    return-object v1

    .line 916
    .end local v1    # "num":Ljava/math/BigInteger;
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCRLNumber()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;

    move-result-object v0

    .line 883
    .local v0, "numExt":Lsun/security/x509/CRLNumberExtension;
    if-eqz v0, :cond_d

    .line 884
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 885
    .local v1, "num":Ljava/math/BigInteger;
    return-object v1

    .line 887
    .end local v1    # "num":Ljava/math/BigInteger;
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lsun/security/x509/CRLNumberExtension;

    return-object v1
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 966
    const/4 v0, 0x0

    return-object v0

    .line 968
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 969
    .local v0, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;

    .line 970
    .local v2, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 971
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 973
    .end local v2    # "ex":Lsun/security/x509/Extension;
    :cond_32
    goto :goto_15

    .line 974
    :cond_33
    return-object v0
.end method

.method public blacklist getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 901
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lsun/security/x509/DeltaCRLIndicatorExtension;

    return-object v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getEncodedInternal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    return-object v0

    .line 265
    :cond_7
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Null CRL to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 1052
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 1053
    const/4 v0, 0x0

    return-object v0

    .line 1056
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-static {p1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 10
    .param p1, "oid"    # Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1011
    return-object v1

    .line 1013
    :cond_6
    :try_start_6
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "extAlias":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1016
    .local v2, "crlExt":Lsun/security/x509/Extension;
    if-nez v0, :cond_38

    .line 1017
    new-instance v3, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v3, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v3, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v4, 0x0

    .line 1020
    .local v4, "ex":Lsun/security/x509/Extension;
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v5}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1021
    .local v5, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_1e
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1022
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    move-object v4, v6

    .line 1023
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 1024
    .local v6, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v6, v3}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1025
    move-object v2, v4

    .line 1026
    nop

    .line 1029
    .end local v3    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v4    # "ex":Lsun/security/x509/Extension;
    .end local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v6    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_37
    goto :goto_3f

    .line 1030
    :cond_38
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v3, v0}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v3

    move-object v2, v3

    .line 1031
    :goto_3f
    if-nez v2, :cond_42

    .line 1032
    return-object v1

    .line 1033
    :cond_42
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v3

    .line 1034
    .local v3, "extData":[B
    if-nez v3, :cond_49

    .line 1035
    return-object v1

    .line 1036
    :cond_49
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1037
    .local v4, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 1038
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_55} :catch_56

    return-object v1

    .line 1039
    .end local v0    # "extAlias":Ljava/lang/String;
    .end local v2    # "crlExt":Lsun/security/x509/Extension;
    .end local v3    # "extData":[B
    .end local v4    # "out":Lsun/security/util/DerOutputStream;
    :catch_56
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getIssuerAltNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 929
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lsun/security/x509/IssuerAlternativeNameExtension;

    return-object v1
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 660
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 668
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_c

    .line 669
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 671
    :cond_c
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public blacklist getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 943
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lsun/security/x509/IssuingDistributionPointExtension;

    return-object v1
.end method

.method public whitelist test-api getNextUpdate()Ljava/util/Date;
    .registers 4

    .line 691
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 692
    const/4 v0, 0x0

    return-object v0

    .line 693
    :cond_6
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 987
    const/4 v0, 0x0

    return-object v0

    .line 989
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 990
    .local v0, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;

    .line 991
    .local v2, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_32

    .line 992
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 994
    .end local v2    # "ex":Lsun/security/x509/Extension;
    :cond_32
    goto :goto_15

    .line 995
    :cond_33
    return-object v0
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 4
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 704
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 705
    const/4 v0, 0x0

    return-object v0

    .line 708
    :cond_a
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 709
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 710
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    return-object v1
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 717
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 718
    const/4 v0, 0x0

    return-object v0

    .line 720
    :cond_a
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 721
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    return-object v1
.end method

.method public whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 734
    const/4 v0, 0x0

    return-object v0

    .line 736
    :cond_a
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getSigAlgId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 831
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 781
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    .line 782
    const/4 v0, 0x0

    return-object v0

    .line 783
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 800
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    .line 801
    const/4 v0, 0x0

    return-object v0

    .line 802
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 803
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 3

    .line 816
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 817
    return-object v1

    .line 819
    :cond_6
    :try_start_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 820
    :catch_d
    move-exception v0

    .line 821
    .local v0, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 760
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    if-nez v0, :cond_6

    .line 761
    const/4 v0, 0x0

    return-object v0

    .line 762
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getTBSCertList()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-eqz v0, :cond_d

    .line 751
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 750
    :cond_d
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Uninitialized CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getThisUpdate()Ljava/util/Date;
    .registers 4

    .line 681
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 628
    iget v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 951
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 952
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 609
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_d

    goto :goto_1c

    .line 612
    :cond_d
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 613
    .local v0, "xcert":Ljava/security/cert/X509Certificate;
    new-instance v1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v1, v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 614
    .local v1, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 610
    .end local v0    # "xcert":Ljava/security/cert/X509Certificate;
    .end local v1    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CRLImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public blacklist sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 500
    :try_start_0
    iget-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    if-nez v0, :cond_5e

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_13

    .line 506
    :cond_e
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .end local v0    # "sigEngine":Ljava/security/Signature;
    .local v1, "sigEngine":Ljava/security/Signature;
    goto :goto_17

    .line 504
    .end local v1    # "sigEngine":Ljava/security/Signature;
    .restart local v0    # "sigEngine":Ljava/security/Signature;
    :cond_13
    :goto_13
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 508
    .end local v0    # "sigEngine":Ljava/security/Signature;
    .restart local v1    # "sigEngine":Ljava/security/Signature;
    :goto_17
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 511
    invoke-virtual {v1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 512
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    .line 514
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 515
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 518
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CRLImpl;->encodeInfo(Ljava/io/OutputStream;)V

    .line 521
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v2}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 524
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/Signature;->update([BII)V

    .line 525
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 526
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 529
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 530
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 531
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 536
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "sigEngine":Ljava/security/Signature;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    nop

    .line 537
    return-void

    .line 501
    :cond_5e
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "cannot over-write existing CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/X509CRLImpl;
    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "provider":Ljava/lang/String;
    throw v0
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_66} :catch_66

    .line 533
    .restart local p0    # "this":Lsun/security/x509/X509CRLImpl;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p3    # "provider":Ljava/lang/String;
    :catch_66
    move-exception v0

    .line 534
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while encoding data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 535
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 13

    .line 545
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 546
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X.509 CRL v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-eqz v1, :cond_5d

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", OID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 549
    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_5d
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    if-eqz v1, :cond_81

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issuer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v3}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_81
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    if-eqz v1, :cond_a5

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nThis Update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    :cond_a5
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v1, :cond_c9

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_c9
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "\n["

    if-eqz v1, :cond_d9

    .line 557
    const-string v1, "\nNO certificates have been revoked\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12e

    .line 559
    :cond_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nRevoked Certificates: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const/4 v1, 0x1

    .line 561
    .local v1, "i":I
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRLEntry;

    .line 562
    .local v5, "entry":Ljava/security/cert/X509CRLEntry;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/security/cert/X509CRLEntry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    .end local v5    # "entry":Ljava/security/cert/X509CRLEntry;
    move v1, v7

    goto :goto_fc

    .line 565
    .end local v7    # "i":I
    :cond_12e
    :goto_12e
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v1, :cond_1cf

    .line 566
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    .line 567
    .local v1, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 568
    .local v4, "objs":[Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nCRL Extensions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_154
    array-length v6, v4

    if-ge v5, v6, :cond_1cf

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    aget-object v6, v4, v5

    check-cast v6, Lsun/security/x509/Extension;

    .line 573
    .local v6, "ext":Lsun/security/x509/Extension;
    :try_start_177
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-static {v7}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_1be

    .line 574
    invoke-virtual {v6}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v7

    .line 576
    .local v7, "extValue":[B
    if-eqz v7, :cond_1bd

    .line 577
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 578
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v7}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 579
    invoke-virtual {v8}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v9

    .line 580
    .end local v7    # "extValue":[B
    .local v9, "extValue":[B
    new-instance v7, Lsun/misc/HexDumpEncoder;

    invoke-direct {v7}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 581
    .local v7, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 583
    invoke-virtual {v7, v9}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 581
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    .end local v7    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    .end local v9    # "extValue":[B
    :cond_1bd
    goto :goto_1c5

    .line 586
    :cond_1be
    invoke-virtual {v6}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1c5} :catch_1c6

    .line 589
    :goto_1c5
    goto :goto_1cc

    .line 587
    :catch_1c6
    move-exception v7

    .line 588
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, ", Error parsing this extension"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    .end local v6    # "ext":Lsun/security/x509/Extension;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1cc
    add-int/lit8 v5, v5, 0x1

    goto :goto_154

    .line 592
    .end local v1    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v4    # "objs":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_1cf
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    if-eqz v1, :cond_1f9

    .line 593
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 594
    .local v1, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nSignature:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v1, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    .end local v1    # "encoder":Lsun/misc/HexDumpEncoder;
    goto :goto_1fe

    .line 597
    :cond_1f9
    const-string v1, "NOT signed yet\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :goto_1fe
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 345
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public declared-synchronized whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    if-nez p2, :cond_6

    .line 369
    :try_start_3
    const-string v0, ""

    move-object p2, v0

    .line 371
    .end local p0    # "this":Lsun/security/x509/X509CRLImpl;
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 374
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_72

    if-eqz v0, :cond_1c

    .line 375
    monitor-exit p0

    return-void

    .line 378
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-eqz v0, :cond_6a

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "sigVerf":Ljava/security/Signature;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_32

    .line 383
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .end local v0    # "sigVerf":Ljava/security/Signature;
    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_3c

    .line 385
    .end local v1    # "sigVerf":Ljava/security/Signature;
    .restart local v0    # "sigVerf":Ljava/security/Signature;
    :cond_32
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 387
    .end local v0    # "sigVerf":Ljava/security/Signature;
    .restart local v1    # "sigVerf":Ljava/security/Signature;
    :goto_3c
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 389
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-eqz v0, :cond_62

    .line 393
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 395
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 398
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 399
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_72

    .line 400
    monitor-exit p0

    return-void

    .line 396
    :cond_5a
    :try_start_5a
    new-instance v0, Ljava/security/SignatureException;

    const-string v2, "Signature does not match."

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_62
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v2, "Uninitialized CRL"

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    .end local v1    # "sigVerf":Ljava/security/Signature;
    :cond_6a
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Uninitialized CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    .end local p1    # "key":Ljava/security/PublicKey;
    .end local p2    # "sigProvider":Ljava/lang/String;
    :catchall_72
    move-exception p1

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_72

    throw p1
.end method

.method public declared-synchronized whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-eqz v0, :cond_49

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "sigVerf":Ljava/security/Signature;
    if-nez p2, :cond_13

    .line 427
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .end local v0    # "sigVerf":Ljava/security/Signature;
    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_1d

    .line 429
    .end local v1    # "sigVerf":Ljava/security/Signature;
    .end local p0    # "this":Lsun/security/x509/X509CRLImpl;
    .restart local v0    # "sigVerf":Ljava/security/Signature;
    :cond_13
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    .line 431
    .end local v0    # "sigVerf":Ljava/security/Signature;
    .restart local v1    # "sigVerf":Ljava/security/Signature;
    :goto_1d
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 433
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-eqz v0, :cond_41

    .line 437
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 439
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 442
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_51

    .line 443
    monitor-exit p0

    return-void

    .line 440
    :cond_39
    :try_start_39
    new-instance v0, Ljava/security/SignatureException;

    const-string v2, "Signature does not match."

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_41
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v2, "Uninitialized CRL"

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    .end local v1    # "sigVerf":Ljava/security/Signature;
    :cond_49
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Uninitialized CRL"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    .end local p1    # "key":Ljava/security/PublicKey;
    .end local p2    # "sigProvider":Ljava/security/Provider;
    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_51

    throw p1
.end method

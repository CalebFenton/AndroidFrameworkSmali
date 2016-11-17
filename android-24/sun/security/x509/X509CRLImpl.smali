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
.field private static final YR_2050:J = 0x24bd0146400L

.field private static final isExplicit:Z = true


# instance fields
.field private extensions:Lsun/security/x509/CRLExtensions;

.field private infoSigAlgId:Lsun/security/x509/AlgorithmId;

.field private issuer:Lsun/security/x509/X500Name;

.field private issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private nextUpdate:Ljava/util/Date;

.field private readOnly:Z

.field private revokedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private revokedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private sigAlgId:Lsun/security/x509/AlgorithmId;

.field private signature:[B

.field private signedCRL:[B

.field private tbsCertList:[B

.field private thisUpdate:Ljava/util/Date;

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;

.field private version:I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@4
    .line 95
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@6
    .line 96
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@8
    .line 97
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@a
    .line 98
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 103
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@e
    .line 104
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 105
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@12
    .line 106
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@14
    .line 107
    new-instance v0, Ljava/util/TreeMap;

    #@16
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@19
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b
    .line 108
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@22
    .line 109
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    .line 113
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@27
    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inStrm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 175
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@4
    .line 95
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@6
    .line 96
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@8
    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@a
    .line 98
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 103
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@e
    .line 104
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@12
    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@14
    .line 107
    new-instance v1, Ljava/util/TreeMap;

    #@16
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@19
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b
    .line 108
    new-instance v1, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@22
    .line 109
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    .line 113
    const/4 v1, 0x0

    #@25
    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@27
    .line 177
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@29
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@2c
    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 175
    return-void

    #@30
    .line 178
    :catch_0
    move-exception v0

    #@31
    .line 179
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@33
    .line 180
    new-instance v1, Ljava/security/cert/CRLException;

    #@35
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "Parsing error: "

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 159
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@4
    .line 95
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@6
    .line 96
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@8
    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@a
    .line 98
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 103
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@e
    .line 104
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@12
    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@14
    .line 107
    new-instance v1, Ljava/util/TreeMap;

    #@16
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@19
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b
    .line 108
    new-instance v1, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@22
    .line 109
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    .line 113
    const/4 v1, 0x0

    #@25
    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@27
    .line 161
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 159
    return-void

    #@2b
    .line 162
    :catch_0
    move-exception v0

    #@2c
    .line 163
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@2e
    .line 164
    new-instance v1, Ljava/security/cert/CRLException;

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "Parsing error: "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@4
    .line 95
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@6
    .line 96
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@8
    .line 97
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@a
    .line 98
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 103
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@e
    .line 104
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 105
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@12
    .line 106
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@14
    .line 107
    new-instance v0, Ljava/util/TreeMap;

    #@16
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@19
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b
    .line 108
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@22
    .line 109
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    .line 113
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@27
    .line 192
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@29
    .line 193
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@2b
    .line 194
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@2d
    .line 191
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V
    .locals 8
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 207
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@4
    .line 95
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@6
    .line 96
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@8
    .line 97
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@a
    .line 98
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 103
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@e
    .line 104
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 105
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@12
    .line 106
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@14
    .line 107
    new-instance v6, Ljava/util/TreeMap;

    #@16
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    #@19
    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b
    .line 108
    new-instance v6, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@22
    .line 109
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    .line 113
    const/4 v6, 0x0

    #@25
    iput-boolean v6, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@27
    .line 211
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@29
    .line 212
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@2b
    .line 213
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@2d
    .line 214
    if-eqz p4, :cond_1

    #@2f
    .line 215
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@32
    move-result-object v2

    #@33
    .line 216
    .local v2, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v1, v2

    #@34
    .line 217
    .local v1, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    #@35
    .local v3, "i":I
    :goto_0
    array-length v6, p4

    #@36
    if-ge v3, v6, :cond_1

    #@38
    .line 218
    aget-object v0, p4, v3

    #@3a
    check-cast v0, Lsun/security/x509/X509CRLEntryImpl;

    #@3c
    .line 220
    .local v0, "badCert":Lsun/security/x509/X509CRLEntryImpl;
    :try_start_0
    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v1

    #@40
    .line 224
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    #@43
    .line 225
    new-instance v5, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@45
    .line 226
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    #@48
    move-result-object v6

    #@49
    .line 225
    invoke-direct {v5, v1, v6}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    #@4c
    .line 227
    .local v5, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@4e
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 228
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@53
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    .line 229
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->hasExtensions()Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_0

    #@5c
    .line 230
    const/4 v6, 0x1

    #@5d
    iput v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@5f
    .line 217
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_0

    #@62
    .line 221
    .end local v5    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :catch_0
    move-exception v4

    #@63
    .line 222
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CRLException;

    #@65
    invoke-direct {v6, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    #@68
    throw v6

    #@69
    .line 209
    .end local v0    # "badCert":Lsun/security/x509/X509CRLEntryImpl;
    .end local v1    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "i":I
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;Lsun/security/x509/CRLExtensions;)V
    .locals 1
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

    #@0
    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V

    #@3
    .line 252
    if-eqz p5, :cond_0

    #@5
    .line 253
    iput-object p5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@7
    .line 254
    const/4 v0, 0x1

    #@8
    iput v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@a
    .line 249
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "crlData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 144
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    #@4
    .line 95
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@6
    .line 96
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@8
    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@a
    .line 98
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@c
    .line 103
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@e
    .line 104
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@12
    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@14
    .line 107
    new-instance v1, Ljava/util/TreeMap;

    #@16
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@19
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b
    .line 108
    new-instance v1, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@22
    .line 109
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    .line 113
    const/4 v1, 0x0

    #@25
    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@27
    .line 146
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@29
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@2c
    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 144
    return-void

    #@30
    .line 147
    :catch_0
    move-exception v0

    #@31
    .line 148
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@33
    .line 149
    new-instance v1, Ljava/security/cert/CRLException;

    #@35
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "Parsing error: "

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1
.end method

.method private getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .locals 4
    .param p1, "entry"    # Lsun/security/x509/X509CRLEntryImpl;
    .param p2, "prevCertIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1193
    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;

    #@3
    move-result-object v0

    #@4
    .line 1194
    .local v0, "ciExt":Lsun/security/x509/CertificateIssuerExtension;
    if-eqz v0, :cond_0

    #@6
    .line 1196
    const-string/jumbo v3, "issuer"

    #@9
    invoke-virtual {v0, v3}, Lsun/security/x509/CertificateIssuerExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    .line 1195
    check-cast v2, Lsun/security/x509/GeneralNames;

    #@f
    .line 1197
    .local v2, "names":Lsun/security/x509/GeneralNames;
    const/4 v3, 0x0

    #@10
    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lsun/security/x509/X500Name;

    #@1a
    .line 1198
    .local v1, "issuerDN":Lsun/security/x509/X500Name;
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 1200
    .end local v1    # "issuerDN":Lsun/security/x509/X500Name;
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    :cond_0
    return-object p2
.end method

.method public static getEncodedInternal(Ljava/security/cert/X509CRL;)[B
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1160
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1161
    nop

    #@5
    nop

    #@6
    .end local p0    # "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1163
    .restart local p0    # "crl":Ljava/security/cert/X509CRL;
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 10
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    #@0
    .prologue
    .line 1132
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@3
    move-result-object v2

    #@4
    .line 1133
    .local v2, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    #@6
    invoke-direct {v0, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@9
    .line 1134
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v8, 0x3

    #@a
    invoke-virtual {v0, v8}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@d
    move-result-object v8

    #@e
    const/4 v9, 0x0

    #@f
    aget-object v5, v8, v9

    #@11
    .line 1135
    .local v5, "tbsCert":Lsun/security/util/DerValue;
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@13
    .line 1139
    .local v6, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->peekByte()I

    #@16
    move-result v8

    #@17
    int-to-byte v3, v8

    #@18
    .line 1140
    .local v3, "nextByte":B
    const/4 v8, 0x2

    #@19
    if-ne v3, v8, :cond_0

    #@1b
    .line 1141
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1e
    move-result-object v7

    #@1f
    .line 1144
    :cond_0
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@22
    move-result-object v7

    #@23
    .line 1145
    .local v7, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@26
    move-result-object v7

    #@27
    .line 1146
    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    #@2a
    move-result-object v4

    #@2b
    .line 1147
    .local v4, "principalBytes":[B
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    #@2d
    invoke-direct {v8, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    return-object v8

    #@31
    .line 1148
    .end local v0    # "derIn":Lsun/security/util/DerInputStream;
    .end local v2    # "encoded":[B
    .end local v3    # "nextByte":B
    .end local v4    # "principalBytes":[B
    .end local v5    # "tbsCert":Lsun/security/util/DerValue;
    .end local v6    # "tbsIn":Lsun/security/util/DerInputStream;
    .end local v7    # "tmp":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    #@32
    .line 1149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    #@34
    const-string/jumbo v9, "Could not parse issuer"

    #@37
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    throw v8
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 14
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1006
    iget-boolean v11, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@2
    if-eqz v11, :cond_0

    #@4
    .line 1007
    new-instance v11, Ljava/security/cert/CRLException;

    #@6
    const-string/jumbo v12, "cannot over-write existing CRL"

    #@9
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@c
    throw v11

    #@d
    .line 1009
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@10
    move-result-object v11

    #@11
    if-eqz v11, :cond_1

    #@13
    iget-byte v11, p1, Lsun/security/util/DerValue;->tag:B

    #@15
    const/16 v12, 0x30

    #@17
    if-eq v11, v12, :cond_2

    #@19
    .line 1010
    :cond_1
    new-instance v11, Ljava/security/cert/CRLException;

    #@1b
    const-string/jumbo v12, "Invalid DER-encoded CRL data"

    #@1e
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@21
    throw v11

    #@22
    .line 1012
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@25
    move-result-object v11

    #@26
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@28
    .line 1013
    const/4 v11, 0x3

    #@29
    new-array v8, v11, [Lsun/security/util/DerValue;

    #@2b
    .line 1015
    .local v8, "seq":[Lsun/security/util/DerValue;
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2d
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@30
    move-result-object v11

    #@31
    const/4 v12, 0x0

    #@32
    aput-object v11, v8, v12

    #@34
    .line 1016
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@36
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@39
    move-result-object v11

    #@3a
    const/4 v12, 0x1

    #@3b
    aput-object v11, v8, v12

    #@3d
    .line 1017
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3f
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@42
    move-result-object v11

    #@43
    const/4 v12, 0x2

    #@44
    aput-object v11, v8, v12

    #@46
    .line 1019
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@48
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    #@4b
    move-result v11

    #@4c
    if-eqz v11, :cond_3

    #@4e
    .line 1020
    new-instance v11, Ljava/security/cert/CRLException;

    #@50
    new-instance v12, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v13, "signed overrun, bytes = "

    #@58
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v12

    #@5c
    .line 1021
    iget-object v13, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@5e
    invoke-virtual {v13}, Lsun/security/util/DerInputStream;->available()I

    #@61
    move-result v13

    #@62
    .line 1020
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v12

    #@66
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v11

    #@6e
    .line 1023
    :cond_3
    const/4 v11, 0x0

    #@6f
    aget-object v11, v8, v11

    #@71
    iget-byte v11, v11, Lsun/security/util/DerValue;->tag:B

    #@73
    const/16 v12, 0x30

    #@75
    if-eq v11, v12, :cond_4

    #@77
    .line 1024
    new-instance v11, Ljava/security/cert/CRLException;

    #@79
    const-string/jumbo v12, "signed CRL fields invalid"

    #@7c
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v11

    #@80
    .line 1026
    :cond_4
    const/4 v11, 0x1

    #@81
    aget-object v11, v8, v11

    #@83
    invoke-static {v11}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@86
    move-result-object v11

    #@87
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@89
    .line 1027
    const/4 v11, 0x2

    #@8a
    aget-object v11, v8, v11

    #@8c
    invoke-virtual {v11}, Lsun/security/util/DerValue;->getBitString()[B

    #@8f
    move-result-object v11

    #@90
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@92
    .line 1029
    const/4 v11, 0x1

    #@93
    aget-object v11, v8, v11

    #@95
    iget-object v11, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@97
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    #@9a
    move-result v11

    #@9b
    if-eqz v11, :cond_5

    #@9d
    .line 1030
    new-instance v11, Ljava/security/cert/CRLException;

    #@9f
    const-string/jumbo v12, "AlgorithmId field overrun"

    #@a2
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v11

    #@a6
    .line 1032
    :cond_5
    const/4 v11, 0x2

    #@a7
    aget-object v11, v8, v11

    #@a9
    iget-object v11, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@ab
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    #@ae
    move-result v11

    #@af
    if-eqz v11, :cond_6

    #@b1
    .line 1033
    new-instance v11, Ljava/security/cert/CRLException;

    #@b3
    const-string/jumbo v12, "Signature field overrun"

    #@b6
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v11

    #@ba
    .line 1036
    :cond_6
    const/4 v11, 0x0

    #@bb
    aget-object v11, v8, v11

    #@bd
    invoke-virtual {v11}, Lsun/security/util/DerValue;->toByteArray()[B

    #@c0
    move-result-object v11

    #@c1
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@c3
    .line 1039
    const/4 v11, 0x0

    #@c4
    aget-object v11, v8, v11

    #@c6
    iget-object v3, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@c8
    .line 1044
    .local v3, "derStrm":Lsun/security/util/DerInputStream;
    const/4 v11, 0x0

    #@c9
    iput v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@cb
    .line 1045
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    #@ce
    move-result v11

    #@cf
    int-to-byte v7, v11

    #@d0
    .line 1046
    .local v7, "nextByte":B
    const/4 v11, 0x2

    #@d1
    if-ne v7, v11, :cond_7

    #@d3
    .line 1047
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getInteger()I

    #@d6
    move-result v11

    #@d7
    iput v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@d9
    .line 1048
    iget v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@db
    const/4 v12, 0x1

    #@dc
    if-eq v11, v12, :cond_7

    #@de
    .line 1049
    new-instance v11, Ljava/security/cert/CRLException;

    #@e0
    const-string/jumbo v12, "Invalid version"

    #@e3
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@e6
    throw v11

    #@e7
    .line 1051
    :cond_7
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@ea
    move-result-object v9

    #@eb
    .line 1054
    .local v9, "tmp":Lsun/security/util/DerValue;
    invoke-static {v9}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@ee
    move-result-object v10

    #@ef
    .line 1057
    .local v10, "tmpId":Lsun/security/x509/AlgorithmId;
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@f1
    invoke-virtual {v10, v11}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    #@f4
    move-result v11

    #@f5
    if-nez v11, :cond_8

    #@f7
    .line 1058
    new-instance v11, Ljava/security/cert/CRLException;

    #@f9
    const-string/jumbo v12, "Signature algorithm mismatch"

    #@fc
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v11

    #@100
    .line 1059
    :cond_8
    iput-object v10, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    #@102
    .line 1062
    new-instance v11, Lsun/security/x509/X500Name;

    #@104
    invoke-direct {v11, v3}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@107
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@109
    .line 1063
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@10b
    invoke-virtual {v11}, Lsun/security/x509/X500Name;->isEmpty()Z

    #@10e
    move-result v11

    #@10f
    if-eqz v11, :cond_9

    #@111
    .line 1064
    new-instance v11, Ljava/security/cert/CRLException;

    #@113
    const-string/jumbo v12, "Empty issuer DN not allowed in X509CRLs"

    #@116
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@119
    throw v11

    #@11a
    .line 1070
    :cond_9
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    #@11d
    move-result v11

    #@11e
    int-to-byte v7, v11

    #@11f
    .line 1071
    const/16 v11, 0x17

    #@121
    if-ne v7, v11, :cond_a

    #@123
    .line 1072
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    #@126
    move-result-object v11

    #@127
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@129
    .line 1080
    :goto_0
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@12c
    move-result v11

    #@12d
    if-nez v11, :cond_c

    #@12f
    .line 1081
    return-void

    #@130
    .line 1073
    :cond_a
    const/16 v11, 0x18

    #@132
    if-ne v7, v11, :cond_b

    #@134
    .line 1074
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@137
    move-result-object v11

    #@138
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@13a
    goto :goto_0

    #@13b
    .line 1076
    :cond_b
    new-instance v11, Ljava/security/cert/CRLException;

    #@13d
    new-instance v12, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v13, "Invalid encoding for thisUpdate (tag="

    #@145
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v12

    #@149
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v12

    #@14d
    .line 1077
    const-string/jumbo v13, ")"

    #@150
    .line 1076
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v12

    #@154
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v12

    #@158
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@15b
    throw v11

    #@15c
    .line 1084
    :cond_c
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    #@15f
    move-result v11

    #@160
    int-to-byte v7, v11

    #@161
    .line 1085
    const/16 v11, 0x17

    #@163
    if-ne v7, v11, :cond_e

    #@165
    .line 1086
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    #@168
    move-result-object v11

    #@169
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@16b
    .line 1091
    :cond_d
    :goto_1
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@16e
    move-result v11

    #@16f
    if-nez v11, :cond_f

    #@171
    .line 1092
    return-void

    #@172
    .line 1087
    :cond_e
    const/16 v11, 0x18

    #@174
    if-ne v7, v11, :cond_d

    #@176
    .line 1088
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@179
    move-result-object v11

    #@17a
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@17c
    goto :goto_1

    #@17d
    .line 1095
    :cond_f
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    #@180
    move-result v11

    #@181
    int-to-byte v7, v11

    #@182
    .line 1096
    const/16 v11, 0x30

    #@184
    if-ne v7, v11, :cond_10

    #@186
    .line 1097
    and-int/lit16 v11, v7, 0xc0

    #@188
    const/16 v12, 0x80

    #@18a
    if-eq v11, v12, :cond_10

    #@18c
    .line 1098
    const/4 v11, 0x4

    #@18d
    invoke-virtual {v3, v11}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@190
    move-result-object v1

    #@191
    .line 1100
    .local v1, "badCerts":[Lsun/security/util/DerValue;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@194
    move-result-object v2

    #@195
    .line 1101
    .local v2, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v0, v2

    #@196
    .line 1102
    .local v0, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    #@197
    .local v5, "i":I
    :goto_2
    array-length v11, v1

    #@198
    if-ge v5, v11, :cond_10

    #@19a
    .line 1103
    new-instance v4, Lsun/security/x509/X509CRLEntryImpl;

    #@19c
    aget-object v11, v1, v5

    #@19e
    invoke-direct {v4, v11}, Lsun/security/x509/X509CRLEntryImpl;-><init>(Lsun/security/util/DerValue;)V

    #@1a1
    .line 1104
    .local v4, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-direct {p0, v4, v0}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    #@1a4
    move-result-object v0

    #@1a5
    .line 1105
    invoke-virtual {v4, v2, v0}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    #@1a8
    .line 1106
    new-instance v6, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@1aa
    .line 1107
    invoke-virtual {v4}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    #@1ad
    move-result-object v11

    #@1ae
    .line 1106
    invoke-direct {v6, v0, v11}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    #@1b1
    .line 1108
    .local v6, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@1b3
    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b6
    .line 1109
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@1b8
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1bb
    .line 1102
    add-int/lit8 v5, v5, 0x1

    #@1bd
    goto :goto_2

    #@1be
    .line 1113
    .end local v0    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "badCerts":[Lsun/security/util/DerValue;
    .end local v2    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v5    # "i":I
    .end local v6    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :cond_10
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@1c1
    move-result v11

    #@1c2
    if-nez v11, :cond_11

    #@1c4
    .line 1114
    return-void

    #@1c5
    .line 1117
    :cond_11
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1c8
    move-result-object v9

    #@1c9
    .line 1118
    invoke-virtual {v9}, Lsun/security/util/DerValue;->isConstructed()Z

    #@1cc
    move-result v11

    #@1cd
    if-eqz v11, :cond_12

    #@1cf
    const/4 v11, 0x0

    #@1d0
    invoke-virtual {v9, v11}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@1d3
    move-result v11

    #@1d4
    if-eqz v11, :cond_12

    #@1d6
    .line 1119
    new-instance v11, Lsun/security/x509/CRLExtensions;

    #@1d8
    iget-object v12, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1da
    invoke-direct {v11, v12}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    #@1dd
    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@1df
    .line 1121
    :cond_12
    const/4 v11, 0x1

    #@1e0
    iput-boolean v11, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@1e2
    .line 1004
    return-void
.end method

.method public static toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1174
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1175
    nop

    #@5
    nop

    #@6
    .end local p0    # "crl":Ljava/security/cert/X509CRL;
    return-object p0

    #@7
    .line 1177
    .restart local p0    # "crl":Ljava/security/cert/X509CRL;
    :cond_0
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1206
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1207
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Null CRL to encode"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1208
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [B

    #@15
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@18
    .line 1205
    return-void
.end method

.method public encodeInfo(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const-wide v8, 0x24bd0146400L

    #@5
    .line 287
    :try_start_0
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@7
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@a
    .line 288
    .local v5, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@c
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@f
    .line 289
    .local v3, "rCerts":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerOutputStream;

    #@11
    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    #@14
    .line 291
    .local v4, "seq":Lsun/security/util/DerOutputStream;
    iget v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 292
    iget v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@1a
    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@1d
    .line 293
    :cond_0
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    #@1f
    invoke-virtual {v6, v5}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@22
    .line 294
    iget v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@24
    if-nez v6, :cond_1

    #@26
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@28
    invoke-virtual {v6}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    if-nez v6, :cond_1

    #@2e
    .line 295
    new-instance v6, Ljava/security/cert/CRLException;

    #@30
    const-string/jumbo v7, "Null Issuer DN not allowed in v1 CRL"

    #@33
    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@36
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 324
    .end local v3    # "rCerts":Lsun/security/util/DerOutputStream;
    .end local v4    # "seq":Lsun/security/util/DerOutputStream;
    .end local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v0

    #@38
    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CRLException;

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Encoding error: "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@55
    throw v6

    #@56
    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "rCerts":Lsun/security/util/DerOutputStream;
    .restart local v4    # "seq":Lsun/security/util/DerOutputStream;
    .restart local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@58
    invoke-virtual {v6, v5}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    #@5b
    .line 298
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@5d
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    #@60
    move-result-wide v6

    #@61
    cmp-long v6, v6, v8

    #@63
    if-gez v6, :cond_3

    #@65
    .line 299
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@67
    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    #@6a
    .line 303
    :goto_0
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@6c
    if-eqz v6, :cond_2

    #@6e
    .line 304
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@70
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    #@73
    move-result-wide v6

    #@74
    cmp-long v6, v6, v8

    #@76
    if-gez v6, :cond_4

    #@78
    .line 305
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@7a
    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    #@7d
    .line 310
    :cond_2
    :goto_1
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@7f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@82
    move-result v6

    #@83
    if-nez v6, :cond_6

    #@85
    .line 311
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@87
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a
    move-result-object v2

    #@8b
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8e
    move-result v6

    #@8f
    if-eqz v6, :cond_5

    #@91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@94
    move-result-object v1

    #@95
    check-cast v1, Ljava/security/cert/X509CRLEntry;

    #@97
    .line 312
    .local v1, "entry":Ljava/security/cert/X509CRLEntry;
    check-cast v1, Lsun/security/x509/X509CRLEntryImpl;

    #@99
    .end local v1    # "entry":Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1, v3}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    #@9c
    goto :goto_2

    #@9d
    .line 301
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@9f
    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@a2
    goto :goto_0

    #@a3
    .line 307
    :cond_4
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@a5
    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@a8
    goto :goto_1

    #@a9
    .line 314
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v6, 0x30

    #@ab
    invoke-virtual {v5, v6, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@ae
    .line 317
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@b0
    if-eqz v6, :cond_7

    #@b2
    .line 318
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@b4
    const/4 v7, 0x1

    #@b5
    invoke-virtual {v6, v5, v7}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    #@b8
    .line 320
    :cond_7
    const/16 v6, 0x30

    #@ba
    invoke-virtual {v4, v6, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@bd
    .line 322
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@c0
    move-result-object v6

    #@c1
    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@c3
    .line 323
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@c5
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@c8
    .line 285
    return-void
.end method

.method public getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 785
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@4
    move-result-object v0

    #@5
    .line 786
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_0

    #@7
    .line 787
    const-string/jumbo v2, "key_id"

    #@a
    invoke-virtual {v0, v2}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lsun/security/x509/KeyIdentifier;

    #@10
    .line 788
    .local v1, "keyId":Lsun/security/x509/KeyIdentifier;
    return-object v1

    #@11
    .line 790
    .end local v1    # "keyId":Lsun/security/x509/KeyIdentifier;
    :cond_0
    return-object v2
.end method

.method public getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 802
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 803
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@8
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getBaseCRLNumber()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 853
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;

    #@4
    move-result-object v0

    #@5
    .line 854
    .local v0, "dciExt":Lsun/security/x509/DeltaCRLIndicatorExtension;
    if-eqz v0, :cond_0

    #@7
    .line 855
    const-string/jumbo v2, "value"

    #@a
    invoke-virtual {v0, v2}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/math/BigInteger;

    #@10
    .line 856
    .local v1, "num":Ljava/math/BigInteger;
    return-object v1

    #@11
    .line 858
    .end local v1    # "num":Ljava/math/BigInteger;
    :cond_0
    return-object v2
.end method

.method public getCRLNumber()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 824
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;

    #@4
    move-result-object v1

    #@5
    .line 825
    .local v1, "numExt":Lsun/security/x509/CRLNumberExtension;
    if-eqz v1, :cond_0

    #@7
    .line 826
    const-string/jumbo v2, "value"

    #@a
    invoke-virtual {v1, v2}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/math/BigInteger;

    #@10
    .line 827
    .local v0, "num":Ljava/math/BigInteger;
    return-object v0

    #@11
    .line 829
    .end local v0    # "num":Ljava/math/BigInteger;
    :cond_0
    return-object v2
.end method

.method public getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 813
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 814
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/CRLNumberExtension;

    #@8
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 907
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 908
    return-object v4

    #@6
    .line 910
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    #@8
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@b
    .line 911
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@d
    invoke-virtual {v3}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lsun/security/x509/Extension;

    #@21
    .line 912
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 913
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 916
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 843
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/DeltaCRLIndicatorExtension;

    #@8
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 265
    new-instance v0, Ljava/security/cert/CRLException;

    #@6
    const-string/jumbo v1, "Null CRL to encode"

    #@9
    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 267
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@f
    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 994
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 995
    return-object v1

    #@6
    .line 998
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@8
    invoke-static {p1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 11
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 952
    iget-object v9, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v9, :cond_0

    #@5
    .line 953
    return-object v10

    #@6
    .line 955
    :cond_0
    :try_start_0
    new-instance v9, Lsun/security/util/ObjectIdentifier;

    #@8
    invoke-direct {v9, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    invoke-static {v9}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 956
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v0, 0x0

    #@10
    .line 958
    .local v0, "crlExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_3

    #@12
    .line 959
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    #@14
    invoke-direct {v6, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@17
    .line 960
    .local v6, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v3, 0x0

    #@18
    .line 962
    .local v3, "ex":Lsun/security/x509/Extension;
    iget-object v9, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@1a
    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    #@1d
    move-result-object v2

    #@1e
    .line 963
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@21
    move-result v9

    #@22
    .line 962
    if-eqz v9, :cond_2

    #@24
    .line 964
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lsun/security/x509/Extension;

    #@2a
    .line 965
    .local v3, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@2d
    move-result-object v7

    #@2e
    .line 966
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@31
    move-result v9

    #@32
    if-eqz v9, :cond_1

    #@34
    .line 967
    move-object v0, v3

    #@35
    .line 973
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v6    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    #@37
    .line 974
    return-object v10

    #@38
    .line 972
    .restart local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_3
    iget-object v9, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3a
    invoke-virtual {v9, v4}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    #@3d
    move-result-object v0

    #@3e
    .local v0, "crlExt":Lsun/security/x509/Extension;
    goto :goto_0

    #@3f
    .line 975
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@42
    move-result-object v5

    #@43
    .line 976
    .local v5, "extData":[B
    if-nez v5, :cond_5

    #@45
    .line 977
    return-object v10

    #@46
    .line 978
    :cond_5
    new-instance v8, Lsun/security/util/DerOutputStream;

    #@48
    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    #@4b
    .line 979
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@4e
    .line 980
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result-object v9

    #@52
    return-object v9

    #@53
    .line 981
    .end local v4    # "extAlias":Ljava/lang/String;
    .end local v5    # "extData":[B
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v1

    #@54
    .line 982
    .local v1, "e":Ljava/lang/Exception;
    return-object v10
.end method

.method public getIssuerAltNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 870
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 871
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    #@8
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@2
    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 607
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 608
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@6
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@c
    .line 610
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    #@e
    return-object v0
.end method

.method public getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 884
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 885
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/IssuingDistributionPointExtension;

    #@8
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 630
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 631
    return-object v1

    #@6
    .line 632
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@8
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@a
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v2

    #@e
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@11
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 928
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 929
    return-object v4

    #@6
    .line 931
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    #@8
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@b
    .line 932
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@d
    invoke-virtual {v3}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lsun/security/x509/Extension;

    #@21
    .line 933
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    #@24
    move-result v3

    #@25
    if-nez v3, :cond_1

    #@27
    .line 934
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 937
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 643
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 644
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 647
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@c
    .line 648
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@f
    move-result-object v1

    #@10
    .line 647
    invoke-direct {v0, v1, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    #@13
    .line 649
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@15
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/security/cert/X509CRLEntry;

    #@1b
    return-object v1
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 656
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 657
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 659
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@c
    invoke-direct {v0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    #@f
    .line 660
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/security/cert/X509CRLEntry;

    #@17
    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 673
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 675
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    #@c
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@e
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@11
    return-object v0
.end method

.method public getSigAlgId()Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 724
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 725
    return-object v1

    #@6
    .line 726
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@8
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 743
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 744
    return-object v2

    #@6
    .line 745
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@8
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    #@b
    move-result-object v0

    #@c
    .line 746
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getSigAlgParams()[B
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 759
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 760
    return-object v2

    #@6
    .line 762
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@8
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 763
    :catch_0
    move-exception v0

    #@e
    .line 764
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getSignature()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 701
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 702
    return-object v2

    #@7
    .line 703
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 704
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 705
    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 688
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@3
    if-nez v1, :cond_0

    #@5
    .line 689
    new-instance v1, Ljava/security/cert/CRLException;

    #@7
    const-string/jumbo v2, "Uninitialized CRL"

    #@a
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 690
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@10
    array-length v1, v1

    #@11
    new-array v0, v1, [B

    #@13
    .line 691
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@15
    array-length v2, v0

    #@16
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 692
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 620
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 567
    iget v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    #@0
    .prologue
    .line 893
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 894
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 895
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@8
    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 548
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    #@a
    if-eqz v2, :cond_0

    #@c
    move-object v1, p1

    #@d
    .line 551
    nop

    #@e
    nop

    #@f
    .line 552
    .local v1, "xcert":Ljava/security/cert/X509Certificate;
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@11
    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    #@14
    .line 553
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    #@16
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    return v2

    #@1b
    .line 549
    .end local v0    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    .end local v1    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_0
    const/4 v2, 0x0

    #@1c
    return v2
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
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

    #@0
    .prologue
    .line 418
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CRLImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 417
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
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

    #@0
    .prologue
    .line 439
    :try_start_0
    iget-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 440
    new-instance v4, Ljava/security/cert/CRLException;

    #@6
    const-string/jumbo v5, "cannot over-write existing CRL"

    #@9
    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 472
    :catch_0
    move-exception v0

    #@e
    .line 473
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CRLException;

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "Error while encoding data: "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    .line 474
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v4

    #@2c
    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    #@2d
    .line 442
    .local v2, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_1

    #@2f
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    .line 443
    :cond_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@38
    move-result-object v2

    #@39
    .line 447
    .local v2, "sigEngine":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@3c
    .line 450
    invoke-virtual {v2}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    #@43
    move-result-object v4

    #@44
    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@46
    .line 451
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@48
    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    #@4a
    .line 453
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@4c
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@4f
    .line 454
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@51
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@54
    .line 457
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v3}, Lsun/security/x509/X509CRLImpl;->encodeInfo(Ljava/io/OutputStream;)V

    #@57
    .line 460
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@59
    invoke-virtual {v4, v3}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@5c
    .line 463
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@5e
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@60
    array-length v5, v5

    #@61
    const/4 v6, 0x0

    #@62
    invoke-virtual {v2, v4, v6, v5}, Ljava/security/Signature;->update([BII)V

    #@65
    .line 464
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    #@68
    move-result-object v4

    #@69
    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@6b
    .line 465
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@6d
    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    #@70
    .line 468
    const/16 v4, 0x30

    #@72
    invoke-virtual {v1, v4, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@75
    .line 469
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@78
    move-result-object v4

    #@79
    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@7b
    .line 470
    const/4 v4, 0x1

    #@7c
    iput-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    #@7e
    .line 437
    return-void

    #@7f
    .line 445
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v3    # "tmp":Lsun/security/util/DerOutputStream;
    .local v2, "sigEngine":Ljava/security/Signature;
    :cond_2
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@82
    move-result-object v2

    #@83
    .local v2, "sigEngine":Ljava/security/Signature;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    .line 484
    new-instance v12, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 485
    .local v12, "sb":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v14, "X.509 CRL v"

    #@d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v13

    #@11
    iget v14, p0, Lsun/security/x509/X509CRLImpl;->version:I

    #@13
    add-int/lit8 v14, v14, 0x1

    #@15
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v13

    #@19
    const-string/jumbo v14, "\n"

    #@1c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v13

    #@20
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v13

    #@24
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 486
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@29
    if-eqz v13, :cond_0

    #@2b
    .line 487
    new-instance v13, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v14, "Signature Algorithm: "

    #@33
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v13

    #@37
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@39
    invoke-virtual {v14}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    #@3c
    move-result-object v14

    #@3d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v13

    #@41
    .line 488
    const-string/jumbo v14, ", OID="

    #@44
    .line 487
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v13

    #@48
    .line 488
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@4a
    invoke-virtual {v14}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    #@4d
    move-result-object v14

    #@4e
    invoke-virtual {v14}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@51
    move-result-object v14

    #@52
    .line 487
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v13

    #@56
    .line 488
    const-string/jumbo v14, "\n"

    #@59
    .line 487
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v13

    #@5d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v13

    #@61
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    .line 489
    :cond_0
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@66
    if-eqz v13, :cond_1

    #@68
    .line 490
    new-instance v13, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v14, "Issuer: "

    #@70
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v13

    #@74
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    #@76
    invoke-virtual {v14}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@79
    move-result-object v14

    #@7a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v13

    #@7e
    const-string/jumbo v14, "\n"

    #@81
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v13

    #@85
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v13

    #@89
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    .line 491
    :cond_1
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@8e
    if-eqz v13, :cond_2

    #@90
    .line 492
    new-instance v13, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v14, "\nThis Update: "

    #@98
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v13

    #@9c
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    #@9e
    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@a1
    move-result-object v14

    #@a2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v13

    #@a6
    const-string/jumbo v14, "\n"

    #@a9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v13

    #@ad
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v13

    #@b1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b4
    .line 493
    :cond_2
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@b6
    if-eqz v13, :cond_3

    #@b8
    .line 494
    new-instance v13, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v14, "Next Update: "

    #@c0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v13

    #@c4
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    #@c6
    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@c9
    move-result-object v14

    #@ca
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v13

    #@ce
    const-string/jumbo v14, "\n"

    #@d1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v13

    #@d5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v13

    #@d9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@dc
    .line 495
    :cond_3
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@de
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    #@e1
    move-result v13

    #@e2
    if-eqz v13, :cond_6

    #@e4
    .line 496
    const-string/jumbo v13, "\nNO certificates have been revoked\n"

    #@e7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ea
    .line 504
    :cond_4
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@ec
    if-eqz v13, :cond_8

    #@ee
    .line 505
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@f0
    invoke-virtual {v13}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    #@f3
    move-result-object v0

    #@f4
    .line 506
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@f7
    move-result-object v10

    #@f8
    .line 507
    .local v10, "objs":[Ljava/lang/Object;
    new-instance v13, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v14, "\nCRL Extensions: "

    #@100
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v13

    #@104
    array-length v14, v10

    #@105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v13

    #@109
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v13

    #@10d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@110
    .line 508
    const/4 v8, 0x0

    #@111
    .local v8, "i":I
    :goto_0
    array-length v13, v10

    #@112
    if-ge v8, v13, :cond_8

    #@114
    .line 509
    new-instance v13, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v14, "\n["

    #@11c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v13

    #@120
    add-int/lit8 v14, v8, 0x1

    #@122
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v13

    #@126
    const-string/jumbo v14, "]: "

    #@129
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v13

    #@12d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v13

    #@131
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@134
    .line 510
    aget-object v6, v10, v8

    #@136
    check-cast v6, Lsun/security/x509/Extension;

    #@138
    .line 512
    .local v6, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@13b
    move-result-object v13

    #@13c
    invoke-static {v13}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@13f
    move-result-object v13

    #@140
    if-nez v13, :cond_7

    #@142
    .line 513
    invoke-virtual {v6}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@145
    move-result-object v13

    #@146
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@149
    .line 514
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@14c
    move-result-object v7

    #@14d
    .line 515
    .local v7, "extValue":[B
    if-eqz v7, :cond_5

    #@14f
    .line 516
    new-instance v11, Lsun/security/util/DerOutputStream;

    #@151
    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    #@154
    .line 517
    .local v11, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v11, v7}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@157
    .line 518
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15a
    move-result-object v7

    #@15b
    .line 519
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@15d
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@160
    .line 520
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v13, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v14, "Extension unknown: DER encoded OCTET string =\n"

    #@168
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v13

    #@16c
    .line 522
    invoke-virtual {v2, v7}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@16f
    move-result-object v14

    #@170
    .line 520
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v13

    #@174
    .line 522
    const-string/jumbo v14, "\n"

    #@177
    .line 520
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v13

    #@17b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v13

    #@17f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@182
    .line 508
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v7    # "extValue":[B
    .end local v11    # "out":Lsun/security/util/DerOutputStream;
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@184
    goto :goto_0

    #@185
    .line 498
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v6    # "ext":Lsun/security/x509/Extension;
    .end local v8    # "i":I
    .end local v10    # "objs":[Ljava/lang/Object;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    #@187
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@18a
    const-string/jumbo v14, "\nRevoked Certificates: "

    #@18d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v13

    #@191
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@193
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@196
    move-result v14

    #@197
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v13

    #@19b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v13

    #@19f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a2
    .line 499
    const/4 v8, 0x1

    #@1a3
    .line 500
    .restart local v8    # "i":I
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    #@1a5
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a8
    move-result-object v5

    #@1a9
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1ac
    move-result v13

    #@1ad
    if-eqz v13, :cond_4

    #@1af
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b2
    move-result-object v4

    #@1b3
    check-cast v4, Ljava/security/cert/X509CRLEntry;

    #@1b5
    .line 501
    .local v4, "entry":Ljava/security/cert/X509CRLEntry;
    new-instance v13, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v14, "\n["

    #@1bd
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v13

    #@1c1
    add-int/lit8 v9, v8, 0x1

    #@1c3
    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v13

    #@1c7
    const-string/jumbo v14, "] "

    #@1ca
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v13

    #@1ce
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v14

    #@1d2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v13

    #@1d6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v13

    #@1da
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1dd
    move v8, v9

    #@1de
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    #@1df
    .line 525
    .end local v4    # "entry":Ljava/security/cert/X509CRLEntry;
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v6    # "ext":Lsun/security/x509/Extension;
    .restart local v10    # "objs":[Ljava/lang/Object;
    :cond_7
    :try_start_1
    invoke-virtual {v6}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@1e2
    move-result-object v13

    #@1e3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@1e6
    goto :goto_1

    #@1e7
    .line 526
    :catch_0
    move-exception v1

    #@1e8
    .line 527
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v13, ", Error parsing this extension"

    #@1eb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ee
    goto :goto_1

    #@1ef
    .line 531
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "ext":Lsun/security/x509/Extension;
    .end local v8    # "i":I
    .end local v10    # "objs":[Ljava/lang/Object;
    :cond_8
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@1f1
    if-eqz v13, :cond_9

    #@1f3
    .line 532
    new-instance v3, Lsun/misc/HexDumpEncoder;

    #@1f5
    invoke-direct {v3}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@1f8
    .line 533
    .local v3, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v13, Ljava/lang/StringBuilder;

    #@1fa
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1fd
    const-string/jumbo v14, "\nSignature:\n"

    #@200
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v13

    #@204
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@206
    invoke-virtual {v3, v14}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@209
    move-result-object v14

    #@20a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v13

    #@20e
    .line 534
    const-string/jumbo v14, "\n"

    #@211
    .line 533
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v13

    #@215
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@218
    move-result-object v13

    #@219
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21c
    .line 537
    .end local v3    # "encoder":Lsun/misc/HexDumpEncoder;
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@21f
    move-result-object v13

    #@220
    return-object v13

    #@221
    .line 536
    :cond_9
    const-string/jumbo v13, "NOT signed yet\n"

    #@224
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@227
    goto :goto_3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
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

    #@0
    .prologue
    .line 345
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@6
    .line 344
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 368
    if-nez p2, :cond_0

    #@3
    .line 369
    :try_start_0
    const-string/jumbo p2, ""

    #@6
    .line 371
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@8
    if-eqz v1, :cond_1

    #@a
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 374
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;

    #@14
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    monitor-exit p0

    #@1b
    .line 375
    return-void

    #@1c
    .line 378
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 379
    new-instance v1, Ljava/security/cert/CRLException;

    #@22
    const-string/jumbo v2, "Uninitialized CRL"

    #@25
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1

    #@2c
    .line 381
    :cond_2
    const/4 v0, 0x0

    #@2d
    .line 382
    .local v0, "sigVerf":Ljava/security/Signature;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_3

    #@33
    .line 383
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@35
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@3c
    move-result-object v0

    #@3d
    .line 387
    .local v0, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@40
    .line 389
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@42
    if-nez v1, :cond_4

    #@44
    .line 390
    new-instance v1, Ljava/security/cert/CRLException;

    #@46
    const-string/jumbo v2, "Uninitialized CRL"

    #@49
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1

    #@4d
    .line 385
    .local v0, "sigVerf":Ljava/security/Signature;
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@4f
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@56
    move-result-object v0

    #@57
    .local v0, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    #@58
    .line 393
    :cond_4
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@5a
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    #@5c
    array-length v2, v2

    #@5d
    const/4 v3, 0x0

    #@5e
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/Signature;->update([BII)V

    #@61
    .line 395
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    #@63
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@66
    move-result v1

    #@67
    if-nez v1, :cond_5

    #@69
    .line 396
    new-instance v1, Ljava/security/SignatureException;

    #@6b
    const-string/jumbo v2, "Signature does not match."

    #@6e
    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@71
    throw v1

    #@72
    .line 398
    :cond_5
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    #@74
    .line 399
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    monitor-exit p0

    #@77
    .line 366
    return-void
.end method
